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

## 非 root 用户安装 GCC

* [http://luiarthur.github.io/gccinstall](http://luiarthur.github.io/gccinstall)

```bash
tar xzf gcc-5.2.0.tar.gz
cd gcc-5.2.0
./contrib/download_prerequisites
cd ..
mkdir objdir
cd objdir
$PWD/../gcc-5.2.0/configure --prefix=$HOME/gcc-5.2.0 --enable-languages=c,c++,fortran,go
make
make install
```

修改 .bashrc 文件

```bash
export PATH=~/gcc-5.2.0/bin:$PATH
export LD_LIBRARY_PATH=~/gcc-5.2.0/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=~/gcc-5.2.0/lib64:$LD_LIBRARY_PATH
```