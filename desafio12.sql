SELECT 
CONCAT(hre1.first_name, ' ', hre1.last_name) AS 'Nome completo funcionário 1',
hre1.salary AS 'Salário funcionário 1',
hre1.phone_number AS 'Telefone funcionário 1',
CONCAT(hre2.first_name, ' ', hre2.last_name) AS 'Nome completo funcionário 2',
hre2.salary AS 'Salário funcionário 2',
hre2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS hre1, hr.employees AS hre2
WHERE hre1.job_id = hre2.job_id
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY 1,4;
