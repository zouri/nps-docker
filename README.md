# nps-docker
> 本项目是根据 [nps](https://github.com/cnlh/nps) 制作的 dockerfile 服务端镜像

nps是一款轻量级、高性能、功能强大的内网穿透代理服务器。目前支持tcp、udp流量转发，可支持任何tcp、udp上层协议（访问内网网站、本地支付接口调试、ssh访问、远程桌面，内网dns解析等等……），此外还支持内网http代理、内网socks5代理、p2p等，并带有功能强大的web管理端。

### 1. 运行使用
``` bash
docker run -it -d --net host --name nps mazouri/nps
```
> 由于nps是一款网络代理软件，所以对网卡要求有完整的控制权。请使用 `host` 模式运行，否则功能可能会失效

``` bash
docker run -it -d --net host --name nps -v /data:/opt/nps/conf mazouri/nps
```
> 将你本地的文件夹映射到容器内部路径 `/opt/nps/conf`

2. ### 客户端下载
https://github.com/cnlh/nps/releases
> 根据OS架构下载指定客户端版本使用