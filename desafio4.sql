SELECT 
jb.job_title AS 'Cargo',
ROUND(AVG(employee.salary), 2) AS 'Média salarial',
CASE
WHEN AVG(employee.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(employee.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(employee.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS jb
JOIN
hr.employees AS employee ON (jb.job_id = e.job_id)
GROUP BY
jb.job_title,
'Média salarial',
'Senioridade'
ORDER BY
AVG(employee.salary),
jb.job_title;
