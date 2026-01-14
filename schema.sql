CREATE DATABASE IF NOT EXISTS twitter;
USE twitter;

CREATE TABLE IF NOT EXISTS FOLLOWS (
  follower_id INT NOT NULL,
  followee_id INT NOT NULL,
  INDEX idx_follower (follower_id),
  INDEX idx_followee (followee_id),
  INDEX idx_follower_followee (follower_id, followee_id)
);

CREATE TABLE IF NOT EXISTS TWEET (
  tweet_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  tweet_ts DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  tweet_text VARCHAR(140) NOT NULL,
  INDEX idx_user_ts (user_id, tweet_ts)
);

