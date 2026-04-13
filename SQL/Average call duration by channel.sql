SELECT Advertising_Channel,
       ROUND(AVG(Number_of_phone_calls), 2)       AS avg_calls,
       ROUND(AVG(Average_call_duration), 4)  AS avg_duration
FROM sales
GROUP BY Advertising_Channel
ORDER BY avg_calls DESC;