# SQL Concept Notes

This file stores short concept notes that support the practice files.

## Query Reading Checklist

Before writing SQL, identify:

1. target table or tables;
2. required output columns;
3. row filters;
4. grouping requirements;
5. sorting requirements;
6. duplicate-handling requirements;
7. output formatting requirements.

Most beginner mistakes come from selecting too many columns, missing one filter, or sorting in the wrong direction.

## SELECT

`SELECT` defines which columns appear in the result.

Use explicit columns when the challenge asks for specific output:

```sql
SELECT
    name
FROM city;
```

Use `SELECT *` only when every column is required:

```sql
SELECT *
FROM city;
```

## WHERE

`WHERE` filters rows before grouping and final output.

```sql
SELECT
    name
FROM city
WHERE countrycode = 'JPN';
```

For multiple conditions:

```sql
SELECT
    name
FROM city
WHERE countrycode = 'USA'
  AND population > 100000;
```

## DISTINCT

`DISTINCT` removes duplicate result rows.

Use it only when the challenge asks for unique values or the expected output requires deduplication.

```sql
SELECT DISTINCT
    city
FROM station;
```

## ORDER BY

`ORDER BY` controls output order.

```sql
SELECT
    name
FROM students
ORDER BY name ASC;
```

Use explicit direction when it improves readability:

- `ASC` for ascending order;
- `DESC` for descending order.

## Aggregation

Aggregate functions summarize rows:

- `COUNT(*)`
- `SUM(column_name)`
- `AVG(column_name)`
- `MIN(column_name)`
- `MAX(column_name)`

Example:

```sql
SELECT
    COUNT(*) AS total_rows
FROM city;
```

## Numeric Formatting and Math

Numeric SQL problems often combine aggregation with formatting or distance
formulas.

Common MySQL functions:

- `ROUND(value, decimals)` rounds to a fixed number of decimal places.
- `FLOOR(value)` rounds down to the nearest integer.
- `CEIL(value)` rounds up to the nearest integer.
- `TRUNCATE(value, decimals)` cuts a number to a fixed decimal scale.
- `ABS(value)` returns the absolute value.
- `SQRT(value)` returns the square root.
- `POW(value, exponent)` raises a value to a power.

Example:

```sql
SELECT
    ROUND(SQRT(POW(x2 - x1, 2) + POW(y2 - y1, 2)), 4) AS distance
FROM points;
```

## GROUP BY

`GROUP BY` creates groups before aggregation.

```sql
SELECT
    continent,
    FLOOR(AVG(population)) AS average_population
FROM country
GROUP BY continent;
```

In standard aggregate queries, every selected column that is not aggregated appears in `GROUP BY`.

## HAVING

`HAVING` filters groups after aggregation.

```sql
SELECT
    hacker_id,
    COUNT(*) AS challenge_count
FROM challenges
GROUP BY hacker_id
HAVING COUNT(*) > 1;
```

Use `WHERE` before grouping and `HAVING` after grouping.

## Joins

Use joins to combine related tables.

```sql
SELECT
    city.name,
    country.continent
FROM city
INNER JOIN country
    ON city.countrycode = country.code;
```

Common join types:

- `INNER JOIN` returns matching rows from both tables.
- `LEFT JOIN` keeps all rows from the left table.
- self join compares rows within the same table.

## Subqueries and CTEs

Subqueries and CTEs help break multi-step logic into smaller pieces.

```sql
WITH max_scores AS (
    SELECT
        hacker_id,
        challenge_id,
        MAX(score) AS max_score
    FROM submissions
    GROUP BY
        hacker_id,
        challenge_id
)
SELECT
    hacker_id,
    SUM(max_score) AS total_score
FROM max_scores
GROUP BY hacker_id;
```

A CTE is useful when it makes the query easier to explain.

## CASE

`CASE` is used for conditional output.

```sql
SELECT
    CASE
        WHEN a + b <= c OR a + c <= b OR b + c <= a THEN 'Not A Triangle'
        WHEN a = b AND b = c THEN 'Equilateral'
        WHEN a = b OR a = c OR b = c THEN 'Isosceles'
        ELSE 'Scalene'
    END AS triangle_type
FROM triangles;
```

Order matters. Put invalid cases before valid classifications when the logic depends on it.

## Dialect Notes

HackerRank SQL problems commonly accept MySQL-style syntax. Some functions may differ across database engines.

When writing a solution, use the function names accepted by the challenge environment and avoid unnecessary dialect-specific tricks unless the problem requires them.
