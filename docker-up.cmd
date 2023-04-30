@echo off
if NOT EXIST .env goto :SEM_ARQUIVO

docker-compose -p focus up -d
echo Ambiente preparado.
echo.
goto :eof

:SEM_ARQUIVO
echo !!! ATENCAO !!!
echo Nao eh possivel executar esse comando sem algumas variaveis.
echo Para compor o ambiente corretamente, execute o comando "docker-build-all.cmd [idVersao]" antes.
echo.
