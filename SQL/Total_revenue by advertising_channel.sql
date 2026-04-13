SELECT Advertising_Channel,
       COUNT(*)        AS leads,
       SUM(Paid_Fees)  AS total_revenue,
       AVG(Paid_Fees)  AS avg_revenue
FROM sales
GROUP BY Advertising_Channel
ORDER BY total_revenue DESC LIMIT 10;