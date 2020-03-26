package com.lee.exception;

import com.lee.enums.ResultEnum;
import net.bytebuddy.implementation.bind.annotation.Super;

/**
 *
 * Author-->LeeSeaside
 * Date-->2020/1/6 16:32
 **/
public class SellException extends RuntimeException {

    private Integer code;

    public SellException(ResultEnum resultEnum) {
        super(resultEnum.getMessage());

        this.code = resultEnum.getCode();
    }

    public SellException(Integer code, String message) {
        super(message);
        this.code = code;
    }
}
