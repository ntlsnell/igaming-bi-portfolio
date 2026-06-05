-- Executive Summary: Financial Performance Overview
-- Source: 1xBet dataset

SELECT
    COUNT(*) AS total_games_played,
    SUM("Total Players") AS total_players,
    SUM("Total Bets") AS total_bets,
    SUM("Casino Earnings") AS total_casino_earnings,
    ROUND(AVG("Casino Earnings"), 0) AS avg_daily_earnings,
    MAX("Casino Earnings") AS peak_day_earnings,
    MIN("Casino Earnings") AS lowest_day_earnings,
    ROUND(SUM("Players Lost") * 100.0 / SUM("Total Players"), 2) AS avg_player_loss_rate_pct,
    ROUND(SUM("Casino Earnings") * 100.0 / SUM("Total Bets"), 2) AS avg_house_edge_pct
FROM "1xBet 35k Game Records";
