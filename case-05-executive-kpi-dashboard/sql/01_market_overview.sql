-- Executive Summary: iGaming Market Overview
-- Source: Casino Market dataset

SELECT
    COUNT(*) AS total_games,
    COUNT(DISTINCT provider) AS total_providers,
    COUNT(DISTINCT game_type) AS total_game_types,
    ROUND(AVG(rtp), 2) AS avg_rtp_market,
    SUM(CASE WHEN mobile_compatible = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*) AS mobile_rate_pct,
    MIN(release_year) AS first_game_year,
    MAX(release_year) AS latest_game_year
FROM "online_casino_games_dataset_v2";
