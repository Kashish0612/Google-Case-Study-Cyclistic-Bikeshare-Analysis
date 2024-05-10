-- DATA ANALYSIS
-- TOTAL RIDES 
SELECT COUNT(*) AS total_rides
FROM ride_data; 

-- TOTAL RIDES BY MEMBERS
SELECT 
member_casual,
COUNT(*) AS total_rides
FROM ride_data
GROUP BY member_casual;

-- AVERAGE RIDE LENGTH
SELECT
ROUND(AVG(ride_length),2) AS avg_ride_length
FROM ride_data;

-- AVERAGE RIDE LENGTH BY MEMBERS
SELECT 
member_casual,
ROUND(AVG(ride_length),2) AS avg_ride_length
FROM ride_data
GROUP BY member_casual;

-- MEMBER DISTRIBUTION
SELECT
member_casual,
ROUND(count(*)/(select count(*) FROM ride_data),2)*100 as Distribution
FROM ride_data
GROUP BY member_casual
ORDER BY  Distribution DESC;

-- RIDE TYPE DISTRIBUTION
SELECT
rideable_type,
ROUND(count(*)/(select count(*) FROM ride_data),2)*100 as Distribution
FROM ride_data
GROUP BY rideable_type
ORDER BY Distribution Desc;

-- RIDE TYPE DISTRIBUTION FOR EACH MEMBER
SELECT
  rideable_type,
  COUNT(CASE WHEN member_casual = 'CASUAL' THEN 1 END) AS casual_member,
  COUNT(CASE WHEN member_casual = 'MEMBER' THEN 1 END) AS annual_member
FROM rideable_type
GROUP BY rideable_type;

-- TOTAL RIDES BY MONTH
SELECT months ,
count(*) AS total_rides
FROM ride_data 
GROUP BY months;

-- AVG RIDE LENGTH BY MONTHS
SELECT 
months,
ROUND(AVG(ride_length),2) AS avg_ride_length
FROM ride_data
GROUP BY months;

-- TOTAL RIDES BY WEEKDAYS
SELECT day_of_week,
COUNT(*) AS total_rides
FROM ride_data
GROUP BY day_of_week;

-- AVG RIDE LENGTH BY WEEKDAYS 
SELECT 
day_of_week,
ROUND(AVG(ride_length),2) AS avg_ride_length
FROM ride_data
GROUP BY day_of_week;

-- TOTAL RIDES BY HOUR 
SELECT 
hour_in_day , 
count(*) AS total_rides
FROM ride_data
GROUP BY hour_in_day;

-- AVG RIDE LENGTH BY HOUR 
SELECT
hour_in_day,
ROUND(AVG(ride_length),2) AS avg_ride_length
FROM ride_data
GROUP BY hour_in_day;

-- TOP 5 START STATION NAME 
SELECT 
start_station_name,
COUNT(*) AS total_rides
FROM ride_data
GROUP BY start_station_name
ORDER BY total_rides DESC 
LIMIT 5;

-- TOP 5 END STATION NAME
SELECT 
end_station_name,
COUNT(*) AS total_rides
FROM ride_data
GROUP BY end_station_name
ORDER BY total_rides DESC 
LIMIT 5;

 

