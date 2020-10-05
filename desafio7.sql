-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março. 
-- Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:
-- 
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
-- 
-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- 
-- A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.
-- 
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética. 
-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT * FROM hr.job_history;
SELECT * FROM hr.employees;

SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome Completo`,
START_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN(1,2,3)
ORDER BY `Nome Completo`, START_DATE;
