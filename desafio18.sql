-- Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que,
-- dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram
-- contratadas nesse mês e ano. Confirme que sua função retorna o valor 14 ao ser chamada passando os números
-- 6 e 1987 para mês e ano, respectivamente.

USE hr;

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_contratada INT;
SELECT COUNT(*)
FROM hr.employees
WHERE mes = MONTH(HIRE_DATE) AND ano = YEAR(HIRE_DATE) INTO quantidade_contratada;
RETURN quantidade_contratada;
END
$$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
