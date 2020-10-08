SELECT country_name AS 'País'
FROM hr.countries
IF (REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY País;
