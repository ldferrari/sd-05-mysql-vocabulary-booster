USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN varJob character)
BEGIN
SELECT ROUND(AVG(employees.salary), 2) AS 'Média salarial'
FROM hr.employees
INNER JOIN hr.jobs
ON employees.job_id = jobs.job_id 
WHERE jobs.job_title = varJob;
END $$

DELIMITER ;

CALL buscar_media_por_cargo ('Programmer');

-- query  montada com consulta a repo https://youtu.be/w3F4JQ8ndJ0
