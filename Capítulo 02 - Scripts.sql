select * from cliente;

select * from pedido;

-- ## Alterando table e incluíndo chave estrangeira.
-- altera a tabela cliente,
-- add uma coluna para chave estrangeira chamada cliente_id 
-- adicionando uma restrição para aceitar valores de chave estrangeira,
-- informa que cliente_id é uma FK
-- fazendo referencia a tabela cliente e atributo id.

alter table pedido
	add column cliente_id bigint,
	add constraint  fk_cliente_id
	foreign key (cliente_id)
	references cliente(id);

-- #Inserir pedido relacionando com um cliente
insert into pedido (
	data_criacao,
    observacao,
    data_entrega,
    valor_frete,
    valor_total,
    cliente_id

)
	values('2016-08-14 11:22;03', 'pedido urgente', '2016-08-16', 30.99, 405.70, 2);

    
-- # Inserir Cliente 
insert into cliente (
	nome,
    email,
    data_nascimento
)
	values ('Patrícia', 'patricia@email.com', '1996-11-16' );
    
    