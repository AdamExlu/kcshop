#!/bin/bash
/usr/local/mongodb/bin/mongod --dbpath=/usr/local/mongodb/data --logpath=/usr/local/mongodb/logs --logappend --port=27017 --fork
/usr/local/bin/redis-server	/usr/local/redis/redis.conf
/etc/init.d/nginx start
/etc/init.d/php-fpm start
/etc/init.d/mariadb start
/root/dbinit.sh
/bin/bash
