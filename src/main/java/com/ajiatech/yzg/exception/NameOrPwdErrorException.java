package com.ajiatech.yzg.exception;

public class NameOrPwdErrorException extends RuntimeException {

    public NameOrPwdErrorException() {
        super("账号或密码输入错误！");
    }
}
