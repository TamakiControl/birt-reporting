package com.tamakicontrol.modules.util;

public class BirtException extends RuntimeException {

    public BirtException(String message){
        super(message);
    }

    public BirtException(String formattedMsg, Object... args){
        super(String.format(formattedMsg, args));
    }

    public BirtException(String message, Object[] args, Throwable e){
        super(String.format(message, args), e);
    }

}
