
-- Criando relacionameno muitos para muitos entre aluno e curso. 
-- Então temos uma terceira tabela no BD chamada matrícula.

select * from aluno;
select * from curso;

create table matricula (
	aluno_id bigint,
    curso_id bigint,
    data_matricula date,
    primary key (aluno_id, curso_id),
    foreign key (aluno_id) references aluno(id),
    foreign key (curso_id) references curso(id)

)engine=InnoDB;

-- Inserindo mais dados na tabela curso.

insert into curso (
	disciplina,
    quantidade_horas,
    professor_id
) values (
	'Teoria da computação', 80, 2	
)

-- Inserindo mais dados na tabela aluno.

insert into aluno (
	nome,
    idade,
    endereco,
    data_nascimento

) values (
	'Augusto Santos', 22, 'Av Cardoso Dias', '1994-01-02'
)

-- Inserindo dados na nova tabela criada entre aluno e curso ( matricula).

select * from matricula;

insert into matricula (
	aluno_id,
    curso_id,
    data_matricula

) values (
	2, 3, '2016-02-01'
)