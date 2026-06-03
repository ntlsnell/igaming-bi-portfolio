# Case 03 — Global iGaming AML & Compliance Risk Analysis

## 📊 Dashboard

[![Dashboard Preview](https://github.com/ntlsnell/igaming-bi-portfolio/blob/main/case-03-aml-compliance/dashboards/aml-compliance-dashboard.png?raw=true)](https://public.tableau.com/views/GlobaliGamingAMLComplianceRiskAnalysis/Dashboard1)

🔗 [View Live Interactive Dashboard on Tableau Public](https://public.tableau.com/views/GlobaliGamingAMLComplianceRiskAnalysis/Dashboard1)

## 🎯 Business Context
Regulatory risk mapping across 34 global iGaming jurisdictions to identify AML compliance levels, license costs, and enforcement practices for strategic market entry decisions.

## 🔍 Key Insights
- **Europe & MENA** have the highest AML risk scores (~78) — strongest regulatory oversight
- **Africa** has the lowest average risk score (49) — weakest compliance frameworks
- **Positive correlation**: Higher AML score = more expensive license (up to $50K in Netherlands & Germany)
- **Enhanced KYC** jurisdictions without crypto gambling have the highest risk score (84)
- **Low-cost licenses** ($5-15K) correlate with weak AML frameworks — high reputational risk

## 🛠️ Tools Used
- SQL (SQLite) — data extraction and analysis
- Tableau Public — interactive dashboard with 4 visualizations
- GitHub — version control and portfolio hosting

## 📁 SQL Queries
- [Risk Category Overview](sql/01_risk_overview.sql)
- [Top Jurisdictions by License Cost](sql/02_license_cost.sql)
- [AML Framework by Region](sql/03_aml_by_region.sql)
- [KYC & Crypto Analysis](sql/04_kyc_crypto.sql)

> Note: SQL queries include additional analysis beyond the dashboard visualizations.

## 📂 Dataset
Source: [iGaming AML and Compliance Risk Dataset — Kaggle](https://www.kaggle.com/datasets/hirexel/igaming-aml-and-compliance-risk-dataset)
Records: 34 jurisdictions | 20 compliance indicators | Global coverage
