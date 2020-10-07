export IMAGE_NAME=sample-vlang-vex-app
docker build -t $IMAGE_NAME ./
docker run -p 8080:8080 $IMAGE_NAME