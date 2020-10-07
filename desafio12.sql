SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo funcionário 1',
E.SALARY AS 'Salário funcionário 1',
E.PHONE_NUMBER As 'Telefone funcionário 1',
CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) AS 'Nome completo funcionário 2',
A.SALARY AS 'Salário funcionário 2',
A.PHONE_NUMBER As 'Telefone funcionário 2'
FROM hr.employees AS E
INNER JOIN hr.employees AS A
ON E.JOB_ID = A.JOB_ID AND E.EMPLOYEE_ID <> A.EMPLOYEE_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME), CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME);
