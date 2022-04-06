USE raw;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedratingS.csv'
INTO TABLE SerieRating
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set title= @value1, startyear = @value2, titleserie = @value3, totalvotecount=@value4, rating=@value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedratingM.csv'
INTO TABLE MovieRating
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set title= @value1, startyear = @value2, attribute = @value3, totalvotecount=@value4, rating=@value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedMlocations.csv'
INTO TABLE MovieLocation
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5, @value6)
set title= @value1, startyear = @value2, attribute = @value3, note=@value4, location=@value5, comments=@value6;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedSlocations.csv'
INTO TABLE SerieLocation
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5, @value6)
set title= @value1, startyear = @value2, titleserie = @value3, note=@value4, location=@value5, comments=@value6;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedwriters.csv'
INTO TABLE Writer
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set actor= @value1, movieorshowname = TRIM(@value2), date = @value3, attribute=TRIM(@value4), comments=@value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedactresses.csv'
INTO TABLE Actress
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set actorname= @value1, movieorshowname = TRIM(@value2), date = @value3, epnameorvoice=TRIM(@value4), role=@value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedMruntime.csv'
INTO TABLE MovieRuntime
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5, @value6, @value7)
set title= TRIM(@value1), startyear = @value2, attribute = @value3, note=@value4, countrytime=@value5, timeinminutes=@value6, comments=@value7;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedSruntime.csv'
INTO TABLE SerieRuntime
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5, @value6, @value7)
set title= @value1, startyear = @value2, titleSerie = @value3, note=@value4, countryTime=@value5, timeInMinutes=@value6, comments=@value7;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedactors.csv'
INTO TABLE Actor
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set actorname= @value1, movieOrShowName = TRIM(@value2), date = @value3, epnameorvoice=TRIM(@value4), role=@value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedgenresM.csv'
INTO TABLE GenreMovie
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set movieOrShowName= @value1, date = @value2, typen = @value3, suspended = @value4, genre = @value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedgenresS.csv'
INTO TABLE GenreSerie
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set movieOrShowName= @value1, date = @value2, typen = @value3, suspended = @value4, genre = @value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedbiographies.csv'
INTO TABLE Biography
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3)
set fullName= @value1, date = @value2, placeofbirth = @value3;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedcountryM.csv'
INTO TABLE CountryMovie
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set movieOrShowName = @value1, date = @value2, typen = @value3, suspended= @value4, country = @value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedcountryS.csv'
INTO TABLE CountrySerie
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set movieOrShowName = @value1, date = @value2, typen = @value3, suspended= @value4, country = @value5;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedbussiness.csv'
INTO TABLE Business
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3)
set businessName = @value1, year = CONCAT('(', @value2, ')'), budget = @value3;

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedmovies.csv'
INTO TABLE Movie
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set title = @value1, startYear = @value2, attribute = @value3, note = @value4, endYear = CONCAT('(', @value5, ')');

LOAD DATA LOCAL INFILE 'C:/datascience_files_csv/editedseries.csv'
INTO TABLE Serie
COLUMNS TERMINATED BY '¤'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@value1, @value2, @value3, @value4, @value5)
set title = @value1, startYear = @value2, titleSerie = @value3, note = @value4, endYear = CONCAT('(', @value5, ')');
