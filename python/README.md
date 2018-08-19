# 基本使用

<!-- toc -->

## ubuntu 修改系统默认的python版本
```bash
echo alias python=python3 >> ~/.bashrc
source ~/.bashrc
```
## 开启web服务
```bash
python -m SimpleHTTPServer 80
```
## Pip 镜像
* [https://mirrors.tuna.tsinghua.edu.cn/help/pypi/](https://mirrors.tuna.tsinghua.edu.cn/help/pypi/)

修改 `~/.config/pip/pip.conf (Linux)`, `%APPDATA%\pip\pip.ini` (Windows 10) 或 `$HOME/Library/Application Support/pip/pip.conf` (macOS) (没有就创建一个)， 修改 index-url至tuna，例如
```
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```
pip 和 pip3 并存时，只需修改 ~/.pip/pip.conf。
