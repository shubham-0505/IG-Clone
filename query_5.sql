-- Calculating avg number of Photos per User 
SELECT (SELECT Count(*)
        FROM   photos) / (SELECT Count(*)
                          FROM   users) AS "avg photos per user"; 

Output :
+---------------------+
| avg photos per user |
+---------------------+
|              2.5700 |
+---------------------+
1 row in set (0.05 sec)
