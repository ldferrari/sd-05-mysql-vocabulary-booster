SELECT jobs.JOB_TITLE as Cargo, 
ROUND(AVG(employees.salary),2) as 'Média Salarial',
CASE WHEN ROUND(AVG(employees.salary),2) between 2000 and 5800 then 'Júnior'
WHEN ROUND(AVG(employees.salary),2) between 5801 and 7500 then 'Pleno'
WHEN ROUND(AVG(employees.salary),2) between 7501 and 10500 then 'Sênior'
ELSE 'CEO'
end as Senioridade 
FROM employees INNER JOIN jobs ON employees.JOB_ID = jobs.JOB_ID GROUP BY `Cargo`
ORDER BY `Média Salarial`, JOB_TITLE ASC;
