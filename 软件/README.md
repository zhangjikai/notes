# 软件
<!-- toc -->

## 实用软件
* LICEcap - gif 录像
* Snipaste - 截图

## VPS 配置
### 使用kcptun 加速vps

[教程地址](https://blog.kuoruan.com/110.html)

* 一键安装脚本
  ```bash
  wget --no-check-certificate https://raw.githubusercontent.com/kuoruan/kcptun_installer/master/kcptun.sh
  chmod +x ./kcptun.sh
  ./kcptun.sh
  ```
* 需要加速的窗口设为shadowsocks的
* 安装完成后保存给的客户端配置文件，放到文件 `kcp-config` 里
* [下载客户端](https://github.com/xtaci/kcptun/releases)，注意和服务器一致
* 启动客户端
  ```bash
  ./client_linux_amd64 -c kcp-config
  ```
* 更改shadowsocks 地址为 `127.0.0.1`，端口为 kcp 客户端监听的端口

服务器上 kcptun 的配置文件位于 `/usr/share/kcptun` 中，启动 kcptun 的命令

```bash
service supervisord {start|stop|restart|status}
```

### SSH 代理
```
 ssh -N -D 0.0.0.0:7070 user@server
```
SwitchyOmega: socks5 127.0.0.1 7070
