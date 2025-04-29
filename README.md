# Music-Store-Data-Analysis-Project-using-SQL

# 🎵 Music Store Data Analysis Project using SQL

This project involves performing exploratory data analysis (EDA) on a Music Store database using SQL. The aim is to extract actionable business insights by writing efficient SQL queries to answer key questions related to sales, customer behavior, and artist performance.

## 📌 Project Objectives

- Analyze the Music Store database structure.
- Write SQL queries to extract meaningful insights.
- Understand sales trends, customer preferences, and employee performance.
- Practice SQL for real-world data analysis scenarios.

## 🧰 Tools & Technologies Used

- **PostgreSQL**
- **pgAdmin**
- **SQL**

## 📂 Dataset

The database contains several tables, including:

- `albums`
- `artists`
- `customers`
- `employees`
- `genres`
- `invoices`
- `invoice_items`
- `media_types`
- `playlists`
- `tracks`

> This database is based on the popular [Chinook](https://github.com/lerocha/chinook-database) sample data model, commonly used for music-related SQL projects.

## 📊 ER Diagram

Below is the Entity-Relationship Diagram (ERD) for the Music Store database:

![Music Store ERD](MusicDatabaseSchema.png)

> Make sure to download or generate the ERD (if not already included) using pgAdmin or any ERD tool.

## 🔍 Key Analysis Performed

- 🎶 Top-selling artists and genres
- 🧑‍💼 Best performing sales agents
- 📍 Revenue by country
- 💿 Albums and track purchase trends
- 🕒 Monthly revenue and customer trends
- 🎧 Customer listening habits

## 📈 Sample SQL Queries

```sql
-- Total revenue by country
SELECT billing_country, SUM(total) AS total_revenue
FROM invoices
GROUP BY billing_country
ORDER BY total_revenue DESC;


💡 Insights
- The USA generated the highest revenue.

- Rock is the most popular genre.

- Sales support agents contribute the most to revenue.

- Top customers are frequent buyers from the USA and Canada.
