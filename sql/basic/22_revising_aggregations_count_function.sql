-- Problem: Revising Aggregations - The Count Function
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: COUNT, WHERE
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Count cities with population above the required threshold.
--
-- Query:
SELECT
    COUNT(*) AS city_count
FROM city
WHERE population > 100000;
--
-- Explanation:
-- The WHERE clause filters cities by population before COUNT returns the
-- number of matching rows.
