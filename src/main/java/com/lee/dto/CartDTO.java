package com.lee.dto;

import lombok.Data;

/**
 * 购物车
 * Author-->LeeSeaside
 * Date-->2020/1/6 17:44
 **/
@Data/** 自动生成get和set方法. */
public class CartDTO {

    /** 商品Id. */
    private String productId;

    /** 数量. */
    private Integer productQuantity;

    public CartDTO(String productId, Integer productQuantity) {
        this.productId = productId;
        this.productQuantity = productQuantity;
    }
}
