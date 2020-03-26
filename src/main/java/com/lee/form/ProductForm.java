package com.lee.form;

import lombok.Data;

import java.math.BigDecimal;

/**
 * 商品表单验证
 * Author-->LeeSeaside
 * Date-->2020/3/25 23:35
 **/
@Data/** 自动生成get和set方法. */
public class ProductForm {

    private String productId;

    /** 名字. */
    private String productName;

    /** 单价. */
    private BigDecimal productPrice;

    /** 库存. */
    private Integer productStock;

    /** 描述. */
    private String productDescription;

    /** 小图. */
    private String productIcon;

    /** 类目编号. */
    private Integer categoryType;
}
