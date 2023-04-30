@echo off
docker rmi focus-cliente:v1
docker build -t focus-cliente:v1 .
docker images focus*