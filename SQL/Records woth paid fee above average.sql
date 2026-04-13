SELECT Consultant, Month, Advertising_Channel, Paid_Fees
FROM sales
WHERE Paid_Fees > (SELECT AVG(Paid_Fees) FROM sales)
ORDER BY Paid_Fees DESC limit 10;