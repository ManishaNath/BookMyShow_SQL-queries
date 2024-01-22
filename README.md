# BookMyShow_SQL-queries

Bookmyshow is a ticketing platform where you can book tickets for a movie show. For a given theatre we can see the next 7 dates. As one chooses the date, we get list of all shows running in that theatre along with the show timings.

P1 - List down all the entities, their attributes and the table structures for the scenario mentioned in the previous slide. You also need to write the SQL queries required to create these tables along with few sample entries. Ensure the tables follow 1NF, 2NF, 3NF and BCNF rules.

P2 - Write a query to list down all the shows on a given date at a given theatre along with their respective show timings. 




ER DIAGRAM

+--------------+      +-------------+     +----------------+       +-------------+
|    Movie     |      |   Theater   |     | ShowTable      |       |  Screen     |
+--------------+      +-------------+     +----------------+       +-------------+
| Movie_ID (PK)|      | Theater_ID  |     | Show_ID (PK)   |       |Screen_ID(PK)|
| Movie_name   |      | Theater_name|     | Show_date      |       | Screen_name |
| Total_time   |      | Theater_loc |     | Show_Time      |       | Show_ID (FK)|
| Genres       |      +-------------+     | Movie_ID (FK)  |       +-------------+
| Language     |                          | Theater_ID (FK)|       
| Movie_ratings|                          +----------------+       
+--------------+                                   
