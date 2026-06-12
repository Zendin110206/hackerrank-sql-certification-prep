-- Problem: Symmetric Pairs
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 40
-- Concepts: self join, pair matching, duplicate handling
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return symmetric function pairs in ascending X order, listing each pair only
-- once with X less than or equal to Y.
--
-- Query:
SELECT
    source_pair.x,
    source_pair.y
FROM functions AS source_pair
INNER JOIN functions AS reciprocal_pair
    ON source_pair.x = reciprocal_pair.y
   AND source_pair.y = reciprocal_pair.x
WHERE source_pair.x <= source_pair.y
GROUP BY
    source_pair.x,
    source_pair.y
HAVING source_pair.x < source_pair.y
    OR COUNT(*) > 1
ORDER BY source_pair.x ASC;
--
-- Explanation:
-- The self join finds rows whose values appear in reverse order. The X <= Y
-- filter prevents mirrored duplicates from being printed twice. For equal
-- pairs, COUNT(*) > 1 ensures the pair exists more than once.
