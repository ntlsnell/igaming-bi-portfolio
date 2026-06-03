-- General Statistics
-- Total games, bets, winnings and casino earnings overview

SELECT 
    COUNT(*)                                    AS total_games,
    ROUND(SUM("Total Bets"), 2)                 AS total_bets,
    ROUND(SUM("Total Winnings"), 2)             AS total_winnings,
    ROUND(SUM("Casino Earnings"), 2)            AS total_casino_earnings,
    ROUND(AVG("Total Players"), 0)              AS avg_players_per_game,
    ROUND(AVG("Odds"), 2)                       AS avg_odds
FROM "1xBet 35k Game Records";
