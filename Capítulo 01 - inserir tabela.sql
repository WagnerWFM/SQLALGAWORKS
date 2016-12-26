-- Inserir na tabela.

use pedido_venda;

show grants;

-- date yyyy-mm-dd 	(formato da data)
insert into cliente ( nome, email, data_nascimento)
	values ('Jose Ferreira', 'jose@email.com', '1989-06-14');
 
 select * from cliente;
 
 insert into pedido (data_criacao, data_entrega, valor_frete,valor_total) 
	values ('2014-03-04 10:03:02', '2014-03-09', 30.25, 352.49);
    
    SELECT * 
FROM   pedido; 
