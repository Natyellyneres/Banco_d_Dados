create database OdontoVida;
use OdontoVida;
create table Paciente(
paciente_id INT auto_increment primary key,
nome varchar(100) not null,
data_nascimeto date not null,
telefone varchar(20),
endereco text,
email varchar(100)
);
create table Dentista(
dentista_id INT auto_increment primary key,
nome varchar(100) not null,
especialidade varchar(50),
telefone varchar(20),
email varchar(100)
);
create table Consulta(
consulta_id int auto_increment primary key,
paciente_id INT,
dentista_id int,
data_consulta datetime,
foreign key(paciente_id) references Paciente(paciente_id),
foreign key(dentista_id) references Dentista(dentista_id)
);
create table Procedimentos(
procendimentos_id int auto_increment primary key,
nome varchar(100) not null,
custo decimal(10,2)not null
);
create table Tratamento_procedimento(
tratamento_id int,
procedimento_id int,
quantidade int default 1,
primary key(tratamento_id, procedimento_id),
foreign key(tratamento_id) references Tratamento(tratamento_id),
foreign key(procedimento_id) references Procedimento(procedimento_id)
);
create table Pagamento(
pagamento_id int auto_increment primary key,
tratamento_id int,
valor decimal(10,2) not null,
data_pagamento date,
foreign key(tratamento_id) references tratamento(tratamento_id)
);



