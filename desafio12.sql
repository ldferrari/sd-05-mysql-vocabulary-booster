SELECT CONCAT_WS(' ', emp.FIRST_NAME, emp.LAST_NAME) AS 'Nome completo funcionário 1',
  emp.SALARY AS 'Salário funcionário 1',
  emp.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT_WS(' ', slf.FIRST_NAME, slf.LAST_NAME) AS 'Nome completo funcionário 2',
  slf.SALARY AS 'Salário funcionário 2',
  slf.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS emp, hr.employees AS slf
WHERE emp.JOB_ID = slf.JOB_ID AND emp.EMPLOYEE_ID <> slf.EMPLOYEE_ID
ORDER BY CONCAT_WS(' ', emp.FIRST_NAME, emp.LAST_NAME), CONCAT_WS(' ', slf.FIRST_NAME, slf.LAST_NAME);
