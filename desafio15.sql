DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(em.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS em
INNER JOIN hr.jobs AS jo
ON jo.JOB_ID = em.JOB_ID
WHERE jo.JOB_TITLE = cargo;
END
$$ DELIMITER ;
