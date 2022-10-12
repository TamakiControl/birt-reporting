package com.tamakicontrol.modules.service;

import com.inductiveautomation.ignition.common.util.LoggerEx;
import com.inductiveautomation.ignition.gateway.datasource.records.JDBCDriverRecord;
import com.inductiveautomation.ignition.gateway.model.GatewayContext;
import com.tamakicontrol.modules.util.IgnitionLoggerBridge;
import org.eclipse.birt.core.exception.BirtException;
import org.eclipse.birt.core.framework.Platform;
import org.eclipse.birt.core.framework.PlatformServletContext;
import org.eclipse.birt.report.data.oda.jdbc.JDBCDriverManager;
import org.eclipse.birt.report.engine.api.EngineConfig;
import org.eclipse.birt.report.engine.api.EngineConstants;
import org.eclipse.birt.report.engine.api.IReportEngine;
import org.eclipse.birt.report.engine.api.IReportEngineFactory;
import org.eclipse.core.internal.registry.RegistryProviderFactory;
import simpleorm.dataset.SQuery;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

public class ReportEngineService {

    private static final LoggerEx logger = LoggerEx.newBuilder().build(ReportEngineService.class);
    private final GatewayContext gatewayContext;

    private static ReportEngineService instance;

    private IReportEngine engine;

    @SuppressWarnings("unchecked")
    public ReportEngineService(GatewayContext context) {
        this.gatewayContext = context;

        EngineConfig engineConfig = new EngineConfig();
        engineConfig.setPlatformContext(new PlatformServletContext(context.getWebResourceManager().getServletContext()));
        engineConfig.setLogConfig(context.getSystemManager().getLogsDir().getAbsolutePath(), Level.INFO);
        engineConfig.setEngineHome(context.getSystemManager().getDataDir().getAbsolutePath());

        try {

            Platform.startup();
            IReportEngineFactory factory = (IReportEngineFactory) Platform
                    .createFactoryObject(IReportEngineFactory.EXTENSION_REPORT_ENGINE_FACTORY);

            engineConfig.getAppContext().put(EngineConstants.APPCONTEXT_CHART_RESOLUTION, 600);

            if (factory != null) {
                engine = factory.createReportEngine(engineConfig);

                var testLogger = IgnitionLoggerBridge.from(logger);
                testLogger.setParent(engine.getLogger());
                testLogger.setUseParentHandlers(false);
                engine.setLogger(testLogger);

                loadJDBCDrivers();
            } else {
                logger.error("Cannot Create BIRT Engine - Engine Factory Object is Null");
            }
        } catch (Exception e) {
            logger.error("Error while starting BIRT Platform", e);
        }

    }

    /**
     * Loads all JDBC driver JARs from the Ignition user-lib/jdbc directory so that BIRT is able to find them
     */
    protected void loadJDBCDrivers() throws Exception {

        // list files in the ignition user-lib/jdbc directory
        var userLibFolder = gatewayContext.getSystemManager().getUserLibDir();
        var jdbcDriverFolder = new File(userLibFolder, "jdbc");
        var jdbcDrivers = jdbcDriverFolder.listFiles(file -> file.getName().endsWith(".jar"));
        Objects.requireNonNull(jdbcDrivers, "JDBC Driver Folder Not Found at: " + jdbcDriverFolder.getAbsolutePath());

        // build list of URLs for every file in jdbc folder
        var driverURLs = new ArrayList<>(jdbcDrivers.length);
        for (File jarFile : jdbcDrivers) {
            driverURLs.add(jarFile.toURI().toURL());
        }

        // get the birt driver manager and initialize it with JDBC classes from the user-lib/jdbc folder
        var driverManager = JDBCDriverManager.getInstance();
        try (var urlClassLoader = new URLClassLoader(driverURLs.toArray(new URL[0]), Thread.currentThread().getContextClassLoader())) {

            // If BIRT is unable to find a class then it uses the Thread's context class loader.  We need to set it to the
            // URLClassLoader we created so that it can find the JDBC drivers.
            Thread.currentThread().setContextClassLoader(urlClassLoader);

            // get all the JDBC drivers from the database, so we can get the class names
            var drivers = gatewayContext.getLocalPersistenceInterface().query(new SQuery<>(JDBCDriverRecord.META));
            drivers.forEach(driver -> {
                try {
                    logger.debugf("Loading JDBC Driver: %s", driver.getClassname());
                    urlClassLoader.loadClass(driver.getClassname()); // load the class so that BIRT can find it
                    driverManager.loadAndRegisterDriver(driver.getClassname(), null); // register the driver with BIRT
                } catch (Exception e) {
                    logger.warnf("Failed to load driver: %s", driver.getClassname(), e);
                }
            });
        }
    }

    public static ReportEngineService getInstance() {
        return instance;
    }

    /**
     * Get engine instance.
     *
     * @param servletContext gateway context for BIRT engine setup
     */
    public synchronized static void initEngineInstance(GatewayContext servletContext) throws BirtException {
        if (ReportEngineService.instance != null) return;

        ReportEngineService.instance = new ReportEngineService(servletContext);
    }

    /**
     * Destroy engine instance
     */
    public synchronized static void destroyEngineInstance() {
        ReportEngineService.getInstance().destroyEngine();

        Platform.shutdown();
        RegistryProviderFactory.releaseDefault();
    }

    public IReportEngine getEngine() {
        return this.engine;
    }

    private void destroyEngine() {
        if (engine != null) engine.destroy();

    }

}
