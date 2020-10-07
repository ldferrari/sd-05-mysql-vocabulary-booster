-- USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(nomeCargo)
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
  FROM hr.jobs AS jobs
  INNER JOIN hr.employees AS emp
  ON jobs.JOB_ID = emp.JOB_ID AND jobs.JOB_TITLE = nomeCargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');

-- does not pass on workbench
