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
