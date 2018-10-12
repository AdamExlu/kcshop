FROM centos:7
LABEL version="1.1"
LABEL description="Kcshop auto setup."

# install php env
WORKDIR /root/src/
RUN yum install -y wget vim net-tools screen git openssl
RUN wget http://soft.vpser.net/lnmp/lnmp1.5.tar.gz -cO lnmp1.5.tar.gz && tar zxf lnmp1.5.tar.gz && cd lnmp1.5 && LNMP_Auto="y" DBSelect="9" DB_Root_Password="0220f96dba" InstallInnodb="y" PHPSelect="8" SelectMalloc="1" ./install.sh lnmp

# install Imagick
RUN wget http://file.kcshop.pro/ImageMagick-7.0.7-25.tar.gz && tar zxvf ImageMagick-7.0.7-25.tar.gz && cd ImageMagick-7.0.7-25 && ./configure && make && make install && cd .. && wget http://file.kcshop.pro/imagick-3.4.3.tgz && tar zxvf imagick-3.4.3.tgz && cd imagick-3.4.3 && /usr/local/php/bin/phpize && ./configure --with-php-config=/usr/local/php/bin/php-config && make && make install && sed -i '/\[PHP\]/a\extension=imagick\.so' /usr/local/php/etc/php.ini;

# expose port
EXPOSE 81 82 83

# clone kcsop code
WORKDIR /home/www/
RUN git clone -b master http://blobt:73937393@kcdev.lwl1688.com:3000/iron/kcshop_nestling.git kcshop;
WORKDIR /home/www/kcshop
RUN chown -R www.www . && chmod a+x init && ./init --env=Production && chmod 777 backend/runtime && chmod 777 api/runtime && chmod 777 wechat/runtime && randKey=`openssl rand -hex 16` && sed -i "s/'cookieValidationKey' => ''/'cookieValidationKey' => '${randKey}'/" api/config/main-local.php && sed -i "s/'cookieValidationKey' => ''/'cookieValidationKey' => '${randKey}'/" wechat/config/main-local.php && sed -i "s/'cookieValidationKey' => ''/'cookieValidationKey' => '${randKey}'/" backend/config/main-local.php && sed -i "s/^fastcgi_param PHP_ADMIN_VALUE/#&/" /usr/local/nginx/conf/fastcgi.conf

# install composer
#RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer;

# 
COPY start.sh /root/start.sh
COPY dbinit.sh /root/dbinit.sh
COPY conf/api.conf /usr/local/nginx/conf/vhost/
COPY conf/wechat.conf /usr/local/nginx/conf/vhost/
COPY conf/backend.conf /usr/local/nginx/conf/vhost/
CMD /root/start.sh
