-- Problem: New Companies
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 30
-- Concepts: multiple joins, COUNT DISTINCT, grouping
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return each company with its founder and distinct counts for each management
-- level and employees, ordered by company code.
--
-- Query:
SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT lm.lead_manager_code) AS lead_manager_count,
    COUNT(DISTINCT sm.senior_manager_code) AS senior_manager_count,
    COUNT(DISTINCT m.manager_code) AS manager_count,
    COUNT(DISTINCT e.employee_code) AS employee_count
FROM company AS c
LEFT JOIN lead_manager AS lm
    ON c.company_code = lm.company_code
LEFT JOIN senior_manager AS sm
    ON c.company_code = sm.company_code
LEFT JOIN manager AS m
    ON c.company_code = m.company_code
LEFT JOIN employee AS e
    ON c.company_code = e.company_code
GROUP BY
    c.company_code,
    c.founder
ORDER BY c.company_code ASC;
--
-- Explanation:
-- The company table is used as the base so every company is represented. Each
-- related hierarchy table is joined by company code, and COUNT(DISTINCT ...)
-- prevents duplicate records from inflating the role counts.
