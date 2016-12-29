/*
FUNÇÃO AVG

Abaixo:
- seleciona coluna status.
- seleciona coluna valor_total fazendo a média. A média é separada por STATUS porque foi usado o group by.
- define a tabela.
- agrupa por status ( separa na hora de mostrar o valor_total por exemplo do status cancelado, pendente, aprovado).

*/
select * from matricula;

select status
    , avg(valor_total) total_vendas
	from matricula
    group by status;
    
select forma_pagamento
	 , status
     , avg(valor_total)
    from matricula
    where data_matricula >= '2016-01-01'
    group by forma_pagamento;

