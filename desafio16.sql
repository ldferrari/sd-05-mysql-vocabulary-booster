use hr;

-- refatorei conforme https://app.betrybe.com/course/back-end/sql/procedures_and_subqueries

DELIMITER $$

CREATE FUNCTION `buscar_quantidade_de_empregos_por_funcionario`(email int VARCHAR(100))
RETURNS INTEGER READS SQL DATA
BEGIN
DECLARE total_jobs AS t INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh_employee_id = e.employee_id AND email = e.email
INTO t;
RETURN t;
END

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');

DELIMITER ;

-- repo vídeo https://youtu.be/WTTGml9Co90
