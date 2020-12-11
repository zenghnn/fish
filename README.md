# 捕鱼

运行步骤:

1.下载源码:

    git clone https://github.com/dwg255/fish

2.编译:
    
    (mac 和linux 下把\换成/)
    cd fish\
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o accountLoc account/main/main.go account/main/init.go account/main/config.go
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o hallLoc hall/main/main.go hall/main/init.go hall/main/config.go
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o fishLoc game/main/main.go game/main/init.go game/main/config.go

3.解压客户端:
    tar -zxvf fish.tar.gz /var/www/html/client/fish
    修改./client/fish/src/project.js   中的hall地址
    修改./common/conf/game.conf   中的hall_host port  地址
    (./client/project.js是我自己修改的 作个备份用)

4.配置nginx:
```
    server {
        listen       80;
        server_name  fish.com;
        charset utf8;
        index index.html index.htm;
        location /qq {
            add_header Access-Control-Allow-Origin *;
            proxy_set_header X-Target $request_uri;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_pass http://127.0.0.1:9000;
        }
        location / {
            root /var/www/html/client/fish;
            add_header Access-Control-Allow-Origin *;
            expires 7d;
        }
    }
```
     配置文件位置 /common/conf 内含redis配置和qq第三方登录配置，请自行修改。

5.在线示例:
     http://fish.blzz.shop
    
---

License

This project is released under the terms of the MIT license. See [LICENSE](LICENSE) for more
information or see https://opensource.org/licenses/MIT.
   
   
---

![](https://github.com/dwg255/fish/blob/master/client/qg_%E5%89%AF%E6%9C%AC.jpg?raw=true)
![](https://raw.githubusercontent.com/dwg255/fish/master/client/1.jpg)
![](https://raw.githubusercontent.com/dwg255/fish/master/client/2.jpg)
![](https://raw.githubusercontent.com/dwg255/fish/master/client/3.jpg)
![](https://raw.githubusercontent.com/dwg255/fish/master/client/4.jpg)
![](https://raw.githubusercontent.com/dwg255/fish/master/client/5.jpg)
![](https://raw.githubusercontent.com/dwg255/fish/master/client/6.jpg)
![](https://github.com/dwg255/fish/blob/master/client/qg_%E5%89%AF%E6%9C%AC.jpg?raw=true)
