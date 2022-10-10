package com.tamakicontrol.modules.service;

import com.inductiveautomation.ignition.gateway.model.GatewayContext;
import org.eclipse.birt.core.exception.BirtException;
import org.eclipse.birt.core.framework.Platform;
import org.eclipse.birt.core.framework.PlatformServletContext;
import org.eclipse.birt.report.engine.api.EngineConfig;
import org.eclipse.birt.report.engine.api.EngineConstants;
import org.eclipse.birt.report.engine.api.IReportEngine;
import org.eclipse.birt.report.engine.api.IReportEngineFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.bridge.SLF4JBridgeHandler;

import java.util.logging.Level;

public class ReportEngineService {

    private static final Logger logger = LoggerFactory.getLogger("birt-reporting");

    private static ReportEngineService instance;
    private IReportEngine engine;

    @SuppressWarnings("unchecked")
    public ReportEngineService(GatewayContext context) {

        EngineConfig engineConfig = new EngineConfig();
        engineConfig.setPlatformContext(new PlatformServletContext(context.getWebResourceManager().getServletContext()));
        engineConfig.setLogConfig(context.getSystemManager().getLogsDir().getAbsolutePath(), Level.INFO);
        engineConfig.setEngineHome(context.getSystemManager().getDataDir().getAbsolutePath());

        /*
         * Remove default BIRT file logger and redirect it to SLF4J
         * */
        SLF4JBridgeHandler.removeHandlersForRootLogger();
        if (SLF4JBridgeHandler.isInstalled()) SLF4JBridgeHandler.install();

        try {
            Platform.startup();
            IReportEngineFactory factory = (IReportEngineFactory) Platform
                    .createFactoryObject(IReportEngineFactory.EXTENSION_REPORT_ENGINE_FACTORY);

            engineConfig.getAppContext().put(EngineConstants.APPCONTEXT_CHART_RESOLUTION, 600);
            if (factory != null) {
                engine = factory.createReportEngine(engineConfig);
            } else {
                logger.error("Cannot Create BIRT Engine - Engine Factory Object is Null");
            }
        } catch (BirtException e) {
            logger.error(e.toString());
        }

    }

    public static ReportEngineService getInstance() {
        return instance;
    }

    /**
     * Get engine instance.
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
        //RegistryProviderFactory.releaseDefault(); TODO what did this do?

        if (SLF4JBridgeHandler.isInstalled()) SLF4JBridgeHandler.uninstall();
    }

    public IReportEngine getEngine() {
        return this.engine;
    }

    private void destroyEngine() {
        if (engine != null) engine.destroy();

    }

}
