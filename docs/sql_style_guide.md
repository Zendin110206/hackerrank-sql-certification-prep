# SQL Style Guide

This guide documents the SQL formatting convention used across the repository.

## Formatting

SQL keywords are written in uppercase:

```sql
SELECT
    name,
    population
FROM city
WHERE countrycode = 'USA'
  AND population > 100000;
```

Repository formatting conventions:

- one selected column per line when the query returns multiple columns;
- additional `WHERE` conditions aligned under the first condition;
- semicolon at the end of each final query;
- readable aliases for derived columns.

## Column Selection

`SELECT *` is reserved for challenges that explicitly require every column.

Specific output requirements use explicit column names:

```sql
SELECT
    name
FROM city;
```

## Aliases

Derived columns use readable aliases:

```sql
SELECT
    COUNT(*) AS total_submissions
FROM submissions;
```

Unclear aliases such as `x`, `y`, or `tmp` are avoided unless the query is very small and the meaning is obvious.

## Joins

Join conditions are written on their own line:

```sql
SELECT
    c.name,
    co.continent
FROM city AS c
INNER JOIN country AS co
    ON c.countrycode = co.code;
```

Table aliases are used when multiple tables are involved.

## CTEs

CTEs are used for multi-step logic when they make the query easier to explain:

```sql
WITH ranked_scores AS (
    SELECT
        hacker_id,
        score,
        RANK() OVER (ORDER BY score DESC) AS score_rank
    FROM submissions
)
SELECT
    hacker_id,
    score
FROM ranked_scores
WHERE score_rank = 1;
```

CTE names are descriptive and tied to the role of the intermediate result.

## Comments

Solution files already contain metadata comments. Extra inline comments are reserved for logic that is not immediately obvious from the query itself.

## Accepted But Not Clean

Platform acceptance is the correctness baseline. Repository-ready solutions also need clear formatting and a short explanation.
