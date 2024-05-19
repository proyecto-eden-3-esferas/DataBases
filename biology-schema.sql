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
  description VARCHAR(999), -- NOT NULL,
  PRIMARY KEY  (life_type_id),
  KEY idx_life_type (life_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE terms (
  term_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  term  VARCHAR(108) NOT NULL,
  description VARCHAR(499),
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
  language_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  language VARCHAR(50) NOT NULL,
  code CHAR(2) NOT NULL,
  abbreviation CHAR(3) NOT NULL,
  PRIMARY KEY  (language_id), -- ALTERNATIVELY: PRIMARY KEY  (code),
  KEY idx_language (language),
  KEY idx_language_code (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE biorelationships ( -- should be split into 'biorelationships' and 'farming_biorelationships'
  biorelationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  biorelationship VARCHAR(50) NOT NULL,
  arity SMALLINT DEFAULT 2,
  description VARCHAR(999),-- NOT NULL,
  PRIMARY KEY  (biorelationship_id),
  KEY idx_biorelationship (biorelationship)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- INSERT-ions: eventually to be moved to file "biology-data.sql"

INSERT INTO life_types (life_type, description) VALUES
('brassicas', NULL), -- formerly Cruciferae
('cucurbitaceae', NULL),
('liliaceae', NULL),
('fabaceae', NULL), -- legumes
('poaceae', NULL), -- cereal
('apiaceae', NULL), -- formerly Umbelliferae
('asteraceae', NULL), -- formerly Compositae
('chenopodiaceae', NULL), -- actually, a subfamily of asteraceae
('solanaceae', NULL),
-- a
('annual', NULL),
('biennial', NULL),
('perennial', NULL),
('ornamental', NULL),
('edible ornamental', NULL),
('vegetable', NULL),
('vine', NULL), --
('succulent', NULL),
('bush', NULL),
('shrub', NULL),
('leguminous shrub', NULL),
('tree', NULL),
('fruit tree', NULL),
('nut tree', NULL),
-- b
('virus', NULL),
('bacteria', NULL),
('cyanobacteria', NULL),
('archaea', NULL),
('algae', NULL),
('fungi', NULL),
('hornwort', NULL),
('liverwort', NULL),
('lichen', NULL),
('moss', NULL),
('seaweed', NULL),
-- c
('insect', NULL),
('caterpillar', NULL),
('spider', NULL),
('mollusk', NULL),
('nematode', NULL),
('earthworm', NULL),
('mite', NULL),
('moth', NULL),
('aphid', 'small sap-sucking insects and members of the superfamily Aphidoidea. Common names include greenfly and blackfly'),
('amphibian', NULL),
('rodent', NULL),
('mole', NULL),
('vole', NULL),
('gopher', NULL),
('deer', NULL),
('snake', NULL),
('bird', NULL);

CREATE TABLE relationships ( -- should be split into 'relationships' and 'farming_relationships'
  relationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  relationship VARCHAR(50) NOT NULL,
  arity SMALLINT DEFAULT 2,
  description VARCHAR(999),-- NOT NULL,
  PRIMARY KEY  (relationship_id),
  KEY idx_relationship (relationship)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO relationships (relationship, description, arity) VALUES
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
('is_species_of_family', 'DESCRIPTION', 2),
('is_species',           'DESCRIPTION', 1);

INSERT INTO terms(term, description, field) VALUES
('chlorosis', 'a condition in which leaves produce insufficient chlorophyll', 'phytology'),
('blight', 'a rapid and complete chlorosis, browning, then death of plant tissues such as leaves, branches, twigs, or floral organs', 'phytology');

INSERT INTO theories (theory, description, approach, published) VALUES
-- ('THEORY', 'DESCRIPTION', 'APPROACH', 'PUBLISHED'),
-- ('THEORY', 'DESCRIPTION', 'APPROACH', 'PUBLISHED'),
-- ('THEORY', 'DESCRIPTION', 'APPROACH', 'PUBLISHED'),
('Gaia hypothesis', 'The Gaia hypothesis (/ˈɡaɪ.ə/), also known as the Gaia theory, Gaia paradigm, or the Gaia principle, proposes that living organisms interact with their inorganic surroundings on Earth to form a synergistic and self-regulating, complex system that helps to maintain and perpetuate the conditions for life on the planet.\nIt suggests that organisms co-evolve with their environment: that is, they "influence their abiotic environment, and that environment in turn influences the biota by Darwinian process', 'hollistic', NULL),
('adaptive radiation',
 'a process in which organisms diversify rapidly from an ancestral species into a multitude of new forms, particularly when a change in the environment makes new resources available, alters biotic interactions or opens new environmental niches', 'evolutionary biology', NULL);


SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
