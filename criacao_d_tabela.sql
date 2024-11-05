create schema `bd_exercicio`;
use `bd_exercicio`;
create table `bd_exercicio`. `tb_funcionario`(
`func_codigo` int not null primary key,
`func_nome` varchar(60) null,
`func_cpf` varchar(13) null,
`func_end` varchar(90) null,
`forn_salario` numeric,
`ger_depto_cod` int,
`trab_depto_cod` int,
`proj_cod` int
);
create table `bd_exercicio`. `tb_departamento`(
`depto_codigo` int not null primary key,
`depto_nome` varchar(60) null,
`local_cod` int
);
create table `bd_exercicio`. `tb_projeto`(
`proj_codigo` int not null primary key,
`proj_numero` int,
`depto_cod` int,
`local_cod` int
);
create table `bd_exercicio`. `tb_local`(
`local_codigo` int not null primary key,
`local_desc` varchar(60) null
);



