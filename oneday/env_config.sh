#! /usr/bin
# 安装jdk
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/11.0.1+13/90cf5d8f270a4347a95050320eef3fb7/jdk-11.0.1_linux-x64_bin.rpm
rpm -ivh ./jdk-11.0.1_linux-x64_bin.rpm
# 配置java_home变量
echo 'export JAVA_HOME=/usr/java/jdk-11.0.1' >> /etc/profile
source /etc/profile
# 下载hadoop
wget http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-2.9.2/hadoop-2.9.2-src.tar.gz
tar -xvf hadoop-2.9.2-src.tar.gz

#关闭防火墙
systemctl stop firewalld
setenforce 0
