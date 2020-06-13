SELECT ROUND(AVG(percent*100),2) average_daily_percent
FROM 
(SELECT COUNT(DISTINCT r.post_id)/COUNT(DISTINCT a.post_id) percent
FROM Actions a LEFT JOIN Removals r ON a.post_id = r.post_id
WHERE a.extra = "spam"
GROUP BY a.action_date) t
