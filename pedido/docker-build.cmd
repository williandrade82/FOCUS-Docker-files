@echo off
docker rmi focus-pedido:v1
docker build -t focus-pedido:v1 .
docker images focus*