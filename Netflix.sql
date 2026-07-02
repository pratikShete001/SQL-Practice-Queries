CREATE TABLE Movies (
    MovieID INT,
    Title VARCHAR(30),
    Genre VARCHAR(20),
    Rating DECIMAL(3,1),
    Year INT
);

INSERT INTO Movies VALUES
(1,'KGF','Action',8.4,2018),
(2,'3 Idiots','Comedy',8.5,2009),
(3,'Bahubali','Action',8.0,2015),
(4,'Drishyam','Thriller',8.3,2015),
(5,'Jawan','Action',7.2,2023);

SELECT  MAX(Rating) FROM Movies;

SELECT *
FROM Movies
WHERE Genre = 'Action';

SELECT *
FROM Movies
WHERE Year > 2015

SELECT AVG(Rating) FROM Movies;

SELECT Genre, COUNT(Title)
FROM Movies
GROUP BY Genre;
