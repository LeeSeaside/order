package com.lee.dao;

import com.lee.bean.ProductInfo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * 商品数据操作
 * Author-->LeeSeaside
 * Date-->2020/1/2 20:59
 **/
public interface ProductInfoDao extends JpaRepository<ProductInfo,String> {

    List<ProductInfo> findByProductStatus(Integer productStatus);
}
