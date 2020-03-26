package com.lee.dao;

import com.lee.bean.ProductCategory;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.transaction.Transactional;
import java.util.Arrays;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProductCategoryDaoTest {

    @Autowired
    private ProductCategoryDao productCategoryDao;

    @Test
    public void findOneTest() {
        ProductCategory productCategory =productCategoryDao.findById(1).get();
        System.out.println(productCategory.toString());
    }

    @Test
    @Transactional/** 测试数据完全回滚，数据库不存在测试数据. */
    public void saveTest(){
        ProductCategory productCategory =new ProductCategory();
        productCategory.setCategoryName("女生最爱");
        productCategory.setCategoryType(10);
        productCategoryDao.save(productCategory);
    }

    @Test
    public void findByCategoryTypeInTest() {
        List<Integer> list = Arrays.asList(2,3,4);

        List<ProductCategory> result = productCategoryDao.findByCategoryTypeIn(list);
        Assert.assertNotEquals(0, result.size());
    }
}