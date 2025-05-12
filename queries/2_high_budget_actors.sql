-- This query creates a temporary table with all original columns,
-- plus a new column 'budget_number' that converts the budget string
-- into a properly formatted numeric value (FLOAT64).

WITH cleaned_movies AS (
  SELECT
    *,
    SAFE_CAST(REGEXP_REPLACE(TRIM(`Budget `), r'[\$,]', '') AS FLOAT64) AS budget_number
  FROM
    `[your-project-name].movie_data.movies`
)

-- 2. Which lead actors (Cast_1) most frequently appeared in 
-- high-budget films (over $100M)? 

SELECT Cast_1, COUNT(*) AS appearances
FROM cleaned_movies
WHERE budget_number > 100000000
GROUP BY Cast_1
ORDER BY appearances DESC



