package com.lee.config;

import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.impl.WxMpServiceImpl;
import me.chanjar.weixin.mp.config.WxMpConfigStorage;
import me.chanjar.weixin.mp.config.impl.WxMpDefaultConfigImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

/**
 * 微信公众号配置
 * Author-->LeeSeaside
 * Date-->2020/3/24 16:36
 **/
@Component/** 标注为配置文件. */
public class WechatMpConfig {

    @Autowired
    private WechatAccountConfig accountConfig;

    @Bean
    public WxMpService wxOpenService() {
        WxMpService wxOpenService = new WxMpServiceImpl();
        wxOpenService.setWxMpConfigStorage(wxOpenConfigStorage());
        return wxOpenService;
    }

    @Bean
    public WxMpConfigStorage wxOpenConfigStorage() {
        WxMpDefaultConfigImpl wxMpDefaultConfig=new WxMpDefaultConfigImpl();
        wxMpDefaultConfig.setAppId(accountConfig.getMpAppId());
        wxMpDefaultConfig.setSecret(accountConfig.getMpAppSecret());
        return wxMpDefaultConfig;
    }
}
