FROM centos:7
LABEL version="1.0"
LABEL description="kcshop setup"

# install php env
WORKDIR /root/src/
RUN yum install -y wget vim net-tools screen git openssl
COPY lnmp1.5.tar.gz /root/src/lnmp1.5.tar.gz
RUN tar zxf lnmp1.5.tar.gz && cd lnmp1.5 && LNMP_Auto="y" DBSelect="9" DB_Root_Password="0220f96dba" InstallInnodb="y" PHPSelect="8" SelectMalloc="1" ./install.sh lnmp
