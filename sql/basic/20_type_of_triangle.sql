-- Problem: Type of Triangle
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 20
-- Concepts: CASE, conditional logic, data validation
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Classify each row of side lengths as a triangle type or as not forming a
-- valid triangle.
--
-- Query:
SELECT
    CASE
        WHEN a + b <= c OR a + c <= b OR b + c <= a THEN 'Not A Triangle'
        WHEN a = b AND b = c THEN 'Equilateral'
        WHEN a = b OR a = c OR b = c THEN 'Isosceles'
        ELSE 'Scalene'
    END AS triangle_type
FROM triangles;
--
-- Explanation:
-- The invalid triangle check is evaluated first because invalid side lengths
-- should not be classified as a valid triangle type. The remaining CASE
-- branches classify equal-side patterns from most specific to least specific.
