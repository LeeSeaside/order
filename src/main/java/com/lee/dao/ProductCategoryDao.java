package com.lee.dao;

import com.lee.bean.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * 类目数据操作
 * Author-->LeeSeaside
 * Date-->2019/12/30 10:56
 **/
public interface ProductCategoryDao extends JpaRepository<ProductCategory,Integer> {

    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);
}
