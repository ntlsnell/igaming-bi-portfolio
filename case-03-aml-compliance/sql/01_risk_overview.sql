-- Risk Category Overview
-- Summary statistics by risk category

SELECT 
    risk_category,
    COUNT(*) AS total_jurisdictions,
    ROUND(AVG(overall_aml_risk_score), 2) AS avg_risk_score,
    ROUND(AVG(license_cost_usd), 2) AS avg_license_cost,
    ROUND(AVG(average_license_time_months), 2) AS avg_license_time
FROM igaming_aml_compliance_by_jurisdiction_clean
GROUP BY risk_category
ORDER BY avg_risk_score DESC;
