-- Problem: Higher Than 75 Marks
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: WHERE, ORDER BY, string functions
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return student names with marks above the required threshold, sorted by the
-- last three characters of the name and then by ID.
--
-- Query:
SELECT
    name
FROM students
WHERE marks > 75
ORDER BY
    RIGHT(name, 3) ASC,
    id ASC;
--
-- Explanation:
-- The WHERE clause keeps only students with marks greater than 75. The ORDER BY
-- clause applies the required primary sort on the last three characters of the
-- name and uses ID as the tie-breaker.
