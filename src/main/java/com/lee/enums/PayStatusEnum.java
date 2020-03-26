package com.lee.enums;

import lombok.Getter;

/**
 * 支付状态
 * Author-->LeeSeaside
 * Date-->2020/1/6 14:49
 **/
@Getter/** 自动生成get方法. */
public enum PayStatusEnum implements CodeEnum{
    WAIT(0,"等待支付"),
    SUCCESS(1,"支付成功"),
    ;

    private Integer code;

    private String message;

    PayStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
