-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas. Para isso, usando o banco hr como referência,
-- --- monte uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada
-- --- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira coluna deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta coluna deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT CONCAT(b.first_name, ' ', b.last_name) AS `Nome completo`,
c.job_title AS `Cargo`,
a.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM hr.job_history AS a 
INNER JOIN hr.employees AS b
INNER JOIN hr.jobs AS c ON c.job_id = a.job_id
INNER JOIN hr.departments AS d ON d.department_id = a.department_id
WHERE a.employee_id = b.employee_id
ORDER BY `Nome completo` DESC, `Cargo` ASC;
