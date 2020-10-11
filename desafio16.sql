-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
-- ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email
-- é "NKOCHHAR".

-- parametro de entrada - EMAIL from employees
USE hr;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
JOIN hr.employees AS e
ON e.EMAIL = EMAIL AND jh.EMPLOYEE_ID = e.EMPLOYEE_ID INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
