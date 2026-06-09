-- Problem: Weather Observation Station 18
-- Track: SQL Basic
-- Difficulty: Medium
-- Max score: 25
-- Concepts: aggregate coordinates, arithmetic expression, ABS, numeric formatting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the Manhattan distance between the minimum and maximum station
-- coordinate points, rounded to four decimal places.
--
-- Query:
SELECT
    ROUND(
        ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)),
        4
    ) AS manhattan_distance
FROM station;
--
-- Explanation:
-- The query builds the Manhattan distance from absolute differences between
-- latitude and longitude extremes. ROUND formats the final distance to four
-- decimal places.
