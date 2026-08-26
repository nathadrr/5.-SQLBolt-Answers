-- Exercise 1
--1.Find the title of each film 
SELECT Title FROM movies;

--2.Find the director of each film
SELECT Director FROM movies;

--3.Find the title and director of each film
SELECT Title, Director FROM movies;

--4.Find the title and year of each film
SELECT Title, year FROM movies;

--5.Find all the information about each film
SELECT * FROM movies;

--Exercise 2
--1.Find the movie with a row id of 6 
SELECT * FROM movies
WHERE id = 6;

--2.Find the movies released in the years between 2000 and 2010
SELECT * FROM movies
WHERE year BETWEEN 2000 AND 2010;

--3.Find the movies not released in the years between 2000 and 2010
SELECT * FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

--4.Find the first 5 Pixar movies and their release year
SELECT title, year FROM movies
LIMIT 5;

--Exercise 3
--1.Find all the Toy Story movies
SELECT * FROM movies
WHERE title LIKE 'Toy%';

--2.Find all the movies directed by John Lasseter
SELECT * FROM movies
WHERE director LIKE 'John%';

--3.Find all the movies (and director) not directed by John Lasseter
SELECT * FROM movies
WHERE director NOT LIKE 'John%'

--4.Find all the WALL-* movies
SELECT * FROM movies
WHERE title LIKE 'WALL%';

--Exercise 4
--1.List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director FROM movies
ORDER BY director;

--2.List the last four Pixar movies released (ordered from most recent to least)
SELECT title FROM movies
ORDER BY year DESC
LIMIT 4;

--3.List the first five Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title
LIMIT 5;

--4.List the next five Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title
LIMIT 5 OFFSET 5;

--Review 1
--1.List all the Canadian cities and their populations
SELECT city, population FROM north_american_cities
WHERE country LIKE 'Canada';

--2.Order all the cities in the United States by their latitude from north to south
SELECT city, latitude FROM north_american_cities
WHERE country LIKE 'United States'
ORDER BY latitude DESC;

--3.List all the cities west of Chicago, ordered from west to east
SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude;

--4.List the two largest cities in Mexico (by population)
SELECT city FROM north_american_cities
WHERE Country LIKE 'Mexico'
ORDER BY population DESC
LIMIT 2;

--5.List the third and fourth largest cities (by population) in the United States and their population
SELECT city FROM north_american_cities
WHERE Country LIKE 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;