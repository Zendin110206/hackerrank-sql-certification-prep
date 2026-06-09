-- Problem: Top Earners
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 20
-- Concepts: arithmetic expression, COUNT, GROUP BY, sorting
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return the highest total earnings value and the number of employees who
-- reached that value.
--
-- Query:
SELECT
    salary * months AS total_earnings,
    COUNT(*) AS employee_count
FROM employee
GROUP BY total_earnings
ORDER BY total_earnings DESC
LIMIT 1;
--
-- Explanation:
-- Total earnings are calculated as salary multiplied by months. Grouping by
-- that calculated value lets COUNT return how many employees share each
-- earnings value, and the descending sort keeps the maximum group first.
