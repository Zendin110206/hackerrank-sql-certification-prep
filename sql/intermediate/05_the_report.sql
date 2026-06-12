-- Problem: The Report
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 20
-- Concepts: range join, CASE-style output, sorting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return each student's display name, grade, and marks using grade ranges,
-- hiding names for grades below 8 and applying the required sort order.
--
-- Query:
SELECT
    CASE
        WHEN g.grade < 8 THEN NULL
        ELSE s.name
    END AS student_name,
    g.grade,
    s.marks
FROM students AS s
INNER JOIN grades AS g
    ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY
    g.grade DESC,
    CASE
        WHEN g.grade >= 8 THEN s.name
        ELSE NULL
    END ASC,
    CASE
        WHEN g.grade < 8 THEN s.marks
        ELSE NULL
    END ASC;
--
-- Explanation:
-- The range join maps each student's marks to the matching grade. CASE hides
-- names for grades below 8. The ORDER BY clause applies the problem's separate
-- tie-breakers: names for high grades and marks for lower grades.
