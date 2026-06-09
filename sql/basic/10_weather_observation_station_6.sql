-- Problem: Weather Observation Station 6
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: DISTINCT, string pattern filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names that start with a vowel.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE LOWER(LEFT(city, 1)) IN ('a', 'e', 'i', 'o', 'u');
--
-- Explanation:
-- DISTINCT removes duplicate city names. LOWER and LEFT inspect the first
-- character consistently before comparing it to the vowel list.
