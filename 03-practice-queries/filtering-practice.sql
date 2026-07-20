-- Filtering practice: films table
-- Concepts: WHERE, AND, OR, parentheses, BETWEEN

-- Text filtering with single quotes
SELECT title
FROM films
WHERE language = 'Spanish';

-- Numeric filtering, no commas
SELECT title, budget
FROM films
WHERE budget > 2000000;

-- AND: both conditions must be true
SELECT title
FROM films
WHERE release_year > 1990
  AND language = 'Spanish';

-- OR: column name repeated each time
SELECT title
FROM films
WHERE release_year = 1990
   OR release_year = 1999;

-- Parentheses grouping OR before AND
SELECT title
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
  AND language = 'English';

-- BETWEEN: inclusive of both endpoints
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;
