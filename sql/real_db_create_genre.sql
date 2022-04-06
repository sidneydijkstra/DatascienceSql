INSERT INTO db_datascience.Genre (serie_Id, movie_Id, movieOrShowName, date, typen, suspended, genre)
SELECT NULL, m.movie_Id, rgm.movieOrShowName, rgm.date, rgm.typen, rgm.suspended, rgm.genre FROM raw.GenreMovie rgm
INNER JOIN db_datascience.Movie m
ON m.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rgm.movieOrShowName, ',', rgm.date)) AS CHAR), 1, 16), 16, 10);

INSERT INTO db_datascience.Genre (serie_Id, movie_Id, movieOrShowName, date, typen, suspended, genre)
SELECT s.serie_Id, NULL, rgs.movieOrShowName, rgs.date, rgs.typen, rgs.suspended, rgs.genre FROM raw.GenreSerie rgs
INNER JOIN db_datascience.Serie s
ON s.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rgs.movieOrShowName, ',', rgs.date, ',', rgs.typen)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.Genre WHERE db_datascience.Genre.serie_Id IS NOT NULL;*/
