SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;

USE health;

SET AUTOCOMMIT=0;


INSERT INTO health_practices (practice, description, field, theory) VALUES
-- ('', NULL, 'health', NULL),
-- ('', NULL, 'health', NULL),
-- ('', NULL, 'health', NULL),
-- ('', NULL, 'health', NULL),
('kumbhaka', NULL, 'health', NULL),
('yoga',     NULL, 'health', NULL);


UNLOCK TABLES;
COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET autocommit=@old_autocommit;
