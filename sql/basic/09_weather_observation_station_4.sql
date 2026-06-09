-- Problem: Weather Observation Station 4
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: COUNT, DISTINCT, duplicate comparison
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Calculate how many city entries are duplicates in the STATION table.
--
-- Query:
SELECT
    COUNT(city) - COUNT(DISTINCT city) AS duplicate_city_entries
FROM station;
--
-- Explanation:
-- COUNT(city) returns the total number of city entries, while
-- COUNT(DISTINCT city) returns the number of unique city names. Their
-- difference is the number of repeated city entries.
