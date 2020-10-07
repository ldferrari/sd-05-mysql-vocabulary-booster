SELECT J.job_title AS 'Cargo', max_salary - min_salary AS 'Variação Salarial',
ROUND(AVG(J.min_salary), 2) AS 'Média mínima mensal',
ROUND(AVG(J.max_salary), 2) AS 'Média máxima mensal'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id
GROUP BY J.job_title
ORDER BY max_salary - min_salary, J.job_title;
