-- Problem: Japan Population
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SUM, WHERE
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the total population for Japanese cities.
--
-- Query:
SELECT
    SUM(population) AS total_population
FROM city
WHERE countrycode = 'JPN';
--
-- Explanation:
-- The query filters rows to Japan using the country code, then sums the
-- population values for the matching cities.
