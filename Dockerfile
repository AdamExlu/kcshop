FROM lurunhao/centos7-lnmp-php_7.2.6:v1.0
LABEL version="2.0"
LABEL description="kcshop v2.0 env setup"

# install extension
COPY ext /root/ext
	#imagick 
RUN cd /root/ext && tar -zxvf ImageMagick.tar.gz && \
	cd ImageMagick-7.0.8-23 && ./configure && make && make install && cd .. && \
	wget http://file.kcshop.pro/imagick-3.4.3.tgz && tar zxvf imagick-3.4.3.tgz && \
	cd imagick-3.4.3 && /usr/local/php/bin/phpize && ./configure --with-php-config=/usr/local/php/bin/php-config --with-imagick=/usr/local/imagemagick&& \
	make && make install && sed -i '/\[PHP\]/a\extension=imagick\.so' /usr/local/php/etc/php.ini && \
	sed -i "s/^fastcgi_param PHP_ADMIN_VALUE/#&/" /usr/local/nginx/conf/fastcgi.conf && \
	#fileinfo 
	cd /root/ext/fileinfo && /usr/local/php/bin/phpize && \
	./configure --with-php-config=/usr/local/php/bin/php-config && make && make install &&\
	sed -i '/\[PHP\]/a\extension=fileinfo\.so' /usr/local/php/etc/php.ini &&\
	#mongoDb
	cd /root/ext && tar zxvf mongodb-linux-x86_64-amazon-3.6.3.tgz &&\ 
	mv mongodb-linux-x86_64-amazon-3.6.3 /usr/local/mongodb &&\
	cd /root/src && wget https://pecl.php.net/get/mongodb-1.5.3.tgz &&\
	tar zxvf mongodb-1.5.3.tgz && cd mongodb-1.5.3 && /usr/local/php/bin/phpize &&\
	./configure --with-php-config=/usr/local/php/bin/php-config && make && make install &&\
	sed -i '/\[PHP\]/a\extension=mongodb\.so' /usr/local/php/etc/php.ini &&\
	#redis
	cd /root/src && wget http://download.redis.io/releases/redis-4.0.2.tar.gz &&\
	tar xzf redis-4.0.2.tar.gz && cd redis-4.0.2 && make && make install &&\
	cd /root/src && wget https://pecl.php.net/get/redis-4.0.0.tgz &&\
	tar xzf redis-4.0.0.tar.gz && cd redis-4.0.0 && /usr/local/php/bin/phpize &&\
	./configure --with-php-config=/usr/local/php/bin/php-config &&\
	make && make install && mv /root/src/redis-4.0.2 /usr/local/redis &&\
	sed -i '/\[PHP\]/a\extension=redis\.so' /usr/local/php/etc/php.ini &&\
	sed -i 's/daemonize no/daemonize yes/' /usr/local/redis/redis.conf &&\
	sed -i 's/dir .\//dir \/usr\/local\/redis\/data/' /usr/local/redis/redis.conf &&\
	cd /root && rm -rf ext && rm -rf /root/src ;
	
# expose port
EXPOSE 81 82 83
# copy file
COPY start.sh /root/start.sh
COPY dbinit.sh /root/dbinit.sh
COPY runtime /home/www/kcshop_runtime
COPY conf/api.conf /usr/local/nginx/conf/vhost/
COPY conf/wechat.conf /usr/local/nginx/conf/vhost/
COPY conf/backend.conf /usr/local/nginx/conf/vhost/
COPY conf/mongodb.conf /usr/local/mongodb/bin/
COPY conf/mongodb.service /lib/systemd/system/

# other
RUN	chmod a+x /root/start.sh && \
	chmod a+x /root/dbinit.sh && \
	#uploads
	mkdir /home/www/kcshop_uploads	&& \
	chown -R www.www /home/www/kcshop_uploads	&& \
	#kcshop
	mkdir /home/www/kcshop && \
	chown www.www /home/www/kcshop && \
	#runtime
	chmod -R 777 /home/www/kcshop_runtime && \
	chown -R www.www /home/www/kcshop_runtime && \
	#/etc/my.cnf
	sed -i "s/innodb_buffer_pool_size = 1024M/innodb_buffer_pool_size = 512M/g" /etc/my.cnf	&&\
	
	mkdir /root/account ;

CMD /root/start.sh