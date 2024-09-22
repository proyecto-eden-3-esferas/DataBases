SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS farming;
CREATE SCHEMA farming;
USE farming;

-- (1) I have commented out declaration of column 'last_update'
-- like: last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
-- because this database is not meant to be used for transactions but as a Knowledge Store
-- (2) I am also unhappy with integer, self-incrementing primary keys
-- like: whatever_id  SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
-- On the other hand, changing the primary key declaration (to a meaningful field)
-- would not break my code: insertions, deletions, updates etc. would be performed in just the same way,

CREATE TABLE plants (
-- plant_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname  VARCHAR(45) NOT NULL,
  family VARCHAR(50), -- NOT NULL, -- from 'in_family' in "plant_families.sql"
  language_code VARCHAR(2) NOT NULL DEFAULT 'en',
  life_type VARCHAR(50),
  climate VARCHAR(255),
  wild BOOL, -- DEFAULT FALSE,
  PRIMARY KEY (bname),
-- FOREIGN KEY (life_type) REFERENCES biology.life_types(life_type), -- commented out because of fields like "woody biannual"
-- FOREIGN KEY (climate)   REFERENCES           geology.climates(cname),
  -- FOREIGN KEY (soil)    REFERENCES soils(sname),
  KEY idx_varieties_bname (bname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE vernacular ( -- non-scientific names of plants, animals
  vname VARCHAR(45) NOT NULL, -- several vname's may reference one bname (binomial name)
  bname VARCHAR(45) NOT NULL,
  code CHAR(2)      NOT NULL DEFAULT 'en',
  PRIMARY KEY  (vname, code),
  FOREIGN KEY (code)  REFERENCES general.languages(code)
-- FOREIGN KEY (bname) REFERENCES plants(bname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE crop_groups ( -- non-scientific names of plants, animals
  crop       VARCHAR(45) NOT NULL, -- 'vname' or variety name
  crop_group VARCHAR(45) NOT NULL, -- references a 'life_type'
  code          CHAR(2)  NOT NULL DEFAULT 'en',
  PRIMARY KEY  (crop),
  FOREIGN KEY (crop_group)  REFERENCES life_types(life_type),
  FOREIGN KEY (code)  REFERENCES general.languages(code)
-- FOREIGN KEY (bname) REFERENCES plants(bname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE crop_aid (
  bname VARCHAR(45) NOT NULL,
  fertilizer VARCHAR(255), -- column imported from deleted table 'plant_varieties'
  watering VARCHAR(255),   -- column imported from deleted table 'plant_varieties'
  PRIMARY KEY (bname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE germination_conditions (
  germination_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  -- vname VARCHAR(45),
  bname VARCHAR(45) NOT NULL,
  min_germ INT,
  max_germ INT,
  PRIMARY KEY  (germination_id),
  -- FOREIGN KEY (vname)  REFERENCES plants(vname),
  FOREIGN KEY (bname)  REFERENCES plants(bname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE soil_conditions (
  soil_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname VARCHAR(45) NOT NULL,
  min_soil_pH DECIMAL(2,1),
  max_soil_pH DECIMAL(2,1),
  PRIMARY KEY (soil_id),
  soil varchar(50),
  FOREIGN KEY (bname)  REFERENCES plants(bname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE companion (
  companion_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname       VARCHAR(45) NOT NULL,
  with_bname  VARCHAR(45) NOT NULL,
  explanation VARCHAR(999),
  PRIMARY KEY (companion_id),
-- FOREIGN KEY (with_bname)  REFERENCES plants(bname),
  FOREIGN KEY (bname)       REFERENCES plants(bname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- TABLE 'species' is out of use: DEPRECATED?
-- CREATE TABLE species (
--   species_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
--   sname VARCHAR(50),-- NOT NULL, a vernacular name
--   bname VARCHAR(50),-- NOT NULL,
--   climate VARCHAR(50),
--   soils VARCHAR(50),
--   PRIMARY KEY  (species_id),
--   KEY idx_species_bname (bname) -- create an index on bname so that plants.bsname can refernce it as fk
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE pests ( -- pests or infectious diseases
  pest_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  pname   VARCHAR(50) NOT NULL,
  nature  VARCHAR(50), -- {fungal, bacterial, viral, nematode, molusc, arthropod, rodent, other}
  mechanism  VARCHAR(999),
  part       VARCHAR(128), -- The anatomical part that gets harmed.
  vector     VARCHAR(128), -- How the agent arrives onto or into the plant.
  conditions VARCHAR(50), -- Under what conditions is the plant more vulnerable?
  enemies VARCHAR(99), -- Under what conditions is the plant more vulnerable?
  PRIMARY KEY  (pest_id),
  KEY idx_pests_name (pname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE terms (
  term_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  term  VARCHAR(108) NOT NULL,
  description VARCHAR(999),
  field VARCHAR(255), -- an enumeration in 'pathology', 'mineral'...
  PRIMARY KEY  (term_id),
  KEY idx_terms_term (term)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE plant_anatomy (
  part_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  part  VARCHAR(108) NOT NULL, -- same type as terms(part),        please
  description VARCHAR(999),    -- same type as terms(description), please
  field VARCHAR(255),
  PRIMARY KEY  (part_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE synonyms (
  synonym_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  syn VARCHAR(108) NOT NULL,
  with_term VARCHAR(108) NOT NULL,
  comparison VARCHAR(255),
  field VARCHAR(255), -- an enumeration in 'anatomy', 'pathology', 'mineral'...
  PRIMARY KEY  (synonym_id),
  FOREIGN KEY (with_term)  REFERENCES terms(term),
  KEY idx_synonyms_synonym (syn)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE techniques (  -- techniques are a subclass of terms
                           -- do they overlap with farming_practices?
  technique_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  term VARCHAR(108) NOT NULL,
  -- author VARCHAR(50), -- What about there being SEVERAL authors?
  approach VARCHAR(50), -- suggested approach
  PRIMARY KEY  (technique_id),
  KEY idx_term (term),
  FOREIGN KEY (term)  REFERENCES terms(term)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE farming_theories (  -- includes theories AND approaches
  theory_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  theory VARCHAR(108) NOT NULL,
  description VARCHAR(1999),
  PRIMARY KEY  (theory_id),
  KEY idx_farm_theory (theory)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE farming_theory_features (
  feature_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  theory VARCHAR(108) NOT NULL,
  feature VARCHAR(999),
  PRIMARY KEY  (feature_id),
  -- KEY idx_farm_feature (feature),
  FOREIGN KEY (theory)  REFERENCES farming_theories(theory)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE farming_practices (
  practice_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  practice VARCHAR(108) NOT NULL,
  description VARCHAR(1999),
  theory VARCHAR(50), -- suggested approach
  PRIMARY KEY  (practice_id),
  KEY idx_farm_practice (practice)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE phytochemicals (
  phytochemical_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  phytochemical  VARCHAR(49) NOT NULL,
  properties VARCHAR(255),
  human_nutrition VARCHAR(255),
  other VARCHAR(255),
  PRIMARY KEY  (phytochemical_id),
  KEY idx_phytochemical (phytochemical)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- no preceding TABLE depends on TABLE 'plant_uses'

CREATE TABLE plant_uses ( -- plant uses
  uses_id  SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname    VARCHAR(99), -- NOT NULL,
  field    VARCHAR(48)   NOT NULL, -- {'kitchen', 'garden', 'medicinal', 'general'}
  its_uses VARCHAR(2048) NOT NULL,
  PRIMARY KEY (uses_id),
  FOREIGN KEY (bname) REFERENCES plant_varieties(bname),
  FOREIGN KEY (field) REFERENCES general.fields(field)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
