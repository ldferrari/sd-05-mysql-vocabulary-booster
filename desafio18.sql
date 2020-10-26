DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes IN, ano INT)
RETURNS INT READS SQL DATA
BEGIN DECLARE quantidade INT;
SELECT COUNT(*) FROM hr.employees
WHERE mes = MONTH(HIRE_DATE) AND ano = YEAR(HIRE_DATE)
INTO quantidade;
RETURN quantidade;
END $$ DELIMITER;
