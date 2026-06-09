-- Problem: African Cities
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: INNER JOIN, filtering, column projection
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return city names for cities located in African countries.
--
-- Query:
SELECT
    c.name
FROM city AS c
INNER JOIN country AS co
    ON c.countrycode = co.code
WHERE co.continent = 'Africa';
--
-- Explanation:
-- The JOIN connects cities to countries through the matching country code. The
-- continent filter keeps only African countries, and the query returns city
-- names from the CITY table.
