Football League – Players Table

CREATE TABLE `Player`
(
`Player_ID` SERIAL,
`Player_Name` CHAR (30) NOT NULL,
`Position` CHAR (15) NOT NULL,
`Age` TINYINT NOT NULL,
`Team_ID` BIGINT UNSIGNED NOT NULL,
PRIMARY KEY (`Player_ID`),
FOREIGN KEY (`Team_ID`)
REFERENCES `Team` (`Team_ID`)
) ENGINE = 'INNODB';
Football League – League Table
CREATE TABLE `League`
(
`League_ID` SERIAL,
`League_Name` CHAR (50) NOT NULL,
`League_Rank` TINYINT NOT NULL,
PRIMARY KEY (`League_ID`)
) ENGINE = 'INNODB';


Football League – Home Ground Table

CREATE TABLE `Home_Ground` 
(
`Ground_ID` SERIAL,
`Ground_Name` CHAR (30) NOT NULL,
`Location` CHAR (30) NOT NULL,
`Seating_Capacity` MEDIUMINT NOT NULL,
PRIMARY KEY (`Ground_ID`)
) ENGINE = 'INNODB';


Football League – Team Table

CREATE TABLE `Team`
(
`Team_ID` SERIAL,
`Team_Name` CHAR (30) NOT NULL,
`Founding_Date` YEAR NOT NULL,
`Manager` CHAR (30) NOT NULL,
`Ground_ID` BIGINT (20) UNSIGNED NOT NULL,
`League_ID` BIGINT (20) UNSIGNED NOT NULL,
PRIMARY KEY (`Team_ID`),
FOREIGN KEY (`Ground_ID`)
REFERENCES `Home_Ground` (`Ground_ID`),
FOREIGN KEY (`League_ID`)
REFERENCES `League` (`League_ID`)
) ENGINE = 'INNODB';
