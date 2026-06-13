-- Problem: Ollivander's Inventory
-- Track: SQL Intermediate
-- Difficulty: Medium
-- Max score: 30
-- Concepts: joins, filtering, minimum value per group
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return non-evil wands that have the minimum coin cost for each age and power
-- combination, ordered by power and age.
--
-- Query:
WITH minimum_non_evil_wand_prices AS (
    SELECT
        wp.age,
        w.power,
        MIN(w.coins_needed) AS minimum_coins_needed
    FROM wands AS w
    INNER JOIN wands_property AS wp
        ON w.code = wp.code
    WHERE wp.is_evil = 0
    GROUP BY
        wp.age,
        w.power
)
SELECT
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM wands AS w
INNER JOIN wands_property AS wp
    ON w.code = wp.code
INNER JOIN minimum_non_evil_wand_prices AS mwp
    ON wp.age = mwp.age
   AND w.power = mwp.power
   AND w.coins_needed = mwp.minimum_coins_needed
WHERE wp.is_evil = 0
ORDER BY
    w.power DESC,
    wp.age DESC;
--
-- Explanation:
-- The CTE finds the cheapest non-evil wand for each age and power pair. The
-- outer query joins back to the wand rows to return the requested ID, age,
-- price, and power, then sorts higher power and older wands first.
