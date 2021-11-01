import psycopg2

query1 = ''' 
SELECT DISTINCT(video_game_genre),COUNT(video_game_genre) FROM video_games GROUP BY video_game_genre
'''

query2 = '''
SELECT SUM(na.na_sales),SUM(eu.eu_sales),SUM(jp.jp_sales),SUM(other.other_sales) FROM na_sales na JOIN eu_sales eu ON na.video_game_id = eu.video_game_id
JOIN jp_sales jp ON jp.video_game_id = eu.video_game_id JOIN other_sales other ON other.video_game_id = jp.video_game_id
'''

query3 = '''
SELECT video_game_platform,video_game_genre FROM video_games
'''

connection = psycopg2.connect(database="TestDataBase", user="playtender", password="playtender", host="localhost", port=5432)

cursor = connection.cursor()
cursor.execute(query1)
record1 = cursor.fetchall()
print("Data from Database from the first query:- ", record1)

cursor.execute(query2)
record2 = cursor.fetchall()
print("Data from Database from the second query:- ", record2)

cursor.execute(query3)
record3 = cursor.fetchall()
print("Data from Database from the third query:- ", record3)
