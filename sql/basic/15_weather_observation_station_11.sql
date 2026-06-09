-- Problem: Weather Observation Station 11
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: DISTINCT, string pattern filtering, OR logic
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names that either do not start with a vowel or do not end
-- with a vowel.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE LOWER(LEFT(city, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
   OR LOWER(RIGHT(city, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');
--
-- Explanation:
-- The OR condition keeps cities that fail at least one vowel-position check:
-- either the first character is not a vowel or the last character is not a
-- vowel. DISTINCT keeps the output unique.
