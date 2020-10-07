DELIMITER $$ CREATE PROCEDURE hr.buscar_media_por_cargo(IN nome_cargo VARCHAR(50)) BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
FROM hr.jobs AS jbs
LEFT JOIN hr.employees AS emp ON (emp.JOB_ID = jbs.JOB_ID)
WHERE jbs.JOB_TITLE = nome_cargo;
END $$ DELIMITER;
