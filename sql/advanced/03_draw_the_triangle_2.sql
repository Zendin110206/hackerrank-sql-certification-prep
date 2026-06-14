-- Problem: Draw The Triangle 2
-- Track: SQL Advanced
-- Difficulty: Easy
-- Max score: 25
-- Concepts: generated rows, repeated string output
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Print a 20-row triangle pattern that starts with one star and increases by
-- one star on each following row.
--
-- Query:
WITH RECURSIVE pattern_rows AS (
    SELECT
        1 AS star_count
    UNION ALL
    SELECT
        star_count + 1
    FROM pattern_rows
    WHERE star_count < 20
)
SELECT
    REPEAT('* ', star_count) AS pattern_line
FROM pattern_rows
ORDER BY star_count ASC;
--
-- Explanation:
-- The recursive CTE generates star counts from 1 to 20. Each generated value
-- is passed to REPEAT to produce the requested ascending triangle line.
