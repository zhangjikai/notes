# Atom

<!-- toc -->

## 设置
* 增加编辑器底部的空间 - 选中`Edit -> Preferences -> Editor -> Scroll Past End`

## 快捷键

* `Ctrl + r` - 弹出函数列表框
* `Ctrl + G` - 跳转到行
* `Ctrl + shift + k` - 删除一行

## 插件

### symbol-tree-view
类似于vim的taglist

### autocomplete-plus
代码补全\(自带\)

**配置**
* `Minimum Word Length` - 配置键入几个字母给提示

### terminal-plus
platformio-ide-terminal  
atom终端

### atom-beautify
1. 安装 `uncrustify`  
```bash
sudo apt-get install uncrustify
```
2. 配置 C 语言格式  
`Edit` -> `Preference` -> `Packages` -> `atom-beautify` -> `Settings` -> `C` -> `Config Path`，输入配置文件路径
配置文件参考: [文件1](https://gist.github.com/mkroman/1372117)，[文件2](https://gist.github.com/rindeal/25f8cd7815ad35542ba9)  
示例
```
indent_columns = 4
```
### atom-project-manager
* 列出项目 - `alt-shift-p`
* 保存项目 - `Project Manager: Save Project`
* 编辑项目 - `Project Manager: Edit Project`

### markdown-preview-enhanced
* `ctrl + shift + m` - 打开预览窗口
* `ctrl + shift + p` ，输入 `create toc` - 创建文件目录
* 支持导出pdf

### markdown-themeable-pdf
导出pdf，十分好用
* `ctrl + shift + e` - 快捷键
