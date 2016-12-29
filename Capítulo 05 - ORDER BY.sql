/*
	FUNÇÃO ORDER BY.
    Podemos ordenar asc (que já é default) ou desc.
*/

-- Ascendente (ASC) já é default não precisa colocar.
select * from aluno
	order by nome;
    
    
-- Ordenação descendente.
select * from aluno
	order by nome desc;