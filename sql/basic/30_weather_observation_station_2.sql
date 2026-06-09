-- Problem: Weather Observation Station 2
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: SUM, numeric rounding
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the rounded sums of northern latitudes and western longitudes.
--
-- Query:
SELECT
    ROUND(SUM(lat_n), 2) AS latitude_sum,
    ROUND(SUM(long_w), 2) AS longitude_sum
FROM station;
--
-- Explanation:
-- SUM aggregates each coordinate column across all station rows. ROUND formats
-- both totals to two decimal places as required.
