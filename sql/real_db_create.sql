CREATE DATABASE IF NOT EXISTS db_datascience;
USE db_datascience;

/* create table business */
CREATE TABLE IF NOT EXISTS `Business` (
	`business_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`businessName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`year` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`budget` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`surogat` BIGINT(20) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`business_Id`) USING BTREE,
	INDEX `surogat` (`surogat`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


/* create table movie */
CREATE TABLE IF NOT EXISTS `Movie` (
	`movie_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`business_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`endYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`surogat` BIGINT(20) UNSIGNED NULL DEFAULT NULL,
	INDEX `surogat` (`surogat`) USING BTREE,
	PRIMARY KEY (`movie_Id`) USING BTREE,
	INDEX `business_Id` (`business_Id`) USING BTREE,
	CONSTRAINT `Movie_ibfk_1` FOREIGN KEY (`business_Id`) REFERENCES `db_datascience`.`Business` (`business_Id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table movielocation */
CREATE TABLE IF NOT EXISTS `MovieLocation` (
	`movieLocation_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL,
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`movieLocation_Id`) USING BTREE,
	INDEX `movie_location_Id_idx` (`movie_Id`) USING BTREE,
	CONSTRAINT `movie_location_Id` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table movierating */
CREATE TABLE IF NOT EXISTS `MovieRating` (
	`movieRating_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL,
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`totalVoteCount` INT(11) NULL DEFAULT NULL,
	`rating` FLOAT NULL DEFAULT NULL,
	PRIMARY KEY (`movieRating_Id`) USING BTREE,
	INDEX `movie_rating_Id_idx` (`movie_Id`) USING BTREE,
	CONSTRAINT `movie_rating_Id` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table movieruntime */
CREATE TABLE IF NOT EXISTS `MovieRuntime` (
	`movieRuntime_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL,
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`countryTime` VARCHAR(255) NULL DEFAULT NULL,
	`timeInMinutes` INT(11) NULL DEFAULT NULL,
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`movieRuntime_Id`) USING BTREE,
	INDEX `movie_runtime_Id_idx` (`movie_Id`) USING BTREE,
	CONSTRAINT `movie_runtime_Id` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


/* create table serie */
CREATE TABLE IF NOT EXISTS `Serie` (
	`serie_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`business_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`endYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`surogat` BIGINT(20) UNSIGNED NULL DEFAULT NULL,
	INDEX `surogat` (`surogat`) USING BTREE,
	PRIMARY KEY (`serie_Id`) USING BTREE,
	INDEX `business_Id` (`business_Id`) USING BTREE,
	CONSTRAINT `Serie_ibfk_1` FOREIGN KEY (`business_Id`) REFERENCES `db_datascience`.`Business` (`business_Id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table serielocation */
CREATE TABLE IF NOT EXISTS `SerieLocation` (
	`serieLocation_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL,
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`serieLocation_Id`) USING BTREE,
	INDEX `serie_location_Id_idx` (`serie_Id`) USING BTREE,
	CONSTRAINT `serie_location_Id` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table serierating */
CREATE TABLE IF NOT EXISTS `SerieRating` (
	`serieRating_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL,
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`totalVoteCount` INT(11) NULL DEFAULT NULL,
	`rating` FLOAT NULL DEFAULT NULL,
	PRIMARY KEY (`serieRating_Id`) USING BTREE,
	INDEX `serie_Id_idx` (`serie_Id`) USING BTREE,
	CONSTRAINT `serie_rating_Id` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table serieruntime */
CREATE TABLE IF NOT EXISTS `SerieRuntime` (
	`serieRuntime_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL,
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`countryTime` VARCHAR(255) NULL DEFAULT NULL,
	`timeInMinutes` INT(11) NULL DEFAULT NULL,
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`serieRuntime_Id`) USING BTREE,
	INDEX `serie_runtime_Id_idx` (`serie_Id`) USING BTREE,
	CONSTRAINT `serie_runtime_Id` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


/* create table country */
CREATE TABLE IF NOT EXISTS `Country` (
	`country_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`typen` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`suspended` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`country` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`country_Id`) USING BTREE,
	INDEX `serie_Id` (`serie_Id`) USING BTREE,
	INDEX `movie_Id` (`movie_Id`) USING BTREE,
	CONSTRAINT `Country_ibfk_1` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `Country_ibfk_2` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table genre */
CREATE TABLE IF NOT EXISTS `Genre` (
	`genre_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`typen` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`suspended` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`genre` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`genre_Id`) USING BTREE,
	INDEX `serie_Id` (`serie_Id`) USING BTREE,
	INDEX `movie_Id` (`movie_Id`) USING BTREE,
	CONSTRAINT `Genre_ibfk_1` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `Genre_ibfk_2` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table biography */
CREATE TABLE IF NOT EXISTS `Biography` (
	`biography_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`fullName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL,
	`placeOfBirth` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`surogat` BIGINT(20) UNSIGNED NULL DEFAULT NULL,
	INDEX `surogat` (`surogat`) USING BTREE,
	PRIMARY KEY (`biography_Id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table actor */
CREATE TABLE IF NOT EXISTS `Actor` (
	`actor_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`biography_Id` INT(11) NULL DEFAULT NULL,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`actorName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL,
	`epNameOrVoice` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`role` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`actor_Id`) USING BTREE,
	INDEX `movie_actor_Id_idx` (`movie_Id`) USING BTREE,
	INDEX `biography_actor_Id_idx` (`biography_Id`) USING BTREE,
	INDEX `serie_actor_Id_idx` (`serie_Id`) USING BTREE,
	CONSTRAINT `biography_actor_Id` FOREIGN KEY (`biography_Id`) REFERENCES `db_datascience`.`Biography` (`biography_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `movie_actor_Id` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `serie_actor_Id` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table actress */
CREATE TABLE IF NOT EXISTS `Actress` (
	`actress_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`biography_Id` INT(11) NULL DEFAULT NULL,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`actorName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL,
	`epNameOrVoice` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`role` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`actress_Id`) USING BTREE,
	INDEX `movie_actress_Id_idx` (`movie_Id`) USING BTREE,
	INDEX `biography_actress_Id_idx` (`biography_Id`) USING BTREE,
	INDEX `serie_actress_Id_idx` (`serie_Id`) USING BTREE,
	CONSTRAINT `biography_actress_Id` FOREIGN KEY (`biography_Id`) REFERENCES `db_datascience`.`Biography` (`biography_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `movie_actress_Id` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `serie_actress_Id` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table writer */
CREATE TABLE IF NOT EXISTS `Writer` (
	`writer_Id` INT(11) NOT NULL AUTO_INCREMENT,
	`biography_Id` INT(11) NULL DEFAULT NULL,
	`movie_Id` INT(11) NULL DEFAULT NULL,
	`serie_Id` INT(11) NULL DEFAULT NULL,
	`actorName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL,
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`writer_Id`) USING BTREE,
	INDEX `biography_Id_idx` (`biography_Id`) USING BTREE,
	INDEX `serie_writer_Id_idx` (`serie_Id`) USING BTREE,
	INDEX `movie_writer_Id_idx` (`movie_Id`) USING BTREE,
	CONSTRAINT `biography_writer_Id` FOREIGN KEY (`biography_Id`) REFERENCES `db_datascience`.`Biography` (`biography_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `movie_writer_Id` FOREIGN KEY (`movie_Id`) REFERENCES `db_datascience`.`Movie` (`movie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `serie_writer_Id` FOREIGN KEY (`serie_Id`) REFERENCES `db_datascience`.`Serie` (`serie_Id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
