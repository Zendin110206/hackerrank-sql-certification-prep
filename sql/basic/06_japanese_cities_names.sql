-- Problem: Japanese Cities' Names
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SELECT specific column, WHERE, country code filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return city names for Japanese cities.
--
-- Query:
SELECT
    name
FROM city
WHERE countrycode = 'JPN';
--
-- Explanation:
-- The query selects only the name column because the problem asks for city names.
-- The WHERE clause limits the result to cities with Japan's country code.
