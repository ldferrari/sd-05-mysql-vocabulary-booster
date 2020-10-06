SELECT JOB_TITLE AS 'Cargo', 
MAX_SALARY -  MIN_SALARY AS 'Variação Salarial',
ROUND(MIN_SALARY/12, 2) AS 'Média mínima salarial',
ROUND(MAX_SALARY/12, 2) AS 'Média máxima salarial'
FROM hr.jobs
ORDER BY 2, 1;
