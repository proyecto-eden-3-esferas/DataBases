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






-- Pathology, diseases, conditions syntomes, treatment etc.

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
  FOREIGN KEY (organ)  REFERENCES biology.animal_organs(organ)
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
  FOREIGN KEY (sys)  REFERENCES biology.animal_body_systems(sys)
  -- PRIMARY KEY  (disease_id, system),
  -- KEY idx_disease (disease)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- So far we have defined no tables relying on other databases
-- (such as 'biology')


UNLOCK TABLES;
COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
