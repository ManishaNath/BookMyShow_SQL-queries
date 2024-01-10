--P1 SQL queries required to create BookMyShow tables along with few sample entries. 

-- Create Movie table
CREATE TABLE Movie (
    Movie_ID INT PRIMARY KEY,
    Movie_name VARCHAR(255) NOT NULL,
    Total_time TIME NOT NULL,
    Genres VARCHAR(50) NOT NULL,
    Language VARCHAR(50) NOT NULL,
    Movie_ratings VARCHAR(5) NOT NULL
);

-- Insert values into Movie table
INSERT INTO Movie (Movie_ID, Movie_name, Total_time, Genres, Language, Movie_ratings)
VALUES
    (1234, 'DASARA', '01:30', 'CRIME', 'HINDI', 'U/A'),
    (2345, 'KKBKKJ', '02:30', 'DRAMA', 'HINDI', 'U'),
    (3456, 'TJMM', '02:30', 'SCIENTIFIC', 'HINDI', 'U/A'),
    (4567, 'AVATAR', '02:30', 'DRAMA', 'ENGLISH', 'S');

-- Create Theater table
CREATE TABLE Theater (
    Theater_ID VARCHAR(10) PRIMARY KEY,
    Theater_name VARCHAR(255) NOT NULL,
    Theater_location VARCHAR(255) NOT NULL
);

-- Insert values into Theater table
INSERT INTO Theater (Theater_ID, Theater_name, Theater_location)
VALUES
    ('101_201', 'PVR_NEXUS', 'Bangalore'),
    ('101_202', 'PVR_NEXUS', 'Bangalore'),
    ('101_203', 'PVR_NEXUS', 'Bangalore'),
    ('101_204', 'PVR_NEXUS', 'Bangalore');

-- Create Show Table
CREATE TABLE ShowTable (
    Show_ID INT PRIMARY KEY,
    Show_date DATE NOT NULL,
    Show_Time TIME NOT NULL,
    Movie_ID INT NOT NULL,
    Theater_ID VARCHAR(10),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID),
    FOREIGN KEY (Theater_ID) REFERENCES Theater(Theater_ID)
);

-- Insert values into Show Table
INSERT INTO ShowTable (Show_ID, Show_date, Show_Time, Movie_ID, Theater_ID)
VALUES
(1, '25.4.23, 19.03.23, 20.03.23', '12:16 PM', 1234, '101_201'),
(2, '25.4.23, 19.03.23, 20.03.23', '4:10 PM, 8:20 PM', 2345, '101_202'),
(3, '25.4.23, 19.03.23, 20.03.23', '01:16 PM',3456, '101_203'),
(4, '25.4.23, 19.03.23, 20.03.23', '01:20 PM',4567,'101_204');


-- Create Screen Table
CREATE TABLE Screen (
    Screen_ID INT PRIMARY KEY,
    Screen_name VARCHAR(50) NOT NULL,
    Show_ID INT,
    FOREIGN KEY (Show_ID) REFERENCES ShowTable(Show_ID)
);

-- Insert values into Screen Table
INSERT INTO Screen (Screen_ID, Screen_name, Show_ID)
VALUES
    (11, '2D', 1),
    (12, '2D', 2),
    (13, '2D', 3),
    (14, '4D', 4);

-- View all the table

     select * from Movie
     select * from Theater
     select * from ShowTable
     select * from Screen


--P2 Query to list down all the shows on a given date at a given theatre along with their respective show timings.

SELECT
    Movie.Movie_name AS MovieName,
    Theater.Theater_name AS TheatreName,
    ShowTable.Show_date AS ShowDate,
    ShowTable.Show_Time AS ShowTime
FROM
    ShowTable
JOIN
    Movie ON ShowTable.Movie_ID = Movie.Movie_ID
JOIN
    Theater ON ShowTable.Theater_ID = Theater.Theater_ID
WHERE
    ShowTable.Show_date = '2023-04-25' 
    AND Theater.Theater_ID = '101_201'; 


