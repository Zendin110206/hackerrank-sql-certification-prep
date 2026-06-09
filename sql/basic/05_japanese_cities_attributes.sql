-- Problem: Japanese Cities' Attributes
-- Track: SQL Basic
-- Difficulty: Easy
-- Max score: 10
-- Concepts: SELECT all columns, WHERE, country code filtering
-- Status: Accepted
-- Source: HackerRank SQL practice
--
-- Task summary:
-- Return all CITY records for Japanese cities.
--
-- Query:
SELECT
    *
FROM city
WHERE countrycode = 'JPN';
--
-- Explanation:
-- The query returns every column because the problem asks for all city attributes.
-- It filters the CITY table to records with Japan's country code.
