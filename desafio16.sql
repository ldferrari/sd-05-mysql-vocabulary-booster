--Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
--ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
--Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

DELIMITER $$
CREATE FUNCTION hr.buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE resultado INT;
  SELECT COUNT(jbh.JOB_ID)
  FROM hr.employees AS emp
  INNER JOIN hr.job_history AS jbh ON (emp.EMPLOYEE_ID = jbh.EMPLOYEE_ID)
  WHERE emp.EMAIL = email
  GROUP BY emp.EMPLOYEE_ID
  LIMIT 1
  INTO resultado;
  RETURN resultado;
END $$
DELIMITER ;
