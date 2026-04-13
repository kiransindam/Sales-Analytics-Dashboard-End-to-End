SELECT Consultant,
       Day,
       Month,
       Paid_Fees,
       COUNT(*) AS occurrences
FROM sales
GROUP BY Consultant, day, month, Paid_Fees
HAVING COUNT(*) > 1
ORDER BY occurrences DESC LIMIT 10;