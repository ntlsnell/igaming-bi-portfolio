-- iGaming Market Growth by Year (2010-2024)
-- Tracks the number of new game releases per year

SELECT 
    release_year,
    COUNT(*) AS games_released,
    ROUND(AVG(rtp), 2) AS avg_rtp
FROM "online_casino_games_dataset_v2"
WHERE release_year BETWEEN 2010 AND 2024
GROUP BY release_year
ORDER BY release_year;
