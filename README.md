# FOCUS - Dockerfiles
## Sobre
Arquivos para subir, em docker local (Windows) os dockers do projeto FOCUS - Grupo B - 5SCJO - 2022 - FIAP.

## Como usar
Sem adaptações, funciona bem em ambiente Windows com Docker Desktop.

## Criar as imagens localmente
Após baixar os arquivos, é possível criar as imagens localmente.
Para isso, execute o comando ```docker-build-all.cmd [idVersao]``` na raiz.

## Executar os dockers localmente
Para executar todos os dockers, caso você tenha criado as imagens pelo comando anterior, é possível executar o comando "docker-up.cmd" no prompt.
Serão criados dockers, um para cada imagem, de acordo como arquivo "docker-compose.yaml".

## Criar dockers a partir da imagem remota
Caso queria baixar as imagens a partir do repositório Docker.io/williandrade82/focus-*:v3.0, execute o comando ```docker-up remoto``` na raiz dos arquivos.

# Ambiente de demonstração
Serão criados os seguintes docker no seu ambiente local:
<table>
<tr><th>Serviço</th><th>Microservico</th><th>Porta (host:docker)</th></tr>
<tr><td><b>focus-reclamacao</b></td><td> Dado de Reclamações </td><td>80:8080</td></tr>
<tr><td><b>focus-produto</b></td><td> Informações sobre produtos </td><td>81:8080</td></tr>
<tr><td><b>focus-pedido</b></td><td> Sistema Comercial - Pedidos </td><td>82:8080</td></tr>
<tr><td><b>focus-pagamento</b></td><td> Sistema de Pagamento </td><td>83:8080</td></tr>
<tr><td><b>focus-security</b></td><td> ERP - Cliente </td><td>84:8080</td></tr>
<tr><td><b>focus-atendimento</b></td><td> Dados de Atendimento das reclamações </td><td>85:8080</td></tr>
<tr><td><b>focus-security</b></td><td> Autenticação e criação de usuários </td><td>86:8080</td></tr>
<tr><td><b>focus-mariadb</b></td><td> Banco de dados MariaDB </td><td>3636:3636</td></tr>
</table>

# Roteiro de teste

Para facilitar os testes, baseie-se no seguinte roteiro:
<table>
<tr><td><b>Passo1.</b></td><td>
Use o arquivo ```hackaton.postman_collection.json``` para guiar o seu teste. Ele vai te ajudar a encotnrar todas as urls disponíveis.
</td></tr>
<tr><td><b>Passo2.</b></td><td>
No Postman, abra as pastas 'Grupo B - 5SCJO - Hackaton - FOCUS\Testes' e use todo seu conteúdo para testar as possibilidades no backend do sistema.
</td></tr>
<tr><td><b>Passo3.</b></td><td>
O sistema funciona com autenticação, então pegue um token de autenticação na pasta '01 - Segurança'. Você pode criar um novo usuário com qualquer um dos seguintes roles: ['ADMIN', 'SUP-ATENDENTE','ATENDENTE', 'CLIENTE']
</td></tr>
<tr><td><b>Passo4.</b></td><td>
Seja criativo sem se esquecer que a aplicação está em desenvolvimento.