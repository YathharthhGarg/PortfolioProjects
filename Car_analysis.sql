create schema cars;
use cars;
-- READ DATA --
select * from car_dekho;
-- Total cars: to get count of total records --
select count(*) from car_dekho;
-- Total cars = 7927 --
-- How many cars available in 2023? --
select count(*) from car_dekho where year = 2023;
-- 2023 Cars = 6 --
-- How many cars available in 2020, 2021, 2022? --
select count(*) from car_dekho where year = 2020;
-- 2020 Cars = 74 --
select count(*) from car_dekho where year = 2021; #7 Cars in 2021
select count(*) from car_dekho where year = 2022; #7 Cars in 2022
-- How many total cars available in 2020, 2021, and 2023? --
-- GROUP BY --
Select count(*) from car_dekho where year in (2020, 2021, 2023) group by year;
-- 6 in 2020, 7 in 2021, 74 in 2023 --
-- Print the total cars by year --
select year, count(*) from car_dekho group by year;
-- How many diesel cars in 2020? --
select count(*) from car_dekho where year = 2020 and Fuel = "Diesel"; #20 diesel cars in 2020
-- How many petrol cars in 2020? --
select count(*) from car_dekho where year = 2020 and Fuel = "Petrol"; #51 petrol cars in 2020
-- Print all cars by fuel types and by year --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
-- Which years had more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*)>100; 
-- 2006 - 2019 had more than 100 cars --
-- Display all car count b/w 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023; #4124 cars
-- Display all car details b/w 2015 and 2013 --
select * from car_dekho where year between 2015 and 2023;

