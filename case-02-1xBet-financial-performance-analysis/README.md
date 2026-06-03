# iGaming BI Analytics Portfolio

## Case 02 — 1xBet Financial Performance Analysis

### 📊 Dashboard

[![Dashboard Preview](https://github.com/ntlsnell/igaming-bi-portfolio/blob/main/dashboards/1xBet%20Financial%20Performance%20Analysis.png?raw=true)](https://public.tableau.com/views/1xBetFinancialPerformanceAnalysis/1xBetFinancialPerformanceAnalysis)

🔗 [View Live Interactive Dashboard on Tableau Public](https://public.tableau.com/views/1xBetFinancialPerformanceAnalysis/1xBetFinancialPerformanceAnalysis)

### ⭐️ Business Context
Analysis of 35,000+ gaming sessions from 1xBet to identify revenue patterns,
player loss rates, and peak performance periods.

### 🕵🏻‍♀️ Key Insights
- **Peak day**: April 17 generated $196M — 2.5x above average
- **Player loss rate**: Stable at ~62% across all days
- **Total casino earnings**: $765M over 9 days
- **Lowest day**: April 19 with $32.9M — possible weekend effect

### ⚙️ Tools Used
- SQL (SQLite) — data extraction and analysis
- Tableau Public — interactive dashboard
- GitHub — version control and portfolio hosting

### 🗂️ SQL Queries
- [General Statistics](sql/01_general_stats.sql)
- [House Edge Analysis](sql/02_house_edge.sql)
- [Player Loss Analysis](sql/03_player_loss.sql)
- [Daily Earnings](sql/04_daily_earnings.sql)

### 📂 Dataset
Source: [1xBet 35k Game Records — Kaggle](https://www.kaggle.com/datasets/mito91243/1xbet-crash-game)
Records: 34,863 gaming sessions | Period: April 11–19, 2024
