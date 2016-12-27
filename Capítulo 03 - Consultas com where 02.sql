
select * from aluno;
select * from curso;
select * from professor;

select cu.*
	from curso cu
    , professor	p
    where cu.professor_id = p.id
    and p.nome = 'Carlos'
    
-- Buscar um aluno de nome Augusto Santos que cursa disciplina S.O e que tem como professor da
-- disciplina S.O o Normandes.
-- Explicação:
/*
	select (mostra na tela o resultado) da tabela al (aluno) e p.nome ( professor e coluna nome).
	from (faz a busca nas tabelas curso, aluno e professor dando respectivos apelidos.
    where desde que...and
    and...
    and...

*/

select al.*, p.nome
	from curso cu
	, aluno al
    , professor p
    where al.nome = 'Augusto Santos'
    and cu.disciplina = 'Sistemas operacionais'
    and cu.professor_id = p.id
    
-- Retorna a vizualização das três tabelas (curso, aluno e professor) com todos os campos/colunas.

select al.*,cu.*, p.*
	from curso cu
	, aluno al
    , professor p
    where al.nome = 'Augusto Santos'
    and cu.disciplina = 'Sistemas operacionais'
    and cu.professor_id = p.id