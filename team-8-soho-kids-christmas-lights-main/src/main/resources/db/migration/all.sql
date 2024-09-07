CREATE DATABASE IF NOT EXISTS soholight;
USE soholight;
DROP TABLE IF EXISTS yearly_awards;
DROP TABLE IF EXISTS award;
DROP TABLE IF EXISTS award_category;
CREATE TABLE yearly_awards (
                               year_id INT AUTO_INCREMENT PRIMARY KEY,
                               year VARCHAR(4) NOT NULL
);
CREATE TABLE award_category (
                                category_id INT AUTO_INCREMENT PRIMARY KEY,
                                category_title VARCHAR(255) NOT NULL,
                                year_id INT,
                                FOREIGN KEY (year_id) REFERENCES yearly_awards(year_id)
);
DROP TABLE IF EXISTS award;
CREATE TABLE award (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       winnerName VARCHAR(255),
                       winnerBackground VARCHAR(255),
                       winnerSpeech TEXT,
                       winnerImage VARCHAR(255),
                       category_id INT,
                       FOREIGN KEY (category_id) REFERENCES award_category(category_id)
);
DROP TABLE IF EXISTS kidsimage;

CREATE TABLE `kidsimage` (
                             `img_id` int(11) NOT NULL,
                             `name` varchar(255) DEFAULT NULL,
                             `age` int(11) DEFAULT NULL,
                             `description` text DEFAULT NULL,
                             `URL` varchar(2083) DEFAULT NULL,
                             `SourceURL` varchar(2083) DEFAULT NULL,
                             `issueDate` text DEFAULT NULL,
                             `likes` int(11) DEFAULT 0,
                             PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TABLE IF EXISTS Comment;
CREATE TABLE `Comment` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `image_id` int(11) DEFAULT NULL,
                           `content` text DEFAULT NULL,
                           `create_time` datetime DEFAULT NULL,
                           `UserID` int(11) DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `fk_image_id` (`image_id`),
                           CONSTRAINT `fk_image_id` FOREIGN KEY (`image_id`) REFERENCES `kidsimage` (`img_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `user_id`       INT AUTO_INCREMENT PRIMARY KEY,
    `first_name`    VARCHAR(255) NOT NULL,
    `last_name`     VARCHAR(255) NOT NULL,
    `email`         VARCHAR(255) NOT NULL,
    `birthday_date` DATE         NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE `userlogin`
(
    `user_id`  INT(11),
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    CONSTRAINT `user_id_userlogin` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

# DROP TABLE IF EXISTS UserImageLikes;
# create table UserImageLikes
# (
#     user_id  int                                   not null,
#     img_id   int                                   not null,
#     liked_at timestamp default current_timestamp() null,
#     primary key (user_id, img_id),
#     constraint userimagelikes_ibfk_1
#         foreign key (img_id) references soholight.kidsImage (img_id),
#     constraint userimagelikes_ibfk_2
#         foreign key (user_id) references soholight.userLogin (user_id)
# );
drop table if exists feedback;
CREATE TABLE feedback (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          username VARCHAR(255),
                          email VARCHAR(255),
                          message TEXT
);
DROP TABLE IF EXISTS `PhoneNumber`;
CREATE TABLE `PhoneNumber`
(
    `user_id`     int(11) NOT NULL,
    `CountryCode` varchar(255) DEFAULT NULL,
    `PhoneNumber`   varchar(255) DEFAULT NULL,
    PRIMARY KEY (`User_id`),
    CONSTRAINT `user_id_phonenumber` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;
DROP TABLE IF EXISTS `Sponsors`;

CREATE TABLE `Sponsors` (
                            `Sponsor_id` int(11) NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) DEFAULT NULL,
                            `URL` varchar(2083) DEFAULT NULL,
                            `Sponsor_logo` varchar(2083) DEFAULT NULL,
                            PRIMARY KEY (`Sponsor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `SpecialThanks`;
CREATE TABLE `SpecialThanks` (
                                 `SpecialThanks_id` int(11) NOT NULL AUTO_INCREMENT,
                                 `name` varchar(255) DEFAULT NULL,
                                 `URL` varchar(2083) DEFAULT NULL,
                                 `SpecialThanks_logo` varchar(2083) DEFAULT NULL,
                                 PRIMARY KEY (`SpecialThanks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;