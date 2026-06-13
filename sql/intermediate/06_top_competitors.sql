-- Problem: Top Competitors
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 30
-- Concepts: joins, GROUP BY, HAVING, perfect score logic
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return hackers who achieved full scores on more than one challenge, ordered
-- by full-score challenge count and hacker ID.
--
-- Query:
WITH full_score_challenges AS (
    SELECT
        s.hacker_id,
        s.challenge_id
    FROM submissions AS s
    INNER JOIN challenges AS c
        ON s.challenge_id = c.challenge_id
    INNER JOIN difficulty AS d
        ON c.difficulty_level = d.difficulty_level
    WHERE s.score = d.score
    GROUP BY
        s.hacker_id,
        s.challenge_id
)
SELECT
    fsc.hacker_id,
    h.name
FROM full_score_challenges AS fsc
INNER JOIN hackers AS h
    ON fsc.hacker_id = h.hacker_id
GROUP BY
    fsc.hacker_id,
    h.name
HAVING COUNT(*) > 1
ORDER BY
    COUNT(*) DESC,
    fsc.hacker_id ASC;
--
-- Explanation:
-- The CTE keeps one row per hacker and challenge where the submission matched
-- the challenge's maximum score. The outer query counts those full-score
-- challenges per hacker, keeps only hackers with more than one, and applies the
-- required ranking order.
