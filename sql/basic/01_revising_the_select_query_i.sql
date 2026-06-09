-- Problem: Revising the Select Query I
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SELECT, WHERE, numeric filtering, text filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return all CITY records for American cities with population above the required threshold.
--
-- Query:
SELECT
    *
FROM city
WHERE countrycode = 'USA'
  AND population > 100000;
--
-- Explanation:
-- The query returns every column because the problem asks for all city attributes.
-- It filters the CITY table to American cities and keeps only rows with population
-- greater than 100000.
