package com.lee.bean;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * 类目
 * Author-->LeeSeaside
 * Date-->2019/12/30 10:43
 **/
@Entity/** 实体类. */
@DynamicUpdate/** 动态更新时间. */
@Data/** 自动生成get和set方法. */
public class ProductCategory {

    /** 类目id. */
    @Id/** 主键. */
    @GeneratedValue(strategy = GenerationType.IDENTITY)/** 自增. */
    private Integer categoryId;

    /** 类目名字. */
    private String categoryName;

    /** 类目编号. */
    private Integer categoryType;

    /** 创建时间. */
    private Date createTime;

    /** 修改时间. */
    private Date updateTime;

}
