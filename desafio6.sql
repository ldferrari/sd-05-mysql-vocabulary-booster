/*
SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo', -- tabela employees
J.JOB_TITLE AS 'Cargo', -- tabela jobs
E.HIRE_DATE AS 'Data de início do cargo', -- tabela employees 
D.DEPARTMENT_NAME AS 'Departamento' -- tabela departments

FROM hr.employees AS E
JOIN hr.job_history AS JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN hr.departments AS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN hr.jobs AS J
ON JH.JOB_ID = J.JOB_ID
ORDER BY (E.FIRST_NAME, ' ', E.LAST_NAME) DESc,
J.JOB_TITLE;

-- SELECT * FROM hr.jobs;
-- SELECT * FROM hr.employees;
-- SELECT * FROM hr.departments;
-- SELECT * FROM hr.job_history;
*/
