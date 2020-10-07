DELIMITER $$

CREATE FUNCTION hr.exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE resultado INT;
  SELECT COUNT(emp.EMPLOYEE_ID)
  FROM hr.employees AS emp
  WHERE YEAR(emp.HIRE_DATE) = 1987 AND MONTH(emp.HIRE_DATE) = 6
  GROUP BY YEAR(emp.HIRE_DATE), MONTH(emp.HIRE_DATE)
  LIMIT 1
  INTO resultado;
  RETURN resultado;
END $$

DELIMITER ;
