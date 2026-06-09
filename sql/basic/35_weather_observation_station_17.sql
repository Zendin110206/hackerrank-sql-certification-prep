-- Problem: Weather Observation Station 17
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: filtering, sorting, numeric formatting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the western longitude associated with the smallest northern latitude
-- above the required threshold, rounded to four decimal places.
--
-- Query:
SELECT
    ROUND(long_w, 4) AS western_longitude
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1;
--
-- Explanation:
-- The query filters to eligible latitudes, sorts them from smallest to largest,
-- and returns the longitude from the first matching row.
