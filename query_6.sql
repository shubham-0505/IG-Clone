-- Finding 5 most popular Hashtags
SELECT photo_tags.tag_id,
       tags.tag_name,
       Count(photo_tags.tag_id) AS total
FROM   photo_tags
       INNER JOIN tags
               ON photo_tags.tag_id = tags.id
GROUP  BY photo_tags.tag_id
ORDER  BY total DESC
LIMIT  5; 

Output :
+--------+----------+-------+
| tag_id | tag_name | total |
+--------+----------+-------+
|     21 | smile    |    59 |
|     20 | beach    |    42 |
|     17 | party    |    39 |
|     13 | fun      |    38 |
|     18 | concert  |    24 |
+--------+----------+-------+
5 rows in set (0.00 sec)
