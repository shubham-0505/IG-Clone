-- Identifying Inactive Users (Users with no posts)
SELECT users.username,
       photos.image_url
FROM   users
       LEFT JOIN photos
              ON users.id = photos.user_id
WHERE  photos.image_url IS NULL; 

Output :
+---------------------+-----------+
| username            | image_url |
+---------------------+-----------+
| Aniya_Hackett       | NULL      |
| Bartholome.Bernhard | NULL      |
| Bethany20           | NULL      |
| Darby_Herzog        | NULL      |
| David.Osinski47     | NULL      |
| Duane60             | NULL      |
| Esmeralda.Mraz57    | NULL      |
| Esther.Zulauf61     | NULL      |
| Franco_Keebler64    | NULL      |
| Hulda.Macejkovic    | NULL      |
| Jaclyn81            | NULL      |
| Janelle.Nikolaus81  | NULL      |
| Jessyca_West        | NULL      |
| Julien_Schmidt      | NULL      |
| Kasandra_Homenick   | NULL      |
| Leslie67            | NULL      |
| Linnea59            | NULL      |
| Maxwell.Halvorson   | NULL      |
| Mckenna17           | NULL      |
| Mike.Auer39         | NULL      |
| Morgan.Kassulke     | NULL      |
| Nia_Haag            | NULL      |
| Ollie_Ledner37      | NULL      |
| Pearl7              | NULL      |
| Rocio33             | NULL      |
| Tierra.Trantow      | NULL      |
+---------------------+-----------+
26 rows in set (0.00 sec)
