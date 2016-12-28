-- capítulo 04 -  alter e drop

select * from matricula;

alter table matricula
	add column forma_pagamento varchar(20) not null;
    
    
/* Valor default, mesmo sendo not null o campo (STATUS) agora aceita deixar vazio no insert 
 esse campo, porém ele sempre irá adicionar o valor definido como default (análise). */
alter table matricula
	add column status varchar(20) not null default 'análise';

-- DROP (APAGAR) coluna.

alter table matricula
	drop column status;