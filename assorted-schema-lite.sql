
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

INSERT INTO buddha_families (fam, buddha, colour, element, aggregate, klesha, mudra, throne, bija_syl, wisdom) VALUES
('Buddha', 'Vairocana', 'white', 'earth', 'form (or consciousness)', 'aversion (or ignorance, ávidyā)', 'teaching mudra', 'lion', 'om', 'Perfectly Pure Dharma sphere Jñana'),
('Vajra', 'Akṣobhya', 'blue', 'space', 'consciousness (or form) (rupa)', 'ignorance (or aversion)', 'earth-touching mudra', 'Elephant throne', 'hum', 'Mirror-like Jñana'),
('Ratna (Jewel)', 'Ratnasambhava', 'yellow', 'water', 'feeling (vedana)', 'pride (or greed)', 'Giving mudra', 'Horse', 'tram', 'Sameness Jñana'),
('Padma (Lotus)', 'Amitābha', 'red', 'fire', 'perception (saṃjñā)', 'craving', 'meditation mudra', 'peacock throne', 'hrih', 'Discriminating Jñana'),
('Karma', 'Amoghasiddhi', 'green', 'wind', 'volition (samkhara)', 'envy', 'fearlessness mudra', 'Garuda throne', 'ah', 'Perfect practice Jñana');
-- (FAM, BUDDHA, COLOUR, ELEMENT, AGGREGATE, KLESHA, MUDRA, THRONE, BIJA_SYL, WISDOM),

CREATE TABLE IF NOT EXISTS buddha_partners (
  buddha_skt TEXT NOT NULL PRIMARY KEY,
  wisdom_consort TEXT,
  bodhisattvaTEXT,
  protectorTEXT,
  pure_land_and_direction TEXT
); -- [ WITHOUT ROWID]
INSERT INTO buddha_partners (buddha_skt, wisdom_consort, bodhisattva, protector, pure_land_and_direction) VALUES
('Vairocana', 'Ākāśadhātvīśvarī, also known as Vajradhātvisharī, Buddhaḍākinī or Sparśavajrī', 'Vajraparamita or Vajrasattva', 'Acala', 'Akaniṣṭha-Ghanavyūha (Center)'),
('Akṣobhya', 'Locanā, also known as Buddhalocanā, Tathāgatalocanā', 'Vajrapani or Samantabhadra', 'Trailokyavijaya', 'Abhirati (East)'),
('Amitābha', 'Paṇḍāravāsinī, also known as Sitavāsinī', 'Avalokiteśvara', 'Yamāntaka', 'Sukhāvatī (West)'),
('Ratnasaṃbhava', 'Māmakī', 'Mañjusri, Ratnapani', 'Kuṇḍali', 'Śrīmat (South)'),
('Amoghasiddhi', 'Tara, Samayatārā', 'Maitreya, or Viśvapāni', 'Vajrayakṣa', 'Karmaprasiddhi or Prakuṭā [es] (North)');

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
INSERT INTO nyingma_yanas VALUES (id, name, description)
(1, 'NAME', NULL),
(2, 'NAME', NULL),
(3, 'mahayana', NULL),
(4, 'Kriyayoga', NULL),
(5, 'Caryayoga', NULL),
(6, 'Yogatantra', NULL),
(7, 'Mahayoga', NULL),
(8, 'Anuyoga', NULL),
(9, 'Atiyoga', NULL);


CREATE TABLE IF NOT EXISTS cakras (
  id       INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  tradition   TEXT NOT NULL,
  description TEXT);


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

CREATE TABLE IF NOT EXISTS colours (
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
