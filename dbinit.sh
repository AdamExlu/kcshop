#!/bin/bash

hostname=localhost
port="3306"
username="root"
password="0220f96dba"
admin_pass="kckj123"

select_sql="SHOW DATABASES LIKE 'kcshop'"
v=`mysql  -h${hostname} -P${port} -u${username} -p${password} -e "${select_sql}"`

if [ $? = "0"  ];then
	v=`mysql  -h${hostname} -P${port} -u${username} -p${password} -e "${select_sql}" | awk 'NR>1'`
	if [ ! "$v" ];then 	
		echo "start init DB"
		select_sql="CREATE DATABASE kcshop DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci"
		mysql  -h${hostname} -P${port} -u${username} -p${password} -e "${select_sql}"

		kcpass=`0220f96dba`
		select_sql="GRANT ALL PRIVILEGES ON kcshop.* TO 'kcshop'@'localhost' IDENTIFIED BY '${kcpass}'"
		mysql  -h${hostname} -P${port} -u${username} -p${password} -e "${select_sql}"

		mysqlpass=`foe73klns6`
		select_sql="GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '${mysqlpass}';FLUSH PRIVILEGES"
		mysql  -h${hostname} -P${port} -u${username} -p${password} -e "${select_sql}"

		#sed -i "s/yii2advanced/kcshop/" /home/www/kcshop/common/config/main-local.php
		#sed -i "s/root/kcshop/" /home/www/kcshop/common/config/main-local.php
		#sed -i "s/'password' => ''/'password' => '${kcpass}'/" /home/www/kcshop/common/config/main-local.php

		/home/www/kcshop/yii init ${admin_pass}

		touch /root/account/account.txt
		echo "${mysqlpass}" >> /root/account/account.txt
		echo "${kcpass}" >> /root/account/account.txt
		echo "1:mysqlRootPass	2:kcshopDBpass" >> /root/account/account.txt
	fi
fi
