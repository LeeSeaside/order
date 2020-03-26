package com.lee.VO;

import lombok.Data;

/** http请求返回数据的最外层对象
 * Author-->LeeSeaside
 * Date-->2020/1/5 16:58
 **/
@Data/** 自动生成get和set方法. */
public class ResultVO<T> {

    /** 错误码. */
    private Integer code;

    /** 提示信息. */
    private String msg;

    /** 具体内容. */
    private T data;

}
