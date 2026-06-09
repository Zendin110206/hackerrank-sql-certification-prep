-- Problem: The PADS
-- Track: SQL Basic
-- Difficulty: Medium
-- Max score: 30
-- Concepts: string formatting, aggregation, ordering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Print formatted names with occupation initials, then print occupation
-- counts in the required sentence format.
--
-- Query:
SELECT
    CONCAT(name, '(', LEFT(occupation, 1), ')') AS formatted_name
FROM occupations
ORDER BY name ASC;

SELECT
    CONCAT(
        'There are a total of ',
        COUNT(*),
        ' ',
        LOWER(occupation),
        's.'
    ) AS occupation_summary
FROM occupations
GROUP BY occupation
ORDER BY
    COUNT(*) ASC,
    occupation ASC;
--
-- Explanation:
-- The first query formats each name with the first letter of the occupation
-- and sorts names alphabetically. The second query counts each occupation,
-- formats the required sentence, then sorts by count and occupation name.
