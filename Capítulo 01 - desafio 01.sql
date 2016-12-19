
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

create table curso (
	id bigint primary key auto_increment,
    disciplina varchar(50),
    quantidade_horas int

)engine=InnoDB;

-- INSERT

insert into aluno (nome, idade, endereco, data_nascimento)
	values ('Wagner', '24', 'Av Rondom Pacheco 634', '1992-01-23');

insert into professor (nome, idade, endereco, data_nascimento, horario_entrada)
	values	('Normândes', '34', 'Av Brasil 1500', '1982-07-21', '07:30');
    
insert into curso ( disciplina, quantidade_horas)
	values ('Banco de dados 1', '160');
    
select * from aluno;
select * from professor;
select * from curso;
    
    
    
    
