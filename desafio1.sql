SELECT C.country_name AS 'País', IF(R.region_name = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.regions AS R
INNER JOIN hr.countries AS C
ON R.region_id = C.region_id;
