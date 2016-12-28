-- atualizando dados

select * from matricula;
select * from curso;

/*
No mysql preciso desabilitar uma opção no Workbench para rodar alguns comando UPDATE E DELETE
sem a ncessidade de informar uma key(chave) toda vez que executar o comando.
Edit -> Preferences -> SQL Editor -> desmarcar a checkbox: Safe update. forbit UPDATE and DELETES with no KEy Where...
*/

-- Modo sem desativar a opção
update curso
	set quantidade_horas = 90
    where disciplina = 'Teoria da computação'
    and id = 3;


-- Comando desativando opção acima. Sem key afeta várias linhas se tiver.

update curso
	set quantidade_horas = 100
    where disciplina = 'Teoria da computação';


-- tabela many to many (de aluno e curso).
update matricula
	set status = 'concluida'
    where forma_pagamento = 'dinheiro'
    and aluno_id = 2
    and curso_id = 3;