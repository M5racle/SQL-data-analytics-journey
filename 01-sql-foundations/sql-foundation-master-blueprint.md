# SQL Foundation & Intermediate Filtering: Master Blueprint

This document summarizes my SQL learning progress from core SQL basics into intermediate filtering and logical query structure. These notes support my long-term goal of building skills for data analytics, business intelligence, Power BI, and future Data Analyst / BI Analyst work.

---

## 1. Core SQL Foundations

### Data Retrieval: SELECT and FROM

The foundation of any SQL query begins with `SELECT` and `FROM`.

- `SELECT` specifies which columns to return.
- `FROM` identifies the table where the data comes from.

```sql
SELECT title
FROM films;
```

### Universal Wildcard: *

The asterisk `*` is a shortcut that returns every column from a table.

```sql
SELECT *
FROM films;
```

Useful for quickly exploring a table, but in professional work it is better to select only the columns needed.

### Column Aliasing: AS

The `AS` keyword renames a column or calculated result in the output.

```sql
SELECT COUNT(language) AS count_spanish
FROM films;
```

Aliases are useful for clean reporting, dashboards, and business intelligence work.

---

## 2. Intermediate Filtering and String Logic

### WHERE Clause

The `WHERE` clause filters rows based on specific conditions. It acts like a gatekeeper for the database.

```sql
SELECT title
FROM films
WHERE release_year = 1999;
```

### Text Filtering

Text values must be wrapped in single quotes.

```sql
-- Correct
WHERE language = 'Spanish'

-- Incorrect (SQL treats Spanish as a column name)
WHERE language = Spanish
```

### Numeric Filtering

Numbers must be raw digits with no commas or currency symbols.

```sql
-- Correct
WHERE budget > 2000000

-- Incorrect
WHERE budget > 2,000,000
```

---

## 3. Logical Operators and Query Structure

### Comparison Operators

| Operator | Meaning |
|----------|---------|
| `>` | Greater than |
| `<` | Less than |
| `=` | Equal to |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |
| `<>` | Not equal to |

For years and dates: `>` can mean *after*, `<` can mean *before*.

### AND Operator

`AND` requires all connected conditions to be true.

```sql
SELECT title
FROM films
WHERE release_year > 1990
  AND language = 'Spanish';
```

### OR Operator

`OR` allows alternative conditions — a row passes if at least one is true.

```sql
SELECT title
FROM films
WHERE release_year = 1990
   OR release_year = 1999;
```

### Column Redundancy with OR

The column name must be repeated for each condition.

```sql
-- Correct
WHERE release_year = 1990 OR release_year = 1999

-- Incorrect
WHERE release_year = 1990 OR 1999
```

### Parentheses: The Container Rule

Parentheses group conditions so SQL applies the intended logic.

```sql
SELECT title
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
  AND language = 'English';
```

### BETWEEN

`BETWEEN` filters values within a range and is **inclusive** of both endpoints.

```sql
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;
```

This includes 1990, 2000, and every value between them.

---

## 4. Clean Code Execution

A semicolon marks the end of a SQL statement and belongs at the very end of the final line.

---

## Key Lessons

- Text values need single quotes.
- Numbers should not include commas or currency symbols.
- AND is strict: all conditions must be true.
- OR is flexible: only one condition needs to be true.
- Parentheses protect logic and control order of operations.
- BETWEEN includes both endpoints.
- Clean formatting makes SQL easier to read, debug, and reuse.

## Mission

Build SQL skills step by step for data analytics, business intelligence, Power BI, Excel reporting, and future Data Analyst / BI Analyst work.
