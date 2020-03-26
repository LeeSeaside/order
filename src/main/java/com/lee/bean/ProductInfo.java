package com.lee.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.lee.enums.ProductStatusEnum;
import com.lee.utils.EnumUtil;
import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 商品
 * Author-->LeeSeaside
 * Date-->2020/1/2 20:56
 **/
@Entity/** 实体类. */
@DynamicUpdate/** 动态更新时间. */
@Data/** 自动生成get和set方法. */
public class ProductInfo {

    /** id. */
    @Id/** 主键. */
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

    /** 状态, 0正常1下架. */
    private Integer productStatus = ProductStatusEnum.UP.getCode();

    /** 类目编号. */
    private Integer categoryType;

    /** 创建时间. */
    private Date createTime;

    /** 修改时间. */
    private Date updateTime;

    @JsonIgnore
    public ProductStatusEnum getProductStatusEnum() {
        return EnumUtil.getByCode(productStatus, ProductStatusEnum.class);
    }

}
