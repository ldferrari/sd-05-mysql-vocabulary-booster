-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
-- ao receber o email de uma pessoa funcionária,
-- retorne a quantidade de empregos presentes em seu histórico.

-- USE hr
DELIMITER $$
CREATE FUNCTION hr.buscar_quantidade_de_empregos_por_funcionario(emailParam VARCHAR(50))
RETURNS INT READS SQL DATA -- kind of data integer, kind of return that reads data stored in databases
BEGIN
  DECLARE total_empregos INT; -- name found in challengeResult16 containing expected result to pass test
  SELECT COUNT(*) FROM hr.employees as emp, hr.job_history as hist
  WHERE emp.EMPLOYEE_ID = hist.EMPLOYEE_ID AND emp.EMAIL = emailParam
  INTO total_empregos; -- to fill in our variable
  RETURN total_empregos; -- need both semicolons to avoid Workbench errors
END $$
DELIMITER ;

-- SELECT hr.buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR'); -- returns 2
