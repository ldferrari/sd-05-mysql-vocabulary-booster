SELECT CONCAT(EM1.FIRST_NAME, ' ', EM1.LAST_NAME) AS 'Nome completo funcionário 1',
EM1.SALARY AS 'Salário funcionário 1', EM1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(EM2.FIRST_NAME, ' ', EM2.LAST_NAME) AS 'Nome completo funcionário 2',
EM2.SALARY AS 'Salário funcionário 2', EM2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS EM1, hr.employees AS EM2
WHERE EM1.EMPLOYEE_ID <> EM2.EMPLOYEE_ID AND EM1.JOB_ID = EM2.JOB_ID
ORDER BY 1, 4;
