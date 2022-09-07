-- Most Popular Registration Day
SELECT Dayname(created_at) AS day,
       Count(*)            AS total
FROM   users
GROUP  BY day
ORDER  BY total DESC
LIMIT  2; 
