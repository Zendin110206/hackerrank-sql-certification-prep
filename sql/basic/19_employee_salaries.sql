-- Problem: Employee Salaries
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: WHERE, ORDER BY, numeric filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return employee names for employees with salary above the threshold and
-- tenure below the month limit, ordered by employee ID.
--
-- Query:
SELECT
    name
FROM employee
WHERE salary > 2000
  AND months < 10
ORDER BY employee_id ASC;
--
-- Explanation:
-- The WHERE clause applies both numeric filters required by the problem. The
-- final output is ordered by employee_id in ascending order.
