INSERT INTO db_datascience.Movie (business_id, title, startYear, attribute, note, endYear, surogat)
SELECT b.business_Id, rm.title, rm.startYear, rm.attribute, rm.note, rm.endYear, CONV(SUBSTRING(CAST(SHA(CONCAT(rm.title, ',', rm.startYear)) AS CHAR), 1, 16), 16, 10) FROM raw.Movie rm
LEFT JOIN db_datascience.Business b
ON b.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rm.title, ',', rm.endYear)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.Movie WHERE db_datascience.Movie.business_Id IS NOT NULL;*/
