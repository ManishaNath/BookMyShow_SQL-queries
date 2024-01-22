# BookMyShow_SQL-queries

Bookmyshow is a ticketing platform where you can book tickets for a movie show. For a given theatre we can see the next 7 dates. As one chooses the date, we get list of all shows running in that theatre along with the show timings.

P1 - List down all the entities, their attributes and the table structures for the scenario mentioned in the previous slide. You also need to write the SQL queries required to create these tables along with few sample entries. Ensure the tables follow 1NF, 2NF, 3NF and BCNF rules.

P2 - Write a query to list down all the shows on a given date at a given theatre along with their respective show timings. 

ER DIAGRAM

+--------------+       
|    Movie     |       
+--------------+      
| Movie_ID (PK)|     
| Movie_name   |      
| Total_time   |     
| Genres       |       
| Language     |                              
| Movie_ratings|                                      
+--------------+                                   

Theater table

+-------------+     
|   Theater   |     
+-------------+    
| Theater_ID  |    
| Theater_name|    
| Theater_loc |     
+-------------+     
                   

Show Table

+----------------+      
| ShowTable      |       
+----------------+          
| Show_ID (PK)   |       
| Show_timestamp |      
| Movie_ID (FK)  |      
| Screen_ID (FK) |       
+----------------+   

Screen Table

 +-------------+
 |  Screen     |
 +-------------+   
 |Screen_ID(PK)|
 | Screen_name |
 | Show_ID (FK)|
 +-------------+

 
In this ER diagram:

Movie and Theater are the main entities with their respective attributes.
ShowTable represents the association between movies, theaters, and show details.
Screen is associated with ShowTable to represent the screen information for each show.
Key:

(PK): Primary Key
(FK): Foreign Key
Here are the relationships:

Movie and ShowTable: One-to-Many relationship (One movie can have multiple showings).
Theater and ShowTable: One-to-Many relationship (One theater can have multiple shows).
ShowTable and Screen: One-to-Many relationship (One show can have multiple screens).
