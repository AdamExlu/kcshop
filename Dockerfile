FROM lurunhao/centos7-lnmp-php_7.2.6:v1.0
LABEL version="1.0"
LABEL description="kcshop setup"

# install php env
#WORKDIR /root/src/
#RUN yum install -y wget vim net-tools screen git openssl
#COPY lnmp1.5.tar.gz /root/src/lnmp1.5.tar.gz
#RUN tar zxf lnmp1.5.tar.gz && cd lnmp1.5 && LNMP_Auto="y" DBSelect="9" DB_Root_Password="0220f96dba" InstallInnodb="y" PHPSelect="8" SelectMalloc="1" ./install.sh lnmp

# install Imagick & ext
COPY ext /root/ext
RUN wget http://file.kcshop.pro/ImageMagick-7.0.7-25.tar.gz && tar zxvf ImageMagick-7.0.7-25.tar.gz && \
	cd ImageMagick-7.0.7-25 && ./configure && make && make install && cd .. && \
	wget http://file.kcshop.pro/imagick-3.4.3.tgz && tar zxvf imagick-3.4.3.tgz && \
	cd imagick-3.4.3 && /usr/local/php/bin/phpize && ./configure --with-php-config=/usr/local/php/bin/php-config && \
	make && make install && sed -i '/\[PHP\]/a\extension=imagick\.so' /usr/local/php/etc/php.ini && \
	sed -i "s/^fastcgi_param PHP_ADMIN_VALUE/#&/" /usr/local/nginx/conf/fastcgi.conf && \
	#extension
	cd /root/ext/fileinfo && /usr/local/php/bin/phpize && \
	./configure --with-php-config=/usr/local/php/bin/php-config && \
	make && cp ./modules/fileinfo.so /usr/local/php/lib/php/extensions/no-debug-non-zts-20170718/fileinfo.so && \
	sed -i '/\[PHP\]/a\extension=fileinfo\.so' /usr/local/php/etc/php.ini &&\
	cd /root && rm -rf ext;


# expose port
EXPOSE 81 82 83
COPY start.sh /root/start.sh
COPY dbinit.sh /root/dbinit.sh
COPY conf/api.conf /usr/local/nginx/conf/vhost/
COPY conf/wechat.conf /usr/local/nginx/conf/vhost/
COPY conf/backend.conf /usr/local/nginx/conf/vhost/

# kcshop
RUN	chmod a+x /root/start.sh && \
	chmod a+x /root/dbinit.sh && \
	mkdir /home/www/kcshop && \
	chown www.www /home/www/kcshop && \
	mkdir /root/account ;


CMD /root/start.sh