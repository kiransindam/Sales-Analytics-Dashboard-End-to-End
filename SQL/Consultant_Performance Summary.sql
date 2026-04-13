SELECT Consultant,
       COUNT(*)            AS total_students,
       SUM(Paid_Fees)      AS total_revenue,
       AVG(Enrolled_Courses) AS avg_courses,
       SUM(Number_of_phone_calls)    AS total_calls
FROM sales
GROUP BY Consultant
ORDER BY total_revenue DESC Limit 10;