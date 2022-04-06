INSERT INTO db_datascience.SerieRuntime (serie_Id, title, startYear, titleSerie, note, countryTime, timeInMinutes, comments)
SELECT s.serie_Id, rsr.title, rsr.startYear, rsr.titleSerie, rsr.note, rsr.countryTime, rsr.timeInMinutes, rsr.comments FROM raw.SerieRuntime rsr
INNER JOIN db_datascience.Serie s
ON s.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rsr.title, ',', rsr.startYear, ',', rsr.titleSerie)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.SerieRuntime WHERE db_datascience.SerieRuntime.serie_Id IS NOT NULL;*/
