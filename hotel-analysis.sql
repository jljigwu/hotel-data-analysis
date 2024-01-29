/*
INSERT INTO dbo.Hotels_test 
select * FROM
(
    SELECT * FROM dbo.['2018$']
    UNION ALL
    SELECT * FROM dbo.['2019$']
    UNION ALL
    SELECT * FROM dbo.['2020$']
) a
*/
--Is our hotel revenue growing yearly?
SELECT arrival_date_year, 
SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)) AS total_revenue
FROM dbo.Hotels_test
GROUP BY arrival_date_year;

-- What is the overall cancellation rate for each hotel?
SELECT hotel, 
COUNT(*) AS total_bookings,
SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS canceled_bookings,
ROUND(SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancellation_rate
FROM dbo.Hotels_test
GROUP BY hotel;

-- Which country has the most guests in a given hotel?
SELECT hotel, country, 
COUNT(*) as NumberOfGuests
FROM dbo.Hotels_test
GROUP BY hotel, country
ORDER BY NumberOfGuests DESC;

-- Which month has the highest number of bookings?
SELECT arrival_date_month, 
COUNT(*) AS total_bookings
FROM dbo.Hotels_test
GROUP BY arrival_date_month
ORDER BY total_bookings DESC;

-- Which room type is most frequently booked?
SELECT reserved_room_type, 
COUNT(*) AS room_type_count
FROM dbo.Hotels_test
GROUP BY reserved_room_type
ORDER BY room_type_count DESC;

-- Should we increase our parking lot size?
SELECT arrival_date_year, hotel,
CONCAT (round((sum(required_car_parking_spaces)/sum(stays_in_week_nights + stays_in_weekend_nights)) * 100, 2), '%') as parking_percentage
FROM dbo.Hotels_test 
GROUP BY arrival_date_year, hotel
ORDER BY parking_percentage DESC;

