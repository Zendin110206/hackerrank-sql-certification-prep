-- Problem: Challenges
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 30
-- Concepts: GROUP BY, COUNT, duplicate handling, sorting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return hackers and their challenge counts, excluding duplicated non-maximum
-- counts while keeping the maximum count and unique counts.
--
-- Query:
WITH challenge_counts AS (
    SELECT
        h.hacker_id,
        h.name,
        COUNT(c.challenge_id) AS total_challenges
    FROM hackers AS h
    INNER JOIN challenges AS c
        ON h.hacker_id = c.hacker_id
    GROUP BY
        h.hacker_id,
        h.name
),
challenge_count_frequencies AS (
    SELECT
        total_challenges,
        COUNT(*) AS frequency
    FROM challenge_counts
    GROUP BY total_challenges
),
maximum_challenge_count AS (
    SELECT
        MAX(total_challenges) AS maximum_total_challenges
    FROM challenge_counts
)
SELECT
    cc.hacker_id,
    cc.name,
    cc.total_challenges
FROM challenge_counts AS cc
INNER JOIN challenge_count_frequencies AS ccf
    ON cc.total_challenges = ccf.total_challenges
CROSS JOIN maximum_challenge_count AS mcc
WHERE cc.total_challenges = mcc.maximum_total_challenges
   OR ccf.frequency = 1
ORDER BY
    cc.total_challenges DESC,
    cc.hacker_id ASC;
--
-- Explanation:
-- The first CTE counts challenges per hacker. The second CTE counts how often
-- each challenge total appears, and the third records the maximum total. The
-- final query keeps all hackers with the maximum count plus hackers whose count
-- is unique, then applies the required ordering.
