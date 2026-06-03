-- Game Types by Volume and Volatility
-- Shows market structure across different game categories

SELECT 
    game_type,
    volatility,
    COUNT(*) AS total_games,
    ROUND(AVG(rtp), 2) AS avg_rtp
FROM "online_casino_games_dataset_v2"
GROUP BY game_type, volatility
ORDER BY game_type, total_games DESC;
