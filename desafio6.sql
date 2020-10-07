SELECT CONCAT(ep.FIRST_NAME,' ', ep.LAST_NAME) AS `Nome completo`,
jb.JOB_TITLE AS Cargo,
hst.START_DATE AS 'Data de início do cargo',
dpt.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hst
INNER JOIN hr.jobs AS jb ON hst.JOB_ID = jb.JOB_ID
INNER JOIN hr.employees AS ep ON hst.EMPLOYEE_ID = ep.EMPLOYEE_ID
INNER JOIN hr.departments AS dpt ON hst.DEPARTMENT_ID = dpt.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
