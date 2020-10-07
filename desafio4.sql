SELECT
job_title AS "Cargo",
ROUND(AVG((max_salary + min_salary)/2),2) AS "Média salarial"
FROM hr.jobs
GROUP BY job_title;
