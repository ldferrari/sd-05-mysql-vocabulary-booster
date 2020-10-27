SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo funcionário 1',
e.salary AS 'Salário funcionário 1',
e.phone_number AS 'Telefone funcionário 1',
CONCAT(f.first_name, ' ', f.last_name) AS 'Nome completo funcionário 2',
f.salary AS 'Salário funcionário 2',
f.phone_number AS 'Telefone funcionário 2'
FROM
hr.employees AS e, hr.employees AS f
WHERE
CONCAT(e.first_name, ' ', e.last_name) <> CONCAT(f.first_name, ' ', f.last_name) AND e.job_id = f.job_id
ORDER BY
CONCAT(e.first_name, ' ', e.last_name), CONCAT(f.first_name, ' ', f.last_name);
