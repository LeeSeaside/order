package com.lee.enums;

import lombok.Getter;

/**
 * 订单状态
 * Author-->LeeSeaside
 * Date-->2020/1/6 14:40
 **/
@Getter/** 自动生成get方法. */
public enum OrderStatusEnum implements CodeEnum{
    NEW(0,"新订单"),
    FINISHED(1,"完结"),
    CANCEL(2,"已取消"),
    ;

    private Integer code;

    private String message;

    OrderStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
