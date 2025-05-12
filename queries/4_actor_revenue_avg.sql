-- 4. What is the average box office revenue for movies 
-- starring a specific actor (e.g., Tom Cruise)?

SELECT
  COUNT(*) AS total_movies_with_actor,
  ROUND(AVG(`Revenue`), 2) AS avg_revenue
FROM
  `[your-project-name].movie_data.movies`
WHERE
  LOWER(Cast_1) = 'tom cruise'
  OR LOWER(Cast_2) = 'tom cruise'
  OR LOWER(Cast_3) = 'tom cruise'
  OR LOWER(Cast_4) = 'tom cruise'
  OR LOWER(Cast_5) = 'tom cruise'