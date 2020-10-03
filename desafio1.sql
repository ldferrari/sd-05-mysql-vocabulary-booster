SELECT COUNTRY_NAME AS 'País', IF(REGION_ID = 1, 'Europe', 'não incluido') AS 'Status Inclusão' FROM hr.countries
ORDER BY País ASC;