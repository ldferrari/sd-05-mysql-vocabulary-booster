SELECT J.job_title AS 'Cargo', ROUND(AVG(salary), 2) AS 'Média salarial', 
CASE
WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id
GROUP BY J.job_title
ORDER BY AVG(salary), J.job_title;
