DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(hre.salary),2) AS 'Média salarial'
FROM hr.employees AS hre
INNER JOIN hr.jobs AS hrj
ON hrj.job_id = hre.job_id
WHERE hrj.job_title = cargo;
END $$

DELIMITER ;
