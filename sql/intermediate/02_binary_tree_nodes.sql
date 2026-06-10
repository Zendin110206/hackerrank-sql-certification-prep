-- Problem: Binary Tree Nodes
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 30
-- Concepts: CASE, self-referencing data, NULL handling
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Classify each binary tree node as Root, Inner, or Leaf, ordered by node value.
--
-- Query:
SELECT
    n,
    CASE
        WHEN p IS NULL THEN 'Root'
        WHEN n NOT IN (
            SELECT
                p
            FROM bst
            WHERE p IS NOT NULL
        ) THEN 'Leaf'
        ELSE 'Inner'
    END AS node_type
FROM bst
ORDER BY n ASC;
--
-- Explanation:
-- A root node has no parent, so P is NULL. A leaf node never appears as a
-- parent for another node. Any remaining node has both a parent and at least
-- one child, so it is classified as Inner.
