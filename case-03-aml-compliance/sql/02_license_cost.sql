-- Top Jurisdictions by License Cost
-- Identifies most expensive regulatory environments

SELECT 
    country,
    region,
    license_cost_usd,
    annual_compliance_cost_usd,
    overall_aml_risk_score,
    risk_category,
    aml_framework_strength
FROM igaming_aml_compliance_by_jurisdiction_clean
ORDER BY license_cost_usd DESC
LIMIT 15;
