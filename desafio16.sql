USE hr;

-- consultado repo Renata Novais (27/10/2020) para construção da lógica

-- refatorei conforme https://app.betrybe.com/course/back-end/sql/procedures_and_subqueries

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))

RETURNS INT READS SQL DATA
BEGIN
DECLARE totaljobs INT;
SELECT COUNT(*)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.employee_id = jh.employee_id AND email = e.email
INTO totaljobs;
RETURN totaljobs;
END $$

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
DELIMITER ;

-- repo vídeo https://youtu.be/WTTGml9Co90
