-- Problem: Placements
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 40
-- Concepts: joins, self-comparison, salary comparison, sorting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return students whose best friends received higher salary offers, ordered by
-- the best friends' salaries.
--
-- Query:
SELECT
    s.name
FROM students AS s
INNER JOIN friends AS f
    ON s.id = f.id
INNER JOIN packages AS student_package
    ON s.id = student_package.id
INNER JOIN packages AS friend_package
    ON f.friend_id = friend_package.id
WHERE friend_package.salary > student_package.salary
ORDER BY friend_package.salary ASC;
--
-- Explanation:
-- The query joins each student to their best friend and compares both salary
-- offers from the packages table. Only students whose friends have higher
-- offers are returned, sorted by the friend's salary as required.
