select current_user();

/* Indices: comando abaixo adiciona um índica na coluna nome, o que facilita na hora da busca. 
Sempre utilizar índices nas colunas que seão feitas pesquisar, exceto se a mesma for null.*/

select * from aluno;

alter table aluno
	add index ix_nome (nome);


/* 
explain apenas didático para mostrar mais informações. Para saber se a coluna está indexada,
basta com o código abaixo verificar se a coluna type = ref, se tiver all ainda não foi indexada.
*/

explain select * from aluno
	where nome = 'Daniela Dias';
    
/*
No caso do like a indexação das colunas não tem efeito já que elas funcionam apenas com 
buscas exatas.
*/