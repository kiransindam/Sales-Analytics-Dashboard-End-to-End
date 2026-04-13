SELECT Training_Models,
       COUNT(*)       AS students,
       SUM(Paid_Fees) AS revenue,
       ROUND(SUM(Paid_Fees) / (SELECT SUM(Paid_Fees) FROM sales) * 100, 1)
                      AS revenue_share_pct
FROM sales
GROUP BY Training_Models
ORDER BY revenue DESC;