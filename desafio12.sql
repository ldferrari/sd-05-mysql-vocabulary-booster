-- Referência: query desenvolvida com a ajuda de Sidnei Ramos

SELECT CONCAT(efirst.first_name, " ", efirst.last_name) AS 'Nome completo funcionário 1',
efirst.salary AS 'Salário funcionário 1',
efirst.phone_number AS 'Telefone funcionário 1',
CONCAT(esecond.first_name, " ", esecond.last_name) AS 'Nome completo funcionário 2',
esecond.salary AS 'Salário funcionário 2',
esecond.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS efirst,
hr.employees AS esecond
WHERE efirst.job_id = esecond.job_id AND efirst.employee_id <> esecond.employee_id
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
