-- Problem: Weather Observation Station 19
-- Track: SQL Basic
-- Difficulty: Medium
-- Max score: 30
-- Concepts: aggregate coordinates, distance formula, SQRT, POW, numeric formatting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the Euclidean distance between the minimum and maximum station
-- coordinate points, rounded to four decimal places.
--
-- Query:
SELECT
    ROUND(
        SQRT(
            POW(MAX(lat_n) - MIN(lat_n), 2)
            + POW(MAX(long_w) - MIN(long_w), 2)
        ),
        4
    ) AS euclidean_distance
FROM station;
--
-- Explanation:
-- The query applies the Euclidean distance formula using coordinate extremes.
-- POW squares each coordinate difference, SQRT takes the square root of their
-- sum, and ROUND formats the final value.
