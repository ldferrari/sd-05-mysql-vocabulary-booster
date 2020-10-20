SELECT 
concat(employee.first_name, ' ', employee.last_name) as 'Nome completo',
date_format(jh.start_date, '%d/%m/%Y') as 'Data de início',
date_format(jh.end_date, '%d/%m/%Y') as 'Data de rescisão',
round(datediff(jh.end_date, jh.start_date) / 365, 2) as 'Anos trabalhados'
from hr.employees as employee
inner join job_history as jh
on employee.EMPLOYEE_ID = jh.employee_id
order by 1, 4;
