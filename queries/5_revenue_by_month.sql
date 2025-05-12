-- 5. Which release months are the most profitable on average?

SELECT
  EXTRACT(MONTH FROM DATE(`Release Date`)) AS release_month,
  COUNT(*) AS movie_count,
  ROUND(SUM(`Revenue`), 2) AS total_revenue,
  ROUND(AVG(`Revenue`), 2) AS avg_revenue
FROM
  `[your-project-name].movie_data.movies`
GROUP BY
  release_month
ORDER BY
  avg_revenue DESC

-- 5.1 Which release months&genres are the most profitable on average?

SELECT
  EXTRACT(MONTH FROM DATE(`Release Date`)) AS release_month,
  Genre,
  COUNT(*) AS movie_count,
  ROUND(SUM(`Revenue`), 2) AS total_revenue,
  ROUND(AVG(`Revenue`), 2) AS avg_revenue
FROM
  `[your-project-name].movie_data.movies`
GROUP BY
  release_month, Genre
ORDER BY
  avg_revenue DESC