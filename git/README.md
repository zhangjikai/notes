# 基本使用

<!-- toc -->

## 配置
### 配置全局用户名邮箱
```bash
git config --global user.name "username"
git config --global user.email "email"
```
### 生成密钥
```bash
ssh-keygen -C 'email address' -t rsa
```
### 缓存用户名和密码
```bash
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'
# Set the cache to timeout after 1 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=259200'
```
## 分支

** 创建**

```bash
git branch gh-pages
```

** 切换**

```bash
git checkout gh-pages
```

**创建并切换**

```bash
 git checkout -b gh-pages
```
**删除分支**

```bash
// 本地
git branch -D br
// 远程
git push origin --delete <branchName>
```
## 标签
```
git tag -a v1.4 -m 'my version 1.4'
git push origin v1.4
// 将本地所有标签push到远程服务器
git push origin --tags
```

## 回滚
[Git 代码库回滚记录](http://limite.me/blog/2016/04/19/git-dai-ma-ku-hui-gun-ji-lu/)
### 本地代码回滚
```
git reset --hard commit-id //回滚到commit-id，将commit-id之后提交的commit进行清除
git reset --hard HEAD~3 //将最近3次的提交回滚
```
### 远程代码库回滚
```
1、git checkout the_branch

2、git pull

3、git reset --hard the_commit_id //把the_branch本地回滚到the_commit_id

4、git push origin :the_branch //删除远程 the_branch(冒号前面的空格不能少，原理是把一个空分支push到server上，相当于删除该分支。)

5、git push origin the_branch //用回滚后的本地分支重新建立远程分支
```
