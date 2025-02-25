
CREATE TABLE IF NOT EXISTS greek_gods (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  description TEXT);




CREATE TABLE IF NOT EXISTS kingdoms (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  description TEXT);


-- CREATE UNIQUE INDEX idx_language ON languages(language);
-- CREATE UNIQUE INDEX idx_language_code ON languages(code);

CREATE TABLE IF NOT EXISTS colours ( -- see "colour-data.sql" and "colour-schema-lite.sql"
                                     -- in order to avoid duplication
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  html_name   TEXT, -- NOT NULL,
  red         TEXT, -- NOT NULL,
  green       TEXT, -- NOT NULL,
  blue        TEXT, -- NOT NULL,
  -- code        TEXT NOT NULL,
  description TEXT);


CREATE TABLE IF NOT EXISTS xml_entities (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  code        TEXT NOT NULL,
  description TEXT);


CREATE TABLE IF NOT EXISTS fin_cases ( -- should be split into 'relationships' and 'farming_relationships'
  case_id INTEGER PRIMARY KEY,
  casename   TEXT NOT NULL,
  meaning    TEXT NOT NULL,
  ending  INTEGER DEFAULT,
  notes      TEXT-- NOT NULL,
); -- [ WITHOUT ROWID]
-- CREATE UNIQUE INDEX idx_relationship ON relationships(relationship);
