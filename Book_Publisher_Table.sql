Bookshop – Publisher Table

CREATE TABLE `Publisher`
(
`Publisher_ID` SERIAL,
`Publisher_Name` CHAR (30) NOT NULL,
PRIMARY KEY (`Publisher_ID`)
) ENGINE='INNODB';
Bookshop – Genre Table
CREATE TABLE `Genre`
(
`Genre_ID` SERIAL,
`Genre_Name` CHAR (20) NOT NULL,
PRIMARY KEY (`Genre_ID`)
) ENGINE='INNODB';
Bookshop – Title Table
CREATE TABLE `Title`
(
`Title_ID` SERIAL,
`Title_Name` CHAR (50) NOT NULL,
`No.Of_Editions` TINYINT,
`Genre_ID` BIGINT UNSIGNED NOT NULL,
`Publisher_ID` BIGINT UNSIGNED NOT NULL,
PRIMARY KEY (`Title_ID`),
FOREIGN KEY (`Genre_ID`)
REFERENCES `Genre` (`Genre_ID`),
FOREIGN KEY (`Publisher_ID`)
REFERENCES `Publisher` (`Publisher_ID`)
) ENGINE='INNODB';



Bookshop – Author Table

CREATE TABLE `Author`
(
`Author_ID` SERIAL,
`Author_Name` CHAR (30) NOT NULL,
PRIMARY KEY (`Author_ID`)
) ENGINE=  'INNODB';
Bookshop – Edition Table
CREATE TABLE `Edition`
(
`Edition_ID` SERIAL,
`Edition_Name` CHAR (30) NOT NULL,
`ISBN_Number` INT NOT NULL,
`Date_Published` DATE NOT NULL,
`Page_Count` SMALLINT NOT NULL,
`Author_ID` BIGINT UNSIGNED NOT NULL,
`Title_ID` BIGINT UNSIGNED NOT NULL,
PRIMARY KEY (`Edition_ID`),
FOREIGN KEY (`Author_ID`)
REFERENCES `Author` (`Author_ID`),
FOREIGN KEY (`Title_ID`)
REFERENCES `Title` (`Title_ID`)
) ENGINE = 'INNODB';



Bookshop – Format Table

CREATE TABLE `Format`
(
`Format_ID` SERIAL,
`Format` CHAR (12) NOT NULL,
`Price` SMALLINT NOT NULL,
`Stock` MEDIUMINT NOT NULL,
`Edition_ID` BIGINT UNSIGNED NOT NULL,
PRIMARY KEY (`Format_ID`),
FOREIGN KEY (`Edition_ID`)
REFERENCES `Edition` (`Edition_ID`)
) ENGINE = 'INNODB';
