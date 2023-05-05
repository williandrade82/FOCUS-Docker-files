# FOCUS - Reclamações
## Sobre
Arquivos para subir, em docker local (Windows) os dockers do projeto FOCUS - Grupo B - 5SCJO - 2022 - FIAP.
</br>

## Links úteis

O código fonte do projeto está distribuído em branches do seguinte projeto: https://github.com/danielPaiva258/hackaton-reclamacoes

<table>
<tr><th>Tarefa/Service</th><th>Github</th><th>docker pull (hub.docker.com)</th></tr>
<tr><td><b>Reclamacao</b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/microservice_reclamacao </td><td> williandrade82/focus-reclamacao:v3.0</td></tr>
<tr><td><b>Produto</b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/microservice_produto </td><td>williandrade82/focus-produto:v3.0</td></tr>
<tr><td><b>Pedido</b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/microservice_pedido </td><td>williandrade82/focus-pedido:v3.0</td></tr>
<tr><td><b>Pagamento</b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/microservice_pagamento </td><td>williandrade82/focus-pagamento:v3.0</td></tr>
<tr><td><b>Cliente</b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/microservice_cliente </td><td>williandrade82/focus-cliente:v3.0</td></tr>
<tr><td><b>Atendimento</b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/microservice_atendimento </td><td>williandrade82/focus-atendimento:v3.0</td></tr>
<tr><td><b>Segurança</b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/microservice_security </td><td>williandrade82/focus-security:v3.0</td></tr>
<tr><td><b>Banco de dados MariaDB </b></td><td> https://github.com/danielPaiva258/hackaton-reclamacoes/tree/mariadb </td><td>williandrade82/focus-mariadb:v3.0</td></tr>
</table>

Informações gerais e facilidades para testes disponíveis em https://github.com/williandrade82/FOCUS-Docker-files


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

</td></tr></table>

# Cronograma do projeto
## Fase 01
<table><tr>
<th>Entregas - Etapa 1 - Backend: </th><th>Horas Desenv.</th><th>Data Entrega</th><th>Status</th></tr>
<tr><td>Preparação</td><td> 36:30 </td><td>15-abr</td><td>Entregue</td></tr>
<tr><td>Login </td><td>7:00 </td><td>16-abr</td><td>Entregue</td></tr>
<tr><td>Painel de Controle </td><td>9:30 </td><td>19-abr</td><td>Entregue</td></tr>
<tr><td>Detalhes da Reclamação </td><td>29:30 </td><td>26-abr</td><td>Entregue</td></tr>
<tr><td>Registro de Reclamação </td><td>8:00</td><td> 28-abr</td><td>Entregue</td></tr>
<tr><td>Extrato de Reclamação </td><td>10:00 </td><td>1-mai</td><td>Entregue</td></tr>
<tr><td>Revisão e Ponto de Qualidade </td><td>16:00 </td><td>5-mai</td><td>Entregue</td></tr>
<tr><td><b>Total Geral </b></td><td><b>116:30</b></td><td><b>5-mai</b></td><td><b>Entregue</b></td></tr></table>

## Fase 02
<table><tr>
<th>Entregas - Etapa 2 - Frontend: </th><th>Horas Desenv.</th><th>Data Entrega</th><th>Status</th></tr>
<tr><td>Login                   </td><td>05:00 </td><td>06-maio</td><td>Pendente</td></tr>
<tr><td>Painel de Cotrole       </td><td>19:30   </td><td>11-mai</td><td>Pendente</td></tr>
<tr><td>Detalhes da Reclamação  </td><td>21:00   </td><td>16-mai</td><td>Pendente</td></tr>
<tr><td>Registro da Reclamação  </td><td>10:00  </td><td>19-mai</td><td>Pendente</td></tr>
<tr><td>Extrato de Reclamação   </td><td>13:00     </td><td> 22-mai</td><td>Pendente</td></tr>
<tr><td>Integração com e-mail para Atendimento Off-line </td><td>32:00 </td><td>30-mai</td><td>Pendente</td></tr>
<tr><td>Site Reclação           </td><td>58:00  </td><td>13-jun</td><td>Pendente</td></tr>
<tr><td>Chat pelo site de Reclamação (com bot)  </td><td>80:00 </td><td>03-jul</td><td>Pendente</td></tr>
<tr><td>Chat pelo Whatsapp no sistema de Atendimento </td><td>40:00 </td><td>13-jul</td><td>Pendente</td></tr>
<tr><td><b>Total Geral </b>     </td><td><b>278:30</b></td><td><b>13-jul</b></td><td><b>Pendente</b></td></tr></table>
