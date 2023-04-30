@echo off
docker rmi focus-pagamento:v1
docker build -t focus-pagamento:v1 .
docker images focus*