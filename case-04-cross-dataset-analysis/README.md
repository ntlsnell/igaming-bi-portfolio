# Case 04 — Cross-Dataset Analysis: Market Opportunity vs Regulatory Risk

## ✨ Dashboard
[![Dashboard Preview](https://github.com/ntlsnell/igaming-bi-portfolio/blob/main/case-04-cross-dataset-analysis/dashboards/cross-dataset-analysis.png?raw=true)](https://public.tableau.com/views/iGamingCross-DatasetAnalysisMarketOpportunityvsRegulatoryRisk/iGamingCross-DatasetAnalysisMarketOpportunityvsRegulatoryRisk)

🔗 [View Live Interactive Dashboard on Tableau Public](https://public.tableau.com/views/iGamingCross-DatasetAnalysisMarketOpportunityvsRegulatoryRisk/iGamingCross-DatasetAnalysisMarketOpportunityvsRegulatoryRisk)

## ✨ Business Context
Cross-dataset analysis joining 1.2M casino game records with AML compliance data across 34 jurisdictions to identify optimal market entry opportunities — balancing game volume, license cost, and regulatory risk.

## ✨ Key Insights
- **Malta dominates**: 365,855 games under MGA license — largest market with Low risk rating
- **Curacao = sweet spot**: 220,969 games at the lowest license cost ($15K) — best volume-to-cost ratio
- **High risk jurisdictions**: 0 games available — providers avoid them entirely
- **Italy paradox**: Most expensive license ($45K) but fewer games than cheaper jurisdictions
- **All top 60 providers** operate across all 7 available jurisdictions simultaneously

## ✨ Tools Used
- SQL (SQLite) — cross-dataset JOIN with CASE mapping for jurisdiction normalization
- Tableau Public — interactive dashboard with 6 visualizations
- GitHub — version control and portfolio hosting

## ✨ SQL Queries
- [Games by Jurisdiction](sql/01_games_by_jurisdiction.sql)
- [Jurisdiction Risk Profile](sql/02_jurisdiction_risk_profile.sql)
- [Provider Risk Exposure](sql/03_provider_risk_exposure.sql)
- [Risk vs Market Size](sql/04_risk_vs_market_size.sql)

> Note: Key technical challenge — `license_jurisdiction` used regulator codes (MGA, UKGC) instead of country names. Solved with CASE mapping inside subquery before JOIN.

## ✨ Visualizations
1. Top 15 Providers by Game Volume & AML Risk
2. Average RTP by License Jurisdiction
3. Game Volume by License Jurisdiction
4. AML Risk Score vs License Cost by Jurisdiction (bubble chart)
5. Market Size by Risk Category & Region
6. License Cost vs Total Games (trend lines by risk category)

## ✨ Datasets
| Dataset | Source | Size |
|---|---|---|
| Online Casino Games | [Kaggle](https://www.kaggle.com/datasets/igormerlinicomposer/online-casino-games-dataset-1-2m-records) | 1,200,000 records |
| iGaming AML Compliance | [Kaggle](https://www.kaggle.com/datasets/hirexel/igaming-aml-and-compliance-risk-dataset) | 34 jurisdictions |
