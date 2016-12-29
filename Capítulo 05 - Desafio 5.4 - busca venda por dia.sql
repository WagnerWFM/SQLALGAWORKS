/*
	Desafio: 5.4
*/


select *
	from matricula;
    
select data_matricula
	, status
    , valor_total
    from matricula
    where status = 'concluida';