/*	=== > DELETANDO DADOS
- O comando DROP remove uma tabela do banco de dados. Todas as linhas de tabelas, índices e 
privilégios também serão removidos.

- O comando DELETE é usado para remover linhas de uma tabela. Uma cláusula WHERE  pode ser 
usada apenas para remover algumas linhas. Se nenhuma condição WHERE é especificada, todas as 
linhas serão removidas.

- O comando TRUNCATE remove todas as linhas de uma tabela. Esta operação não pode ser revertida e nenhuma TRIGGER será disparada.
Como tal, TRUCATE é mais rápido e não usa espaço de UNDO como o comando DELETE.
*/

-- Criar tabela
create table teste (
	id bigint primary key not null auto_increment,
    nome varchar(100)
)engine=InnoDB;

select * from teste;

-- drop: Apaga schema/base de dados ou tabelas.
drop table teste;


/* delete: Apaga linhas da tabela através de condições where. Caso for apagar todas as linhas
 da tabela, é recomendável usar o comando TRUNCATE, pois é mais rápido.
 Observe que drop apaga ou schema ou tabela e delete e truncate apaga linhas(conteúdo).
*/
-- Abaixo apaga dados/linhas da tabela e não a tabela. Para habilitar comando delete e update
-- sem necessidade de passar id/key desmarcar: Edit -> Preferences -> SQL Editor -> desmarcar a checkbox: Safe update.
-- forbit UPDATE and DELETES with no KEy Where...

delete from teste;	-- esse modo precisa desabilitar a opção acima.

delete from teste	-- nesse não precisa.
	where id = 2;
    


/*
Diferença entre TRUNCATE e DELETE

1 – TRUNCATE é um comando DDL enquanto DELETE é um comando DML.

2 – TRUNCATE é muito mais rápido do que o DELETE.

Motivo: Quando você digita DELETE todos os dados a serem excluídos são copiados primeiro para
Tablespace de UNDO. Depois a operação de deleção é realizada. Quando você digita ROLLBACK
 após a exclusão de linhas numa  tabela, você pode obter de volta os dados (O Banco usa os 
 dados que estão na Tablespace de UNDO para desfazer as mudanças).
Quando você digita o comando  TRUNCATE, ele remove os dados diretamente sem copiá-lo para 
Tablespace de UNDO, por isso o comando TRUNCATE é mais rápido.

3 – Não existe Rollback para o comando TRUNCATE mas para o DELETE sim. O comando TRUNCATE
remove o registro permanente.


*/
