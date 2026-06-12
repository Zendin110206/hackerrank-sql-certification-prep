-- Problem: SQL Project Planning
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 40
-- Concepts: date ranges, grouping consecutive records, sorting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return project start and end dates by grouping consecutive one-day tasks
-- into project ranges.
--
-- Query:
WITH project_starts AS (
    SELECT
        start_date
    FROM projects
    WHERE start_date NOT IN (
        SELECT
            end_date
        FROM projects
    )
),
project_ends AS (
    SELECT
        end_date
    FROM projects
    WHERE end_date NOT IN (
        SELECT
            start_date
        FROM projects
    )
)
SELECT
    ps.start_date,
    MIN(pe.end_date) AS end_date
FROM project_starts AS ps
INNER JOIN project_ends AS pe
    ON pe.end_date > ps.start_date
GROUP BY ps.start_date
ORDER BY
    DATEDIFF(MIN(pe.end_date), ps.start_date) ASC,
    ps.start_date ASC;
--
-- Explanation:
-- Project starts are dates that never appear as a previous task's end date.
-- Project ends are dates that never appear as a following task's start date.
-- Each start is paired with the nearest later project end, then projects are
-- sorted by duration and start date.
