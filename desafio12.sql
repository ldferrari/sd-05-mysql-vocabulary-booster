SELECT CONCAT_WS(' ', EMP.FIRST_NAME, EMP.LAST_NAME) AS 'Nome completo funcionário 1',
EMP.SALARY AS 'Salário funcionário 1',
EMP.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT_WS(' ', SLR.FIRST_NAME, SLR.LAST_NAME) AS 'Nome completo funcionário 2',
SLR.SALARY AS 'Salário funcionário 2',
SLR.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.EMPloyees AS EMP, hr.employees AS SLR
WHERE emp.JOB_ID = SLR.JOB_ID AND emp.EMPLOYEE_ID <> SLR.EMPLOYEE_ID
ORDER BY CONCAT_WS(' ', EMP.FIRST_NAME, EMP.LAST_NAME), CONCAT_WS(' ', SLR.FIRST_NAME, SLR.LAST_NAME);
