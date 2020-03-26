package com.lee.utils;

import com.lee.enums.CodeEnum;
/**
 * 枚举工具类
 * Author-->LeeSeaside
 * Date-->2020/3/25 11:35
 **/
public class EnumUtil {

    public static <T extends CodeEnum> T getByCode(Integer code, Class<T> enumClass) {
        for (T each: enumClass.getEnumConstants()) {
            if (code.equals(each.getCode())) {
                return each;
            }
        }
        return null;
    }
}
