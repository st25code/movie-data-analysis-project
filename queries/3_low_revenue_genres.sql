-- 3. Which genres are most common among movies with revenue below $10M?

SELECT Genre, COUNT(*) AS low_revenue_count
FROM `[your-project-name].movie_data.movies`
WHERE revenue < 10000000
GROUP BY Genre
ORDER BY low_revenue_count DESC