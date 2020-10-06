SELECT job.JOB_TITLE AS 'Cargo', ROUND(AVG(SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(SALARY) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.employees AS emp
INNER JOIN hr.jobs AS job
ON emp.JOB_ID = job.JOB_ID
GROUP BY Cargo
ORDER BY AVG(SALARY) ASC, job.JOB_TITLE;