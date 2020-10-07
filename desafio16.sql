-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
-- ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(e.EMAIL)
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO total;
RETURN total;
END
$$ DELIMITER ;
