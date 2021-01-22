USE hr;
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(100))
begin
SELECT ROUND(AVG(EM.SALARY),2) AS 'Média salarial'
FROM hr.employees AS EM, hr.jobs AS JO
WHERE EM.JOB_ID = JO.JOB_ID AND JO.JOB_TITLE = cargo;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
