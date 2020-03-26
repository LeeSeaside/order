package com.lee.enums;

import lombok.Getter;

/**
 * 商品状态
 * Author-->LeeSeaside
 * Date-->2020/1/2 21:30
 **/
@Getter/** 自动生成get方法. */
public enum  ProductStatusEnum implements CodeEnum{
    UP(0,"在架"),
    DOWN(1, "下架"),
    ;

    private Integer code;
    private String message;

    ProductStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
