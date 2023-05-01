@echo off
rem Preparando para publicar todas as imagens em um repositório comum.

if "%1"=="" goto :NO_REP_DEF
set REPOSITORIO=%1

if "%2"=="" goto :NO_SOURCE_PATERN_DEF
set SOURCE_PATERN=%2

if "%3"=="" goto :NO_SOURCE_TAG_DEF
set SOURCE_TAG=%3

if "%4"=="" goto :NO_TARGET_PATERN_DEF
set TARGET_PATERN=%4

if "%5"=="" goto :NO_TARGET_TAG_DEF
set TARGET_TAG=%5

goto :PRINCIPAL

:PUSH %1 
set APP=%1
echo.
echo ----------------------------------------------------
echo Publicando imagem para aplicativo %APP%
docker tag %SOURCE_PATERN%%APP%:%SOURCE_TAG% %REPOSITORIO%/%TARGET_PATERN%%APP%:%TARGET_TAG%
docker push %REPOSITORIO%/%TARGET_PATERN%%APP%:%TARGET_TAG%
rem docker rmi %REPOSITORIO%/%TARGET_PATERN%%APP%:%TARGET_TAG%

goto :eof

:PRINCIPAL
echo PUBLICANDO IMAGENS...
call :PUSH atendimento
call :PUSH cliente
call :PUSH mariadb
call :PUSH pagamento
call :PUSH pedido
call :PUSH produto
call :PUSH reclamacao

echo.
echo ----------------------
echo Finalizando publicacao...
timeout 5
echo Imagens publicadas:
docker search %REPOSITORIO%/%TARGET_PATERN%
echo.
goto :EOF

:NO_REP_DEF
echo ERRO: Sem repositorio definido.
echo       Use o primeiro parâmetro para informar o repositório público
echo.
goto :INSTRUCTIONS

:NO_SOURCE_PATERN_DEF
echo ERRO: Nao foi definido o padrao para o nome de origem.
echo       Informe no segundo parametro o padrao de nome das imagens locais, usado antes do 'nome variavel'.
echo.
goto :INSTRUCTIONS

:NO_SOURCE_TAG_DEF
echo ERRO: Sem definicao da TAG de origem.
echo       Informe no terceiro parmetro a tag usada localmente para as imagens.
echo.
goto :INSTRUCTIONS

:NO_TARGET_PATERN_DEF
echo ERRO: Sem definicao o padrao para o nome de destino.
echo       Informe no quarto parametro o padrao de nome das imagens que sera usado antes do nome variavel no repositorio remoto.
echo.
goto :INSTRUCTIONS

:NO_TARGET_TAG_DEF
echo ERRO: Sem definicao da TAG de destino.
echo       Informe no quinto parmetro a tag a ser usada remotamente para as imagens.
echo.
goto :INSTRUCTIONS



:INSTRUCTIONS
echo Formato de uso do comando
echo     docker-push.cmd [repositorio] [padrao_local] [tag_local] [padrao_remoto] [tag_remoto]
echo.
echo Exemplo:
echo     docker-push.cmd williandrade82 focus- vbeta-01.1 focus- v1.0