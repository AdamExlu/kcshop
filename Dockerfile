FROM lurunhao/centos7-lnmp-php_7.2.6:v1.0
LABEL version="1.0"
LABEL description="kcshop setup"

# install php env
#WORKDIR /root/src/
#RUN yum install -y wget vim net-tools screen git openssl
#COPY lnmp1.5.tar.gz /root/src/lnmp1.5.tar.gz
#RUN tar zxf lnmp1.5.tar.gz && cd lnmp1.5 && LNMP_Auto="y" DBSelect="9" DB_Root_Password="0220f96dba" InstallInnodb="y" PHPSelect="8" SelectMalloc="1" ./install.sh lnmp

# kcshop
RUN	touch /home/www/kcshop && chown www.www /home/www/kcshop && touch /root/account &&sed -i "s/^fastcgi_param PHP_ADMIN_VALUE/#&/" /usr/local/nginx/conf/fastcgi.conf;

# expose port
EXPOSE 81 82 83
COPY start.sh /root/start.sh
COPY dbinit.sh /root/dbinit.sh
COPY conf/api.conf /usr/local/nginx/conf/vhost/
COPY conf/wechat.conf /usr/local/nginx/conf/vhost/
COPY conf/backend.conf /usr/local/nginx/conf/vhost/
CMD /root/start.sh