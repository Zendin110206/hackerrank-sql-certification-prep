-- Problem: Weather Observation Station 12
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: DISTINCT, string pattern filtering, AND logic
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names that do not start with a vowel and do not end with a
-- vowel.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE LOWER(LEFT(city, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
  AND LOWER(RIGHT(city, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');
--
-- Explanation:
-- The AND condition requires both checks to be true: the city must not start
-- with a vowel and must not end with a vowel. DISTINCT removes duplicates.
