INSERT INTO db_datascience.MovieRuntime (movie_Id, title, startYear, attribute, note, countryTime, timeInMinutes, comments)
SELECT m.movie_Id, rmr.title, rmr.startYear, rmr.attribute, rmr.note, rmr.countryTime, rmr.timeInMinutes, rmr.comments FROM raw.MovieRuntime rmr
INNER JOIN db_datascience.Movie m
ON m.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rmr.title, ',', rmr.startYear)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.MovieRuntime WHERE db_datascience.MovieRuntime.movie_Id IS NOT NULL;*/
