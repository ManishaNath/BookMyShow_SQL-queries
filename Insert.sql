-- Inserting into Tables involved in BookMyShow with No relations

//Movie Table

//# -- Insert values into the movie table---

INSERT INTO Movie (Movie_ID, movie_name, total_time, Genres, Language, movie_ratings)
VALUES
(1234, 'DASARA', '01:30', 'CRIME', 'HINDI', 'U/A'),
(2345, 'KKBKKJ', '02:30', 'DRAMA', 'HINDI', 'U'),
(3456, 'TJMM', '02:30', 'SCIENTIFIC', 'HINDI', 'U/A'),
(4567, 'AVATAR', '02:30', 'DRAMA', 'ENGLISH', 'S');



//Theater Table

// #-- Insert values into the Theatre table

INSERT INTO Theatre (Theatre_ID, Theatre_name, Theatre_location)
VALUES
('101_201', 'PVR_NEXUS', 'Bangalore'),
('101_202', 'PVR_NEXUS', 'Bangalore'),
('101_203', 'PVR_NEXUS', 'Bangalore'),
('101_204', 'PVR_NEXUS', 'Bangalore');

..................

// Show Table

// #-- Insert values into the Show table

INSERT INTO Show (Show_ID, Show_date, Show_Time)
VALUES
(1, '25.4.23, 19.03.23, 20.03.23', '12:16 PM'),
(2, '25.4.23, 19.03.23, 20.03.23', '4:10 PM, 8:20 PM'),
(3, '25.4.23, 19.03.23, 20.03.23', '01:16 PM'),
(4, '25.4.23, 19.03.23, 20.03.23', '01:20 PM');

// Screen table

//#-- Insert values into the Screen table

INSERT INTO Screen (Screen_ID, Screen_name)
VALUES
(11, '2D'),
(12, '2D'),
(13, '2D'),
(14, '4D');




