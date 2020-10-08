/* Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
ao receber o email de uma pessoa funcionária, 
retorne a quantidade de empregos presentes em seu histórico. 
Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".
*/
USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numero_de_empregos INT;
SELECT COUNT(job.EMPLOYEE_ID) FROM hr.job_history AS job
INNER JOIN hr.employees AS emp
ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email
INTO numero_de_empregos;
RETURN numero_de_empregos;
END
$$ DELIMITER ;
