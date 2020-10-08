SELECT C.COUNTRY_NAME AS 'País', 
IF (R.REGION_NAME = 'REGION_NAME', 'incluido', 'não incluído') AS 'Status Inclusão' 
FROM hr.countries as C
JOIN hr.regions as R ON R.REGION_ID = C.REGION_ID
ORDER BY C.COUNTRY_NAME ASC;
