-- Referência: https://stackoverflow.com/questions/942571/using-column-alias-in-where-clause-of-mysql-query-produces-an-error
-- Referência: https://stackoverflow.com/questions/2905292/where-vs-having/18710763#18710763
SELECT CONCAT(UPPER(e.first_name), " ", UPPER(e.last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh 
ON e.employee_id = jh.employee_id
HAVING MONTH(`Data de início`) IN (1, 2, 3)
ORDER BY `Nome Completo`, `Data de início`;
