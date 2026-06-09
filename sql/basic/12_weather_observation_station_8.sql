-- Problem: Weather Observation Station 8
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: DISTINCT, string pattern filtering, AND logic
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names that start and end with vowels.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE LOWER(LEFT(city, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND LOWER(RIGHT(city, 1)) IN ('a', 'e', 'i', 'o', 'u');
--
-- Explanation:
-- The first condition checks the starting character and the second condition
-- checks the ending character. AND requires both vowel checks to be true.
