package com.lee.bean;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
/**
 * 订单详情
 * Author-->LeeSeaside
 * Date-->2020/1/6 14:51
 **/
@Entity/** 实体类. */
@Data/** 自动生成get和set方法. */
public class OrderDetail {

    /** id. */
    @Id/** 主键. */
    private String detailId;

    /** 订单id. */
    private String orderId;

    /** 商品id. */
    private String productId;

    /** 商品名称. */
    private String productName;

    /** 商品单价. */
    private BigDecimal productPrice;

    /** 商品数量. */
    private Integer productQuantity;

    /** 商品小图. */
    private String productIcon;
}
