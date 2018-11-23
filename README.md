# 可以ssh连接的ubuntu镜像

* 账号 ```root```
* 密码 ```lightWeightBaby!```

## 示例
* 运行容器
```
docker run --name ubuntu_ssh -p 2222:22 -d chenqionghe/ubuntu
```
* 连接
```
ssh root@127.0.0.1 -p 2222
```


