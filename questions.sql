/* question [2] */
SELECT iml.movie_Id, iml.title, COUNT(distinct SUBSTRING_INDEX(iml.location, ', ', -1)) AS ccount FROM db_datascience.MovieLocation iml
RIGHT JOIN db_datascience.MovieLocation ml
ON iml.movie_Id = ml.movie_Id
GROUP BY iml.movie_Id
HAVING ccount > 3
LIMIT 10;

/* question [3] */