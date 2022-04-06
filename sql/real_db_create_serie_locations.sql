INSERT INTO db_datascience.SerieLocation (serie_Id, title, startYear, titleSerie, note, location, comments)
SELECT s.serie_Id, rls.title, rls.startYear, rls.titleSerie, rls.note, rls.location, rls.comments FROM raw.SerieLocation rls
INNER JOIN db_datascience.Serie s
ON s.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rls.title, ',', rls.startYear, ',', rls.titleSerie)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.SerieLocation WHERE db_datascience.SerieLocation.serie_Id IS NOT NULL;*/
