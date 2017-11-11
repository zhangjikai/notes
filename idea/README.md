# IDEA
<!-- toc -->

## 自动生成 serialVersionUID
```
File -> settings... ->Editor -> Inspsctions
勾选 Java -> Serialization issues -> Serializable class without 'serialVersionUID'
```

## 设置Terminal使用git bash
找到 `Settings -> Tools -> Terminal`，在 `Shell path`里填上
```bash
C:\Program Files (x86)\Git\bin\sh.exe -login -i
```
路径可能不同，但是要加上`-login -i` 选项

## 使用
* 多行编辑 - 按住 `Alt` 选择


## IdeaVim 插件
* [定制 vim 插件](http://www.jianshu.com/p/ec6b4b4536aa)

```
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-s> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

inoremap jk <Esc>
```
