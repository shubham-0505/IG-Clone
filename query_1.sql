-- Finding 5 oldest users
SELECT *
FROM   users
ORDER  BY created_at ASC
LIMIT  5; 
