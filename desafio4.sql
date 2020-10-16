-- Usando o banco hr como referência, queremos extrair informações a respeito dos salários das pessoas empregadas.
-- Para isso, crie uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda coluna deve possuir o alias "Média salarial" e exibir a média dos salários das pessoas empregadas que possuem o cargo em questão.
-- A terceira coluna deve possuir o alias "Senioridade" e categorizar o nível de senioridade do cargo com base na média salarial, da seguinte forma:
-- Média salarial entre 2000 - 5800 -> Júnior
-- Média salarial entre 5801 - 7500 -> Pleno
-- Média salarial entre 7501 - 10500 -> Sênior
-- Média salarial acima de 10500 -> CEO
-- Devido ao fato de a média salarial ser um valor monetário, sempre que for fazer uso da média salarial,
-- é preciso arredondá-la usando apenas duas casas decimais.
-- Os resultados devem estar ordenados pela média salarial em ordem crescente.
-- Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.

SELECT jobs.JOB_TITLE as "Cargo",
ROUND(AVG(employees.salary),2) as 'Média salarial',
CASE
WHEN ROUND(AVG(employees.salary),2) between 2000 and 5800 then 'Júnior'
WHEN ROUND(AVG(employees.salary),2) between 5801 and 7500 then 'Pleno'
WHEN ROUND(AVG(employees.salary),2) between 7501 and 10500 then 'Sênior'
ELSE 'CEO'
end as "Senioridade"
FROM employees INNER JOIN jobs ON employees.JOB_ID = jobs.JOB_ID GROUP BY `Cargo`
ORDER BY `Média salarial`, JOB_TITLE ASC;
