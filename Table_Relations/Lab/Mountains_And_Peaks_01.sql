CREATE TABLE `mountains` (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50)
);

CREATE TABLE `peaks` (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50),
`mountain_id` INT,
CONSTRAINT `fk_peaks+mountains` 
FOREIGN KEY (`mountain_id`)
REFERENCES `mountains` (`id`)
);
