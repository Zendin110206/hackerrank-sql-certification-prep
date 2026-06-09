-- Problem: Weather Observation Station 10
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: DISTINCT, string pattern filtering, NOT IN
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names that do not end with a vowel.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE LOWER(RIGHT(city, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');
--
-- Explanation:
-- The query checks the final character of each city name and excludes rows
-- where that character is a vowel. DISTINCT removes duplicate city names.
