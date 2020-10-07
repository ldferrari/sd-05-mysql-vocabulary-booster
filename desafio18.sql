-- Desafio 18
-- Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, 
-- retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano. 
-- Confirme que sua função retorna o valor 14 ao ser chamada passando os números 6 e 1987 para mês e ano, respectivamente.
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS	INT READS SQL DATA
BEGIN
DECLARE hired_people_quant INT;
SELECT
COUNT(*)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano INTO hired_people_quant;
RETURN hired_people_quant;
END $$

DELIMITER ;
 
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS total;
-- -- 
-- DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
-- DELIMITER $$
-- CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EM VARCHAR(50))
-- RETURNS INT READS SQL DATA
-- BEGIN
-- DECLARE quantidade_de_jobs INT;
-- SELECT
-- COUNT(*)
-- FROM
-- hr.employees as em, hr.job_history as h
-- WHERE em.EMPLOYEE_ID = h.EMPLOYEE_ID AND
-- EMAIL LIKE 'NKOCHHAR%' INTO quantidade_de_jobs;
-- RETURN quantidade_de_jobs;
-- END $$
-- 
-- DELIMITER ;
-- 
-- SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS 'total_empregos';