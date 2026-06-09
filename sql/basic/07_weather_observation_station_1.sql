-- Problem: Weather Observation Station 1
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 15
-- Concepts: SELECT, column projection
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the city and state columns from the STATION table.
--
-- Query:
SELECT
    city,
    state
FROM station;
--
-- Explanation:
-- The query uses explicit column projection because only CITY and STATE are
-- requested. No filtering or ordering is needed for this task.
