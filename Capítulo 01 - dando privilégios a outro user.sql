select * from aluno;

select * from professor;

-- permissao de select e insert para schema pedido_venda em user algaworks acessando localmente ( localhost)

grant select, insert on pedido_venda.* to 'algaworks'@'localhost'
flush privileges;

grant select, insert, alter, delete on escola_ingles.* to 'algaworks'@'localhost';
flush privileges;