@echo off
docker rmi focus-produto:v1
docker build -t focus-produto:v1 .
docker images focus*