use `bd_exercicio`;

alter table `bd_exercicio`.`tb_funcionario`
add index `fk_ger_depto_cod_idx` (`ger_depto_cod` asc);

ALTER TABLE `bd_exercicio`.`tb_funcionario`
ADD CONSTRAINT `fk_ger_depto_cod`
FOREIGN KEY (`ger_depto_cod`)
REFERENCES `bd_exercicio`.`td_departamento`(`depto_codigo`);


