OPTIONS (SKIP=1)
LOAD DATA
INFILE '/home/oracle/bigquery-public-data/covid19-vaccination-search-insights/*.csv'
BADFILE '/home/oracle/bigquery-public-data/covid19-vaccination-search-insights.bad'
DISCARDFILE '/home/oracle/bigquery-public-data/covid19-vaccination-search-insights.dsc'
APPEND
INTO TABLE COVID19_VACCINATION_SEARCH_INSIGHTS
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    "DATE" "TO_DATE(:date, 'YYYY-MM-DD')",
    country_region,
    country_region_code,
    sub_region_1,
    sub_region_1_code,
    sub_region_2,
    sub_region_2_code,
    sub_region_3,
    sub_region_3_code,
    place_id,
    sni_covid19_vaccination,
    sni_vaccination_intent,
    sni_safety_side_effects
)                                                                                                                                    12,5          Top