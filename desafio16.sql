DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(jh.EMPLOYEE_ID) FROM hr.employees AS e
INNER JOIN hr.job_history as j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO total;
RETURN total;
END $$ DELIMITER;
