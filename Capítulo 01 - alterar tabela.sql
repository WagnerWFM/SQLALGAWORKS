-- Alterando tabela

/*
Comando ALTER funciona para adicionar colunas,alterar nome de tabela, chaves estrangeiras e
 restrições por exemplo,conforme modelo abaixo. Para atualizar campo usamos o comando UPDATE.
	Comando alterar tabela: ALTER TABLE nome_da_table RENAME novo_nome
*/

create database escola_ingles;
use escola_ingles;

select * from professor;
select * from curso;

alter table curso
	add column professor_id bigint,
    add constraint fk_professor_id
    foreign key (professor_id)
    references professor(id);
    
insert into curso (
	disciplina,
    quantidade_horas,
    professor_id
) values ('Sistemas Operacionais', 180,1);