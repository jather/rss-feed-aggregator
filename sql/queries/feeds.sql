-- name: GetFeeds :many
SELECT
    feeds.name,
    feeds.url,
    users.name as username
FROM
    feeds
    LEFT JOIN users ON feeds.user_id = users.id
ORDER BY
    users.name;