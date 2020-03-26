package com.lee.service;

import com.lee.bean.ProductCategory;

import java.util.List;

/***
 * 类目业务处理
 * Author-->LeeSeaside
 * Date-->2020/1/2 20:32
 **/
public interface CategoryService {

    ProductCategory findOne(Integer categoryId);

    List<ProductCategory> findAll();

    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);

    ProductCategory save(ProductCategory productCategory);
}
