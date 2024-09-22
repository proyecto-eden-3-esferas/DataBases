CREATE TABLE soils (
  soil_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  sname VARCHAR(50) NOT NULL,
  min_soil_pH DECIMAL(2,1),
  max_soil_pH DECIMAL(2,1),
  particle_size VARCHAR(50),
  PRIMARY KEY  (soil_id),
  KEY idx_soils_name (sname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE climates (
  climate_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  cname VARCHAR(50) NOT NULL,
  insolation VARCHAR(50),
  min_height INT,
  max_height INT,
  PRIMARY KEY  (climate_id),
  KEY idx_climates_cname (cname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; --
