INSERT INTO db_datascience.SerieRating (serie_Id, title, startYear, titleSerie, totalVoteCount, rating)
SELECT s.serie_Id, rsr.title, rsr.startyear, rsr.titleserie, rsr.totalvotecount, rsr.rating FROM raw.SerieRating rsr
INNER JOIN db_datascience.Serie s
ON s.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rsr.title, ',', rsr.startYear, ',', rsr.titleSerie)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.SerieRating WHERE db_datascience.SerieRating.serie_Id IS NOT NULL;*/
