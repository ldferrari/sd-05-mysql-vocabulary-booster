SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  sd.START_DATE AS 'Data de início do cargo',
  dn.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
  INNER JOIN hr.job_history AS sd ON e.EMPLOYEE_ID = sd.EMPLOYEE_ID
  INNER JOIN hr.jobs AS j ON j.JOB_ID = sd.JOB_ID
  INNER JOIN hr.departments AS dn ON sd.DEPARTMENT_ID = dn.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, Cargo;
