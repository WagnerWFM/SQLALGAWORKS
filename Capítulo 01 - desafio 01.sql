
create database escola_ingles;
use escola_ingles;
create table aluno (
	id bigint primary key auto_increment,
    nome varchar(100),
    idade int,
    endereco varchar(150),
    data_nascimento date

)engine=InnoDB;

select * from aluno;

create table professor (
	id bigint primary key auto_increment,
    nome varchar(100),
    idade int,
    endereco varchar(150),
    data_nascimento date,
    horario_entrada time

)engine=InnoDb;

select * from professor;

--INSERIR DADOS NA TABELA