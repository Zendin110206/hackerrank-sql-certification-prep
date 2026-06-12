-- Problem: Weather Observation Station 20
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 40
-- Concepts: median, ordering, row position logic
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the median northern latitude from STATION, rounded to four decimal
-- places.
--
-- Query:
WITH ordered_latitudes AS (
    SELECT
        lat_n,
        ROW_NUMBER() OVER (ORDER BY lat_n) AS row_number,
        COUNT(*) OVER () AS total_rows
    FROM station
)
SELECT
    ROUND(AVG(lat_n), 4) AS median_latitude
FROM ordered_latitudes
WHERE row_number IN (
    FLOOR((total_rows + 1) / 2),
    CEIL((total_rows + 1) / 2)
);
--
-- Explanation:
-- The CTE orders all latitude values and records both their row position and
-- the total row count. The outer query selects the middle row for odd counts or
-- the two middle rows for even counts, then averages and rounds the result.
