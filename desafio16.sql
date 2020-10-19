DELIMITER $$

CREATE FUNCTION hr.buscar_quantidade_de_empregos_por_funcionario(emailParam VARCHAR(50))
RETURNS INT READS SQL DATA
Begin
DECLARE total_empregos INT;
SELECT count(*) FROM hr.employees as employee, hr.job_history as jh
WHERE employee.EMPLOYEE_ID = jh.EMPLOYEE_ID and employee.EMAIL = emailParam
INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
