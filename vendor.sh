#!/bin/bash
echo "准备链接vendor文件"
if [ -f "/root/account/account.txt" ];then
	echo "已链接vendor文件"
else
	ln -s /home/www/kcshop_vendor/yiisoft/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/xj/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/webmozart/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/voskobovich/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/theseer/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/symfony/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/swiftmailer/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/setasign/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/sebastian/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/rmrevin/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/ralouphie/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/psr/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/pimple/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpunit/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpspec/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpoffice/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phpdocumentor/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/phar-io/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/paragonie/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/overtrue/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/nullref/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/npm-asset/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/nesbot/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/myclabs/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/mpdf/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/moonlandsoft/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/monolog/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/mdmsoft/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/markbaker/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/kint-php/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/khanamiryan/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/kartik-v/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/imagine/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/illuminate/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/guzzlehttp/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/fzaninotto/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/froala/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/ezyang/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/endroid/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/egulias/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/easywechat-composer/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/doctrine/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/dmstr/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/composer/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/codeception/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/chumper/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/cebe/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bower-asset/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bin/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/behat/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bailangzhan/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/bacon/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/antkaz/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/almasaeed2010/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/2amigos/ kcshop/vendor/
	ln -s /home/www/kcshop_vendor/autoload.php  kcshop/vendor/
	echo "链接vendor文件完成"
fi