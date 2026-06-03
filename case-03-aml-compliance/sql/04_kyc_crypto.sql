-- KYC Requirements & Crypto Gambling Analysis
-- Impact of KYC level and crypto policies on risk score

SELECT 
    kyc_requirements_level,
    crypto_gambling_allowed,
    COUNT(*) AS total_jurisdictions,
    ROUND(AVG(overall_aml_risk_score), 2) AS avg_risk_score,
    ROUND(AVG(license_cost_usd), 2) AS avg_license_cost
FROM igaming_aml_compliance_by_jurisdiction_clean
GROUP BY kyc_requirements_level, crypto_gambling_allowed
ORDER BY avg_risk_score DESC;
