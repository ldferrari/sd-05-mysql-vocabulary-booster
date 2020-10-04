SELECT CONCAT(emp.FIRST_NAME,' ',emp.LAST_NAME) AS 'Nome completo funcionário 1',
emp.SALARY AS 'Salário funcionário 1',
emp.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(emt.FIRST_NAME,' ',emt.LAST_NAME) AS 'Nome completo funcionário 2',
emt.SALARY AS 'Salário funcionário 2',
emt.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS emp, hr.employees AS emt
WHERE emp.JOB_ID = emt.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY 1, 4;
-- Uso o WHERE quando preciso comparar uma coluna já definida e uso o HAVING quando preciso de um nome de ALIAS com string espaçada
