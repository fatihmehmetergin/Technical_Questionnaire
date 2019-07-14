SELECT COUNT(userId)
FROM (Select userId From i_user_login_logs Group By userId Having Count (userId) > 3);