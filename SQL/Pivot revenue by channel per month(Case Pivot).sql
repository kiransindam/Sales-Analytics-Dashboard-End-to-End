SELECT month,
  SUM(CASE WHEN Advertising_Channel='Television Ad'    THEN Paid_Fees ELSE 0 END) AS tv,
  SUM(CASE WHEN Advertising_Channel='Facebook Page'    THEN Paid_Fees ELSE 0 END) AS facebook,
  SUM(CASE WHEN Advertising_Channel='WhatsApp'         THEN Paid_Fees ELSE 0 END) AS whatsapp,
  SUM(CASE WHEN Advertising_Channel='Google Ad'        THEN Paid_Fees ELSE 0 END) AS google,
  SUM(CASE WHEN Advertising_Channel='Company Website'  THEN Paid_Fees ELSE 0 END) AS website,
  SUM(CASE WHEN Advertising_Channel='Youtube Channel'  THEN Paid_Fees ELSE 0 END) AS youtube
FROM sales
GROUP BY Month
ORDER BY FIELD(Month,
  'Jan','Feb','Mar','Apr','May','Jun',
  'Jul','Aug','Sep','Oct','Nov','Dec')
  LIMIT 10;