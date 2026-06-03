-- AML Framework by Region
-- Regional comparison of compliance requirements

SELECT 
    region,
    COUNT(*) AS total_countries,
    ROUND(AVG(overall_aml_risk_score), 2) AS avg_risk_score,
    ROUND(AVG(license_cost_usd), 2) AS avg_license_cost,
    ROUND(AVG(international_reputation_score), 2) AS avg_reputation
FROM igaming_aml_compliance_by_jurisdiction_clean
GROUP BY region
ORDER BY avg_risk_score DESC;
