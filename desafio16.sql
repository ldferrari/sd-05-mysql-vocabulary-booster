DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE numEmpregos INT;
    SELECT COUNT(hrh.employee_id)
    FROM hr.employees AS hre
    INNER JOIN hr.job_history as hrh
    ON hre.employee_id = hrh.employee_id
    WHERE hre.email = email
    INTO numEmpregos;
    RETURN numEmpregos;
END $$

DELIMITER ;
