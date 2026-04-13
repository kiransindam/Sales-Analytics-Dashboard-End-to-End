SELECT Month,
       COUNT(*)       AS students,
       SUM(Paid_Fees) AS revenue
FROM sales
GROUP BY Month
ORDER BY FIELD(Month,
  'Jan','Feb','Mar','Apr','May','Jun',
  'Jul','Aug','Sep','Oct','Nov','Dec');