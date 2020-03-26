package com.lee.VO;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**商品（包含类目）
 * Author-->LeeSeaside
 * Date-->2020/1/5 21:41
 **/
@Data/** 自动生成get和set方法. */
public class ProductVO {

    @JsonProperty("name")
    private String categoryName;

    @JsonProperty("type")
    private Integer categoryType;

    @JsonProperty("foods")
    private List<ProductInfoVO> productInfoVOList;

}
