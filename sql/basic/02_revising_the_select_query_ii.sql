-- Problem: Revising the Select Query II
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SELECT, WHERE, column projection, numeric filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return city names for American cities with population above the required threshold.
--
-- Query:
SELECT
    name
FROM city
WHERE countrycode = 'USA'
  AND population > 120000;
--
-- Explanation:
-- The query selects only the name column because the problem asks for city names.
-- It applies both the country code filter and the population threshold filter.
