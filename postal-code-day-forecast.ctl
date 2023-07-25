OPTIONS (SKIP=1)
LOAD DATA
INFILE '/home/oracle/bigquery-public-data/postal-code-day-forecast/*.csv'
BADFILE '/home/oracle/bigquery-public-data/*.bad'
DISCARDFILE '/home/oracle/bigquery-public-data/*.dsc'
APPEND
INTO TABLE POSTAL_CODE_DAY_FORECAST
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
    postal_code,
    country,
    time_initiated_utc "TO_TIMESTAMP_TZ(:time_initiated_utc, 'YYYY-MM-DD HH24:MI:SS TZR')",
    forecast_date DATE 'YYYY-MM-DD' NULLIF forecast_date=BLANKS,
    forecast_day_of_year INTEGER EXTERNAL NULLIF forecast_day_of_year=BLANKS,
    min_temperature_air_2m_f FLOAT EXTERNAL NULLIF min_temperature_air_2m_f=BLANKS,
    avg_temperature_air_2m_f FLOAT EXTERNAL NULLIF avg_temperature_air_2m_f=BLANKS,
    max_temperature_air_2m_f FLOAT EXTERNAL NULLIF max_temperature_air_2m_f=BLANKS,
    min_humidity_relative_2m_pct INTEGER EXTERNAL NULLIF min_humidity_relative_2m_pct=BLANKS,
    avg_humidity_relative_2m_pct INTEGER EXTERNAL NULLIF avg_humidity_relative_2m_pct=BLANKS,
    max_humidity_relative_2m_pct INTEGER EXTERNAL NULLIF max_humidity_relative_2m_pct=BLANKS,
    min_humidity_specific_2m_gpkg FLOAT EXTERNAL NULLIF min_humidity_specific_2m_gpkg=BLANKS,
    avg_humidity_specific_2m_gpkg FLOAT EXTERNAL NULLIF forecast_day_of_year=BLANKS,
    max_humidity_specific_2m_gpkg FLOAT EXTERNAL NULLIF forecast_day_of_year=BLANKS
)