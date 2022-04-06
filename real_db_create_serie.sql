INSERT INTO db_datascience.Serie (business_id, title, startYear, titleSerie, note, endYear, surogat)
SELECT b.business_Id, rs.title, rs.startYear, rs.titleSerie, rs.note, rs.endYear, CONV(SUBSTRING(CAST(SHA(CONCAT(rs.title, ',', rs.startYear, ',', rs.titleSerie)) AS CHAR), 1, 16), 16, 10) FROM raw.Serie rs
LEFT JOIN db_datascience.Business b
ON b.surogat = CONV(SUBSTRING(CAST(SHA(CONCAT(rs.title, ',', rs.endYear)) AS CHAR), 1, 16), 16, 10);
/*SELECT * FROM db_datascience.Serie WHERE db_datascience.Serie.business_Id IS NOT NULL;*/
