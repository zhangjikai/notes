# IDEA

<!-- toc -->

## 资源
* [IntelliJ IDEA 简体中文专题教程](https://github.com/judasn/IntelliJ-IDEA-Tutorial)

## 配置
### 自动生成 serialVersionUID
```
File -> settings... ->Editor -> Inspsctions
勾选 Java -> Serialization issues -> Serializable class without 'serialVersionUID'
```

### 设置Terminal使用git bash
找到 `Settings -> Tools -> Terminal`，在 `Shell path`里填上
```bash
C:\Program Files (x86)\Git\bin\sh.exe -login -i
```
路径可能不同，但是要加上`-login -i` 选项

### 取消在第一列添加注释
Go to File > Settings > Editor > Code Style > Java > Code Generation and uncheck the option "Line comment at first column".

## 使用
### 多行编辑
按住 `Alt` 选择

### 查看 git 文件修改
Version Control -> 选择文件 -> 右击 Show Diff

### Live Template
* `$END$`，表示最后都编辑完后光标所处的位置
* `$SELECTION$`，表示设置环绕实时代码模板，环绕功能下面会模板专门进行介绍
* `$变量名$`- 自定以变量

### Postfix Completion
使用方法： `变量名.postfix`

* `0.return` -> `return 0`;

## 插件
* Alibaba Java Coding Guidelines
* CodeGlance
* FindBugs
* Lombok
* IdeaVim
* BrowseWordAtCaret

### Lombok
* [https://github.com/mplushnikov/lombok-intellij-plugin](https://github.com/mplushnikov/lombok-intellij-plugin)

1. Enable Annotation Processing 设为 true
2. maven 添加依赖
```xml
<dependency>
    <groupId>org.projectlombok</groupId>
    <artifactId>lombok</artifactId>
    <version>1.16.18</version>
    <scope>provided</scope>
</dependency>
```

### IdeaVim 插件
* [定制 vim 插件](http://www.jianshu.com/p/ec6b4b4536aa)

```
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-s> <Home>
inoremap <C-o> <End>
inoremap <C-d> <Delete>

inoremap jk <Esc>
```
### BrowseWordAtCaret
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>UP/DOWN</kbd>
