 // P2 - Write a query to list down all the shows on a given date at a given theatre along with their respective show timings.


SELECT
    Movie.movie_name AS MovieName,
    Theater.theater_name AS TheatreName, 
    Show.Show_date AS ShowDate,
    Show.Show_Time AS ShowTime
FROM 
    Show 
INNER JOIN 
    
Movie_Show MS ON show.MT_ID = MS.Movie_ID

INNER JOIN 

Movie_TheatreShow MTS ON MS.Movie_ID = MTS.Movie_ID

INNER JOIN 

    Theater T ON MTS.Theater_ID = T.Theater_ID

INNER JOIN 

    Movie M ON MS.Movie_ID = M.Movie_ID

WHERE
   Show.Show_Date = '25.4.23';