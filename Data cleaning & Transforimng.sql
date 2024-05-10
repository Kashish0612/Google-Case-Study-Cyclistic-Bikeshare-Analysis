-- DATA CLEANING AND TRANSFORING
-- BEFORE PERFORMING CLEANING AND TRANSFORMING 
SELECT COUNT(*) AS total_count_rows
FROM ride_data;
-- SIZE OF DATA 5667717

-- CHECKING FOR NULL VALUES
SELECT COUNT(*) AS count_of_nulls
FROM ride_data
WHERE start_station_name = '' 
OR start_station_id = ''
OR 	end_station_name = ''
OR 	end_station_id = '';

-- DELETION OF BLANK VALUES
DELETE FROM ride_data
WHERE start_station_name = '' 
OR start_station_id = ''
OR 	end_station_name = ''
OR 	end_station_id = '';

-- CHECKING FOR OUTLIER OR FALSE VALUES
SELECT COUNT(*)
FROM ride_data
where timestampdiff(MINUTE,started_at,ended_at)<1
OR timestampdiff(MINUTE,started_at,ended_at) > 1440;

-- DELETION OF FALSE VALUES FOR RIDE_LENGTH WHERE RIDE LENGTH LESS THAN 1 OR GREATER THAN 1440
DELETE FROM ride_data
where timestampdiff(MINUTE,started_at,ended_at)<1
OR timestampdiff(MINUTE,started_at,ended_at) > 1440;

-- REMOVING OF UNWANTED COLUMNS 
ALTER TABLE ride_data
DROP COLUMN start_station_id;
ALTER TABLE ride_data
DROP COLUMN end_station_id;
ALTER TABLE ride_data
DROP COLUMN start_lat;
ALTER TABLE ride_data
DROP COLUMN start_lng;
ALTER TABLE ride_data
DROP COLUMN end_lat;
ALTER TABLE ride_data
DROP COLUMN end_lng;

-- SIZE OF DATA AFTER CLEANING
SELECT COUNT(*)
FROM ride_data;
-- 4324611

-- CHECKING FOR DUPLICATES
SELECT ride_id , 
COUNT(*) AS count_of_duplicates
FROM ride_data
GROUP BY ride_id
HAVING COUNT(*) > 1
limit 5;
-- NO DULICATES FOUND

-- DATA TRANSFORMATION
-- CREATING RIDE LENGTH COLUMN
ALTER TABLE ride_data
ADD COLUMN ride_length INT;

UPDATE ride_data
SET ride_length = TIMESTAMPDIFF(MINUTE,started_at,ended_at);

-- CREATION OF MONTH COLUMN
ALTER TABLE ride_data
ADD COLUMN months VARCHAR(5);

UPDATE ride_data
SET months =  date_format(started_at,'%b');

-- CREATION OF DAY_OF_WEEK COLUMN
ALTER TABLE ride_data
ADD COLUMN day_of_week VARCHAR(10);

UPDATE ride_data
SET day_of_week = UPPER(SUBSTRING(DAYNAME(started_at), 1, 3));

-- CREATION OF HOUR IN A DAY COLUMN 
ALTER TABLE ride_data
ADD COLUMN hour_in_day INT;

UPDATE ride_data
SET hour_in_day =  date_format(started_at , '%H');

 
 













