-- Player Loss Analysis
-- Loss rate and average bet per player

SELECT
    "Game ID",
    "Total Players",
    "Players Lost",
    ROUND(("Players Lost" * 100.0 / "Total Players"), 2)   AS loss_rate_pct,
    ROUND("Total Bets" / "Total Players", 2)               AS avg_bet_per_player,
    ROUND("Odds", 2)                                        AS odds
FROM "1xBet 35k Game Records"
ORDER BY loss_rate_pct DESC
LIMIT 20;
