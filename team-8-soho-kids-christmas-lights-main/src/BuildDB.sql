DROP DATABASE IF EXISTS Soholight;
CREATE DATABASE IF NOT EXISTS Soholight;
USE Soholight;
-- Yearly Awards
CREATE TABLE IF NOT EXISTS `yearly_awards` (
                                               `year_id` INT AUTO_INCREMENT PRIMARY KEY,
                                               `year` VARCHAR(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- Yearly Awards insert
INSERT INTO yearly_awards (year) VALUES ('2021');
INSERT INTO yearly_awards (year) VALUES ('2022');
INSERT INTO yearly_awards (year) VALUES ('2023');
-- Award Category
CREATE TABLE IF NOT EXISTS `award_category` (
                                                `category_id` INT AUTO_INCREMENT PRIMARY KEY,
                                                `category_title` VARCHAR(255) NOT NULL,
                                                `year_id` INT,
                                                FOREIGN KEY (year_id) REFERENCES yearly_awards(year_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- Award Category insert
INSERT INTO award_category (category_title, year_id) VALUES ('Most Thoughtful Consideration of Materials and Impactful Design', 1);
INSERT INTO award_category (category_title, year_id) VALUES ('Most Powerful Message of Togetherness and Positivity', 1);

INSERT INTO award_category (category_title, year_id) VALUES ('Best celebration of colour and light', 2);
INSERT INTO award_category (category_title, year_id) VALUES ('Best representation of Soho', 2);
INSERT INTO award_category (category_title, year_id) VALUES ('Best response to the design brief', 2);

INSERT INTO award_category (category_title, year_id) VALUES ('Merry & Bright Award', 3);
INSERT INTO award_category (category_title, year_id) VALUES ('Creative Spirit Award', 3);
INSERT INTO award_category (category_title, year_id) VALUES ('Best dressed Christmas display Award', 3);
-- User
CREATE TABLE IF NOT EXISTS `User` (
                                      `User_id` INT AUTO_INCREMENT PRIMARY KEY,
                                      `first_name` VARCHAR(255) NOT NULL,
                                      `last_name` VARCHAR(255) NOT NULL,
                                      `email` VARCHAR(255) NOT NULL,
                                      `birthday_date` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- user insert

INSERT INTO `User` (`first_name`, `last_name`, `email`, `birthday_date`) VALUES ('Enoch', 'Ribin', 'enoch.ribin@gmail.com', '1998-05-15');
INSERT INTO `User` (`first_name`, `last_name`, `email`, `birthday_date`) VALUES ('Yifan', 'Wu', 'yifan.wu@gmail.com', '1999-10-10');
INSERT INTO `User` (`first_name`, `last_name`, `email`, `birthday_date`) VALUES ('Chenxu', 'Zhou', 'chenxu.zhou@gmail.com', '1998-03-10');
INSERT INTO `User` (`first_name`, `last_name`, `email`, `birthday_date`) VALUES ('Shijie', 'Yin', 'shijie.yin@gmail.com', '1997-11-28');


-- Award
CREATE TABLE IF NOT EXISTS `award` (
                                       `id` INT AUTO_INCREMENT PRIMARY KEY,
                                       `winnerName` VARCHAR(255),
                                       `winnerBackground` VARCHAR(255),
                                       `winnerSpeech` TEXT,
                                       `winnerImage` VARCHAR(255),
                                       `category_id` INT,
                                       FOREIGN KEY (category_id) REFERENCES award_category(category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- award insert
# 2021
INSERT INTO award (winnerName,winnerBackground,winnerSpeech,winnerImage, category_id)
VALUES ('Celine','Year 4','When I was doing the workshop I felt excited but also nervous in case I didnot win. I would be so proud of myself if I won! This project is a good opportunity for us to express our creativity. I designed this to include our school logo so it can welcome people to our school','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2021/B21-069-L2%20STAR.jpg', 2);
INSERT INTO award (winnerName,winnerBackground,winnerSpeech,winnerImage, category_id)
VALUES ('Esme','Year 3','I felt very confident during the workshop that l could accomplish it. The competition inspires children to get creative and I would be so excited if I won. I drew a star as I wanted to show everyone that they can be a light for others','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2021/Page%207%20-%20B21-035%20STAR.jpg', 1);
INSERT INTO award (winnerName,winnerBackground,winnerSpeech,winnerImage, category_id)
VALUES ('Kayley','Year 6','no quote-has left the school','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2021/Page%203%20-%20B21-031%20PARCEL.jpg', 1);
INSERT INTO award (winnerName,winnerBackground,winnerSpeech,winnerImage, category_id)
VALUES ('Sereen','Year 1','Snowmen are cold like winter. I like making snowmen.','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2021/Page%2016%20-%20B21-044%20SNOWMAN.jpg', 1);
INSERT INTO award (winnerName,winnerBackground,winnerSpeech,winnerImage, category_id)
VALUES ('Tahira','Year 5','I chose this design as it represents what Christmas means to me- feeling cosy and a time for family to spend time together. The little cottage represents that and it''s held in a Christmas decoration','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2021/Page%2012%20-%20B21-040%20BAUBLE.jpg', 1);

# 2022
INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Tom', 'Year 3', 'I saw some hanging baskets on our inspriation walk in the summer time. I wanted to adapt this to be more Christmassy so decided to make it a holly hanging basket! I''d feel very happy and relieved to be a winner!', 'https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2022/©Soho%20KIds%20Xmas%20Lights%2022_Tom%20Y3_hanging%20basket-RIBA%20award.jpg', 3);

INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Ivo', 'Reception', 'I drew a bike because I like bicycles. I added a Christmas hat and snowflakes. I got a bike for my birthday, it would make a good gift at Christmas. I would love it to be a Christmas light!', 'https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2022/©Soho%20KIds%20Xmas%20Lights%2022_Ivo%20Recption_bicycle-RIBA%20award.jpg', 3);

INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Hikali', 'Year 5', 'When we were taking pictures I saw a croissant shop and this inspired my design. I made it colourful like the rainbow on our school logo which also reminds me of Soho. I added the holly to give it a touch of Christmas!', 'https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2022/©Soho%20KIds%20Xmas%20Lights%2022_Hikali%20Y5_croissant-RIBA%20award.jpg', 4);

INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Coco', 'Year 6','no quote-has left the school', 'https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2022/©Soho%20KIds%20Xmas%20Lights%2022_Coco%20Y6%20_christmas%20cocktail-RIBA%20award.jpg', 4);

INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Daniel', 'Year 4', 'When we were going outside and taking pictures, ... I noticed that there were some local places with logos that I liked. I combined a Chinese lucky cat with a pub logo to create my unique design. | added a Santa hat to make it more Christmassy. I would be very surprised and excited to win and have my work displayed on the street.','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2022/©Soho%20KIds%20Xmas%20Lights%2022_Daniel%20Y4_cat-RIBA%20award.jpg', 5);

INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Maria', 'Year 5', 'I wanted to pick something of inspiration from inside our school. Crawford is our school dog who was in our class last year and helps for children to feel calm. It would be great to embrace him and have him brighten up the streets of Soho. | would feel very excited to have one of my designs up in public for everyone to see.','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2022/©Soho%20KIds%20Xmas%20Lights%2022_Maria%20Rosario%20Y5_dog-RIBA%20award.jpg', 5);

# 2023
INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Vesper', 'Year 1', 'I would feel really amazed to see my light in the street. I would love to share it with my family and friends. My design is a Santa reindeer with a Christmas hat and sparkles all over her body.','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2023/4GBBLA62150423-L4%20-%20Year%201_Vespev_MOD.jpg', 6);

INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Sofia', 'Year 3', 'I would be happy to be a winner because I haven’t won a competition before. It would help me feel more confident as an artist. My design is a mixture of different Christmas objects- it includes a bell, Reindeer antlers, a Santa hat and angel wings.','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2023/4GBBLA62150423-L8%20-%20Year%203_Sofia_MOD.jpg', 7);

INSERT INTO award (winnerName, winnerBackground, winnerSpeech, winnerImage, category_id)
VALUES ('Lilli', 'Year 4', 'I wanted to include food on my design as I had seen some images at the Fashion and Textile museum which inspired me. I chose a pineapple because they are one of my favourite fruits. I added a Santa hat to make it more festive. I would be super happy if my light would be up in the streets of Soho where everyone can see it!','https://cdn.statically.io/gh/vanbot1999/sohoAwardImage/master/.idea/2023/4GBBLA62150423-L9%20-%20Year%204_Lilli_MOD.jpg', 8);

-- KidsImage
CREATE TABLE IF NOT EXISTS `KidsImage` (
                                           `img_id` INT AUTO_INCREMENT PRIMARY KEY,
                                           `name` VARCHAR(255) DEFAULT NULL,
                                           `age` INT DEFAULT NULL,
                                           `description` TEXT DEFAULT NULL,
                                           `URL` VARCHAR(2083) DEFAULT NULL,
                                           `SourceURL` VARCHAR(2083) DEFAULT NULL,
                                           `issueDate` TEXT DEFAULT NULL,
                                           `likes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- kindsImage insert
INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (2131, 'Sofia', 7, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(1).70lk7katga00.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.36scqvy5epi0.webp', '2023');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (3323, 'Milana', 9, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(2).2vx5mxqzc480.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.36scqvy5epi0.webp', '2023');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (5322, 'Yujin', 8, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.1uq1ns9f6usg.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(2).47x3neyibgu0.webp', '2023');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (6345, 'Attie', 6, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(4).68fhavgz1to0.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(3).5hisi3k1ca00.webp', '2022');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (7454, 'Sheena', 11, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.2t22by5eq4k0.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(4).c4sws88zjqo.webp', '2021');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (11232, 'Lvo', 5, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(8).3y5l217jae00.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(5).4yj5gkvkatc.webp', '2022');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (32401, 'Emberley', 6, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(7).62hwu712dig0.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(6).1iy5pjga1kv4.webp', '2023');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (34219, 'Elowen', 8, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(5).701o6h4ayko0.webp', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(7).2rf6lk8qhjc0.webp', '2022');

INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES (34533, 'Aryana', 8, NULL, 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(11).6rl0v5cabuc0.png', 'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(8).6w46fuevhgw0.webp', '2021');
INSERT INTO KidsImage (img_id, name, age, description, URL, SourceURL, issueDate)
VALUES(47232,'Safa',7,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(9).6gs6ttsbuik0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(9).2tb4g0hduhi0.webp','2022');


-- PhoneNumber
CREATE TABLE IF NOT EXISTS `PhoneNumber` (
                                             `User_id` INT NOT NULL,
                                             `CountryCode` VARCHAR(255) DEFAULT NULL,
                                             `PhoneNumber` VARCHAR(255) DEFAULT NULL,
                                             PRIMARY KEY (`User_id`),
                                             CONSTRAINT `user_id_phonenumber` FOREIGN KEY (`User_id`) REFERENCES `User` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- PhoneNumber insert

INSERT INTO `PhoneNumber` (User_id, CountryCode, PhoneNumber) VALUES (1, '+44', '9876543210');
INSERT INTO `PhoneNumber` (User_id, CountryCode, PhoneNumber) VALUES (2, '+44', '8765343219');
INSERT INTO `PhoneNumber` (User_id, CountryCode, PhoneNumber) VALUES (3, '+44', '7654321987');
INSERT INTO `PhoneNumber` (User_id, CountryCode, PhoneNumber) VALUES (4, '+44', '9696958348');


-- feedback
CREATE TABLE IF NOT EXISTS `feedback` (
                                          `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
                                          `username` VARCHAR(255),
                                          `email` VARCHAR(255),
                                          `message` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- feedback insert
INSERT INTO feedback (username, email, message) VALUES ('kid A', 'A@gmail.com', 'Great experience!');
INSERT INTO feedback (username, email, message) VALUES ('user B', 'B@gmail.com', 'Loved the lights, thanks!');
INSERT INTO feedback (username, email, message) VALUES ('parent C', 'C@gmail.com', 'Very well organized.');
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

-- Insert data into the 'sponsors' table here, if needed

INSERT INTO `Sponsors` (name, URL, Sponsor_logo) VALUES ('fidelity energy', 'https://fidelity-energy.co.uk/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/5ac340da-ffed-465f-b384-db82c33e0023.1yqzgrgf3wio.webp');

INSERT INTO `Sponsors` (name, URL, Sponsor_logo) VALUES ('shaftesbury capital', 'https://www.shaftesburycapital.com/en/index.html', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/SHAFTESBURY-CAPITAL-LOGO-RGB.1qr9u8rotakg.webp');

INSERT INTO `Sponsors` (name, URL, Sponsor_logo) VALUES ('Hines', 'https://www.hines.com/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/Hines-187-Logo.2trdbkeeczm0.png');

INSERT INTO `Sponsors` (name, URL, Sponsor_logo) VALUES ('CleaningSolutionsLtd', '', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/CleaningSolutionsLtd-logo.f8d26r83ryo.webp');

INSERT INTO `Sponsors` (name, URL, Sponsor_logo) VALUES ('archer street', 'https://archerstreet.co.uk/venues/soho/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/ArcherStreetLinear_SOHO.5dg9zeb33os0.webp');

INSERT INTO `Sponsors` (name, URL, Sponsor_logo) VALUES ('city of westminster', 'https://www.westminster.gov.uk/council-tax', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/wcc_logo_cmyk.2pl7nb47tza0.webp');


INSERT INTO `SpecialThanks` (name, URL, SpecialThanks_logo) VALUES ('TheLIA', 'https://www.thelia.org.uk/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/TheLIA_LOGO_Master.2i8qklgmgr20.webp');

INSERT INTO `SpecialThanks` (name, URL, SpecialThanks_logo) VALUES ('Tunda valiszka', 'https://www.valiszka.com/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/TV-Logo_TVP.4xn5lcvi65k0.png');

INSERT INTO `SpecialThanks` (name, URL, SpecialThanks_logo) VALUES ('fashion-textile-museum', 'https://fashiontextilemuseum.org/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/fashion-textile-museum-logo-[PNG].7dmu9ql85mw0.webp');

INSERT INTO `SpecialThanks` (name, URL, SpecialThanks_logo) VALUES ('cardiff university national software academy', 'https://www.cardiff.ac.uk/software-academy', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/NatSoftwareAcademyWhite.png-(1).53mzl1uwoos0.webp');

INSERT INTO `SpecialThanks` (name, URL, SpecialThanks_logo) VALUES ('Antonio Capelao Architecture', 'http://antoniocapelao-portfolio.co.uk/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/Antonio-Capelao-Architecture_black.3ix1id29yrg0.webp');

INSERT INTO `SpecialThanks` (name, URL, SpecialThanks_logo) VALUES ('Soho Radio', 'https://sohoradiolondon.com/', 'https://cdn.jsdelivr.net/gh/tantalulu/soho-pic@pic/xxx/White-Soho-Radio-Logo.60kw0210i2c0.webp');

-- userlogin
CREATE TABLE IF NOT EXISTS `userlogin` (
                                           `user_id` INT NOT NULL,
                                           `username` VARCHAR(255) NOT NULL,
                                           `password` VARCHAR(255) NOT NULL,
                                           PRIMARY KEY (`user_id`),
                                           CONSTRAINT `user_id_userlogin` FOREIGN KEY (`user_id`) REFERENCES `User` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- userlogin insert

INSERT INTO `userlogin` (`user_id`, `username`, `password`) VALUES (1, 'enoch', 'password123');
INSERT INTO `userlogin` (`user_id`, `username`, `password`) VALUES (2, 'yifan', 'password123');
INSERT INTO `userlogin` (`user_id`, `username`, `password`) VALUES (3, 'chenxu', 'password123');
INSERT INTO `userlogin` (`user_id`, `username`, `password`) VALUES (4, 'shijie', 'password123');



-- comment
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

