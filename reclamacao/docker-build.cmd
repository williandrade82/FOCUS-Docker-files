@echo off
docker rmi focus-reclamacao:v1
docker build -t focus-reclamacao:v1 .
docker images focus*