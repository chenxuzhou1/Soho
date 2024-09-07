DROP DATABASE IF EXISTS Soholight;
CREATE DATABASE IF NOT EXISTS Soholight;
USE Soholight;
CREATE TABLE IF NOT EXISTS `yearly_awards` (
                                               `year_id` INT AUTO_INCREMENT PRIMARY KEY,
                                               `year` VARCHAR(4) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `award_category` (
                                                `category_id` INT AUTO_INCREMENT PRIMARY KEY,
                                                `category_title` VARCHAR(255) NOT NULL,
    `year_id` INT,
    FOREIGN KEY (year_id) REFERENCES yearly_awards(year_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `User` (
                                      `User_id` INT AUTO_INCREMENT PRIMARY KEY,
                                      `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `birthday_date` DATE NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `award` (
                                       `id` INT AUTO_INCREMENT PRIMARY KEY,
                                       `winnerName` VARCHAR(255),
    `winnerBackground` VARCHAR(255),
    `winnerSpeech` TEXT,
    `winnerImage` VARCHAR(255),
    `category_id` INT,
    FOREIGN KEY (category_id) REFERENCES award_category(category_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `KidsImage` (
                                           `img_id` INT AUTO_INCREMENT PRIMARY KEY,
                                           `name` VARCHAR(255) DEFAULT NULL,
    `age` INT DEFAULT NULL,
    `description` TEXT DEFAULT NULL,
    `URL` VARCHAR(2083) DEFAULT NULL,
    `SourceURL` VARCHAR(2083) DEFAULT NULL,
    `issueDate` TEXT DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `PhoneNumber` (
                                             `User_id` INT NOT NULL,
                                             `CountryCode` VARCHAR(255) DEFAULT NULL,
    `PhoneNumber` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`User_id`),
    CONSTRAINT `user_id_phonenumber` FOREIGN KEY (`User_id`) REFERENCES `User` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `feedback` (
                                          `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
                                          `username` VARCHAR(255),
    `email` VARCHAR(255),
    `message` TEXT
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `Sponsors` (
                                          `Sponsor_id` INT AUTO_INCREMENT PRIMARY KEY,
                                          `name` VARCHAR(255) DEFAULT NULL,
    `URL` VARCHAR(2083) DEFAULT NULL,
    `Sponsor_logo` VARCHAR(2083) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `SpecialThanks` (
                                               `SpecialThanks_id` INT AUTO_INCREMENT PRIMARY KEY,
                                               `name` VARCHAR(255) DEFAULT NULL,
    `URL` VARCHAR(2083) DEFAULT NULL,
    `SpecialThanks_logo` VARCHAR(2083) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `userlogin` (
                                           `user_id` INT NOT NULL,
                                           `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`user_id`),
    CONSTRAINT `user_id_userlogin` FOREIGN KEY (`user_id`) REFERENCES `User` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `Comment` (
                                         `id` INT AUTO_INCREMENT PRIMARY KEY,
                                         `image_id` INT DEFAULT NULL,
                                         `content` TEXT DEFAULT NULL,
                                         `create_time` DATETIME DEFAULT NULL,
                                         `UserID` INT DEFAULT NULL,
                                         KEY `fk_image_id` (`image_id`),
    CONSTRAINT `fk_image_id` FOREIGN KEY (`image_id`) REFERENCES `KidsImage` (`img_id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE IF NOT EXISTS `UserImageLikes` (
                                                `user_id` INT NOT NULL,
                                                `img_id` INT NOT NULL,
                                                `liked_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NULL,
    PRIMARY KEY (`user_id`, `img_id`),
    CONSTRAINT `userimagelikes_ibfk_1` FOREIGN KEY (`img_id`) REFERENCES `Soholight`.`KidsImage` (`img_id`),
    CONSTRAINT `userimagelikes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `Soholight`.`userlogin` (`user_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
