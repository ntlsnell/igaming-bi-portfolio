-- Market size grouped by risk category and region
-- Shows correlation between regulatory risk and available game volume

SELECT 
    a.risk_category,
    a.region,
    COUNT(c.game) AS total_games,
    COUNT(DISTINCT c.provider) AS unique_providers,
    ROUND(AVG(a.license_cost_usd), 0) AS avg_license_cost,
    ROUND(AVG(a.overall_aml_risk_score), 2) AS avg_risk_score,
    ROUND(AVG(c.rtp), 2) AS avg_rtp
FROM "igaming_aml_compliance_by_jurisdiction_clean" a
LEFT JOIN (
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
) c ON a.country = c.mapped_country
GROUP BY a.risk_category, a.region
ORDER BY total_games DESC;
