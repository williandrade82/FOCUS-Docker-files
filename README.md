# FOCUS - Dockerfiles
## Sobre
Arquivos para subir, em docker local (Windows) os dockers do projeto FOCUS - Grupo B - 5SCJO - 2022 - FIAP.

## Como usar
Sem adaptações, funciona bem em ambiente Windows com Docker.

## Criar as imagens localmente
Após baixar os arquivos, é preciso criar as imagens localmente.
Para isso, execute o comando ```docker-build-all.cmd [idVersao]``` na raiz.


## Executar os dockers localmente
Para executar todos os dockers, caso você tenha criado as imagens pelo comando anterior, é possível executar o comando "docker-up.cmd" no prompt.
Serão criados um docker para cada imagem, de acordo como arquivo "docker-compose.yaml".
