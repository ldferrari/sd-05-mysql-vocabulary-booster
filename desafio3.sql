SELECT job_title AS 'Cargo', 
abs(min_salary - max_salary) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs 
ORDER BY `Diferença entre salários máximo e mínimo`, Cargo;
