select * from hr.employees;
select CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)
as 'Nome completo funcionário 1',
E.SALARY AS 'Salário funcionário 1',
E.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(EE.FIRST_NAME,' ',EE.LAST_NAME) as 'Nome completo funcionário 2',
EE.SALARY AS 'Salário funcionário 2',
EE.PHONE_NUMBER AS 'Telefone funcionário 2'
from hr.employees AS E, hr.employees AS EE 
HAVING `Nome completo funcionário 1`<> `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;