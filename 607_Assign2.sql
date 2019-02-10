CREATE TABLE `assign2`.`Kids` (
  `Kids_ID` INT NOT NULL AUTO_INCREMENT,
  `Kids_Name` VARCHAR(10) NOT NULL,
  `Age` INT NOT NULL,
  PRIMARY KEY (`Kids_ID`))
  
CREATE TABLE `assign2`.`Movies` (
  `Movie_ID` INT NOT NULL AUTO_INCREMENT,
  `Movie_Name` VARCHAR(10) NOT NULL,
  `Movie_Year` INT(4) NOT NULL,
  PRIMARY KEY (`Movie_ID`))

CREATE TABLE `assign2`.`Ratings` (
  `Ratings_ID` INT(2) NOT NULL,
  `Kids_ID` INT(2) NOT NULL,
  `Movie_ID` INT(2) NOT NULL,
  `Rating` INT(2) NOT NULL,
  FOREIGN KEY (`Kids_ID`) references Kids(Kids_ID) on delete cascade,
  FOREIGN KEY (`Movie_ID`) references Movies(Movie_ID) on delete cascade
  PRIMARY KEY (`Ratings_ID`)
  ) ENGINE = InnoDB

INSERT INTO `assign2`.Movies (Movie_ID, Movie_Name, Movie_Year)
VALUES	(1, 'Moana', 2016) ,
		(2, 'Frozen', 2013) ,
        (3, 'Minions', 2015) ,
        (4, 'Inside Out', 2015) ,
        (5, 'Coco', 2017) ;
        
INSERT INTO `assign2`.Kids (Kids_ID, Kids_Name, Age)
VALUES	(1, 'Ossie', 8) ,
		(2, 'Chelsea', 8) ,
        (3, 'Kyah', 5) ,
        (4, 'Jada', 6) ,
        (5, 'Zoe', 7)	;       
        
INSERT INTO `assign2`.Ratings (Ratings_ID, Kid_ID, Movie_ID, Rating)
VALUES	(1, 1, 1, 4) ,
		(2, 1, 2, 4) ,
        (3, 1, 3, 3) ,
        (4, 1, 4, 4) ,
        (5, 1, 5, 5) ,       
        (6, 2, 1, 5) ,
		(7, 2, 2, 4) ,
        (8, 2, 3, 3) ,
        (9, 2, 4, 2) ,
        (10, 2, 5, 5) ,
        (11, 3, 1, 1) ,
		(12, 3, 2, 4) ,
        (13, 3, 3, 3) ,
        (14, 3, 4, 3) ,
        (15, 3, 5, 4) ,
        (16, 4, 1, 2) ,
		(17, 4, 2, 2) ,
        (18, 4, 3, 3) ,
        (19, 4, 4, 3) ,
        (20, 4, 5, 4) ,
        (21, 5, 1, 4) ,
		(22, 5, 2, 5) ,
        (23, 5, 3, 3) ,
        (24, 5, 4, 4) ,
        (25, 5, 5, 5) ;

