-- Desafio 2 A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda coluna deve possuir o alias "Nível" e exibir o nível de remuneração do cargo com base no seu salário máximo, categorizando os níveis de remuneração da seguinte forma:
	-- Salário máximo entre 5000 e 10000 -> Baixo
	-- Salário máximo entre 10001 e 20000 -> Médio
	-- Salário máximo entre 20001 e 30000 -> Alto
	-- Salário máximo acima de 30000 -> Altíssimo
-- Os resultados devem estar ordenados pelo nome do cargo em ordem alfabética.
-- Selecionar a coluna JOB_TITLE e renomear para Cargo, junto com o select usar o case e especificar condições e valores
-- assim que finaliza - resultado impresso na coluna com nome Nível por último ordena os resultados em ordem crescente

SELECT JOB_TITLE AS 'Cargo',
CASE
WHEN (MIN_SALARY >= 5000) AND (MAX_SALARY <= 10000) THEN 'Baixo'
WHEN (MIN_SALARY >= 10001) AND (MAX_SALARY <= 20000) THEN 'Médio'
WHEN (MIN_SALARY >= 20001) AND (MAX_SALARY <= 30000) THEN 'Alto'
WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
END AS 'Nível'
FROM hr.jobs
ORDER BY Cargo;

