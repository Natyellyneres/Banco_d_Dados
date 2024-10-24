create database petshop;
use petshop;

create table estoque(
id_estoque int auto_increment primary key,
nome_produto varchar(100) not null,
quantidade int not null,
preco decimal(10,2) not null,
data_entrada date not null,
descrica_produto text
);
create table clientes(
id_cliente int auto_increment primary key, -- chave primaria
nome_cliente varchar(100)not null,
telefone varchar(15),
email varchar(100),
endereco text,
data_resgistro date not null
);
create table funcionarios(
id_funcionario int auto_increment primary key, -- chave primaria
nome_funcionario varchar(100)not null,
telefone varchar(15),
email varchar(100),
cargo varchar(50),
salario decimal(10,2),
data_contratação date not null
);
create table servicos(
id_servicos int auto_increment primary key, -- chave primaria
nome_servicos varchar(100)not null,
descricao_servicos text,
preco_servicos decimal(10,2) not null,
duracao_estimada time
);

create table vendas(
id_venda int auto_increment primary key,
data_venda date not null,
total decimal(10,2) not null
);

create table agendamentos(
id_agendamento int auto_increment primary key,
data_agendamento date not null,
horario time not null,
obsevacoes text
);