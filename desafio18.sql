DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mnth INT, yr INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE hiredNb INT;
    SELECT COUNT(*)
    FROM hr.employees
    WHERE mnth = MONTH(hire_date) AND yr = YEAR(hire_date)
    INTO hiredNb;
    RETURN hiredNb;
END $$

DELIMITER ;
