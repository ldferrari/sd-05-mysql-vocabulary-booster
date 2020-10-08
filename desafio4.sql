-- Referência: https://stackoverflow.com/questions/35605209/sql-alias-in-case-statements
SELECT j.job_title AS 'Cargo',
(
SELECT ROUND(AVG(salary), 2) 
FROM hr.employees AS e 
WHERE j.job_id = e.job_id
) AS 'Média salarial',
(SELECT 
CASE
WHEN `Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN `Média salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN `Média salarial` BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN `Média salarial` > 10500 THEN 'CEO'
END) AS 'Senioridade'
FROM hr.jobs AS j 
ORDER BY `Média salarial`, job_title;
