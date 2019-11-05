-- MySQL Script generated by MySQL Workbench
-- Mon Nov  4 23:35:01 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema marketplace
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `marketplace` ;

-- -----------------------------------------------------
-- Schema marketplace
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `marketplace` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
SHOW WARNINGS;
USE `marketplace` ;

-- -----------------------------------------------------
-- Table `marketplace`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `marketplace`.`user` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `marketplace`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role` ENUM("ADMIN", "USER", "VISITOR") NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) );

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `marketplace`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `marketplace`.`product` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `marketplace`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `location` VARCHAR(100) NOT NULL,
  `post_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` ENUM('VALID', 'BLOCKED', 'SOLD') NOT NULL,
  `description` LONGTEXT NOT NULL,
  `category` VARCHAR(30) NOT NULL,
  `user_id` INT NOT NULL,
  `latitude` VARCHAR(12) NULL,
  `longtitude` VARCHAR(12) NULL,
  `county` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_user1_idx` (`user_id` ASC) ,
  CONSTRAINT `fk_product_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `marketplace`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `marketplace`.`comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `marketplace`.`comment` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `marketplace`.`comment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `text` TEXT(1000) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `author` VARCHAR(45) NOT NULL,
  `user_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `reply_to_comment_id` INT NULL,
  INDEX `fk_comment_user_idx` (`user_id` ASC) ,
  PRIMARY KEY (`id`),
  INDEX `fk_comment_product1_idx` (`product_id` ASC) ,
  INDEX `fk_comment_comment1_idx` (`reply_to_comment_id` ASC) ,
  CONSTRAINT `fk_comment_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `marketplace`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `marketplace`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_comment1`
    FOREIGN KEY (`reply_to_comment_id`)
    REFERENCES `marketplace`.`comment` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `marketplace`.`product_image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `marketplace`.`product_image` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `marketplace`.`product_image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` LONGTEXT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `product_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_picture_product1_idx` (`product_id` ASC) ,
  CONSTRAINT `fk_picture_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `marketplace`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `marketplace`.`user_favorite_product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `marketplace`.`user_favorite_product` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `marketplace`.`user_favorite_product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  INDEX `fk_user_has_product_product1_idx` (`product_id` ASC) ,
  INDEX `fk_user_has_product_user1_idx` (`user_id` ASC) ,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_user_has_product_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `marketplace`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_product_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `marketplace`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

SET GLOBAL max_allowed_packet = 104857600;