-- Write SQL queries to answer these questions using the data you have loaded into BigQuery:
-- 1. Find the top 5 users with the highest number of posts.
-- 2. For each of these top 5 users, calculate the average post length.
-- 3. Identify the day of the week when the most `lengthy` posts are created (assume all posts were created in the UTC timezone).

SELECT user_id, COUNT(*) AS num_posts
        FROM np_posts
        GROUP BY user_id
        ORDER BY num_posts DESC
        LIMIT 100
        