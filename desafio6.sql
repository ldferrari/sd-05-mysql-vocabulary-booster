SELECT CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME) AS 'Nome completo',
  jbs.JOB_TITLE AS 'Cargo',
  jbh.START_DATE AS 'Data de início do cargo',
  dpts.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS empl
  INNER JOIN hr.job_history AS jbh ON (empl.EMPLOYEE_ID = jbh.EMPLOYEE_ID)
  INNER JOIN hr.jobs AS jbs ON (jbs.JOB_ID = jbh.JOB_ID)
  INNER JOIN hr.departments AS dpts ON (jbh.DEPARTMENT_ID = dpts.DEPARTMENT_ID)
ORDER BY CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME) DESC, Cargo;
