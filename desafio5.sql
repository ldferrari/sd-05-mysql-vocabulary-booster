SELECT
job_title AS "Cargo",
max_salary - min_salary AS "Variação salarial",
ROUND(AVG(min_salary/12)) AS "Média mínima mensal",
ROUND(AVG(max_salary/12)) AS "Média máxima mensal"
FROM hr.jobs
GROUP BY
job_title,
"Variação salarial",
"Média mínima mensal",
"Média máxima mensal"
ORDER BY
max_salary - min_salary,
job_title;
