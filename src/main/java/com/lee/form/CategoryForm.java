package com.lee.form;

import lombok.Data;

/**
 * 类目表单验证
 * Author-->LeeSeaside
 * Date-->2020/3/26 0:07
 **/
@Data/** 自动生成get和set方法. */
public class CategoryForm {

    private Integer categoryId;

    /** 类目名字. */
    private String categoryName;

    /** 类目编号. */
    private Integer categoryType;
}
