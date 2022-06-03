DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plan(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    name_plan VARCHAR(50) NOT NULL,
    value_plan DECIMAL(3,2) NOT NULL
) engine = InnoDB;
CREATE TABLE SpotifyClone.user(
    users_id INT PRIMARY KEY AUTO_INCREMENT,
    name_user VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    signature_date DATE,
    plan_id INT,
    FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.artist(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    name_artist VARCHAR(60) NOT NULL
) engine = InnoDB;
CREATE TABLE SpotifyClone.album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    name_album VARCHAR(60) NOT NULL,
    artist_id INT, 
    release_year YEAR(4),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.musics(
    music_id INT PRIMARY KEY AUTO_INCREMENT,
    name_music VARCHAR(60) NOT NULL,
    album_id INT,
    duration_s INT,
    FOREIGN KEY (album_id) REFERENCES album(album_id) 
) engine = InnoDB;
CREATE TABLE SpotifyClone.play_historic(
    users_id INT NOT NULL,
    music_id INT NOT NULL,
    date_reproduced DATETIME NOT NULL,
    CONSTRAINT PRIMARY KEY (users_id, music_id),
    FOREIGN KEY (users_id) REFERENCES user(users_id),
    FOREIGN KEY (music_id) REFERENCES musics(music_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.follow_artist(
    users_id INT,
    artist_id INT,
    CONSTRAINT PRIMARY KEY (users_id, artist_id),
    FOREIGN KEY (users_id) REFERENCES user(users_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plan (plan_id, name_plan, value_plan)
VALUES
    (1, 'gratuito', '0' ),
    (2, 'pessoal', '6.99' ),
    (3, 'familiar', '7.99' ),
    (4, 'universitário', '5.99' );

INSERT INTO SpotifyClone.user (users_id, name_user, age, signature_date, plan_id)
VALUES
    (1, 'Thati', 23,'2019-10-20', 1),
    (2,'Cintia', 35, '2017-12-30', 3),
    (3,'Bill',20,'2019-06-05', 4),
    (4, 'Roger',45,'2020-05-13', 2 ),
    (5, 'Norman',58, '2017-02-17', 2),
    (6, 'Patrick',33, '2017-01-06', 3),
    (7, 'Vivian',26, '2018-01-05', 4),
    (8, 'Carol',19,'2018-02-14' , 4),
    (9, 'Angelina', 42,'2018-04-29' ,3 ),
    (10, 'Paul', 46, '2017-01-17', 3);

INSERT INTO SpotifyClone.artist (artist_id, name_artist)
VALUES
    (1, 'Walter Phoenix'),
    (2, 'Peter Strong'),
    (3, 'Lance Day'),
    (4, 'Freedie Shannon'),
    (5, 'Tyler Isle'),
    (6, 'Fog');

INSERT INTO SpotifyClone.album (album_id, name_album, artist_id, release_year)
VALUES
    (1, 'Envious', 1, '1990'),
    (2,'Exuberant', 1, '1993'),
    (3, 'Hallowed Steam', 2, '1995'),
    (4, 'Incandescent', 3, '1998'),
    (5, 'Temporary Culture', 4, '2001'),
    (6, 'Library of liberty', 4, '2003'),
    (7,'Chained Down', 5, '2007'),
    (8, 'Cabinet of fools', 5, '2012'),
    (9,'No guarantees'. 5, '2015'),
    (10, 'Apparatus', 6, '2015');


INSERT INTO SpotifyClone.musics (music_id, name_music, album_id, duration_s)
VALUES
    (1, 'Soul For Us', 1, 200),
    (2, 'Reflections Of Magic', 1, 163),
    (3, 'Dance With Her Own', 1, 116),
    (4, 'Troubles Of My Inner Fire', 2, 203),
    (5, 'Time Fireworks', 2, 152),
    (6, 'Magic Circus', 3, 105),
    (7,'Honey, So Do I', 3, 207),
    (8, "Sweetie, Let's Go Wild", 3, 139),
    (9, 'She Knows', 3, 244),
    (10, 'Fantasy For Me', 4, 100),
    (11,  'Celebration Of More', 4, 146),
    (12, 'Rock His Everything', 4, 223),
    (13, 'Home Forever', 4, 231),
    (14, 'Diamond Power', 4, 241),
    (15, "Let's Be Silly", 4, 132),
    (16, 'Thang Of Thunder', 5 , 240),
    (17, 'Words Of Her Life', 5, 185), 
    (18, 'Without My Streets', 5, 176),
    (19, 'Need Of The Evening', 6, 190),
    (20, 'History Of My Roses', 6, 222), 
    (21, 'Without My Love', 6, 111), 
    (22, 'Walking And Game', 6, 123), 
    (23, 'Young And Father', 6, 197),
    (24, "Finding My Traditions", 7, 179),
    (25, "Walking And Man", 7, 229),
    (26, "Hard And Time", 7, 135),
    (27, "Honey, I'm A Lone Wolf", 7, 150),
    (28, "She Thinks I Won't Stay Tonight", 8, 166), 
    (29, "He Heard You're Bad For Me", 8, 154), 
    (30, "He Hopes We Can't Stay", 8, 210), 
    (31, "I Know I Know", 8, 117),
    (32, "He's Walking Away", 9, 159),
    (33, "He's Trouble", 9, 138),
    (34, "I Heard I Want To Bo Alone", 9, 120), 
    (35, "I Ride Alone", 9, 151),
    (36, "Honey", 10, 79), 
    (37, "You Cheated On Me", 10, 95), 
    (38, "Wouldn't It Be Nice", 10, 213), 
    (39, "Baby", 10, 136),  
    (40, "You Make Me Feel So..", 10, 83);


INSERT INTO SpotifyClone.play_historic ( users_id, music_id, date_reproduced)
VALUES
    (1, 36, '2020-02-28 10:45:55'),
    (1, 25, '2020-05-02 05:30:35'),
    (1, 23, '2020-03-06 11:22:33'),
    (1,14, '2020-08-05 08:05:17'),
    (1, 1, '2020-09-14 16:32:22'),
    (2, 34, '2020-01-02 07:40:33'),
    (2, 24, '2020-05-16 06:16:22'),
    (2, 21, '2020-10-09 12:27:48'),
    (2, 39, '2020-09-21 13:14:46'),
    (3, 6, '2020-11-13 16:55:13'),
    (3, 3, '2020-12-05 18:38:30'),
    (3, 26, '2020-07-30 10:00:00'),
    (4, 2, '2021-08-15 17:10:10'),
    (4, 35, "2021-07-10 15:20:30"),
    (4, 27,"2021-01-09 01:44:33"),
    (5, 7, "2020-07-03 19:33:28"),
    (5, 12, "2017-02-24 21:14:22"),
    (5, 14, "2020-08-06 15:23:43"),
    (5, 1, "2020-11-10 13:52:27"),
    (6, 38, "2019-02-07 20:33:48"),
    (6, 29, "2017-01-24 00:31:17"),
    (6, 30, "2017-10-12 12:35:20"),
    (6, 22, "2018-05-29 14:56:41"),
    (7, 5, "2018-05-09 22:30:49"),
    (7, 4, "2020-07-27 12:52:58"),
    (7, 11, "2018-01-16 18:40:43"),
    (8, 39, " 2018-03-21 16:56:40"),
    (8, 40, "2020-10-18 13:38:05"),
    (8, 32, "2019-05-25 08:14:03"),
    (8, 33, "2021-08-15 21:37:09"),
    (9, 16, "2021-05-24 17:23:45"),
    (9, 17, "2018-12-07 22:48:52"),
    (9, 8, "2021-03-14 06:14:26"),
    (9, 9, "2020-04-01 03:36:00"),
    (10, 20, "2017-02-06 08:21:34"),
    (10, 21, "2017-12-04 05:33:43"),
    (10, 12, "2017-07-27 05:24:49"),
    (10, 13, "2017-12-25 01:03:57");


INSERT INTO SpotifyClone.follow_artist (users_id, artist_id)
VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 3),
    (6, 1),
    (7, 2),
    (7, 5),
    (8, 1),
    (8, 5),
    (9, 6),
    (9, 4),
    (9, 3),
    (10, 2),
    (10, 6);
