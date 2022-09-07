-- Calculating avg number of Photos per User 
SELECT (SELECT Count(*)
        FROM   photos) / (SELECT Count(*)
                          FROM   users) AS "avg photos per user"; 
