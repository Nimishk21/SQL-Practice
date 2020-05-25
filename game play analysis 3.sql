select player_id,event_date,sum(games_played) over(partition by player_id  ORDER BY event_date) AS games_played_so_far
FROM Activity
ORDER BY player_id, event_date

