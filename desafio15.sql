USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN syllable VARCHAR(35))
BEGIN
SELECT round(avg(employee.salary), 2) as 'Média salarial'
FROM hr.employees as employee
JOIN
hr.jobs as jb
ON(jb.JOB_ID = employee.JOB_ID)
WHERE jb.JOB_TITLE LIKE syllable;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
