-- Consultas Where

select * from aluno;

select * from aluno
	where nome = 'Wagner' and idade >= 24;
    
    
-- código exemplo da video aula. 
-- Selecioana todos os campos da coluna observação, onde  esses campos não sejam nulos.
select * from pedido
	where observacao is not null;