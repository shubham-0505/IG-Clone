-- Finding most popular Post (and user who created it) 
SELECT users.username,
       photos.id,
       photos.image_url,
       Count(*)AS total
FROM   photos
       INNER JOIN likes
               ON photos.id = likes.photo_id
       INNER JOIN users
               ON users.id = photos.user_id
GROUP  BY photos.id
ORDER  BY total DESC
LIMIT  1; 

Output :
+---------------+-----+---------------------+-------+
| username      | id  | image_url           | total |
+---------------+-----+---------------------+-------+
| Zack_Kemmer93 | 145 | https://jarret.name |    48 |
+---------------+-----+---------------------+-------+
1 row in set (0.01 sec)

