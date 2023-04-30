@echo off
set VERSION=%1

if "%VERSION%"=="" set VERSION=v1
echo -----------------------------------
echo Criando todas as imagens localmente.
echo Versao: %VERSION%

set ROOT_ADDR=%cd%

goto :principal

:build
echo ---
set APP=%1
cd "%ROOT_ADDR%\%APP%"
echo %cd%
docker rmi focus-%APP%:%VERSION%
docker build -t focus-%APP%:%VERSION% .

echo. 
goto :eof

:principal
call :build atendimento
call :build cliente
call :build pagamento
call :build pedido
call :build produto
call :build reclamacao
call :build mariadb

cd %ROOT_ADDR%

rem Preparando o arquivo de variaveis
type params.properties > .env
echo VERSION=%VERSION% >> .env

echo.
echo Imagens criadas/atualizadas:
docker images focus-*:%VERSION%
echo.
echo Use o seguinte comando para iniciar os dockers:
echo     docker-up.cmd
echo.
