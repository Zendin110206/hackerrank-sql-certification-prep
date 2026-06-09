-- Problem: Weather Observation Station 14
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: MAX, range filtering, numeric formatting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the greatest northern latitude below the required threshold, truncated
-- to four decimal places.
--
-- Query:
SELECT
    TRUNCATE(MAX(lat_n), 4) AS max_latitude
FROM station
WHERE lat_n < 137.2345;
--
-- Explanation:
-- The WHERE clause keeps only latitudes below the threshold. MAX returns the
-- greatest remaining latitude, and TRUNCATE formats it to four decimal places.
