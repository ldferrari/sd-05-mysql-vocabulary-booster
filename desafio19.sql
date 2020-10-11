-- Crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa 
-- funcionária, retorna todos os cargos em seu histórico. Sua procedure deve retornar três colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária
-- A segunda coluna deve possuir o alias "Departamento" e exibir o departamento que a pessoa já fez parte.
-- A terceira coluna deve possuir o alias "Cargo" e exibir cargo que a pessoa já ocupou.
-- Os resultados devem estar ordenados pelo nome do departamento em ordem alfabética. 
-- Em caso de empate no nome do departamento, ordene os resultados pelo nome do cargo em ordem alfabética.

USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees AS e
JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
