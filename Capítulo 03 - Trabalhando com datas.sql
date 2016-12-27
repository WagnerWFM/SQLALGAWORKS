-- Trabalhando com datas

select * from professor;


-- Usando função

select * from professor
	where month(data_nascimento) = 7
    and year(data_nascimento) = 1982
    
-- Sem função. Na busca de data pode deixar com horario ou somente a data.
select * from professor
	where data_nascimento >= '1982-07-21 00:00:00'
    and data_nascimento <= '1992-08-09 23:59:59'
    and horario_entrada = '07:30:00';
		