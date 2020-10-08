USE hr
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nomeCargo VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
from hr.employees AS E
INNER JOIN hr.jobs as j
ON E.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = nomeCargo
GROUP BY E.JOB_ID;
END $$
DELIMITER ;
