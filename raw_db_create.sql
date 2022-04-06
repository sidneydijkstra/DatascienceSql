CREATE DATABASE IF NOT EXISTS raw;
USE raw;

/* create table business */
CREATE TABLE IF NOT EXISTS `Business` (
	`businessName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`year` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`budget` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


/* create table movie */
CREATE TABLE IF NOT EXISTS `Movie` (
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`endYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table movielocation */
CREATE TABLE IF NOT EXISTS `MovieLocation` (
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(45) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table movierating */
CREATE TABLE IF NOT EXISTS `MovieRating` (

	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`totalVoteCount` INT(11) NULL DEFAULT NULL,
	`rating` FLOAT NULL DEFAULT NULL
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table movieruntime */
CREATE TABLE IF NOT EXISTS `MovieRuntime` (
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`countryTime` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`timeInMinutes` INT(11) NULL DEFAULT NULL,
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


/* create table serie */
CREATE TABLE IF NOT EXISTS `Serie` (
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`endYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table serielocation */
CREATE TABLE IF NOT EXISTS `SerieLocation` (
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table serierating */
CREATE TABLE IF NOT EXISTS `SerieRating` (
	`title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`totalVoteCount` INT(11) NULL DEFAULT NULL,
	`rating` FLOAT NULL DEFAULT NULL
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table serieruntime */
CREATE TABLE IF NOT EXISTS `SerieRuntime` (
	`title` VARCHAR(45) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`startYear` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`titleSerie` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`note` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`countryTime` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`timeInMinutes` INT(11) NULL DEFAULT NULL,
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


/* create table country movie */
CREATE TABLE IF NOT EXISTS `CountryMovie` (
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`typen` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`suspended` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`country` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table country serie */
CREATE TABLE IF NOT EXISTS `CountrySerie` (
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`typen` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`suspended` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`country` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table genre movie */
CREATE TABLE IF NOT EXISTS `GenreMovie` (
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`typen` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`suspended` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`genre` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table genre serie */
CREATE TABLE IF NOT EXISTS `GenreSerie` (
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`typen` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`suspended` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`genre` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table biography */
CREATE TABLE IF NOT EXISTS `Biography` (
	`fullName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`placeOfBirth` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table actor */
CREATE TABLE IF NOT EXISTS `Actor` (
	`actorName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`epNameOrVoice` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`role` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table actress */
CREATE TABLE IF NOT EXISTS `Actress` (
	`actorName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`epNameOrVoice` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`role` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

/* create table writer */
CREATE TABLE IF NOT EXISTS `Writer` (
	`actor` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`movieOrShowName` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`attribute` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`comments` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
