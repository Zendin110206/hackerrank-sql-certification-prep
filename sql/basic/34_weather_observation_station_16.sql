-- Problem: Weather Observation Station 16
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: MIN, range filtering, numeric formatting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the smallest northern latitude above the required threshold, rounded
-- to four decimal places.
--
-- Query:
SELECT
    ROUND(lat_n, 4) AS min_latitude
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1;
--
-- Explanation:
-- The WHERE clause keeps latitudes above the threshold. Sorting ascending puts
-- the smallest eligible latitude first, and ROUND formats the value.
