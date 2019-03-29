/* 1 - Sélections simples */

/* A */
SELECT * FROM jobs;

/* B */
SELECT * FROM casts WHERE firstname = "Christopher" ORDER BY lastname ASC;

/* C */
SELECT * FROM casts WHERE death_year IS NOT NULL ORDER BY firstname ASC;

/* D */
SELECT * FROM casts WHERE death_year IS NULL AND birth_year + 40 < YEAR(NOW()) AND birth_year + 50 > YEAR(NOW());

/* E  sinon : selectionne date naissance et tri par ordre croissant puis LIMIT 1*/
SELECT * FROM casts WHERE birth_year = (SELECT MIN(birth_year) FROM casts WHERE death_year IS NULL);

/* F */
SELECT * FROM casts WHERE lastname LIKE "%aka%";

/* 2 - Jointures */

/* A */
SELECT name 
FROM genres 
INNER JOIN moviegenres ON moviegenres.id_genre = genres.id
INNER JOIN movies ON moviegenres.id_movie = movies.id
WHERE movies.title = "Interstellar" ORDER BY genres.name ASC;

/* B */
SELECT title, release_date 
FROM movies 
INNER JOIN moviecountries ON moviecountries.id_movie = movies.id 
INNER JOIN countries ON moviecountries.code_country = countries.code
WHERE countries.name = "United States of America"
ORDER BY release_date DESC LIMIT 1

/* C */
SELECT title, release_date 
FROM movies 
INNER JOIN moviecountries ON moviecountries.id_movie = movies.id
INNER JOIN countries ON moviecountries.code_country = countries.code
INNER JOIN moviegenres ON moviegenres.id_movie=movies.id
INNER JOIN genres ON genres.id = moviegenres.id_genre 
WHERE countries.code = "US" AND genres.name="Comedy"
ORDER BY release_date

/* D */
SELECT DISTINCT CONCAT(casts.lastname, ' ', casts.firstname) as Directors
FROM casts, jobs, roles, moviecountries, countries
WHERE countries.code IN ('GB','NZ')
AND countries.code = moviecountries.code_country
AND casts.id = roles.id_cast
AND jobs.name = 'director'
AND roles.id_job = jobs.id
AND moviecountries.id_movie = roles.id_movie
ORDER BY Directors

/* E */
SELECT role, title 
FROM roles r, movies m 
INNER JOIN casts ON casts.id = r.id_cast 
WHERE m.id = r.id_movie 
AND casts.firstname = "Antonin" 
AND casts.lastname = "Leuret" 
ORDER BY m.title

/* 3 - Requêtes complexes */

/* A */
SELECT countries.name,COUNT(casts.id) AS NB
FROM countries
JOIN castnationalities ON castnationalities.code_country = countries.code
JOIN casts ON casts.id = castnationalities.id_cast
GROUP BY code_country
ORDER BY NB DESC

/* B */
SELECT COUNT(movies.id) AS NB FROM casts
INNER JOIN roles ON casts.id = roles.id_cast
INNER JOIN movies ON movies.id = roles.id_movie
WHERE roles.role LIKE "%Voix%";

/* C */
SELECT DISTINCT title as Movie, concat(firstname,' ', lastname) As Director
FROM movies
INNER JOIN roles on roles.id_movie = movies.id
INNER JOIN moviecountries ON moviecountries.id_movie = movies.id
INNER JOIN countries ON moviecountries.code_country = countries.code
INNER JOIN jobs ON roles.id_job = jobs.id
INNER JOIN casts ON casts.id = roles.id_cast
WHERE moviecountries.id_movie = (SELECT id_movie FROM moviecountries GROUP BY id_movie 
HAVING COUNT(DISTINCT code_country) >= ALL(SELECT COUNT(DISTINCT code_country) FROM moviecountries GROUP BY id_movie))
AND jobs.name="director"

/* D */
SELECT DISTINCT concat(firstname,' ', lastname) AS Actor, role, title as Movie
FROM casts
INNER JOIN roles ON roles.id_cast=casts.id
INNER JOIN movies on roles.id_movie = movies.id
INNER JOIN moviegenres ON moviegenres.id_movie=movies.id
INNER JOIN genres ON genres.id = moviegenres.id_genre
INNER JOIN jobs ON roles.id_job = jobs.id
WHERE genres.name IN ("Drama","Romance") AND YEAR(movies.release_date) >= 2018 AND jobs.name="actor"
ORDER BY title, lastname, firstname, role;