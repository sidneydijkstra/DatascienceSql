/* writer */
INSERT INTO db_datascience.Writer (movie_Id, biography_Id, serie_Id, actorName, movieOrShowName, date, attribute, comments)
SELECT m.movie_Id, b.biography_Id, s.serie_Id, rw.actor, rw.movieorshowname, rw.date, rw.attribute, rw.comments FROM raw.Writer rw
LEFT JOIN db_datascience.Biography b
ON b.surogat = CONV(SUBSTRING(CAST(SHA(rw.actor) AS CHAR), 1, 16), 16, 10)
LEFT JOIN db_datascience.Movie m
ON m.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rw.movieOrShowName, ',', rw.date)) AS CHAR), 1, 16), 16, 10)
LEFT JOIN db_datascience.Serie s
ON s.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rw.movieOrShowName, ',', rw.date, ',', rw.attribute)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.Writer WHERE db_datascience.Writer.movie_Id IS NOT NULL;*/
