package com.lee.dao;

import com.lee.bean.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
/**
 * 订单详情操作
 * Author-->LeeSeaside
 * Date-->2020/1/6 15:34
 **/
public interface OrderDetailDao extends JpaRepository<OrderDetail,String> {

    List<OrderDetail> findByOrderId(String orderId);
}
