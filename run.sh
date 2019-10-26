#!/bin/sh
# 拷贝配置文件到新的目录，如果存在将会跳过
if [ ! -d "/tmp/nps_conf" ]; then
    mkdir /tmp/nps_conf
fi
cp -r /etc/nps_conf_tmp/* /tmp/nps_conf
mv -n /tmp/nps_conf/* /nps/conf

# execution
/nps/nps
