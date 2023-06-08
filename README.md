<p align="center">
  <img src="https://i.imgur.com/lFLiGcu.jpeg" alt="Logo">
</p>


# API Fortress

API Fortress é um programa de exemplo que implementa uma API para gerenciamento de funcionários. A API permite criar, ler, atualizar e excluir funcionários de um banco de dados PostgreSQL usando o framework Diesel.

## Integrantes

* Alvaro Richard
* Leonardo Ravanelli
* Lana Caroline


## Funcionalidades

* Listar todos os funcionários
* Encontrar um funcionário por ID
* Criar um novo funcionário
* Atualizar um funcionário existente
* Excluir um funcionário

## Pré-requisitos

Antes de executar o programa, certifique-se de ter o seguinte instalado em seu sistema:

* Rust (1.50.0 ou superior)
* PostgreSQL (com banco de dados e usuário configurados)
* Diesel CLI (para executar as migrações do banco de dados)

## Configuração

1. Clone o repositório:
```
git clone https://github.com/alvarorichard/APIFortress.git

cd api-frotress
```

2. Instale as dependências do Diesel CLI e execute as migrações do banco de dados:

```
cargo install diesel_cli --no-default-features --features postgres
diesel setup
diesel migration run
```

3. Crie um arquivo `.env` na raiz do projeto e defina as variáveis de ambiente necessárias:

DATABASE_URL=postgres://username:password@localhost/database
HOST=127.0.0.1
PORT=8080


Certifique-se de substituir `username`, `password` e `database` com suas próprias configurações do PostgreSQL.

## Compilação e Execução

Para compilar e executar o programa, execute o seguinte comando na raiz do projeto:


cargo run


A API estará disponível em `http://localhost:8080`.

## Rotas da API

- `GET /employees`: Retorna todos os funcionários.
- `GET /employees/{id}`: Retorna um funcionário por ID.
- `POST /employees`: Cria um novo funcionário.
- `PUT /employees/{id}`: Atualiza um funcionário existente.
- `DELETE /employees/{id}`: Exclui um funcionário.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests ou relatar problemas.

## Licença

Este programa é licenciado sob a GNU General Public License v3.0. Consulte o arquivo LICENSE para obter mais informações sobre os termos da licença.

![GPL-3.0 Logo](https://www.gnu.org/graphics/gplv3-127x51.png)
