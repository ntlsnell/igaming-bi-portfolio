-- Top 20 Providers by Average RTP
-- Identifies which game providers offer the best return to player

SELECT 
    provider,
    COUNT(*) AS total_games,
    ROUND(AVG(rtp), 2) AS avg_rtp,
    ROUND(MIN(rtp), 2) AS min_rtp,
    ROUND(MAX(rtp), 2) AS max_rtp
FROM "online_casino_games_dataset_v2"
GROUP BY provider
ORDER BY avg_rtp DESC
LIMIT 20;
