USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE job_total INT;
    SELECT COUNT(*)
    FROM hr.job_history AS J
    INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
    WHERE E.EMAIL = email INTO job_total;
    RETURN job_total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
