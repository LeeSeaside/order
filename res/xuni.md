#虚拟机说明文档：

- VirtualBox-5.1.22
- 虚拟机系统 centos7.3
- 账号 root
- 密码 123456

#包括软件：

- jdk 1.8.0_111
- nginx 1.11.7
- mysql 5.7.17
- redis 3.2.8

###jdk
- 路径 /usr/local/jdk1.8.0_111

###nginx
- 路径 /usr/local/nginx
- 启动 nginx
- 重启 nginx -s reload

###mysql
- 配置 /etc/my.conf
- 账号 root
- 密码 123456
- 端口 3306
- 启动 systemctl start mysqld
- 停止 systemctl stop mysqld

###redis
- 路径 /usr/local/redis
- 配置 /etc/reis.conf
- 端口 6379
- 密码 123456
- 启动 systemctl start redis
- 停止 systemctl stop redis

###tomcat
- 路径 /usr/local/tomcat
- 启动 systemctl start tomcat
- 停止 systemctl stop tomcat

###nginx配置：

- 打开-->vim /usr/local/nginx/conf/nginx.conf
- 修改：
1. server_name--> sell.com
2. proxy_pass-->http://192.168.56.1:8080/sell/;
3. 然后主机用sell.com即可访问虚拟机中的前端项目
 
###前端项目地址：

- cd /opt/--cd code/--cd sell_fe_buyer/--cd config/--vim index.js
 
- 修改三处--->
1. sellUrl（前端项目地址）：http://sell.com
2. openidUrl（获取openid地址）：http://yj3dtj.natappfree.cc/sell/wechat/authorize
3. wechatPayUrl（支付地址，目前未开发）：
4. 重新构建一下--->npm run build
5. 将dist下的所有文件复制到opt/data/wwwroot/sell--->
cp -r dist/* /opt/data/wwwroot/sell/
6. 进入微信测试号页面，修改natapp域名（因为免费会不定时强制更换）
