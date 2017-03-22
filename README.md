# Desafio Ionatec - Dev Rails

### O Problema

Temos uma Pet Shop especializada em cachorros e queremos uma listagem simples, mas com filtro básicos, dos animais (cachorros) que já passaram pela Pet Shop.
	
Cada animal tem uma raça (você pode obter a listagem de raças em http://www.portalfilhotes.com.br/racas-de-a-z/), gênero (macho/fêmea), castrado (sim/não), data de nascimento, nome, nome do dono, telefone do dono e data da última vez que passou pela Pet Shop.

Para testar o software você precisa desenvolver também um gerador de 1.000 cachorros aleatórios para a Pet Shop


### Solução Desenvolvida

Uma aplicação "Only Api" em Rails 5 consumida por um frontend desenvolvido em Angular e Bootstrap

#### Tecnologias
* Rails 5.x
* Angular 2.x
* Bootstrap 3.x
* DataTable

#### Pré-requisitos

- Ruby 2.3.3 - [Instalação](https://gorails.com/setup/ubuntu/14.04#ruby)
- Rails 5.0.2 - [Instalação](https://gorails.com/setup/ubuntu/14.04#rails)
- Angular CLI - [Instalação & Requisitos](https://github.com/angular/angular-cli#installation)

#### API Rails
1. Acesse o diretório 'pet_api'
2. Instale as dependências: ```bundle install ``` 
3. Crie a base de dados: ``` rake db:create db:migrate ```

<b> Gerador de 1.000 cachorros </b>

4. Para gerar os cachorros: ``` rake dev:create_dogs ```

>Como os 1000 registros são dados apenas para teste da aplicação e não dados que devem vir preenchidos para que a aplicação funcione foi criada uma <b>task</b> no escopo dev para a criação dos cachorros.
>
>A tarefa faz um parse no HTML do site informado, extrai e armazena todas as raças em um array. Em seguida são gerados os cachorros sorteando as raças deste array. Também utilizamos a gem Faker para a criação dos outros dados do animal.

4. Subimos a aplicação ``` rails server ```

Mantenha o terminal aberto com a API Rodando.

----------

#### APP Angular2
1. Acesse o diretório 'frontApp'
2. Instalamos as dependencias necessárias: ``` npm install ``` 
3. Iniciando: ``` ng serve --open ```

----------
#### TO-DO
- Adicionar 'gem ransack' para filtrar as buscas também no backend.

