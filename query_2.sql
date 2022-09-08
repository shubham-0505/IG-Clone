-- Most Popular Registration Day
SELECT Dayname(created_at) AS day,
       Count(*)            AS total
FROM   users
GROUP  BY day
ORDER  BY total DESC
LIMIT  2; 

Output :
+----------+-------+
| day      | total |
+----------+-------+
| Thursday |    16 |
| Sunday   |    16 |
+----------+-------+
2 rows in set (0.00 sec)

