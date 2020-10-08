-- Referência: https://app.betrybe.com/course/back-end/sql/procedures_and_subqueries#montando-blocos-de-codigo-sql-reutilizaveis-com-stored-procedures-e-stored-functions
-- Referência: Query desenvolvida com a ajuda de Sidnei Ramos
USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN jobPosition VARCHAR(100))
BEGIN 
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial' FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id 
WHERE j.job_title = jobPosition;
END $$ 

DELIMITER ;
