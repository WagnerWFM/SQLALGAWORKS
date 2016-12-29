/*
	Agrunando dados com grup by
*/

select * from matricula;


/*
Abaixo:
- seleciona coluna status.
- seleciona coluna valor_total somando os campos e chamando a coluna de total_vendas
- define a tabela.
- agrupa por status ( separa na hora de mostrar o valor_total por exemplo do status cancelado, pendente, aprovado).

*/
select status
    , sum(valor_total) total_vendas
	from matricula
    group by status;
    
select forma_pagamento
	 , status
     , sum(valor_total)
    from matricula
    where data_matricula >= '2016-01-01'
    group by forma_pagamento;