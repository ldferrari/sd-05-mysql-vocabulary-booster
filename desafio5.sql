SELECT JOB_TITLE AS Cargo,
(MAX_SALARY - MIN_SALARY) AS 'Variação salarial',
ROUND(MIN_SALARY, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY, 2) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY Cargo
ORDER BY 'Variação salarial', Cargo;
