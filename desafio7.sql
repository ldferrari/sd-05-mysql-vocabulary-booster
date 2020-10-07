-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março.
-- Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da 
-- pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT UCASE(CONCAT(e.FIRST_NAME,' ',e.LAST_NAME)) AS 'Nome completo', -- Juntando os nomes dos empregados CAIXA ALTA- espaço entre primeiro e último nome: tabela employees
jh.START_DATE AS 'Data de início', -- Seleciona data de ínicio: tabela job_history
SALARY AS 'Salário' -- Seleciona o departamento: tabela departments
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID -- Relação job_history com employees
WHERE MONTH(jh.START_DATE) IN (1,2,3) -- Seleção dos meses de interesse: jan, fev ou março
ORDER BY `Nome completo`, jh.START_DATE; -- Ordenação pelo nome em ordem alfabética em caso de empate pela data de início
