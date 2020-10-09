-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos
-- --- nos meses de janeiro, fevereiro ou março.
-- Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA
-- --- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT UCASE(CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME)) AS 'Nome completo',
jhst.START_DATE AS 'Data de início',
empl.SALARY AS 'Salário'
FROM hr.job_history AS jhst
INNER JOIN hr.employees AS empl
ON jhst.EMPLOYEE_ID = empl.EMPLOYEE_ID
WHERE MONTH(jhst.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`, jhst.START_DATE;
