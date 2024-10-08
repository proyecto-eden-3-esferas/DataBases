SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;

USE health;

SET AUTOCOMMIT=0;


INSERT INTO ehealth_practices (practice, description, field, theory) VALUES
-- ('', NULL, 'health', NULL),
-- ('', NULL, 'health', NULL),
-- ('', NULL, 'health', NULL),
-- ('', NULL, 'health', NULL),
('kumbhaka', NULL, 'health', NULL),
('fasting',  NULL, 'health', NULL),
('yoga',     NULL, 'health', NULL);



INSERT INTO diseases (disease, description) VALUES
('paresis', 'mild muscular weakness associated with partial paralysis'),
('paraplegia', 'a condition in which the legs, trunk, or feet are paralyzed'),
('quadriplegia', 'a paralysis affects all four limbs'),
('hemiplegia', 'occurs when one side of the body is incapacitated; as an example, a side-by-side arm and leg'),

--
('osteogenesis imperfecta', '(brittle bones) a congenital defect in which the bones lack collagen fibers and thus are very brittle and break easily'),
('rickets', 'a childhood disorder in which an inadequate amount of mineral crystals is deposited in the bone; bones are therefore too soft; the leg bones may not be able to completely support the weight of the body and the legs become bowed and deformed as they develop'),
('gout', 'the deposit of monosodium urate crystals in the tissues and joints throughout the body'),
('sprain', 'To stretch or tear a ligament in a joint. Sprained tendons and ligaments surrounding a joint can be strained or torn. The ankle is the most common injury site. Pain, swelling, bruises, and inability to use the affected joint are all indications of a sprain. Strains result from overstretching or tearing of muscle or tendon tissue. Muscle or tendon strains can appear abruptly or gradually and result from injury, improperly lifting heavy objects or overwork. Pain, spasms, swelling, cramping, and trouble moving a muscle are all strain indicators.'),
('bursitis', 'inflammation of the bursa; causes pain, tenderness, and swelling, especially with movement or pressure on the affected body part; itself caused by trauma or repetitive movement'),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
('paralysis', 'loss of muscle tone and coordination');


UNLOCK TABLES;
COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET autocommit=@old_autocommit;
