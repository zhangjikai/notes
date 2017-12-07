# Nginx
<!-- toc -->

## 命令
```
# 重启
sudo nginx -s reload

# 检查配置文件是否正确
nginx -t -c /usr/nginx/conf/nginx.conf  

# 检查默认的配置文件
nginx -t
```

## 配置
默认配置文件位置： `/etc/nginx/sites-available/default`

```
server {
    listen       80;
    server_name  localhost;

    location / {
        root   html;
        index  index.html index.htm;
    }

    location /test {
          proxy_pass http://localhost:8080/test;
    }

    location ~/test2/* {
         return 301 http://localhost/
    }


}
```
