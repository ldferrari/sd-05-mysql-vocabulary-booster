SELECT J.job_title AS 'Cargo', J.max_salary - J.min_salary AS 'Variação Salarial',
ROUND(AVG(J.min_salary/12), 2) AS 'Média mínima mensal',
ROUND(AVG(J.max_salary/12), 2) AS 'Média máxima mensal'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id
GROUP BY J.job_title
ORDER BY J.max_salary - J.min_salary ASC, J.job_title ASC;
