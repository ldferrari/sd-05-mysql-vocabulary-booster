USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (emailSelect VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT count(EMAIL)
FROM hr.employees AS EM, hr.job_history AS JH 
WHERE EM.EMPLOYEE_ID = JH.EMPLOYEE_ID
GROUP BY EMAIL
HAVING EMAIL = emailSelect INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
