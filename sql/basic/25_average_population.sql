-- Problem: Average Population
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: AVG, FLOOR
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the average population across all cities, rounded down to the nearest
-- integer.
--
-- Query:
SELECT
    FLOOR(AVG(population)) AS average_population
FROM city;
--
-- Explanation:
-- AVG calculates the mean population across the whole CITY table. FLOOR rounds
-- that average down, which matches the requested rounding direction.
