-- Referência: https://dev.mysql.com/doc/refman/5.6/en/problems-with-alias.html
SELECT job_title AS 'Cargo', 
abs(max_salary - min_salary) AS 'Variação Salarial', 
round(min_salary / 12, 2) AS 'Média mínima mensal', 
round(max_salary / 12, 2) AS 'Média máxima mensal' 
FROM hr.jobs 
ORDER BY `Variação salarial`, Cargo;
