SELECT J.JOB_TITLE AS 'Cargo', ROUND((E.SALARY),2) AS 'Média salarial',
(CASE
WHEN (SALARY)<=5800 THEN 'Júnior' -- AND (SALARY/12)>=2000
WHEN (SALARY)<=7500 THEN 'Pleno' -- AND (SALARY/12)>5800
WHEN (SALARY)<=10500 THEN 'Sênior' -- AND (SALARY/12)>7500
ELSE 'CEO'
END) AS 'Senioridade'
FROM hr.jobs AS J
JOIN hr.employees AS E ON J.JOB_ID=E.JOB_ID
group by J.JOB_TITLE
ORDER BY `Média salarial`, `Cargo`;
