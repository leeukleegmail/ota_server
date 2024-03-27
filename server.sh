CONTAINER_NAME="ota_server"
CONTAINER_PORT="8080"

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker build --tag $CONTAINER_NAME --build-arg container_name=$CONTAINER_NAME .
docker run -d -p 8080:$CONTAINER_PORT --name $CONTAINER_NAME --restart unless-stopped -v $(pwd)/:/data $CONTAINER_NAME
