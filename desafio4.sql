SELECT job_title AS 'Cargo', ROUND(AVG(salary), 2) AS 'Média salarial',
CASE
WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees
INNER JOIN hr.jobs
ON job_id = job_id
GROUP BY job_id
ORDER BY AVG(salary) ASC, job_title ASC;
