select * from aluno;

select * from professor;


grant select, insert on pedido_venda.* to 'algaworks'@'localhost'
flush privileges;

grant select, insert, alter, delete on escola_ingles.* to 'algaworks'@'localhost';
flush privileges;