# 基本使用
<!-- toc -->

## 取消开机启动
**安装 sysv-rc-conf**
```
sudo apt-get install sysv-rc-conf
```

**运行sysv-rc-conf**
```
sudo sysv-rc-conf
```

## 相关命令
```
// 启动
# /etc/init.d/apache2 start
or
$ sudo /etc/init.d/apache2 start

// 暂停
# /etc/init.d/apache2 restart
or
$ sudo /etc/init.d/apache2 restart

// 重启
# /etc/init.d/apache2 stop
or
$ sudo /etc/init.d/apache2 stop
```
## 默认网站位置
```
/var/www/html
```
