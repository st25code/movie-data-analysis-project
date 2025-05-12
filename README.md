# 🎬 Movie Data Analysis Project

## 📌 Project Overview

The **Movie Data Analysis Project** explores trends in box office revenue from a dataset of over 500 movies. Using spreadsheet tools (Google Sheets/Excel) and Tableau, the analysis aims to identify patterns in revenue, profitability, and genre performance. The project demonstrates practical data cleaning, aggregation, and visualization techniques.

## 🎯 Objective

To analyze movie performance by year, budget, and genre in order to uncover key insights about what contributes to a movie’s commercial success.

## ❓ Key Questions

1. How did total box office revenue change over the years?
2. Which year had the highest number of movie releases, and how did that affect revenue?
3. What percentage of movies earned less than $10M in each year, and how did that impact overall performance?
4. Which genres generated the highest average profit (revenue minus budget)?
5. Is there a relationship between average budget and average revenue across genres?
6. Which genres are most profitable with relatively low budgets?
7. What strategic recommendations can be made for movie studios based on budget and genre?

## 🧪 Key Questions Answered Using SQL

To further explore the dataset, several business questions were addressed using SQL in BigQuery. These queries provided additional insights that complement the spreadsheet and visualization analysis.

1. **Which directors directed the most movies?**
   - Counted number of movies grouped by `Director_1`.

2. **Which lead actors (Cast_1) most frequently appeared in high-budget films (over $100M)?**
   - Filtered by `Budget > 100,000,000` and grouped by `Cast_1`.

3. **Which genres are most common among movies with revenue below $10M?**
   - Filtered by `Revenue < 10,000,000` and grouped by `Genre`.

4. **What is the average box office revenue for movies starring a specific actor (e.g., Tom Cruise)?**
   - Filtered movies where `Cast_1` through `Cast_5` match a given actor and averaged `Revenue`.

5. **Which release months are the most profitable on average?**
   - Extracted the month from `Release Date` and calculated average revenue per month.

These queries allowed for efficient filtering, grouping, and aggregation of data to support deeper business insight and hypothesis testing.


## 🧰 Tools Used

- **Google Sheets / Excel** – for data cleaning, sorting, and pivot table analysis  
- **Tableau** – for interactive data visualizations  
- **SQL (BigQuery)** – for testing basic data exploration queries  

## 📊 Visualizations (Tableau)

The following charts were created in Tableau to support the analysis:

- **Line Chart**: Total box office revenue per year
- **Bar Chart**: Count and percentage of low-grossing movies (< $10M) per year
- **Horizontal Bar Chart**: Average profit by genre
- **Bubble Chart**: Relationship between average budget and revenue per genre
- **Pie Chart**: Genre distribution across all movies

## 📝 Changelog

All data transformation steps are documented in [`changelog.ipynb`](./changelog.ipynb)

## 📁 Dataset

- `movie_initial_dataset.csv` / `movie_initial_dataset.xlsx`: original raw dataset used as a starting point
- `movie_ready_dataset.xlsx`: cleaned and transformed dataset, prepared in **Excel/Google Sheets** through sorting, formatting, pivot tables, and calculated fields.  
  This version was used to explore trends and answer the key analytical questions.


## 📁 Project Structure

Movie-Data-Analysis-Project/
├── dataset/
│ ├── movie_initial_dataset.csv
│ ├── movie_initial_dataset.xlsx
│ └── movie_ready_dataset.xlsx
│
├── queries/
│ ├── 1_director_movie_count.sql
│ ├── 2_high_budget_actors.sql
│ ├── 3_low_revenue_genres.sql
│ ├── 4_actor_revenue_avg.sql
│ └── 5_revenue_by_month.sql
│ └── 5_1_revenue_by_month_and_genre.sql
│
├── query_results/
│ ├── 1_director_movie_count.csv
│ ├── 2_high_budget_actors.csv
│ └── ...
│
├── tableau/
│ └── screenshots/ (Tableau dashboards or exported visuals)
│
├── changelog.ipynb
├── README.md