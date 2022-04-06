INSERT INTO db_datascience.Business (businessName, year, budget, surogat)
SELECT rb.businessName, rb.year, rb.budget, CONV(SUBSTRING(CAST(SHA(CONCAT(rb.businessName, ',', rb.year)) AS CHAR), 1, 16), 16, 10)
FROM raw.Business AS rb;

/*SELECT * FROM db_datascience.Business;*/
