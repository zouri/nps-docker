#!/bin/sh
# 拷贝配置文件到新的目录，如果存在将会跳过
cp -n -r /etc/nps_conf/* /opt/nps/conf/

# execution
/opt/nps/nps