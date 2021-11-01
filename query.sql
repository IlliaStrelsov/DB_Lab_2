SELECT DISTINCT(video_game_genre),COUNT(video_game_genre) FROM video_games GROUP BY video_game_genre

SELECT SUM(na.na_sales),SUM(eu.eu_sales),SUM(jp.jp_sales),SUM(other.other_sales) FROM na_sales na JOIN eu_sales eu ON na.video_game_id = eu.video_game_id
JOIN jp_sales jp ON jp.video_game_id = eu.video_game_id JOIN other_sales other ON other.video_game_id = jp.video_game_id

SELECT video_game_platform,video_game_genre FROM video_games
