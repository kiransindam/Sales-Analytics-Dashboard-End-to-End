SELECT Sales_Team,
       COUNT(*) AS total,
       SUM(CASE WHEN Fees_Status = 'Paid' THEN 1 ELSE 0 END) AS paid,
       SUM(CASE WHEN Fees_Status = 'Not Paid' THEN 1 ELSE 0 END) AS not_paid,
       ROUND(
         SUM(CASE WHEN Fees_Status = 'Paid' THEN 1 ELSE 0 END)
         / COUNT(*) * 100, 1
       ) AS paid_pct
FROM sales
GROUP BY Sales_Team
ORDER BY paid_pct DESC;