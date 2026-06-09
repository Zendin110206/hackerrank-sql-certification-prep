-- Problem: Weather Observation Station 3
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: DISTINCT, numeric filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return unique city names from STATION where the row ID is even.
--
-- Query:
SELECT DISTINCT
    city
FROM station
WHERE id % 2 = 0;
--
-- Explanation:
-- DISTINCT removes duplicate city names from the output. The modulo condition
-- keeps only rows where ID is divisible by two.
