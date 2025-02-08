SELECT u.username, COUNT(p.post_id) AS total_postagens
FROM users u
LEFT JOIN posts p ON u.user_id   = p.user_id
GROUP BY u.username;

SELECT p.content, COUNT(l.user_id) AS total_curtidas
FROM posts p
LEFT JOIN likes  l ON p.post_id = l.post_id
GROUP BY p.post_id;

SELECT u.username, p.content
FROM users u
LEFT JOIN posts p ON u.user_id= p.user_id;

SELECT p.*
FROM posts p
WHERE p.user_id IN (
    SELECT f.follower_id 
    FROM followers f
    JOIN users u ON f.followed_id = u.user_id
    WHERE u.username = 'john_doe'
);

SELECT u.username
FROM users u
WHERE NOT EXISTS (
    SELECT 1 FROM followers f WHERE f.follower_id = u.user_id
);

SELECT p.*
FROM posts p
WHERE p.post_id NOT IN (
    SELECT l.post_id 
    FROM likes l
    JOIN users u ON l.user_id = u.user_id
    WHERE u.username IN ('jane_smith', 'alice_wonder')
);

SELECT DISTINCT u.username
FROM users u
WHERE EXISTS (
    SELECT 1 
    FROM followers f1
    WHERE f1.follower_id = u.user_id
    AND f1.followed_id IN (
        SELECT f2.followed_id 
        FROM followers f2
        JOIN users u2 ON f2.follower_id = u2.user_id
        WHERE u2.username = 'john_doe'
    )
);

SELECT p.*
FROM posts p
WHERE p.user_id = (SELECT user_id FROM users WHERE username = 'john_doe')
AND (SELECT COUNT(*) FROM likes l WHERE l.post_id = p.post_id) >= ALL (
    SELECT COUNT(*) 
    FROM likes l
    JOIN posts p2 ON l.post_id = p2.post_id
    WHERE p2.user_id = (SELECT user_id FROM users WHERE username = 'john_doe')
    GROUP BY l.post_id
);

SELECT p.*
FROM posts p
WHERE (SELECT COUNT(*) FROM likes l WHERE l.post_id = p.post_id) > SOME (
    SELECT COUNT(*) 
    FROM likes l
    JOIN posts p2 ON l.post_id = p2.post_id
    WHERE p2.user_id = (SELECT user_id FROM users WHERE username = 'john_doe')
    GROUP BY l.post_id
);
SELECT p.*
FROM posts p
WHERE p.user_id IN (
    SELECT followed_id 
    FROM followers
    GROUP BY followed_id
    HAVING COUNT(follower_id) > 5
);


