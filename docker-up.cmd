@echo off

if NOT EXIST .env goto :SEM_ARQUIVO

set PARAM=%1
if "%PARAM%"=="" goto :SEM_PARAMETRO
if "%PARAM%"=="local" set REPOSITORY=
if "%PARAM%"=="padrao" set REPOSITORY=williandrade82/
if "%PARAM%"=="remoto" goto :REMOTO
goto :COMANDO

:REMOTO
if NOT EXIST  .repositorio-env goto :SEM_ARQ_REPOSITORIO
FOR /F "tokens=*" %%A in (.repositorio-env) do SET REPOSITORY=%%A
set REPOSITORY=%REPOSITORY%/

if NOT EXIST  .repositorio-tag-env goto :SEM_ARQ_REPOSITORIO_TAG
FOR /F "tokens=*" %%A in (.repositorio-tag-env) do SET VERSAO=%%A
set VERSION=%VERSAO%

:COMANDO
echo.
echo Usando repositorio %REPOSITORY%:%VERSION%
echo.
echo Preparando o ambiente. Aguarde...
docker-compose -p focus-%PARAM% up -d
echo Ambiente preparado.
echo.
goto :eof

:SEM_ARQUIVO
echo !!! ATENCAO !!!
echo   Nao eh possivel executar esse comando sem algumas variaveis.
echo   Para compor o ambiente corretamente, execute o comando "docker-build-all.cmd [idVersao]" antes.
echo.
goto :eof

:SEM_PARAMETRO
echo !!! ATENCAO !!!
echo.
echo Informe o tipo de repositorio a ser usado na criacao dos dockers locais.
echo   As opcoes sao:
echo     local  : Para usar as imagens do repositorio docker local
echo     remoto : Para usar as imagens do repositorio informado no arquivo .repositorio (caso tenha sido informado ou usado o comando docker-push.cmd)
echo     padrao : Para usar o repositorio padrao docker.io/williandrade82
echo.
echo  Exemplo:
echo      docker-up.cmd padrao
echo.
goto :eof

:SEM_ARQ_REPOSITORIO
echo !!! ATENCAO !!!
echo.
echo    Foi informado o uso do repositorio remoto, porem ele não esta corretamente configurado.
echo    Crie um arquivo ".repositorio-env" com o nome do repositorio remoto que pretende usar, ou
echo    use o comando "docker-push.cmd" para criar o arquivo automaticamente.
echo.
goto :eof