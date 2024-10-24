-- ALTERANDO A TABELA VENDAS PARA ADICIONER AS FKS
alter table vendas
add column id_cliente int,  -- fk para a tabela clientes
add column id_funcionario int, -- fk para a tabela funcionarios
add index idx_id_cliente (id_cliente),
add index idx_id_funcionario (id_funcionario),
add constraint fk_vendas_cliente foreign key (id_cliente) references Clientes(id_cliente),
add constraint fk_vendas_funcionario foreign key (id_funcionario) references Funcionarios(id_funcionario);

alter table Agendamentos
add column  id_cliente int, -- FK para a tabela Clientes
add column  id_servicos int, -- FK para a tabela Servicos
add column  id_funcionario int, -- FK para a tabela Funcionarios
add index idx_id_cliente_agendamento (id_cliente), -- Indice para a FK
add index idx_id_servicos (id_servicos), -- Indice pars a FK
add index idx_id_funcionario_agendamento (id_funcionario),-- Indice para a FK 
add constraint fk_vendas_clientes foreign key (id_cliente) references Clientes(id_cliente),
add constraint fk_agendamento_servicos foreign key (id_servicos) references Servicos(id_servicos),
add constraint fk_agendamento_funcionario foreign key (id_funcionario) references Funcionarios(id_funcionario);

alter table Estoque 
add index idx_nome_produto (nome_produto);
alter table Clientes 
add index idx_nome_cliente (nome_cliente);
alter table Funcionarios
add index idx_nome_funcionario (nome_funcionario);
alter table Servicos 
add index idx_nome_servicos (nome_servicos);