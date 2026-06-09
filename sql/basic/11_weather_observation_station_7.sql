-- Problem: Weather Observation Station 7
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: DISTINCT, string pattern filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names that end with a vowel.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE LOWER(RIGHT(city, 1)) IN ('a', 'e', 'i', 'o', 'u');
--
-- Explanation:
-- DISTINCT keeps each city name once. LOWER and RIGHT check the final
-- character consistently before comparing it to the vowel list.
