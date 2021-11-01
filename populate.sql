INSERT INTO companies 
VALUES  (1,'Nintendo'),
		(2,'Nintendo'),
		(3,'Nintendo'),
		(4,'Microsoft'),
		(5,'Take-Two Interactive'),
		(6,'Take-Two Interactive'),
		(7,'Activision'),
		(8,'Activision'),
		(9,'Electronic Arts');

INSERT INTO video_games(video_game_id,video_game_name,video_game_platform,video_game_genre,year_of_publication,company_id)
VALUES (1, 'Wii Sports','Wii','Sports',2006,1),
       (2, 'Super Mario Bros.','NES','Platform',1985,2),
       (3, 'Mario Kart Wii','Wii','Racing',2008,3),
       (4, 'Kinect Adventures!','X360','Misc',2010,4),
	   (5, 'Grand Theft Auto V','PS3','Action',2013,5),
	   (6, 'Grand Theft Auto: San Andreas','PS2','Action',2004,6),
	   (7, 'Call of Duty: Black Ops','X360','Shooter',2010,7),
	   (8, 'Call of Duty: Modern Warfare 2','PS3','Shooter',2009,8),
	   (9, 'The Sims 3','PC','Simulation',2009,9);

INSERT INTO na_sales(na_sales,sales_date,video_game_id)
VALUES  (41.49,'01.01.2020',1),
		(29.08,'01.01.2020',2),
		(15.85,'01.02.2020',3),
		(14.97,'01.03.2020',4),
		(7.01,'01.04.2020',5),
		(9.43,'01.05.2020',6),
		(9.67,'01.06.2020',7),
		(4.99,'01.07.2020',8),
		(0.98,'01.07.2020',9);

INSERT INTO eu_sales(eu_sales,sales_date,video_game_id)
VALUES  (56.49,'01.01.2020',1),
		(34.08,'01.01.2020',2),
		(18.85,'01.02.2020',3),
		(14.97,'01.03.2020',4),
		(8.01,'01.04.2020',5),
		(10.43,'01.05.2020',6),
		(11.67,'01.06.2020',7),
		(2.99,'01.07.2020',8),
		(1.98,'01.07.2020',9);

INSERT INTO jp_sales(jp_sales,sales_date,video_game_id)
VALUES  (3.77,'01.01.2020',1),
		(6.81,'01.01.2020',2),
		(3.79,'01.02.2020',3),
		(0.24,'01.03.2020',4),
		(0.97,'01.04.2020',5),
		(0.41,'01.05.2020',6),
		(0.11,'01.06.2020',7),
		(0.38,'01.07.2020',8),
		(0,'01.07.2020',9);

INSERT INTO other_sales(other_sales,sales_date,video_game_id)
VALUES  (8.46,'01.01.2020',1),
		(0.77,'01.01.2020',2),
		(3.31,'01.02.2020',3),
		(1.67,'01.03.2020',4),
		(4.14,'01.04.2020',5),
		(10.57,'01.05.2020',6),
		(1.13,'01.06.2020',7),
		(1.63,'01.07.2020',8),
		(0.71,'01.07.2020',9);



UPDATE video_games
   SET na_sales_id = CASE video_game_id 
                      WHEN 1 THEN 1
                      WHEN 2 THEN 2
					  WHEN 3 THEN 3
					  WHEN 4 THEN 4
					  WHEN 5 THEN 5
					  WHEN 6 THEN 6
					  WHEN 7 THEN 7
					  WHEN 8 THEN 8
					  WHEN 9 THEN 9
                      ELSE NULL
                      END
 WHERE video_game_id IN(1,2,3,4,5,6,7,8,9);
 
 UPDATE video_games
   SET eu_sales_id = CASE video_game_id 
                      WHEN 1 THEN 1
                      WHEN 2 THEN 2
					  WHEN 3 THEN 3
					  WHEN 4 THEN 4
					  WHEN 5 THEN 5
					  WHEN 6 THEN 6
					  WHEN 7 THEN 7
					  WHEN 8 THEN 8
					  WHEN 9 THEN 9
                      ELSE NULL
                      END
 WHERE video_game_id IN(1,2,3,4,5,6,7,8,9);
 
 UPDATE video_games
   SET jp_sales_id = CASE video_game_id 
                      WHEN 1 THEN 1
                      WHEN 2 THEN 2
					  WHEN 3 THEN 3
					  WHEN 4 THEN 4
					  WHEN 5 THEN 5
					  WHEN 6 THEN 6
					  WHEN 7 THEN 7
					  WHEN 8 THEN 8
					  WHEN 9 THEN 9
                      ELSE NULL
                      END
 WHERE video_game_id IN(1,2,3,4,5,6,7,8,9);
 
 UPDATE video_games
   SET other_sales_id = CASE video_game_id 
                      WHEN 1 THEN 1
                      WHEN 2 THEN 2
					  WHEN 3 THEN 3
					  WHEN 4 THEN 4
					  WHEN 5 THEN 5
					  WHEN 6 THEN 6
					  WHEN 7 THEN 7
					  WHEN 8 THEN 8
					  WHEN 9 THEN 9
                      ELSE NULL
                      END
 WHERE video_game_id IN(1,2,3,4,5,6,7,8,9);
