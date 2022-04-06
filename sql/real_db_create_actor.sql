/* Actor */
INSERT INTO db_datascience.Actor (movie_Id, biography_Id, serie_Id, actorName, movieOrShowName, date, epNameOrVoice, role)
SELECT m.movie_Id, b.biography_Id, s.serie_Id, ra.actorname, ra.movieOrShowName, ra.date, ra.epnameorvoice, ra.role FROM raw.Actor ra
LEFT JOIN db_datascience.Biography b
ON b.surogat = CONV(SUBSTRING(CAST(SHA(ra.actorName) AS CHAR), 1, 16), 16, 10)
LEFT JOIN db_datascience.Movie m
ON m.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(ra.movieOrShowName, ',', ra.date)) AS CHAR), 1, 16), 16, 10)
LEFT JOIN db_datascience.Serie s
ON s.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(ra.movieOrShowName, ',', ra.date, ',', ra.epnameorvoice)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.Actor WHERE db_datascience.Actor.movie_Id IS NOT NULL;*/
