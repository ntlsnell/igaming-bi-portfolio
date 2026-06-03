-- Mobile Compatibility Statistics
-- Analyzes mobile vs desktop game distribution by type

SELECT 
    mobile_compatible,
    game_type,
    COUNT(*) AS total_games,
    ROUND(AVG(rtp), 2) AS avg_rtp
FROM "online_casino_games_dataset_v2"
GROUP BY mobile_compatible, game_type
ORDER BY total_games DESC;
