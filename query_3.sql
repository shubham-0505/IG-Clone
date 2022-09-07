-- Identifying Inactive Users (Users with no posts)
SELECT users.username,
       photos.image_url
FROM   users
       LEFT JOIN photos
              ON users.id = photos.user_id
WHERE  photos.image_url IS NULL; 
