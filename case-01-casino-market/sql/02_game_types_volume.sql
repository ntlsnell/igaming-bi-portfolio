-- Game Types by Volume
-- Shows market structure and average RTP across different game categories

SELECT 
    game_type,
    COUNT(*) AS total_games,
    ROUND(AVG(rtp), 2) AS avg_rtp
FROM "online_casino_games_dataset_v2"
GROUP BY game_type
ORDER BY total_games DESC;
