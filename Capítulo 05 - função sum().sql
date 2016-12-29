
/* Trabalhando com funções. */

-- Soma.
select * from matricula;

-- Abaixo o nome da coluna aparece sum(valor_total)
select sum(valor_total)
	from matricula;

-- Abaixo foi dado um nome para a noa coluna que irá mostrar os valores totais. Foi chemada
-- total_matriculas.
select sum(valor_total) total_matriculas
	from matricula;
    
