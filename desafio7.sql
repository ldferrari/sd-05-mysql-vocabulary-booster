SELECT
upper(concat(employee.first_name, ' ', employee.last_name)) as 'Nome completo',
jbh.start_date as 'Data de início',
employee.salary as 'Salário'
FROM hr.employees as employee
JOIN
hr.job_history as jbh
ON(employee.employee_id = jbh.employee_id)
WHERE month(jbh.start_date)=01 OR month(jbh.start_date=02 OR month(jbh.start_date)=03
ORDER BY
concat(employee.first_name, ' ', employee.last_name),
jbh.start_date;
