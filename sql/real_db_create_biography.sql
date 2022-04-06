INSERT INTO db_datascience.Biography (fullName, date, placeOfBirth, surogat)
SELECT rb.fullName, rb.date, rb.placeOfBirth, CONV(SUBSTRING(CAST(SHA(rb.fullName) AS CHAR), 1, 16), 16, 10)
FROM raw.Biography AS rb;
/*SELECT * FROM db_datascience.Biography;*/
