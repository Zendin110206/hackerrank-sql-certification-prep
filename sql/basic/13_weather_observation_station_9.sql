-- Problem: Weather Observation Station 9
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: DISTINCT, string pattern filtering, NOT IN
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names that do not start with a vowel.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE LOWER(LEFT(city, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');
--
-- Explanation:
-- The query checks the first character of each city name and excludes rows
-- where that character is a vowel. DISTINCT removes duplicate city names.
