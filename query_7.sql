-- Finding Bots : Users who liked every single Photo
SELECT username,
       Count(*) AS num_likes
FROM   users
       INNER JOIN likes
               ON users.id = likes.user_id
GROUP  BY likes.user_id
HAVING num_likes = (SELECT Count(*)
                    FROM   photos); 

Output :
+--------------------+-----------+
| username           | num_likes |
+--------------------+-----------+
| Aniya_Hackett      |       257 |
| Jaclyn81           |       257 |
| Rocio33            |       257 |
| Maxwell.Halvorson  |       257 |
| Ollie_Ledner37     |       257 |
| Mckenna17          |       257 |
| Duane60            |       257 |
| Julien_Schmidt     |       257 |
| Mike.Auer39        |       257 |
| Nia_Haag           |       257 |
| Leslie67           |       257 |
| Janelle.Nikolaus81 |       257 |
| Bethany20          |       257 |
+--------------------+-----------+
13 rows in set (0.02 sec)

