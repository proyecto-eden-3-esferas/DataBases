
CREATE TABLE IF NOT EXISTS buddha_families (
  bfam_id INTEGER PRIMARY KEY,
  fam       TEXT NOT NULL,
  buddha    TEXT NOT NULL,
  colour     TEXT NOT NULL,
  element     TEXT NOT NULL,
  aggregate  TEXT NOT NULL, -- or skandha
  klesha TEXT NOT NULL,
  mudra TEXT NOT NULL,
  throne TEXT NOT NULL,
  bija_syl TEXT NOT NULL,
  wisdom TEXT NOT NULL -- jnyana
); -- [ WITHOUT ROWID]


CREATE TABLE IF NOT EXISTS buddha_partners (
  buddha_skt TEXT NOT NULL PRIMARY KEY,
  wisdom_consort TEXT,
  bodhisattva TEXT,
  protector TEXT,
  pure_land_and_direction TEXT
); -- [ WITHOUT ROWID]

CREATE TABLE IF NOT EXISTS paramitas (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  description TEXT);

CREATE TABLE IF NOT EXISTS buddhist_tantras (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  class       TEXT NOT NULL,
  description TEXT);

CREATE TABLE IF NOT EXISTS nyingma_yanas (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  description TEXT);

CREATE TABLE IF NOT EXISTS cakras (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  tradition   TEXT NOT NULL,
  description TEXT);
