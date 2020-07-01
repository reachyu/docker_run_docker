#使用了镜像大小体积只有5MB的alpine镜像
FROM alpine:latest
#在docker的根目录下创建相应的使用目录
RUN mkdir -p /go/app
#设置工作路径
WORKDIR /go/app
#把上文编译好的main文件添加到镜像里
COPY . .
#暴露容器内部端口
#EXPOSE 9090
#入口
ENTRYPOINT ["/go/app/dockersdk"]
