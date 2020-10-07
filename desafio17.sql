SELECT CONCAT_WS(' ', emp.FIRST_NAME, emp.LAST_NAME) AS 'Nome completo', 
  DATE_FORMAT(jbh.START_DATE, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(jbh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(jbh.END_DATE, jbh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jbh ON (emp.EMPLOYEE_ID = jbh.EMPLOYEE_ID)
ORDER BY CONCAT_WS(' ', emp.FIRST_NAME, emp.LAST_NAME), ROUND(DATEDIFF(jbh.END_DATE, jbh.START_DATE) / 365, 2);
