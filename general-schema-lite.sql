
CREATE TABLE IF NOT EXISTS languages (
  language_id INTEGER PRIMARY KEY,
  language     TEXT NOT NULL,
  code         TEXT NOT NULL,
  abbreviation TEXT NOT NULL
); -- [ WITHOUT ROWID]

CREATE UNIQUE INDEX idx_language
  ON languages(language);
CREATE UNIQUE INDEX idx_language_code
  ON languages(code);


CREATE TABLE IF NOT EXISTS relationships ( -- should be split into 'relationships' and 'farming_relationships'
  relationship_id INTEGER PRIMARY KEY,
  relationship TEXT NOT NULL,
  arity     INTEGER DEFAULT 2,
  description  TEXT-- NOT NULL,
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_relationship
  ON relationships(relationship);

CREATE TABLE IF NOT EXISTS fields (
  fields_id  INTEGER PRIMARY KEY,
  field    TEXT   NOT NULL,
  description TEXT,
  discussion  TEXT
); -- [ WITHOUT ROWID]
CREATE UNIQUE INDEX idx_fields_field
  ON fields(field);
