package com.lee.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * 微信账号相关
 * Author-->LeeSeaside
 * Date-->2020/3/24 16:52
 **/
@Data/** 自动生成get和set方法. */
@Component/** 标注为配置文件. */
@ConfigurationProperties(prefix = "wechat")
public class WechatAccountConfig {

    /**
     * 公众平台id
     */
    private String mpAppId;

    /**
     * 公众平台密钥
     */
    private String mpAppSecret;

}
