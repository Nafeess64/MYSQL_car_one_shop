SELECT * FROM cars.car_one;
DESC cars.car_one;
--read data -- 
SELECT * FROM cars.car_one;
## total count of record ##
SELECT count(*) FROM cars.car_one;

## how many cars will be available in 2023? ##
SELECT COUNT(*) FROM cars.car_one WHERE year = 2023;

## cars available in 2020, 2021, 2022 ## (7, 7, 74)
SELECT COUNT(*) FROM cars.car_one WHERE year in (2020, 2021, 2022) group by year;

## all the cars by year ##
SELECT COUNT(*) FROM cars.car_one GROUP BY year;

## number of disel car in 2020## 
SELECT count(*) From cars.car_one WHERE year = 2020 and fuel = "Diesel";

## number of petrol car in 2020 ## 
SELECT count(*) From cars.car_one WHERE year = 2020 and fuel = "Petrol";

-- car run with patrol between year 2020 and 2022-- 
SELECT Name, year, fuel from cars.car_one
 WHERE year = 2020 AND 2022
 AND fuel = 'Petrol';
 
-- Petrol car between year 2020 to 2022 with manual transmission-- 
SELECT Name, year, fuel from cars.car_one
 WHERE year BETWEEN 2020 AND 2022
 AND fuel = 'Petrol'
 AND transmission = 'Manual';

-- all fuel car come by year and year(petrol, diesel and CNG -- 
SELECT  year, COUNT(*) from cars.car_one
 WHERE fuel in ('petrol', 'Diesel', 'CNG') 
 GROUP BY year;
  
--years more than 100 cars-- 
SELECT year, COUNT(*) AS car_count FROM cars.car_one
 GROUP BY year HAVING car_count > 100;

-- All car count between 2015 to 2020-- 
SELECT year, COUNT(*) AS car_count FROM cars.car_one
 WHERE year between 2015 and 2020
 GROUP BY year;
 
 -- Car all report between 2015 to 2022--
 SELECT * FROM cars.car_one WHERE year BETWEEN 2015 and 2022;



