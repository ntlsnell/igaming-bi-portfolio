-- House Edge Analysis
-- Key casino profitability metric per game

SELECT
    "Game ID",
    ROUND("Total Bets", 2)                                              AS total_bets,
    ROUND("Casino Earnings", 2)                                         AS casino_earnings,
    ROUND(("Casino Earnings" / "Total Bets") * 100, 2)                 AS house_edge_pct,
    CASE 
        WHEN ("Casino Earnings" / "Total Bets") * 100 > 10 THEN 'High'
        WHEN ("Casino Earnings" / "Total Bets") * 100 > 0  THEN 'Normal'
        ELSE 'Loss'
    END AS profitability
FROM "1xBet 35k Game Records"
ORDER BY house_edge_pct DESC
LIMIT 20;
