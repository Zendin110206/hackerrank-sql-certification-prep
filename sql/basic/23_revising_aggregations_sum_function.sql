-- Problem: Revising Aggregations - The Sum Function
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SUM, WHERE
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the total population for cities in California.
--
-- Query:
SELECT
    SUM(population) AS total_population
FROM city
WHERE district = 'California';
--
-- Explanation:
-- The query filters CITY rows to the California district, then SUM returns the
-- combined population for those rows.
