-- Problem: Select By ID
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SELECT, WHERE, ID filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return all CITY columns for the row with the requested ID.
--
-- Query:
SELECT
    *
FROM city
WHERE id = 1661;
--
-- Explanation:
-- The query returns all columns because the task asks for the full city record.
-- The WHERE clause keeps only the row whose ID matches the requested value.
