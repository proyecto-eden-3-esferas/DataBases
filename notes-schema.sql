SET NAMES utf8mb4;
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
-- SET @old_autocommit=@@autocommit;

DROP   SCHEMA IF EXISTS notes;
CREATE SCHEMA           notes;
USE                     notes;

SET AUTOCOMMIT=0;

-- Table 'notes' is meant to hold notes.
-- When notes are quotations, they are referenced by rows in 'quotations'

CREATE TABLE terms (
  term        VARCHAR(44) NOT NULL,
  description VARCHAR(499),
  field       VARCHAR(255), -- an enumeration in 'pathology', 'mineral'...
  PRIMARY KEY  (term),
  FOREIGN KEY (field)  REFERENCES general.fields(field)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE notes (
  code   VARCHAR(19)  NOT NULL UNIQUE,
  note   VARCHAR(999) NOT NULL,
  field  VARCHAR(50)  NOT NULL,
  lang   VARCHAR(2)   NOT NULL,
  theory VARCHAR(50), -- suggested approach PRIMARY KEY (code)
  FOREIGN KEY (lang)  REFERENCES general.languages(code),
  FOREIGN KEY (field) REFERENCES general.fields(field)
  -- KEY idx_practices_practice (practice)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE quotations (
  code        VARCHAR(19)  NOT NULL UNIQUE,
  author      VARCHAR(999) NOT NULL,
  translation BOOLEAN      NOT NULL,
  lang        VARCHAR(2),
  FOREIGN KEY (lang)  REFERENCES general.languages(code),
  FOREIGN KEY (field) REFERENCES general.fields( field)
  -- KEY idx_practices_practice (practice)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- UNLOCK TABLES;
-- COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- SET autocommit=@old_autocommit;
