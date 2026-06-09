-- Problem: Weather Observation Station 13
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SUM, range filtering, numeric formatting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the truncated sum of northern latitudes inside the required range.
--
-- Query:
SELECT
    TRUNCATE(SUM(lat_n), 4) AS latitude_sum
FROM station
WHERE lat_n > 38.7880
  AND lat_n < 137.2345;
--
-- Explanation:
-- The WHERE clause applies the latitude range before the SUM is calculated.
-- TRUNCATE formats the result to four decimal places without rounding.
