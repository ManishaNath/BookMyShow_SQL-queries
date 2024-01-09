-- Create Movie table
CREATE TABLE Movie (
    Movie_ID INT PRIMARY KEY,
    movie_name VARCHAR(255) NOT NULL,
    total_time TIME NOT NULL,
    Genres VARCHAR(50) NOT NULL,
    Language VARCHAR(50) NOT NULL,
    movie_ratings VARCHAR(5) NOT NULL
);

-- Insert values into Movie table
INSERT INTO Movie (Movie_ID, movie_name, total_time, Genres, Language, movie_ratings)
VALUES
    (1234, 'DASARA', '01:30', 'CRIME', 'HINDI', 'U/A'),
    (2345, 'KKBKKJ', '02:30', 'DRAMA', 'HINDI', 'U'),
    (3456, 'TJMM', '02:30', 'SCIENTIFIC', 'HINDI', 'U/A'),
    (4567, 'AVATAR', '02:30', 'DRAMA', 'ENGLISH', 'S');

-- Create Theater table
CREATE TABLE Theater (
    Theater_ID VARCHAR(10) PRIMARY KEY,
    theater_name VARCHAR(255) NOT NULL,
    theater_location VARCHAR(255) NOT NULL,
    Screen_ID INT,
    FOREIGN KEY (Screen_ID) REFERENCES Screen(Screen_ID)
);

-- Insert values into Theater table
INSERT INTO Theater (Theater_ID, theater_name, theater_location, Screen_ID)
VALUES
    ('101_201', 'PVR_NEXUS', 'Bangalore', 11),
    ('101_202', 'PVR_NEXUS', 'Bangalore', 12),
    ('101_203', 'PVR_NEXUS', 'Bangalore', 13),
    ('101_204', 'PVR_NEXUS', 'Bangalore', 14);

-- Create MappingTable
CREATE TABLE MappingTable (
    MT_ID INT PRIMARY KEY,
    Movie_ID INT,
    Theater_ID VARCHAR(10),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID),
    FOREIGN KEY (Theater_ID) REFERENCES Theater(Theater_ID)
);

-- Insert values into MappingTable
INSERT INTO MappingTable (MT_ID, Movie_ID, Theater_ID)
VALUES
    (10, 1234, '101_201'),
    (20, 2345, '101_202'),
    (30, 3456, '101_203'),
    (40, 4567, '101_204');

-- Create ShowTable
CREATE TABLE ShowTable (
    Show_ID INT PRIMARY KEY,
    Show_date DATE NOT NULL,
    Show_Time TIME NOT NULL,
    MT_ID INT,
    FOREIGN KEY (MT_ID) REFERENCES MappingTable(MT_ID)
);

-- Insert values into ShowTable
INSERT INTO ShowTable (Show_ID, Show_date, Show_Time, MT_ID)
VALUES
    (1, '2023-04-25', '12:16', 10),
    (2, '2023-03-19', '16:10', 20),
    (3, '2023-03-20', '13:16', 30),
    (4, '2023-04-25', '13:20', 40);

-- Create Screen table
CREATE TABLE Screen (
    Screen_ID INT PRIMARY KEY,
    Screen_name VARCHAR(50) NOT NULL,
    Show_ID INT,
    FOREIGN KEY (Show_ID) REFERENCES ShowTable(Show_ID)
);

-- Insert values into Screen table
INSERT INTO Screen (Screen_ID, Screen_name, Show_ID)
VALUES
    (11, '2D', 1),
    (12, '2D', 2),
    (13, '2D', 3),
    (14, '4D', 4);
