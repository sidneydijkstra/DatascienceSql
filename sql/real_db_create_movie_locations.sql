INSERT INTO db_datascience.MovieLocation (movie_Id, title, startYear, attribute, note, location, comments)
SELECT m.movie_Id, rml.title, rml.startYear, rml.attribute, rml.note, rml.location, rml.comments FROM raw.MovieLocation rml
INNER JOIN db_datascience.Movie m
ON m.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rml.title, ',', rml.startYear)) AS CHAR), 1, 16), 16, 10)
/*SELECT * FROM db_datascience.MovieLocation WHERE db_datascience.MovieLocation.movie_Id IS NOT NULL;*/
