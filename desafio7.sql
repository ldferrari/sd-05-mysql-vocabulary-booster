-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março. Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:

-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).

-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.

-- A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.

-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética. Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job_history.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.job_history

JOIN hr.employees ON hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) BETWEEN '01' AND '03'

ORDER BY `Nome completo`, `Data de início`;
