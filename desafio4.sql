SELECT jo.JOB_TITLE AS 'Cargo',
ROUND(AVG(emp.SALARY), 2) AS `Média salarial`,
CASE
	WHEN ROUND(AVG(emp.SALARY), 2) < 5801 THEN 'Júnior'
    WHEN ROUND(AVG(emp.SALARY), 2) > 5800 AND ROUND(AVG(emp.SALARY), 2) < 7501 THEN 'Pleno'
    WHEN ROUND(AVG(emp.SALARY), 2) > 7500 AND ROUND(AVG(emp.SALARY), 2) < 10501 THEN 'Sênior'
    WHEN ROUND(AVG(emp.SALARY), 2) > 10500 THEN 'CEO'
    ELSE 'SEM SENIORIDADE'
END AS 'Senioridade',
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jo
ON jo.JOB_ID = emp.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;
