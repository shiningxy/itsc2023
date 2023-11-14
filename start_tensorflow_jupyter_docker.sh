# 拉取tensorflow:latest-jupyter容器
docker pull tensorflow/tensorflow:latest-jupyter  

# 开启jupyter服务 配置jupyter服务url运行tensorflow环境
docker run -it \
    --name tfpre \
    -v /home/itsc2023:/root/itsc2023 \
    -p 8888:8888 \
    tensorflow/tensorflow:latest-jupyter  