SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS health;
CREATE SCHEMA health;
USE health;


CREATE TABLE health_practices (  -- includes theories AND approaches
  practice_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  practice VARCHAR(108) NOT NULL,
  description VARCHAR(255),
  field  VARCHAR(50) NOT NULL,
  theory VARCHAR(50), -- suggested approach
  PRIMARY KEY (practice_id)
  -- FOREIGN KEY (field)  REFERENCES general.fields(field),
  -- KEY idx_practices_practice (practice)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE human_organs (
  organ_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  organ VARCHAR(50) NOT NULL,
  func  VARCHAR(50), -- NOT NULL (function should migrate to its own table)
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (organ_id),
  KEY idx_organ (organ)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE human_body_systems (
  system_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  sys VARCHAR(50) NOT NULL,
  func  VARCHAR(50), -- NOT NULL (function should migrate to its own table)
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (system_id),
  KEY idx_system (sys)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE organs_in_systems (
  relationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  organ VARCHAR(50) NOT NULL,
  sys   VARCHAR(50) NOT NULL,
  discussion VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (relationship_id),
  -- KEY idx_sys (sys),
  FOREIGN KEY (organ)  REFERENCES human_organs(organ),
  FOREIGN KEY (sys)  REFERENCES human_body_systems(sys)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE diseases (
  disease_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  disease VARCHAR(50) NOT NULL,
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (disease_id),
  KEY idx_disease (disease)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE affects_organ (
  relationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  disease VARCHAR(50) NOT NULL,
  organ VARCHAR(50) NOT NULL,
  mechanism VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (relationship_id),
  FOREIGN KEY (disease)  REFERENCES diseases(disease),
  FOREIGN KEY (organ)  REFERENCES human_organs(organ)
  -- PRIMARY KEY  (disease_id, organ),
  -- KEY idx_disease (disease)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE affects_system (
  relationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  disease VARCHAR(50) NOT NULL,
  sys VARCHAR(50) NOT NULL,
  mechanism VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (relationship_id),
  FOREIGN KEY (disease)  REFERENCES diseases(disease),
  FOREIGN KEY (sys)  REFERENCES human_body_systems(sys)
  -- PRIMARY KEY  (disease_id, system),
  -- KEY idx_disease (disease)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


UNLOCK TABLES;
COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
