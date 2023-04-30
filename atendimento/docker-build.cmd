@echo off
docker rmi focus-atendimento:v1
docker build -t focus-atendimento:v1 .
docker images focus*