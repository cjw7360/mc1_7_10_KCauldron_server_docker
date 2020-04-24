# mc1_7_10_KCauldron_server_docker
## 一、简介
* mc版本：1.7.10
* mod服类型：KCauldron
* forge版本：1614.201
## 二、食用方法
* mc_server_files：服务端
* mc_resources：游戏配置及存档数据
1. 生成镜像
```
./build.sh 
```
可以自定义镜像名称，若修改了名称，需要一同修改`start_mc_server.sh`文件。

2. 运行服务端

首先，将`start_mc_server.sh`内路径修改为自己的实际路径。

参数解释：
* 默认将容器内25565端口映射为主机25565端口
* JAVA_Xmx：JAVA内存。格式：整数+单位(g、m、k)
* JAVA_OPTS：其他JAVA运行参数
* 其余挂载的文件对应于服务端各个文件

3. 运行时登录后台
由于使用`docker attach docker_name`命令进入后台后使用`Ctrl+C`退出会使得服务端一起退出，所以需要docker不代理SIG。使用如下命令进入后台：
```
docker attach --sig-proxy=false docker_name
```
若只需要查看日志，建议使用
```
docker logs -f docker_name
```
4. 其他
主机内存不够设置的JAVA内存值时，若实际使用内存超过物理内存上限会导致服务端不断重启。MOD冲突等可能需要根据启动时输出日志添加启动参数到`JAVA_OPTS`环境变量。
5.声明
该镜像不用于商业用途，产生的一切后果本人概不负责，若有侵权请联系。

