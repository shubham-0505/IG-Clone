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
