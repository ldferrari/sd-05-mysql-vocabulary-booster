-- Referência: https://app.betrybe.com/course/back-end/sql/procedures_and_subqueries#stored-functions-vs-store-procedures
-- Referência: Query desenvolvida com a ajuda de Sidnei Ramos
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(40))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numberOfJobs INT;
SELECT COUNT(*) FROM hr.job_history AS jh 
INNER JOIN hr.employees AS e ON e.employee_id = jh.employee_id
WHERE e.email = email INTO numberOfJobs;
RETURN numberOfJobs;
END $$

DELIMITER ;
