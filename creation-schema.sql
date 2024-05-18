SET NAMES utf8mb4;
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
-- SET @old_autocommit=@@autocommit;

DROP SCHEMA IF EXISTS creation;
CREATE SCHEMA creation;
USE creation;

SET AUTOCOMMIT=0;

CREATE TABLE terms (
  term_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  term  VARCHAR(108) NOT NULL,
  description VARCHAR(499),
  field VARCHAR(255), -- an enumeration in 'pathology', 'mineral'...
  PRIMARY KEY  (term_id),
  KEY idx_terms_term (term)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE practices (  -- includes theories AND approaches
  practice_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  practice VARCHAR(108) NOT NULL,
  description VARCHAR(255),
  field  VARCHAR(50) NOT NULL,
  theory VARCHAR(50), -- suggested approach
  PRIMARY KEY (practice_id)
  -- FOREIGN KEY (field)  REFERENCES general.fields(field),
  -- KEY idx_practices_practice (practice)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE people (
  person_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  personname VARCHAR(50) NOT NULL,
  life     VARCHAR(4000),
  approach VARCHAR(4000),
  achievements VARCHAR(255),
  born DATE,
  died DATE,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (person_id),
  KEY idx_people_name (personname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE works (
  work_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(108) NOT NULL,
  subtitle VARCHAR(108),
  description VARCHAR(255),
  approach VARCHAR(50),
  published YEAR, -- tricky: sometines we would rather speak about a century or an interval
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (work_id),
  KEY idx_works_title (title)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE authorships (
  authorship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(108) NOT NULL, -- title of the work
  subtitle VARCHAR(108),
  author VARCHAR(50) NOT NULL,  -- title of the work
  nature VARCHAR(50),
  PRIMARY KEY  (authorship_id),
  KEY idx_authorship_title (title),
  KEY idx_authorship_author (author)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE theories (  -- includes theories AND approaches
                         -- same definition as TABLE biology.theories?
-- theory_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  theory VARCHAR(108) NOT NULL,
  -- author VARCHAR(50), -- What about there being SEVERAL authors?
  description VARCHAR(999),
  approach VARCHAR(50), -- suggested approach, or field of knowledge
  published YEAR, -- tricky: sometines we would rather speak about a century or an interval
--  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--  KEY idx_theories_theory (theory)
  PRIMARY KEY  (theory)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE theory_rel ( -- relationship between theories
  theory_rel_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  left_theory VARCHAR(108) NOT NULL,
  right_theory VARCHAR(108) NOT NULL,
  relationship VARCHAR(255),
--  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (theory_rel_id),
  FOREIGN KEY (left_theory)  REFERENCES  theories(theory),
  FOREIGN KEY (right_theory)  REFERENCES theories(theory),
  -- FOREIGN KEY (relationship)  REFERENCES relationships(relationship),
  KEY idx_theory_rel_id (theory_rel_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE explanations ( -- explanations are either theories or facts
  explanation_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name        VARCHAR( 99), -- NOT NULL,
  explanation VARCHAR(999) NOT NULL,
  theory VARCHAR(108) NOT NULL,
  relationship VARCHAR(49) DEFAULT 'for', -- relationship to theory: 'for', 'against', 'compatible-with'
  PRIMARY KEY  (explanation_id),
  KEY idx_explanation (name),
  FOREIGN KEY (theory) REFERENCES theories(theory)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- The next two tables ('base_dirs' and 'files') only reference
-- one outer field: works(title)

CREATE TABLE base_dirs (
  base_dir_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  base_dir  VARCHAR(108) NOT NULL,
  device    VARCHAR( 49) NOT NULL,
  file_type VARCHAR( 49) NOT NULL, -- values: 'ePUB MOBI', 'PDF', 'Documents', 'HTML web_downloads'
  PRIMARY KEY (base_dir_id),
  KEY idx_base_dirs (base_dir)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE files (
  file_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(108) NOT NULL,
  author VARCHAR(50), -- What about there being SEVERAL authors?
  base_dir VARCHAR(255) NOT NULL,
  path_to VARCHAR(255) NOT NULL,
  file_name VARCHAR(255) NOT NULL,
  -- published YEAR, -- tricky: sometines we would rather speak about a century or an interval
--  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (file_id),
  FOREIGN KEY (title)  REFERENCES works(title),
  -- FOREIGN KEY (author) REFERENCES works(author),
  KEY idx_files_title (title)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- UNLOCK TABLES;
-- COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- SET autocommit=@old_autocommit;
