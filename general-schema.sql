SET NAMES utf8mb4;
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- You cannot just DROP SCHEMA general unless FOREIGN KEY checks are suspended
-- because 'fields' is referenced by plant_uses
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS general;
CREATE SCHEMA general;
USE general;

-- Database 'general' contains some very general tables:
-- 'languages'
-- 'relationships', and
-- 'fields'...)
-- They may be referenced (as FOREIGN KEYS) from other databases.

CREATE TABLE languages (
  language_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  language VARCHAR(50) NOT NULL,
  code CHAR(2) NOT NULL,
  abbreviation CHAR(3) NOT NULL,
  PRIMARY KEY  (language_id), -- ALTERNATIVELY: PRIMARY KEY  (code),
  KEY idx_language (language),
  KEY idx_language_code (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO languages (language,code,abbreviation) VALUES
('Amharic', 'am', 'amh'),
('Arabic', 'ar', 'ara'),
('Aragonese', 'an', 'arg'),
('Basque', 'eu', 'eus'),
('Catalan', 'ca', 'cat'),
('Chinese', 'zh', 'zho'),
('Czech', 'cs', 'ces'),
('Danish', 'da', 'dan'),
('English', 'en', 'eng'),
('Esperanto', 'eo', 'epo'),
('Estonian', 'et', 'est'),
('Finnish', 'fi', 'fin'),
('French',  'fr', 'fra'),
('Galician', 'gl', 'glg'),
('German',  'de', 'deu'),
('Greek', 'el', 'ell'),
('Hebrew', 'he', 'heb'),
('Hindi', 'hi', 'hin'),
('Hungarian', 'hu', 'hun'),
('Icelandic', 'is', 'isl'),
('Indonesian', 'id', 'ind'),
('Irish', 'ga', 'gle'),
('Italian', 'it', 'ita'),
('Japanese', 'ja', 'jpn'),
('Korean', 'ko', 'kor'),
('Kurdish', 'ku', 'kur'),
('Latin', 'la', 'lat'),
('Latvian', 'lv', 'lav'),
('Lithuanian', 'lt', 'lit'),
('Luxembourgish', 'lb', 'ltz'),
('Mongolian', 'mn', 'mon'),
('Nepali', 'ne', 'nep'),
('Norwegian', 'no', 'nor'),
('Norwegian Bokmal', 'nb', 'nob'),
('Norwegian Nynorsk', 'nn', 'nno'),
('Pali', 'pi', 'pli'),
('Persian', 'fa', 'fas'),
('Polish', 'pl', 'pol'),
('Portuguese', 'pt', 'por'),
('Punjabi', 'pa', 'pan'),
('Quechua', 'qu', 'que'),
('Romanian', 'ro', 'ron'),
('Russian', 'ru', 'rus'),
('Sanskrit', 'sa', 'san'),
('Slovak', 'sk', 'slk'),
('Spanish', 'es', 'spa'),
('Swahili', 'sw', 'swa'),
('Swedish', 'sv', 'swe'),
('Tagalog', 'tl', 'tgl'),
('Thai', 'th', 'tha'),
('Tibetan', 'bo', 'bod'),
('Turkish', 'tr', 'tur'),
('Ukranian', 'uk', 'ukr'),
('Vietnamese', 'vi', 'vie'),
('Welsh', 'cy', 'cym'),
('Yiddish', 'yi', 'yid'),
('Yoruba', 'yo', 'yor'),
-- ('NAME', 'XY', 'XYZ'),
-- ('NAME', 'XY', 'XYZ'),
('Zulu', 'zu', 'zul');

CREATE TABLE relationships ( -- should be split into 'relationships' and 'farming_relationships'
  relationship_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  relationship VARCHAR(50) NOT NULL,
  arity SMALLINT DEFAULT 2,
  description VARCHAR(999),-- NOT NULL,
  PRIMARY KEY  (relationship_id),
  KEY idx_relationship (relationship)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO relationships (relationship, description, arity) VALUES
('aids', NULL, 2),
('harms', NULL, 2),
('is a phase of', NULL, 2), -- a caterpillar/spore is a phase of an insect/fern
('subclass of', NULL, 2),
('related to', NULL, 2),
('in same grouping as', NULL, 2),
('compatible with', NULL, 2),
('incompatible with', NULL, 2),
('depends on', NULL, 2), -- this is the reverse of 'is a requirement for'
('proves', NULL, 2),
('disproves', NULL, 2),
('explains', NULL, 2),
('causes', NULL, 2),
('is a feature of', NULL, 2),
('is a component of', NULL, 2),
('is a requirement for', NULL, 2),
('partially overlaps', NULL, 2),
('does not overlap', NULL, 2),
('equivalent to', NULL, 2);



CREATE TABLE fields (
  fields_id  SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  field    VARCHAR(48)   NOT NULL,
  description VARCHAR(512),
  discussion  VARCHAR(512),
  PRIMARY KEY  (fields_id),
  KEY idx_fields_field (field) -- referenced by TABLE 'plant_uses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO fields (field, description, discussion) VALUES
('science',   NULL, NULL),
('biology',   NULL, NULL),
('botany',   NULL, NULL),
('zoology',   NULL, NULL),
('ecology',   NULL, NULL),
('kitchen', NULL, NULL),
('farming',   NULL, NULL),
('garden',  NULL, NULL),
('guild',   NULL, NULL), -- companion planting
--
('health',   NULL, NULL),
('knowledge management',   NULL, NULL), -- databases, knowledge graphs...
('humanities', NULL, NULL),
('religion',   NULL, NULL),
('occultism',   NULL, NULL),
('general', NULL, NULL);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
