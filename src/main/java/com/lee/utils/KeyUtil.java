package com.lee.utils;

import java.util.Random;

/**
 * 生成Key
 * Author-->LeeSeaside
 * Date-->2020/1/6 16:59
 **/
public class KeyUtil {

    /**
     * 生成唯一的主键
     * 格式：时间+随机数
     * @return
     */
    public static synchronized String getUniqueKey(){

        Random random=new Random();
        //生成随机数，[100000，1000000)
        Integer number=random.nextInt(900000)+100000;

        return System.currentTimeMillis() + String.valueOf(number);
    }
}
