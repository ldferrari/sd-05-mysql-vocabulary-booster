SELECT UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
em.SALARY AS 'Salário'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS em
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH (jh.START_DATE) BETWEEN '01' AND '03'
ORDER BY 1, 2;
