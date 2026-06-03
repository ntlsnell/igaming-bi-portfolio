-- Daily Earnings Analysis
-- Casino revenue grouped by date

SELECT
    SUBSTR("Timestamp", 1, 9)                      AS game_date,
    COUNT(*)                                        AS games_count,
    ROUND(SUM("Casino Earnings"), 2)               AS daily_earnings,
    ROUND(AVG("Total Players"), 0)                 AS avg_players
FROM "1xBet 35k Game Records"
GROUP BY game_date
ORDER BY game_date;
