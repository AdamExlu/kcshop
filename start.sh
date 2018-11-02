#!/bin/bash
/etc/init.d/nginx start
/etc/init.d/php-fpm start
/etc/init.d/mariadb start
/root/vendor.sh
/root/dbinit.sh
/bin/bash
