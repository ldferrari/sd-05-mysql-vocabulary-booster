-- USE hr
DELIMITER $$
CREATE PROCEDURE hr.buscar_media_por_cargo(IN nomeCargo VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
  FROM hr.jobs AS jobs
  INNER JOIN hr.employees AS emp
  ON jobs.JOB_ID = emp.JOB_ID AND jobs.JOB_TITLE = nomeCargo;
END $$
DELIMITER ;

-- CALL hr.buscar_media_por_cargo('Programmer');
