SELECT username,emailaddress FROM i_users WHERE userId=(SELECT userId FROM(
SELECT MAX(fatih),userId FROM (Select userId, Count(userId) AS fatih From i_user_login_logs Group By userId Having Count (userId) > 3)
WHERE userId NOT IN (10255))
)