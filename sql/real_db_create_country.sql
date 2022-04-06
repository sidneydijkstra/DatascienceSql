INSERT INTO db_datascience.Country (serie_Id, movie_Id, movieOrShowName, date, typen, suspended, country)
SELECT NULL, m.movie_Id, rcm.movieOrShowName, rcm.date, rcm.typen, rcm.suspended, rcm.country FROM raw.CountryMovie rcm
INNER JOIN db_datascience.Movie m
ON m.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rcm.movieOrShowName, ',', rcm.date)) AS CHAR), 1, 16), 16, 10);

INSERT INTO db_datascience.Country (serie_Id, movie_Id, movieOrShowName, date, typen, suspended, country)
SELECT s.serie_Id, NULL, rcs.movieOrShowName, rcs.date, rcs.typen, rcs.suspended, rcs.country FROM raw.CountrySerie rcs
INNER JOIN db_datascience.Serie s
ON s.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rcs.movieOrShowName, ',', rcs.date, ',', rcs.typen)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.Country WHERE db_datascience.Country.movie_Id IS NOT NULL OR db_datascience.Country.serie_Id IS NOT NULL;*/
