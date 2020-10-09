SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    his.START_DATE AS 'Data de início do cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
    INNER JOIN hr.job_history AS his
    ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
    INNER JOIN hr.departments AS dep
    ON his.DEPARTMENT_ID = dep.DEPARTMENT_ID
    INNER JOIN hr.jobs AS job
    ON job.JOB_ID = his.JOB_ID
ORDER BY 1 DESC, 2;
