
select * from aluno;
select * from matricula;

-- Liste os nomes dos alunos que fizeram matrícula em Janeiro de 2014.

select a.nome
	from aluno a
	, matricula m
    where month(data_matricula) = 01
    and year(data_matricula) = 2014
    and m.aluno_id = a.id	

-- Liste os nomes dos cursos de um determinado professor.

select * from curso;
select * from professor;

select c.disciplina
	from curso c
    , professor p
    where c.professor_id = 3
    and c.professor_id = p.id; -- relaciona a Fk com a chave primária, senão não funciona.
    
-- Liste os nomes dos alunos de um determinado curso.
select * from aluno;
select * from curso;
select * from matricula;

select a.nome
	from curso c
    , aluno a
    , matricula m
    where m.curso_id = 2
    and m.curso_id = c.id
    and m.aluno_id = a.id;

/* Explicação: tabela aluno e curso ( many to many) gerou uma terceira tabela (matrícula). 
A tabela matricula informo que o curso é o 2 faço a associação do Fk curso_id da tabela matricula
com a chave primaria (id) da tabela curso e como vou fazer uma busca em aluno também para mostrar o nome
referencio o aluno_id a sua chave primária também ( id ) na tabela aluno.*/
