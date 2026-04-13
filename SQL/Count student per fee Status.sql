SELECT Fees_Status,
       COUNT(*) AS student_count
FROM sales
GROUP BY Fees_Status;