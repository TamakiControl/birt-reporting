package com.tamakicontrol.modules.util;

import com.inductiveautomation.ignition.common.util.LoggerEx;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.jfree.util.Log;

import java.io.Closeable;
import java.util.ResourceBundle;
import java.util.function.Supplier;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

import static java.util.logging.Level.*;

public class IgnitionLoggerBridge extends Logger {

    private final LoggerEx logger;
    private Logger parent;

    protected IgnitionLoggerBridge(LoggerEx loggerEx) {
        super(loggerEx.getName(), null);
        this.logger = LoggerEx.newBuilder().build(loggerEx.getName());
        setLevel(Level.ALL);
    }

    public static IgnitionLoggerBridge from(LoggerEx loggerEx) {
        return new IgnitionLoggerBridge(loggerEx);
    }

    @Override
    public void log(LogRecord record) {
        Level level = record.getLevel();
        if (SEVERE.equals(level)) {
            logger.error(record.getMessage(), record.getThrown());
        } else if (WARNING.equals(level)) {
            logger.warn(record.getMessage(), record.getThrown());
        } else if (INFO.equals(level)) {
            logger.info(record.getMessage(), record.getThrown());
        } else if (CONFIG.equals(level)) {
            logger.debug(record.getMessage(), record.getThrown());
        } else {
            logger.trace(record.getMessage(), record.getThrown());
        }
    }

    @Override
    public void setParent(Logger parent) {
        this.parent = parent;
    }

    @Override
    public Logger getParent() {
        return this.parent;
    }
}
