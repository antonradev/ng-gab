CREATE TABLE IF NOT EXISTS `app_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) NOT NULL,
  `app_version` varchar(8) NOT NULL,
  `app_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='General Default Application Information' AUTO_INCREMENT=2 ;


INSERT INTO `app_info` (`id`, `app_name`, `app_version`, `app_desc`) VALUES
(1, 'NG Gab', '0.0.1', 'Personal Diary in Posts Feed format. Created with PHP CodeIgniter Framework, CodeIgniter Rest Server, AngularJS');


CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_content` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `moods` (
  `mood_id` int(11) NOT NULL AUTO_INCREMENT,
  `mood_name` varchar(64) NOT NULL,
  `mood_content` varchar(255) NOT NULL,
  PRIMARY KEY (`mood_id`),
  UNIQUE KEY `mood_name` (`mood_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


INSERT INTO `moods` (`mood_id`, `mood_name`, `mood_content`) VALUES
(1, 'Happy', 'So happy about it yeah!!');


CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_content` text NOT NULL,
  `post_mood` int(11) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


INSERT INTO `posts` (`post_id`, `user_id`, `post_date`, `post_content`, `post_mood`) VALUES
(1, 1, '2014-10-11 15:21:16', 'Today I was very happy! I met Robocop!', 1),
(2, 1, '2014-10-11 15:29:09', 'wow i met robocop again :)))', 1);


CREATE TABLE IF NOT EXISTS `posts_moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `mood_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `posts_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


INSERT INTO `posts_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1);


CREATE TABLE IF NOT EXISTS `tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(64) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(1, 'Happy Moments'),
(2, 'Superheros');


CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_pseudonym` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_pseudonym`) VALUES
(1, 'anton.radev@gmail.com', '482c811da5d5b4bc6d497ffa98491e38', 'Anton');