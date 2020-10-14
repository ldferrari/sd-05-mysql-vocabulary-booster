select * from hr.employees;
select * from hr.departments;
select CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
JH.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
from hr.employees AS E
JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID
JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID=E.EMPLOYEE_ID
JOIN hr.departments AS D ON D.DEPARTMENT_ID=JH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC,`Cargo`;
