# UserManagement
User Management System

SQL query for files(for image upload) table:
CREATE TABLE `files` (
`id` INT NOT NULL AUTO_INCREMENT,
`file_name` VARCHAR(45) NULL,
`label` VARCHAR(45) NULL,
`caption` VARCHAR(45) NULL,
PRIMARY KEY(`id`),
UNIQUE INDEX `file_name_UNIQUE` (`file_name` ASC) VISIBLE
)
