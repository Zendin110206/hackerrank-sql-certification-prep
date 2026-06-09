-- Problem: Population Density Difference
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: MAX, MIN, arithmetic expression
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the difference between the largest and smallest city populations.
--
-- Query:
SELECT
    MAX(population) - MIN(population) AS population_difference
FROM city;
--
-- Explanation:
-- MAX finds the largest population and MIN finds the smallest population. The
-- arithmetic expression returns their difference.
