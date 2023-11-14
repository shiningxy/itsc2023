# 拉取tensorflow推理服务镜像
docker pull tensorflow/serving:2.14.0-gpu

# 开启本地图像识别模型推理服务
docker run -t \
    --name tfcv \
    -p 9901:9901 \
    -v "/home/itsc2023/models/image_detection:/models/image_detection" \
    -e MODEL_NAME=image_detection \
    tensorflow/serving:2.14.0-gpu
