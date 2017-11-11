# GDB
<!-- toc -->
## 调试段错误
1. 配置dump core 文件的大小
```bash
ulimit -c unlimited
```
2. 调试
程序运行失败以后会生成 `core.xxxxx` 文件，使用gdb运行
```
gdb [exec file] [core file]
gdb ./test core.11
```
然后输入 `where` 或者 `bt` 就可以定位到出错的位置
