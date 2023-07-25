OPTIONS (SKIP=1)
LOAD DATA
INFILE '/home/oracle/bigquery-public-data/facility-boundary-us-all/*.csv'
BADFILE '/home/oracle/bigquery-public-data/facility-boundary-us-all.bad'
DISCARDFILE '/home/oracle/bigquery-public-data/facility-boundary-us-all.dsc'
APPEND
INTO TABLE FACILITY_BOUNDARY_US_ALL
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    facility_place_id,
    facility_provider_id,
    facility_name,
    facility_latitude FLOAT EXTERNAL,
    facility_longitude FLOAT EXTERNAL,
    facility_country_region,
    facility_country_region_code,
    facility_sub_region_1,
    facility_sub_region_1_code,
    facility_sub_region_2,
    facility_sub_region_2_code,
    facility_region_place_id,
    mode_of_transportation,
    travel_time_threshold_minutes INTEGER EXTERNAL,
    facility_catchment_boundary CHAR(2000000)
)