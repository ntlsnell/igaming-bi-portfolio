-- Games count, average RTP and total providers by jurisdiction
-- Maps regulator codes to country names using CASE

SELECT 
    CASE license_jurisdiction
        WHEN 'MGA'       THEN 'Malta'
        WHEN 'UKGC'      THEN 'United Kingdom'
        WHEN 'Curaçao'   THEN 'Curacao'
        WHEN 'ADM'       THEN 'Italy'
        WHEN 'Kahnawake' THEN 'Canada'
        ELSE license_jurisdiction
    END AS jurisdiction,
    COUNT(*) AS total_games,
    ROUND(AVG(rtp), 2) AS avg_rtp,
    COUNT(DISTINCT provider) AS total_providers
FROM "online_casino_games_dataset_v2"
GROUP BY jurisdiction
ORDER BY total_games DESC;
