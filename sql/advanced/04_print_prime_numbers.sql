-- Problem: Print Prime Numbers
-- Track: SQL Advanced
-- Difficulty: Medium
-- Max score: 40
-- Concepts: generated numbers, primality test, string aggregation
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Print all prime numbers less than or equal to 1000 on one line, separated by
-- ampersands.
--
-- Query:
WITH RECURSIVE numbers AS (
    SELECT
        2 AS number_value
    UNION ALL
    SELECT
        number_value + 1
    FROM numbers
    WHERE number_value < 1000
)
SELECT
    GROUP_CONCAT(
        candidate.number_value
        ORDER BY candidate.number_value
        SEPARATOR '&'
    ) AS prime_numbers
FROM numbers AS candidate
WHERE NOT EXISTS (
    SELECT
        1
    FROM numbers AS divisor
    WHERE divisor.number_value <= FLOOR(SQRT(candidate.number_value))
      AND candidate.number_value % divisor.number_value = 0
);
--
-- Explanation:
-- The recursive CTE generates candidate values from 2 through 1000. A candidate
-- is prime when no divisor up to its square root divides it evenly. GROUP_CONCAT
-- formats the remaining prime numbers on one line with ampersand separators.
