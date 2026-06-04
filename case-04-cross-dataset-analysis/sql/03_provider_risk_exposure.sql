-- Top providers by game volume with their AML risk exposure
-- Shows which providers operate in higher-risk jurisdictions

SELECT 
    c.provider,
    COUNT(DISTINCT c.mapped_country) AS jurisdictions_count,
    COUNT(c.game) AS total_games,
    ROUND(AVG(c.rtp), 2) AS avg_rtp,
    ROUND(AVG(a.overall_aml_risk_score), 2) AS avg_aml_risk,
    ROUND(AVG(a.license_cost_usd), 0) AS avg_license_cost
FROM (
    SELECT game, provider, rtp,
        CASE license_jurisdiction
            WHEN 'MGA'       THEN 'Malta'
            WHEN 'UKGC'      THEN 'United Kingdom'
            WHEN 'Curaçao'   THEN 'Curacao'
            WHEN 'ADM'       THEN 'Italy'
            WHEN 'Kahnawake' THEN 'Canada'
            ELSE license_jurisdiction
        END AS mapped_country
    FROM "online_casino_games_dataset_v2"
) c
LEFT JOIN "igaming_aml_compliance_by_jurisdiction_clean" a
    ON c.mapped_country = a.country
GROUP BY c.provider
ORDER BY total_games DESC
LIMIT 20;
