# Case 04 — Cross-Dataset Analysis: Market Opportunity vs Regulatory Risk

## ✨ Overview
Cross-dataset analysis joining Casino Market data (1.2M records) 
with AML Compliance data (34 jurisdictions) to identify optimal 
market entry opportunities in the iGaming sector.

## ✨ Business Question
Which jurisdictions offer the best balance between market size 
and regulatory risk for iGaming operators?

## ✨ Datasets
| Dataset | Source | Size |
|---|---|---|
| Online Casino Games | Kaggle | 1,200,000 records |
| iGaming AML Compliance | Kaggle | 34 jurisdictions |

## ✨ Dashboard
[View on Tableau Public](https://public.tableau.com/views/iGamingCross-DatasetAnalysisMarketOpportunityvsRegulatoryRisk/iGamingCross-DatasetAnalysisMarketOpportunityvsRegulatoryRisk)

![Dashboard](dashboards/cross-dataset-analysis.png?raw=true)

## ✨ SQL Approach
Key challenge: `license_jurisdiction` in Casino dataset used 
regulator codes (MGA, UKGC) instead of country names.

Solution: CASE mapping inside subquery before JOIN:
- MGA → Malta
- UKGC → United Kingdom  
- Curaçao → Curacao
- ADM → Italy
- Kahnawake → Canada

## ✨ Key Insights
- **Malta dominates**: 365,855 games under MGA license (Low risk)
- **Curacao = sweet spot**: 220,969 games at lowest license cost ($15K)
- **High risk jurisdictions**: 0 games — providers avoid them entirely
- **Italy paradox**: Most expensive license ($45K) but fewer games than cheaper jurisdictions
- **All top 60 providers** operate across all 7 available jurisdictions

## ✨ Visualizations
1. Game Volume by License Jurisdiction
2. License Cost vs Total Games (with trend lines by risk category)
3. AML Risk Score vs License Cost by Jurisdiction (bubble chart)
4. Top 15 Providers by Game Volume & AML Risk
5. Average RTP by License Jurisdiction

## ✨ Tools
- DB Browser for SQLite — SQL JOINs with CASE mapping
- Tableau Public — Dashboard
- GitHub — Documentation
