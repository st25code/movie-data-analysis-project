-- 1. Which directors directed the most movies?

SELECT Director_1, COUNT(*) AS movie_count
FROM `[your-project-name].movie_data.movies` 
GROUP BY Director_1
ORDER BY movie_count DESC