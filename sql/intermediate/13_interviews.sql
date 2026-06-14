-- Problem: Interviews
-- Track: SQL Intermediate
-- Difficulty: Hard
-- Max score: 50
-- Concepts: multiple joins, aggregation, NULL handling, filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return contest-level submission and view totals, excluding contests whose
-- combined activity metrics are all zero.
--
-- Query:
WITH submission_totals AS (
    SELECT
        challenge_id,
        SUM(total_submissions) AS total_submissions,
        SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM submission_stats
    GROUP BY challenge_id
),
view_totals AS (
    SELECT
        challenge_id,
        SUM(total_views) AS total_views,
        SUM(total_unique_views) AS total_unique_views
    FROM view_stats
    GROUP BY challenge_id
)
SELECT
    c.contest_id,
    c.hacker_id,
    c.name,
    COALESCE(SUM(st.total_submissions), 0) AS total_submissions,
    COALESCE(SUM(st.total_accepted_submissions), 0) AS total_accepted_submissions,
    COALESCE(SUM(vt.total_views), 0) AS total_views,
    COALESCE(SUM(vt.total_unique_views), 0) AS total_unique_views
FROM contests AS c
LEFT JOIN colleges AS co
    ON c.contest_id = co.contest_id
LEFT JOIN challenges AS ch
    ON co.college_id = ch.college_id
LEFT JOIN submission_totals AS st
    ON ch.challenge_id = st.challenge_id
LEFT JOIN view_totals AS vt
    ON ch.challenge_id = vt.challenge_id
GROUP BY
    c.contest_id,
    c.hacker_id,
    c.name
HAVING total_submissions > 0
    OR total_accepted_submissions > 0
    OR total_views > 0
    OR total_unique_views > 0
ORDER BY c.contest_id ASC;
--
-- Explanation:
-- Submission and view metrics are aggregated per challenge before joining to
-- contest data, preventing duplicate multiplication across multiple stat rows.
-- The outer query rolls those challenge totals up to each contest, replaces
-- missing metrics with zero, excludes fully empty contests, and sorts by
-- contest ID.
