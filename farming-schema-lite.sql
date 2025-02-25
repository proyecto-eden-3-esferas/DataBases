-- (1) SQLite indexes are declared outside their table declarations, like so:
--   CREATE UNIQUE INDEX index_name ON table_name(column_list);
-- (2) MySQL BOOL's have been replaced with INTEGER (only instance: plants.wild)

-- Concerns carried over from the original MySQL file "farming-schema.sql"
-- (1) I have commented out declaration of column 'last_update'
-- like: last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
-- because this database is not meant to be used for transactions but as a Knowledge Store
-- (2) I am also unhappy with integer, self-incrementing primary keys
-- like: whatever_id  INTEGER NOT NULL, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
-- On the other hand, changing the primary key declaration (to a meaningful field)
-- would not break my code: insertions, deletions, updates etc. would be performed in just the same way,

-- plant_id INTEGER NOT NULL, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,


CREATE TABLE IF NOT EXISTS plants (
  bname         TEXT NOT NULL PRIMARY KEY,
  family        TEXT, -- NOT NULL, -- from 'in_family' in "plant_families.sql"
  language_code TEXT DEFAULT 'en',
  life_type     TEXT,
  climate       TEXT,
  wild       INTEGER, -- as opposed to bred or genetically engineered
  src           TEXT -- source of this piece of information
-- FOREIGN KEY (life_type) REFERENCES biology.life_types(life_type), -- commented out because of fields like "woody biannual"
-- FOREIGN KEY (climate)   REFERENCES           geology.climates(cname),
-- FOREIGN KEY    (soil)    REFERENCES soils(sname),
-- KEY idx_varieties_bname (bname)
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_varieties_bname
  ON plants(bname);

CREATE TABLE IF NOT EXISTS vernacular ( -- non-scientific names of plants, animals
  vernacular_id INTEGER NOT NULL PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  vname TEXT NOT NULL, -- several vname's may reference one bname (binomial name)
  bname TEXT NOT NULL,
  code  TEXT DEFAULT 'en', -- the language code of the vernacular
  FOREIGN KEY (code)  REFERENCES languages(code)
-- FOREIGN KEY (bname) REFERENCES plants(bname)
); -- [ WITHOUT ROWID]

-- 'crop_groups' specifies what crop_group a crop belongs in
-- currently a crop_group is usually a plant family
CREATE TABLE IF NOT EXISTS crop_groups (
  crop       TEXT NOT NULL PRIMARY KEY, -- 'vname' or variety name
  crop_group TEXT NOT NULL, -- references a 'life_type', usu. a plant family
  code       TEXT DEFAULT 'en',
  FOREIGN KEY (crop_group)  REFERENCES life_types(life_type),
  FOREIGN KEY (code)        REFERENCES languages(code)
-- FOREIGN KEY (bname) REFERENCES plants(bname)
); -- [ WITHOUT ROWID]

CREATE TABLE IF NOT EXISTS crop_care (
  bname      TEXT NOT NULL PRIMARY KEY,
  fertilizer TEXT, -- column imported from deleted table 'plant_varieties'
  watering   TEXT,   -- column imported from deleted table 'plant_varieties'
  other      TEXT
); -- [ WITHOUT ROWID]

CREATE TABLE IF NOT EXISTS germination_conditions (
  -- germination_id INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname             TEXT PRIMARY KEY,
  min_germ       INTEGER,
  max_germ       INTEGER,
  moisture          TEXT,
  other             TEXT,
  -- FOREIGN KEY (vname)  REFERENCES plants(vname),
  FOREIGN KEY (bname)  REFERENCES plants(bname)
); -- [ WITHOUT ROWID]

CREATE TABLE IF NOT EXISTS soil_conditions (
  -- soil_id INTEGER NOT NULL PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname      TEXT PRIMARY KEY,
  min_soil_pH REAL,
  max_soil_pH REAL,
  soil        TEXT,
  FOREIGN KEY (bname)  REFERENCES plants(bname)
); -- [ WITHOUT ROWID]

CREATE TABLE IF NOT EXISTS companion (
  companion_id INTEGER NOT NULL PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname           TEXT NOT NULL,
  with_bname      TEXT NOT NULL,
  explanation     TEXT,
-- FOREIGN KEY (with_bname)  REFERENCES plants(bname),
  FOREIGN KEY (bname)       REFERENCES plants(bname)
); -- [ WITHOUT ROWID]

-- TABLE 'species' is out of use: DEPRECATED?
-- CREATE TABLE IF NOT EXISTS species (
--   species_id INTEGER NOT NULL, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
--   sname TEXT,-- NOT NULL, a vernacular name
--   bname TEXT,-- NOT NULL,
--   climate TEXT,
--   soils TEXT,
--   PRIMARY KEY  (species_id),
--   KEY idx_species_bname (bname) -- create an index on bname so that plants.bsname can refernce it as fk
-- ); -- [ WITHOUT ROWID]

CREATE TABLE IF NOT EXISTS pests ( -- pests or infectious diseases
  pest_id INTEGER NOT NULL PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  pname      TEXT NOT NULL,
  nature     TEXT, -- {fungal, bacterial, viral, nematode, molusc, arthropod, rodent, other}
  mechanism  TEXT, -- how the pest organism harms or parasitizes its host
  part       TEXT, -- The anatomical part that gets harmed.
  vector     TEXT, -- How the agent arrives onto or into the plant.
  conditions TEXT, -- Under what conditions is the plant more vulnerable?
  enemies    TEXT  -- predators or antagonists of the pest
  -- KEY idx_pests_name (pname)
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_pests_name
  ON pests(pname);

CREATE TABLE IF NOT EXISTS terms (
  term_id  INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  term        TEXT NOT NULL,
  description TEXT,
  field       TEXT -- an enumeration in 'pathology', 'mineral'...
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_terms_term
  ON terms(term);

CREATE TABLE IF NOT EXISTS plant_anatomy (
  part_id  INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  part        TEXT NOT NULL, -- same type as terms(part),        please
  description TEXT,    -- same type as terms(description), please
  field       TEXT
); -- [ WITHOUT ROWID]

-- a 'term' is synonimous with another term ('with_term') in some way ('comparison')
CREATE TABLE IF NOT EXISTS synonyms (
  synonym_id INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  term          TEXT NOT NULL,
  with_term     TEXT NOT NULL,
  comparison    TEXT,
  field         TEXT, -- an enumeration in 'anatomy', 'pathology', 'mineral'...
  FOREIGN KEY (with_term)  REFERENCES terms(term)
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_synonyms_synonym
  ON synonyms(term, with_term);

-- CREATE TABLE IF NOT EXISTS techniques (  -- techniques are a subclass of terms.
--                                      -- Do they overlap with farming_practices?
--   technique_id INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
--   term            TEXT NOT NULL,
--   -- author TEXT, -- What about there being SEVERAL authors?
--   approach        TEXT, -- suggested approach
--   FOREIGN KEY (term)  REFERENCES terms(term)
-- ); -- [ WITHOUT ROWID]
-- CREATE UNIQUE INDEX idx_term
--   ON techniques(term);

CREATE TABLE IF NOT EXISTS farming_theories (  -- includes theories AND approaches
  theory_id INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  theory       TEXT NOT NULL,
  description  TEXT
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_farm_theory
  ON farming_theories(theory);

CREATE TABLE IF NOT EXISTS farming_theory_features (
  feature_id INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  theory        TEXT NOT NULL,
  feature       TEXT,
  FOREIGN KEY (theory)  REFERENCES farming_theories(theory)
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_farm_feature
  ON farming_theory_features(feature);

CREATE TABLE IF NOT EXISTS farming_practices (
  practice_id INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  practice       TEXT NOT NULL,
  description    TEXT,
  approach       TEXT -- suggested approach
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_farm_practice
  ON farming_practices(practice);

CREATE TABLE IF NOT EXISTS phytochemicals (
  phytochemical_id INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  phytochemical       TEXT NOT NULL,
  properties          TEXT,
  human_nutrition     TEXT,
  other               TEXT
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_phytochemical
  ON phytochemicals(phytochemical);

-- no preceding TABLE depends on TABLE 'plant_uses'

CREATE TABLE IF NOT EXISTS plant_uses ( -- plant uses
  uses_id  INTEGER PRIMARY KEY, -- SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bname       TEXT, -- NOT NULL,
  field       TEXT NOT NULL, -- {'kitchen', 'garden', 'medicinal', 'general'}
  -- NOTE: (bname,field) need not be unique; only (bname,field, a_use) must be unique
  a_use       TEXT NOT NULL,
  FOREIGN KEY (bname) REFERENCES plant_varieties(bname),
  FOREIGN KEY (field) REFERENCES fields(field)
); -- [ WITHOUT ROWID]
