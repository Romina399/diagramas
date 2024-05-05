-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema INSTITUTO
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema INSTITUTO
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `INSTITUTO` DEFAULT CHARACTER SET utf8 ;
USE `INSTITUTO` ;

-- -----------------------------------------------------
-- Table `INSTITUTO`.`SOCIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `INSTITUTO`.`SOCIOS` (
  `IDSOCIOS` INT NOT NULL AUTO_INCREMENT,
  `NOMBRE` VARCHAR(45) NOT NULL,
  `APELLIDO` VARCHAR(45) NOT NULL,
  `CURSOS ELEGIDOS` VARCHAR(45) NULL,
  PRIMARY KEY (`IDSOCIOS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INSTITUTO`.`B-LOQUE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `INSTITUTO`.`B-LOQUE` (
  `IDBLOQUE` INT NOT NULL AUTO_INCREMENT,
  `BLOQUE 1 class0` VARCHAR(45) NOT NULL,
  `BLOQUE 2 class 1` VARCHAR(45) NOT NULL,
  `BLOQUE 3 class2` VARCHAR(45) NOT NULL,
  `BLOQUE 4 class3` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDBLOQUE`),
  CONSTRAINT `idBLOQUE CLASS INT`
    FOREIGN KEY (`IDBLOQUE`)
    REFERENCES `INSTITUTO`.`SOCIOS` (`IDSOCIOS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INSTITUTO`.`VARIEDAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `INSTITUTO`.`VARIEDAD` (
  `IDVARIEDAD` INT NOT NULL AUTO_INCREMENT,
  `MATEMATICA` VARCHAR(45) NOT NULL,
  `LITERATURA` VARCHAR(45) NOT NULL,
  `INGLES` VARCHAR(45) NOT NULL,
  `FRANCES` VARCHAR(45) NOT NULL,
  `ALEMAN` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDVARIEDAD`),
  CONSTRAINT `idBLOQUE CLASS`
    FOREIGN KEY (`IDVARIEDAD`)
    REFERENCES `INSTITUTO`.`B-LOQUE` (`IDBLOQUE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
