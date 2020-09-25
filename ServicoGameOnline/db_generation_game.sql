-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema db_generation_game_online_
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_generation_game_online_
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_generation_game_online_` DEFAULT CHARACTER SET utf8 ;
USE `db_generation_game_online_` ;

-- -----------------------------------------------------
-- Table `db_generation_game_online_`.`tb_classe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_generation_game_online_`.`tb_classe` (
  `id_classe` INT NOT NULL,
  `categoria` VARCHAR(45) NOT NULL,
  `funcao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_classe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_generation_game_online_`.`tb_personagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_generation_game_online_`.`tb_personagem` (
  `id_personagem` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `sexo` ENUM('M', 'F') NOT NULL,
  `poder` VARCHAR(45) NOT NULL,
  `nivel` INT NOT NULL,
  `tb_classe_id_classe` INT NOT NULL,
  PRIMARY KEY (`id_personagem`, `tb_classe_id_classe`),
  INDEX `fk_tb_personagem_tb_classe_idx` (`tb_classe_id_classe` ASC),
  CONSTRAINT `fk_tb_personagem_tb_classe`
    FOREIGN KEY (`tb_classe_id_classe`)
    REFERENCES `db_generation_game_online_`.`tb_classe` (`id_classe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
