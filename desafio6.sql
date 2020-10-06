-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas.
-- Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada
-- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira coluna deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta coluna deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) AS 'Nome completo', -- Juntando os nomes dos empregados - espaço entre primeiro e último nome: tabela employees
JOB_TITLE AS 'Cargo', -- Seleciona o cargo: tabela Jobs
START_DATE AS 'Data de início do cargo', -- Seleciona data de ínicio: tabela job_history
DEPARTMENT_NAME AS 'Departamento' -- Seleciona o departamento: tabela departments
FROM hr.job_history AS jh
JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID -- Relação job_history com employees
JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID -- Relação jobs com job_history
JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID -- Relação job_history com departments
ORDER BY `Nome completo` DESC,Cargo; -- Ordenação por nome em ordem decrescente, caso falhe ordenação ordem crescente
