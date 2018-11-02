#!/bin/bash
echo "准备链接vendor文件"
if [ -f "/root/account/account.txt" ];then
	echo "已链接vendor文件"
else
	ln -s /home/www/kcshop_vendor/yiisoft/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/xj/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/webmozart/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/voskobovich/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/theseer/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/symfony/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/swiftmailer/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/setasign/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/sebastian/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/rmrevin/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/ralouphie/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/psr/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/pimple/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpunit/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpspec/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpoffice/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpdocumentor/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phar-io/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/paragonie/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/overtrue/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/nullref/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/npm-asset/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/nesbot/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/myclabs/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/mpdf/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/moonlandsoft/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/monolog/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/mdmsoft/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/markbaker/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/kint-php/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/khanamiryan/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/kartik-v/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/imagine/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/illuminate/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/guzzlehttp/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/fzaninotto/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/froala/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/ezyang/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/endroid/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/egulias/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/easywechat-composer/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/doctrine/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/dmstr/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/composer/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/codeception/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/chumper/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/cebe/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bower-asset/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bin/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/behat/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bailangzhan/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bacon/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/antkaz/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/almasaeed2010/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/2amigos/ /home/www/kcshop/vendor/
	ln -s /home/www/kcshop_vendor/autoload.php  /home/www/kcshop/vendor/
	echo "链接vendor文件完成"
fi