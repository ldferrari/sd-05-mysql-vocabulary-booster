SELECT 
concat(a.first_name, ' ', a.last_name) as 'Nome completo funcionário 1',
a.salary as 'Salário funcionário 1',
a.phone_number as 'Telefone funcionário 1',
concat(b.first_name, ' ', b.last_name) as 'Nome completo funcionário 2',
b.salary as 'Salário funcionário 2',
b.phone_number as 'Telefone funcionário 2'
FROM hr.employees as a, hr.employees as b
WHERE a.job_id = b.job_id
AND a.employee_id <> b.employee_id
ORDER BY
concat(a.first_name, ' ', a.last_name),
concat(b.first_name, ' ', b.last_name);
