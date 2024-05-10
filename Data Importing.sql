-- CREATE TABLE 
CREATE TABLE ride_data (
    ride_id VARCHAR(50),
    rideable_type VARCHAR(20),
    started_at DATETIME,
    ended_at DATETIME,
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(11, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(11, 8),
    member_casual VARCHAR(20)
);

-- IMPORTING 12 MONTH DATA INTO RIDE TABLE 
INSERT INTO ride_data
SELECT * FROM bikeshare.jan_2022 
  UNION ALL 
  SELECT * FROM bikeshare.feb_2022
  UNION ALL 
  SELECT * FROM bikeshare.mar_2022 
  UNION ALL 
  SELECT * FROM bikeshare.apr_2022 
  UNION ALL 
  SELECT * FROM bikeshare.may_2022 
  UNION ALL 
  SELECT * FROM bikeshare.jun_2022 
  UNION ALL 
  SELECT * FROM bikeshare.jul_2022
  UNION ALL 
  SELECT * FROM bikeshare.aug_2022
  UNION ALL 
  SELECT * FROM bikeshare.sep_2022
  UNION ALL 
  SELECT * FROM bikeshare.oct_2022
  UNION ALL 
  SELECT * FROM bikeshare.nov_2022
  UNION ALL 
  SELECT * FROM bikeshare.dec_2022;
  
  -- AFTER IMPORTING ALL DATA LETS GAVE PREVIEW OF DATA IN A TABLE
  SELECT *
  FROM ride_data
  LIMIT 10;