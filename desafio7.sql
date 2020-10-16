-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos
-- --- nos meses de janeiro, fevereiro ou março.
-- Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA
-- --- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT UPPER(CONCAT(b.first_name, ' ', b.last_name)) AS `Nome completo`,
a.start_date AS `Data de início`,
b.salary AS `Salário`
FROM hr.job_history AS a 
INNER JOIN hr.employees AS b
INNER JOIN hr.jobs AS c ON c.job_id = a.job_id
WHERE a.employee_id = b.employee_id AND MONTH(a.start_date) IN (1, 02, 03)
ORDER BY `Nome completo`, a.start_date;
