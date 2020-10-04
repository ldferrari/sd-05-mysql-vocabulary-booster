DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(100)) BEGIN
SELECT COUNT(jh.EMPLOYEE_ID) AS 'total_empregos' FROM hr.employees AS em
INNER JOIN hr.job_history as jh
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE em.EMAIL = email;
END
$$ DELIMITER ;
