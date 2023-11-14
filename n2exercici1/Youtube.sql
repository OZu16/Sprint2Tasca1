CREATE TABLE `user` (
  `user_id` int PRIMARY KEY NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date_of_birth` timestamp NOT NULL,
  `gender` ENUM("male", "female") DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `cp` int  DEFAULT NULL
);

CREATE TABLE `video` (
  `video_id` int PRIMARY KEY NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `size` float NOT NULL,
  `video_file_name` varchar(255) NOT NULL,
  `video_duration` timestamp NOT NULL,
  `thumbnail` binary DEFAULT NULL,
  `views` int NOT NULL,
  `likes` int NOT NULL,
  `dislikes` int NOT NULL,
  `status` ENUM("private", "public", "hidden") NOT NULL,
  `publication_date` timestamp NOT NULL,
  `user` int NOT NULL
);

CREATE TABLE `tag` (
  `tag_id` int PRIMARY KEY NOT NULL,
  `name` varchar(255) NOT NULL,
  `video` int NOT NULL
);

CREATE TABLE `channel` (
  `channel_id` int PRIMARY KEY NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `creation_date` timestamp NOT NULL,
  `user` int NOT NULL
);

CREATE TABLE `suscription` (
  `suscription_id` int PRIMARY KEY NOT NULL,
  `suscription_date` timestamp NOT NULL,
  `user` int NOT NULL,
  `chanel` int NOT NULL
);

CREATE TABLE `like_dislike_video` (
  `type` ENUM("like", "dislike") NOT NULL,
  `like_dislike_date` timestamp NOT NULL,
  `user` int NOT NULL,
  `video` int NOT NULL,
  PRIMARY KEY (`user`, `video`)
);

CREATE TABLE `playlist` (
  `playlist_id` int PRIMARY KEY NOT NULL,
  `name` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL,
  `status` ENUM("private", "public") NOT NULL,
  `user` int NOT NULL
);

CREATE TABLE `video_playlist` (
  `video` int NOT NULL,
  `playlist` int NOT NULL,
  PRIMARY KEY (`video`, `playlist`)
);

CREATE TABLE `comment` (
  `comment_id` int PRIMARY KEY NOT NULL,
  `text` varchar(255) NOT NULL,
  `comment_date` timestamp NOT NULL,
  `user` int NOT NULL,
  `video` int NOT NULL
);

CREATE TABLE `like_dislike_comment` (
  `tipe` ENUM("like", "dislike") NOT NULL,
  `like_dislike_date` timestamp NOT NULL,
  `user` int NOT NULL,
  `comment` int NOT NULL,
  PRIMARY KEY (`user`, `comment`)
);

ALTER TABLE `video` ADD FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

ALTER TABLE `tag` ADD FOREIGN KEY (`video`) REFERENCES `video` (`video_id`);

ALTER TABLE `channel` ADD FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

ALTER TABLE `suscription` ADD FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

ALTER TABLE `suscription` ADD FOREIGN KEY (`chanel`) REFERENCES `channel` (`channel_id`);

ALTER TABLE `like_dislike_video` ADD FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

ALTER TABLE `like_dislike_video` ADD FOREIGN KEY (`video`) REFERENCES `video` (`video_id`);

ALTER TABLE `playlist` ADD FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

ALTER TABLE `video_playlist` ADD FOREIGN KEY (`video`) REFERENCES `video` (`video_id`);

ALTER TABLE `video_playlist` ADD FOREIGN KEY (`playlist`) REFERENCES `playlist` (`playlist_id`);

ALTER TABLE `comment` ADD FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

ALTER TABLE `comment` ADD FOREIGN KEY (`video`) REFERENCES `video` (`video_id`);

ALTER TABLE `like_dislike_comment` ADD FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

ALTER TABLE `like_dislike_comment` ADD FOREIGN KEY (`comment`) REFERENCES `comment` (`comment_id`);