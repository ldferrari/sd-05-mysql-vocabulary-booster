SELECT countries.COUNTRY_NAME as 'País',
  CASE
    WHEN reg.REGION_NAME like 'europe' THEN 'incluído'
    ELSE 'não incluído'
  END AS 'Status Inclusão'
FROM hr.countries as countries
  JOIN hr.regions as reg ON (countries.REGION_ID = reg.REGION_ID)
ORDER BY countries.COUNTRY_NAME;
