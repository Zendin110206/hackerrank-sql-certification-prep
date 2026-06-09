-- Problem: Population Census
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: INNER JOIN, SUM, filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the total population of cities located in Asian countries.
--
-- Query:
SELECT
    SUM(c.population) AS total_population
FROM city AS c
INNER JOIN country AS co
    ON c.countrycode = co.code
WHERE co.continent = 'Asia';
--
-- Explanation:
-- The INNER JOIN links each city to its country. The continent filter keeps
-- only Asian countries before SUM calculates the total city population.
