SET NAMES utf8mb4;
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- You cannot just DROP SCHEMA biology unless FOREIGN KEY checks are suspended:
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS biology;
CREATE SCHEMA biology;
USE biology;


CREATE TABLE life_types (
  life_type_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  life_type VARCHAR(50) NOT NULL,
  kingdom   VARCHAR(50), --  NOT NULL
  description VARCHAR(999), -- NOT NULL,
  PRIMARY KEY  (life_type_id),
  KEY idx_life_type (life_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE terms (
  term_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  term  VARCHAR(108) NOT NULL,
  description VARCHAR(999),
  field VARCHAR(255), -- an enumeration in 'pathology', 'mineral'...
  PRIMARY KEY  (term_id),
  KEY idx_terms_term (term)
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


CREATE TABLE biochemicals (
  -- language_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  biochemical VARCHAR(50) NOT NULL,
  description VARCHAR(999),
  PRIMARY KEY  (biochemical)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE biorelationships ( -- should be split into 'biorelationships' and 'farming_biorelationships'
  biorelationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  biorelationship VARCHAR(50) NOT NULL,
  arity SMALLINT DEFAULT 2,
  description VARCHAR(999),-- NOT NULL,
  PRIMARY KEY  (biorelationship_id),
  KEY idx_biorelationship (biorelationship)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE relationships ( -- should be split into 'relationships' and 'farming_relationships'
  relationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  relationship VARCHAR(50) NOT NULL,
  arity SMALLINT DEFAULT 2,
  description VARCHAR(999),-- NOT NULL,
  PRIMARY KEY  (relationship_id),
  KEY idx_relationship (relationship)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE funcs ( -- no INSERT's so far
  func_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  func  VARCHAR(50) NOT NULL,
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (func_id),
  KEY idx_func (func)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Specific to animal and intimately shared with database (SCHEMA) 'health':

-- Animal (Organic) Molecules:

CREATE TABLE animal_molecules (
  molecule_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  molecule VARCHAR(50) NOT NULL,
  description VARCHAR(999),-- NOT NULL, -- you may discuss functions, but they're to be listed in another table
  type VARCHAR(50),
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (molecule_id),
  KEY idx_molecule (molecule)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE animal_molecule_funcs (
  hof_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  molecule VARCHAR(50) NOT NULL,
  func  VARCHAR(50) NOT NULL, -- NOT NULL (function should migrate to its own table)
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (hof_id),
  FOREIGN KEY (func)  REFERENCES funcs(func),
  KEY idx_molecule (molecule)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Animal Cells:

CREATE TABLE organelles (
  organelle_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  organelle VARCHAR(50) NOT NULL,
  description VARCHAR(999),-- NOT NULL, -- you may discuss functions, but they're to be listed in another table
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (organelle_id),
  KEY idx_animal_organelle (organelle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE animal_cells (
  cell_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  cell VARCHAR(50) NOT NULL,
  description VARCHAR(999),-- NOT NULL, -- you may discuss functions, but they're to be listed in another table
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (cell_id),
  KEY idx_animal_cell (cell)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE animal_cell_funcs (
  hof_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  cell VARCHAR(50) NOT NULL,
  func  VARCHAR(50) NOT NULL, -- NOT NULL (function should migrate to its own table)
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (hof_id),
  FOREIGN KEY (func)  REFERENCES funcs(func),
  KEY idx_animal_cell (cell)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Animal Organs:

CREATE TABLE animal_organs (
  organ_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  organ VARCHAR(50) NOT NULL,
  description VARCHAR(999),-- NOT NULL, -- you may discuss functions, but they're to be listed in another table
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (organ_id),
  KEY idx_organ (organ)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE animal_organ_funcs (
  hof_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  organ VARCHAR(50) NOT NULL,
  func  VARCHAR(50) NOT NULL, -- NOT NULL (function should migrate to its own table)
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (hof_id),
  FOREIGN KEY (func)  REFERENCES funcs(func),
  KEY idx_organ (organ)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE animal_tissues (
  ht_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  tissue  VARCHAR(50) NOT NULL,
  organ VARCHAR(50), -- NULL if not specific to an organ
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (ht_id),
  -- FOREIGN KEY (organ)  REFERENCES animal_organs(func),
  KEY idx_organ (organ)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE animal_body_systems (
  system_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  sys VARCHAR(50) NOT NULL,
  -- func  VARCHAR(50), -- NOT NULL (function should migrate to its own table)
  description VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (system_id),
  KEY idx_system (sys)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE animal_organs_in_systems (
  relationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  organ VARCHAR(50) NOT NULL,
  sys   VARCHAR(50) NOT NULL,
  discussion VARCHAR(999),-- NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (relationship_id),
  -- KEY idx_sys (sys),
  FOREIGN KEY (organ)  REFERENCES animal_organs(organ),
  FOREIGN KEY (sys)  REFERENCES animal_body_systems(sys)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
