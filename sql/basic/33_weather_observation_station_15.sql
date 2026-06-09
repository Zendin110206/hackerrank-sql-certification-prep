-- Problem: Weather Observation Station 15
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: filtering, sorting, numeric formatting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the western longitude for the greatest northern latitude below the
-- required threshold, rounded to four decimal places.
--
-- Query:
SELECT
    ROUND(long_w, 4) AS western_longitude
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;
--
-- Explanation:
-- Filtering keeps only rows below the latitude threshold. Sorting latitude in
-- descending order places the greatest eligible latitude first, so LIMIT 1
-- returns the associated longitude.
