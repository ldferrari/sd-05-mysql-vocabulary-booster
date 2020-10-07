-- Desafio 16
-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária,
--  retorne a quantidade de empregos presentes em seu histórico. Confirme que sua função retorna o valor 2 ao ser
--  chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EM VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_jobs INT;
SELECT
COUNT(*)
FROM
hr.employees as em, hr.job_history as h
WHERE em.EMPLOYEE_ID = h.EMPLOYEE_ID AND
EMAIL LIKE 'NKOCHHAR%' INTO quantidade_de_jobs;
RETURN quantidade_de_jobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS 'total_empregos';
