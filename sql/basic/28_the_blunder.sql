-- Problem: The Blunder
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: AVG, string replacement, rounding
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Calculate the rounded-up difference between the actual average salary and
-- the average salary after removing zero digits.
--
-- Query:
SELECT
    CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) AS salary_error
FROM employees;
--
-- Explanation:
-- REPLACE removes zero characters from salary values for the incorrect
-- calculation. The difference between the real and incorrect averages is then
-- rounded up with CEIL.
