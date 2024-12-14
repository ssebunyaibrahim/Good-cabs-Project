USE trips_db;

-- Business Request - 1: City-Level Fare and Trip Summary Report

CREATE VIEW `City-Level Fare and Trip Summary Report` AS
SELECT
	b.city_name,
    COUNT(*) AS 'total trips',
    ROUND(AVG(fare_amount/distance_travelled_km), 2) AS 'avg_fare_per_km',
    ROUND(AVG(fare_amount), 2) AS 'avg_fare_per_trip',
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM fact_trips) * 100), 2) AS '%_contribution_to_total_trips'
FROM fact_trips a
JOIN dim_city b
ON a.city_id = b.city_id
GROUP BY city_name
ORDER BY `total trips` DESC, city_name
;

-- Business Request - 2: Monthly City-Level Trips Target Performance Report

CREATE VIEW `Monthly City-Level Trips Target Performance Report` AS
SELECT
	city_name,
    DATE_FORMAT(month, '%M') AS 'month_name',
    COUNT(a.city_id) AS 'actual_trips',
    total_target_trips AS 'target_trips',
    CASE
		WHEN COUNT(a.city_id) > total_target_trips THEN 'Above Target'
        ELSE 'Below Target'
	END AS 'performance_status',
    ROUND(((COUNT(a.city_id)- total_target_trips)/ total_target_trips *100), 2) AS '% difference'
FROM fact_trips a
JOIN dim_city b
ON a.city_id = b.city_id
JOIN targets_db.monthly_target_trips c 
ON a.city_id = c.city_id AND DATE_FORMAT(c.month, '%M') = DATE_FORMAT(a.date, '%M')
GROUP BY
	city_name,
    month_name,
    total_target_trips
ORDER BY
	city_name
;

-- Business Request - 3: City-Level Repeat Passenger Trip Frequency Report

CREATE VIEW `City-Level Repeat Passenger Trip Frequency Report` AS
SELECT 
	city_name,
    ROUND((SUM(CASE WHEN trip_count = '2-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '2-Trips',
    ROUND((SUM(CASE WHEN trip_count = '3-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '3-Trips',
    ROUND((SUM(CASE WHEN trip_count = '4-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '4-Trips',   
    ROUND((SUM(CASE WHEN trip_count = '5-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '5-Trips',         
    ROUND((SUM(CASE WHEN trip_count = '6-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '6-Trips',    
    ROUND((SUM(CASE WHEN trip_count = '7-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '7-Trips',     
    ROUND((SUM(CASE WHEN trip_count = '8-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '8-Trips', 
	ROUND((SUM(CASE WHEN trip_count = '9-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '9-Trips',
    ROUND((SUM(CASE WHEN trip_count = '10-Trips' THEN repeat_passenger_count 
				ELSE 0 END)/SUM(repeat_passenger_count)) * 100, 2) AS  '10-Trips'          
FROM dim_city a
JOIN dim_repeat_trip_distribution b
ON a.city_id = b.city_id
GROUP BY city_name
ORDER BY city_name
;

-- Business Request - 4: Identify Cities with Highest and Lowest Total New Passengers

CREATE VIEW `Cities with Highest and Lowest Total New Passengers` AS
WITH top3 AS (
SELECT SUM(new_passengers) AS s 
FROM fact_passenger_summary
GROUP BY city_id
ORDER BY s DESC 
LIMIT 3),

bottom3 AS (
SELECT SUM(new_passengers) AS s 
FROM fact_passenger_summary
GROUP BY city_id
ORDER BY s 
LIMIT 3)

SELECT
	city_name,
    SUM(new_passengers) AS 'total new_passengers',
    CASE
		WHEN SUM(new_passengers) IN( SELECT s FROM top3)
        THEN 'Top 3'
        WHEN SUM(new_passengers) IN( SELECT s FROM bottom3)
        THEN 'Bottom 3'
	END AS 'city_category'
FROM dim_city a
JOIN fact_passenger_summary b
ON a.city_id = b.city_id
GROUP BY city_name
ORDER BY `total new_passengers` DESC
;

-- Business Request - 5: Identify Month with Highest Revenue for Each City

CREATE VIEW `Month with Highest Revenue for Each City` AS 
WITH monthly_revenue AS(
SELECT city_name,
	DATE_FORMAT (date, '%M') AS 'month',
    SUM(fare_amount) AS 'revenue'
FROM fact_trips a
JOIN dim_city b
ON a.city_id = b.city_id
GROUP BY
	city_name,
    DATE_FORMAT(date, '%M')
),
city_revenue AS(
SELECT 
	city_name,
	SUM(revenue) AS 'total_revenue',
    MAX(revenue) AS max_revenue
FROM monthly_revenue
GROUP BY city_name
)
SELECT
	a.city_name,
    month AS 'highest_revenue month',
    revenue,
    ROUND((revenue/total_revenue) *100, 2) AS 'percentage_contribution (%)'
FROM monthly_revenue a
JOIN city_revenue b
ON b.city_name = a.city_name AND a.revenue = b.max_revenue
;

-- Business Request - 6: Repeat Passenger Rate Analysis

CREATE VIEW `Repeat Passenger Rate Analysis` AS
WITH monthly_rp AS (
SELECT 
	city_name,
    DATE_FORMAT(month, '%M') AS 'month',
    total_passengers,
    repeat_passengers,
	ROUND(repeat_passengers/total_passengers * 100, 2 ) AS 'monthly_repeat_passenger_rate (%)'   
FROM fact_passenger_summary a
JOIN dim_city b
ON a.city_id = b.city_id
GROUP BY 
	city_name, `month`,total_passengers,repeat_passengers
),
city_rp AS(
SELECT 
	city_name,
    ROUND(SUM(repeat_passengers)/ SUM(total_passengers) * 100, 2 ) AS 'city_repeat_passenger_rate (%)'   
FROM fact_passenger_summary a
JOIN dim_city b
ON a.city_id = b.city_id
GROUP BY 
	city_name
)
SELECT 
	a.city_name,
    `month`,
    total_passengers,
    repeat_passengers,
	`monthly_repeat_passenger_rate (%)`,
    `city_repeat_passenger_rate (%)`
  FROM monthly_rp a
  JOIN city_rp b
  ON a.city_name = b.city_name
  ORDER BY city_name 
;



