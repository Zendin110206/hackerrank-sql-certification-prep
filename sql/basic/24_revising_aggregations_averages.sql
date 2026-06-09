-- Problem: Revising Aggregations - Averages
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: AVG, WHERE
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the average population for cities in California.
--
-- Query:
SELECT
    AVG(population) AS average_population
FROM city
WHERE district = 'California';
--
-- Explanation:
-- The WHERE clause keeps only California rows before AVG calculates the mean
-- population for those cities.
