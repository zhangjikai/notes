# ubuntu 2020 配置静态ip

* 查看当前网址配置, 使用ifconfig命令，找到有ip配置的那个配置key，比如下面的就是 wlp1s0

```bash
wlp1s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.199.135  netmask 255.255.255.0  broadcast 192.168.199.255
        inet6 fe80::79f8:62ad:6e40:f2a7  prefixlen 64  scopeid 0x20<link>
        ether c8:09:a8:98:ab:5c  txqueuelen 1000  (以太网)
        RX packets 128855  bytes 171819984 (171.8 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 53334  bytes 6154388 (6.1 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

* 修改配置文件
```bash
sudo vim /etc/netplan/01-network-manager-all.yaml
```

* 内容如下所示
```
# Let NetworkManager manage all devices on this system
network:
  version: 2
  # renderer: NetworkManager
  ethernets:
        wlp1s0:
                addresses: [192.168.199.135/24]
                dhcp4: no
                optional: true
                gateway4: 192.168.199.1
                nameservers:
                        addresses: [8.8.8.8,114.114.114.114]

```
* 配置生效
```
sudo netplan apply
```
