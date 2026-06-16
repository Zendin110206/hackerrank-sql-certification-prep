-- Problem: 15 Days of Learning SQL
-- Track: SQL Advanced
-- Difficulty: Hard
-- Max score: 50
-- Concepts: dates, streaks, grouping, ranking
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- For each contest day, return the number of hackers who submitted every day
-- from the contest start through that day, plus the top daily submitter.
--
-- Query:
WITH daily_submissions AS (
    SELECT
        submission_date,
        hacker_id,
        COUNT(*) AS submission_count
    FROM submissions
    GROUP BY
        submission_date,
        hacker_id
),
hacker_progress AS (
    SELECT
        submission_date,
        hacker_id,
        COUNT(*) OVER (
            PARTITION BY hacker_id
            ORDER BY submission_date
        ) AS submitted_day_count,
        DATEDIFF(submission_date, '2016-03-01') + 1 AS contest_day_count
    FROM daily_submissions
),
consistent_hacker_counts AS (
    SELECT
        submission_date,
        COUNT(*) AS consistent_hacker_count
    FROM hacker_progress
    WHERE submitted_day_count = contest_day_count
    GROUP BY submission_date
),
daily_top_hackers AS (
    SELECT
        submission_date,
        hacker_id,
        submission_count,
        ROW_NUMBER() OVER (
            PARTITION BY submission_date
            ORDER BY submission_count DESC, hacker_id ASC
        ) AS daily_rank
    FROM daily_submissions
)
SELECT
    dth.submission_date,
    chc.consistent_hacker_count,
    dth.hacker_id,
    h.name
FROM daily_top_hackers AS dth
INNER JOIN consistent_hacker_counts AS chc
    ON dth.submission_date = chc.submission_date
INNER JOIN hackers AS h
    ON dth.hacker_id = h.hacker_id
WHERE dth.daily_rank = 1
ORDER BY dth.submission_date ASC;
--
-- Explanation:
-- The first CTE counts submissions per hacker per date. The progress CTE
-- compares each hacker's active-day count against the contest day number to
-- identify hackers who submitted every day so far. A separate ranking CTE finds
-- the highest daily submitter with the lowest hacker ID as the tie-breaker.
