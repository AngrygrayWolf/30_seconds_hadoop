# 30s入门hadoop
为媳妇写的极短时间入门hadoop的教程。（每一个阶段的时间都会在30s内结束）
本周就是使用python flask模仿一个简单的上传页面。

## 准备阶段(这个阶段是大于30s的阶段~)
- 快速安装hadoop的套件
- 利用命令行创建、上传、下载文件
- 使用python上传下载文件


### 快速安装hadoop套件
因为实际环境都使用一键安装。这里只提供单机节点的配置：
- 安装Oracle jdk
- 下载hadoop
- 配置hadoop
- 系统的一些必要配置（ssh免密、关掉防火墙和selinux）

> 在root下运行脚本  sh ./oneday/env_config.sh

### 做一点点简单的配置
1. 在/etc/hosts下增加一个master对应本机IP
2. 在hadoop目录下，修改etc/hadoop/core-site.xml文件
```
<configuration>
     <property>
         <name>fs.default.name</name>
         <value>hdfs://master:9000</value>
     </property>
</configuration>
```
修改hdfs-site.xml
```
<configuration>
     <property>
         <name>dfs.replication</name>
         <value>1</value>
     </property>
</configuration>
```

修改mapred-site.xml文件
```
<configuration>
     <property>
         <name>mapred.job.tracker</name>
         <value>localhost:9001</value>
     </property>
</configuration>
```
3. 运行hadoop
> sbin/start-dfs.sh


## 简单文件操作
1. 新建一个1.txt文件
2. hdfs新建文件夹命令
    1. bin/hdfs dfs -mkdir /test
3. 上传、下载、浏览
    1. bin/hdfs dfs -put 1.txt /test
    2. bin/hdfs dfs -get /test/1.txt
    3. bin/hdfs dfs -cat /test/1.txt


## python操作hdfs
> **坑**： 为什么会无法上传文件？ 
1. pip install hdfs
2. 运行 python ./oneday/simple_ops.py
> python创建、浏览、查看、删除、上传等各类操作





