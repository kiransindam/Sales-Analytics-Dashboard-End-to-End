WITH ranked AS (
  SELECT Consultant,
         Sales_Team,
         SUM(Paid_Fees) AS revenue,
         ROW_NUMBER() OVER (
           PARTITION BY sales_team
           ORDER BY SUM(Paid_Fees) DESC
         ) AS rn
  FROM sales
  GROUP BY Consultant, Sales_Team
)
SELECT Sales_Team,
       Consultant AS top_consultant,
       revenue
FROM ranked
WHERE rn = 1
ORDER BY revenue DESC;