-- Problem: Weather Observation Station 5
-- Track: SQL Intermediate
-- Difficulty: Easy
-- Max score: 30
-- Concepts: string length, sorting, limiting results
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the shortest and longest city names from STATION with their lengths.
-- Alphabetical order is used as the tie-breaker.
--
-- Query:
SELECT
    city,
    LENGTH(city) AS city_name_length
FROM station
ORDER BY
    city_name_length ASC,
    city ASC
LIMIT 1;

SELECT
    city,
    LENGTH(city) AS city_name_length
FROM station
ORDER BY
    city_name_length DESC,
    city ASC
LIMIT 1;
--
-- Explanation:
-- The first query sorts from shortest to longest and uses city name ascending
-- to choose the alphabetically first city when there is a tie. The second query
-- sorts from longest to shortest with the same alphabetical tie-breaker.
