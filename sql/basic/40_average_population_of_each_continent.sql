-- Problem: Average Population of Each Continent
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: INNER JOIN, GROUP BY, AVG, FLOOR
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return each continent with its average city population rounded down to the
-- nearest integer.
--
-- Query:
SELECT
    co.continent,
    FLOOR(AVG(c.population)) AS average_city_population
FROM city AS c
INNER JOIN country AS co
    ON c.countrycode = co.code
GROUP BY co.continent;
--
-- Explanation:
-- The JOIN links cities to their countries and continents. GROUP BY creates
-- one result per continent, AVG calculates the average city population, and
-- FLOOR rounds the result down.
