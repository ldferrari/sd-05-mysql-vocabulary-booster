--Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
--ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
--Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario
(IN email VARCHAR(100))
BEGIN
SELECT COUNT(JH.EMPLOYEE_ID)
AS 'total_empregos'
FROM hr.job_history AS JH
JOIN hr.employees AS E
ON E.EMPLOYEE_ID=JH.EMPLOYEE_ID
WHERE E.EMAIL=email ;END $$
DELIMITER ;
