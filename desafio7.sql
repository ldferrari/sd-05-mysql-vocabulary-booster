SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome Completo',
  jbh.START_DATE AS 'Data de início',
  emp.SALARY AS 'Salário'
FROM hr.job_history AS jbh
  INNER JOIN hr.employees AS emp ON (jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID)
  INNER JOIN hr.jobs AS jbs ON (jbh.JOB_ID = jbs.JOB_ID)
WHERE MONTH(jbh.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME), jbs.JOB_TITLE;
