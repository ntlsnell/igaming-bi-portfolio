# Case 05 — Executive KPI Dashboard: Global Market Intelligence

## ✨ Dashboard
[![Dashboard Preview](https://github.com/ntlsnell/igaming-bi-portfolio/blob/main/case-05-executive-kpi-dashboard/dashboards/iGaming%20Global%20Market%20Intelligence%20%E2%80%94%20Risk%20%26%20Opportunity%20Map.png?raw=true)](https://public.tableau.com/views/iGamingGlobalMarketIntelligenceRiskOpportunityMap/Dashboard2)

🔗 [View Live Interactive Dashboard on Tableau Public](https://public.tableau.com/views/iGamingGlobalMarketIntelligenceRiskOpportunityMap/Dashboard2)

## ✨ Business Context
Executive-level intelligence report combining regulatory risk data across 33 global iGaming jurisdictions with market opportunity metrics. Designed to support strategic market entry decisions by visualizing the relationship between AML risk, license cost, and available game volume.

## ✨ Key Insights
- **UK & Singapore** lead regulatory strictness — highest AML scores (85, 84) with Low risk rating
- **Malta = best market**: largest game volume (365,855) + Low risk + moderate license cost ($30K)
- **Curacao = budget entry**: 220,969 games at lowest license cost ($15K) — ideal for cost-sensitive operators
- **Italy paradox**: most expensive license ($45K) but significantly fewer games than cheaper jurisdictions
- **High risk jurisdictions** (Anjouan, Costa Rica, Kenya, Georgia, India) — zero licensed games available
- **Clear correlation**: stricter regulation = higher license cost = larger market opportunity

## ✨ Tools Used
- SQL (SQLite) — executive summary queries across all datasets
- Tableau Public — interactive dashboard with 2 visualizations
- GitHub — version control and portfolio hosting

## ✨ SQL Queries
- [Market Overview](sql/01_market_overview.sql)
- [Financial Overview](sql/02_financial_overview.sql)
- [Compliance Overview](sql/03_compliance_overview.sql)
- [Market Opportunity](sql/04_market_opportunity.sql)

> Note: SQL queries aggregate key metrics from all 4 previous cases into executive-level summaries.

## ✨ Visualizations
1. AML Risk Score by Country — all 33 jurisdictions ranked by risk score (color-coded by risk category)
2. Market Opportunity Bubble Chart — License Cost vs AML Risk Score, bubble size = total games available

## ✨ Datasets
| Dataset | Source | Size |
|---|---|---|
| Online Casino Games | [Kaggle](https://www.kaggle.com/datasets/igormerlinicomposer/online-casino-games-dataset-1-2m-records) | 1,200,000 records |
| iGaming AML Compliance | [Kaggle](https://www.kaggle.com/datasets/hirexel/igaming-aml-and-compliance-risk-dataset) | 34 jurisdictions |
| 1xBet Game Records | [Kaggle](https://www.kaggle.com/datasets/mito91243/1xbet-crash-game) | 34,863 sessions |
