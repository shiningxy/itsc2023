# 拉取tensorflow推理服务镜像
docker pull tensorflow/serving:2.14.0-gpu

# 开启本地图像识别模型推理服务
docker run -t \
    --name tferror \
    -p 9901:9901 \
    -v "/home/itsc2023/models/error_fix:/models/error_fix" \
    -e MODEL_NAME=error_fix \
    tensorflow/serving:2.14.0-gpu
