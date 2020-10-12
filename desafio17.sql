SELECT
CONCAT(em.FIRST_NAME,' ',em.LAST_NAME) AS 'Nome completo',
CONCAT(LPAD(DAY(jh.START_DATE), 2, 0),'/',LPAD(MONTH(jh.START_DATE), 2, 0),'/',YEAR(jh.START_DATE)) AS 'Data de início',
CONCAT(LPAD(DAY(jh.END_DATE), 2, 0),'/',LPAD(MONTH(jh.END_DATE), 2, 0),'/',YEAR(jh.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS em
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
ORDER BY 1, 4;

/*
  FUNÇÃO LPAD RETIRADO DO SITE 'https://www.techonthenet.com/mysql/functions/lpad.php'
  FUNÇÃO DATEDIFF RETIRADO DA DOCUMENTÃÇÃO DO MYSQL 'https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_datediff'
*/
