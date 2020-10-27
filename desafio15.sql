USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN varjob VARCHAR(100))
BEGIN
SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
FROM hr.employees
INNER JOIN hr.jobs
ON jobs.job_id = employees.job_id
WHERE jobs.job_title = varjob;
END

CALL buscar_media_por_cargo ("Programmer");

DELIMITER ;

-- query  montada com consulta a repo https://youtu.be/w3F4JQ8ndJ0
