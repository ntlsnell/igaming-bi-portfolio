-- Executive Summary: Regulatory Risk Overview
-- Source: AML Compliance dataset

SELECT
    COUNT(*) AS total_jurisdictions,
    COUNT(DISTINCT region) AS total_regions,
    ROUND(AVG(overall_aml_risk_score), 2) AS avg_global_risk_score,
    SUM(CASE WHEN risk_category = 'Low' THEN 1 ELSE 0 END) AS low_risk_count,
    SUM(CASE WHEN risk_category = 'Medium' THEN 1 ELSE 0 END) AS medium_risk_count,
    SUM(CASE WHEN risk_category = 'High' THEN 1 ELSE 0 END) AS high_risk_count,
    ROUND(AVG(license_cost_usd), 0) AS avg_license_cost,
    MAX(license_cost_usd) AS max_license_cost,
    MIN(CASE WHEN license_cost_usd > 0 THEN license_cost_usd END) AS min_license_cost,
    SUM(CASE WHEN crypto_gambling_allowed = 'Yes' THEN 1 ELSE 0 END) AS crypto_friendly_count
FROM "igaming_aml_compliance_by_jurisdiction_clean";
