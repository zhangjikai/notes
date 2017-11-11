# CMake 使用记录
<!-- toc -->

## 安装
通过源码安装 CMake，可以没有管理员权限
```
wget http://www.cmake.org/files/v3.5/cmake-3.5.2.tar.gz
tar -xf cmake*.tar.gz
cd cmake*
./configure --prefix=$HOME
make
make install
```
然后修改 .bashrc 文件
```
PATH=new-cmakepath/bin:$PATH
export PATH
```
## 配置编译器
```
export CC=/usr/local/bin/gcc
export CXX=/usr/local/bin/g++
cmake /path/to/your/project
make
```
