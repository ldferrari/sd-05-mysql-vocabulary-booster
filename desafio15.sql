DELIMITER $$
CREATE PROCEDURE hr.buscar_media_por_cargo(IN JOB VARCHAR(50))
BEGIN
    SELECT ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
    FROM hr.employees AS emp
    INNER JOIN hr.jobs AS job
    ON emp.JOB_ID = job.JOB_ID
    WHERE JOB_TITLE LIKE JOB
    GROUP BY job.JOB_TITLE;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
