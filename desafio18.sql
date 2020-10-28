USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mm INT, yy INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas_contratadas INT;
SELECT COUNT(*)
FROM hr.employees AS e
WHERE mm = MONTH(e.hire_date) AND yy = YEAR(e.hire_date)
INTO pessoas_contratadas;
RETURN pessoas_contratadas;
END $$

-- SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6/1987);

DELIMITER ;
