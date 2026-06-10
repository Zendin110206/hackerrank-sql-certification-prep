-- Problem: Contest Leaderboard
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 30
-- Concepts: CTE, MAX per group, SUM, sorting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return hackers with positive total scores, where each total is the sum of
-- the hacker's best score per challenge.
--
-- Query:
WITH max_challenge_scores AS (
    SELECT
        hacker_id,
        challenge_id,
        MAX(score) AS max_score
    FROM submissions
    GROUP BY
        hacker_id,
        challenge_id
)
SELECT
    h.hacker_id,
    h.name,
    SUM(mcs.max_score) AS total_score
FROM hackers AS h
INNER JOIN max_challenge_scores AS mcs
    ON h.hacker_id = mcs.hacker_id
GROUP BY
    h.hacker_id,
    h.name
HAVING total_score > 0
ORDER BY
    total_score DESC,
    h.hacker_id ASC;
--
-- Explanation:
-- The CTE first keeps only each hacker's maximum score per challenge. The
-- outer query sums those maximum scores per hacker, excludes zero totals, and
-- applies the required score and hacker ID ordering.
