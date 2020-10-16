DELIMITER $$ CREATE PROCEDURE hr.exibir_historico_completo_por_funcionario(IN email VARCHAR(50)) BEGIN
SELECT CONCAT_WS(' ', emp.FIRST_NAME, emp.LAST_NAME) AS 'Nome completo',
  dpt.DEPARTMENT_NAME AS 'Departamento',
  jbs.JOB_TITLE AS 'Cargo'
FROM hr.employees AS emp
  INNER JOIN hr.job_history AS jbh ON (emp.EMPLOYEE_ID = jbh.EMPLOYEE_ID)
  INNER JOIN hr.departments AS dpt ON (jbh.DEPARTMENT_ID = dpt.DEPARTMENT_ID)
  INNER JOIN hr.jobs AS jbs ON (jbh.JOB_ID = jbs.JOB_ID)
WHERE emp.EMAIL = email
ORDER BY dpt.DEPARTMENT_NAME,
  jbs.JOB_TITLE;
END $$ DELIMITER;
