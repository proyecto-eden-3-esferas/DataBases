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
  description VARCHAR(999),
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
('blight', 'a rapid and complete chlorosis, browning, then death of plant tissues such as leaves, branches, twigs, or floral organs', 'phytology'),
('chlorosis', 'a condition in which leaves produce insufficient chlorophyll', 'phytology'),
--
('dioecy', '(/daɪˈiːsi/ dy-EE-see; from Ancient Greek διοικία dioikía ''two households'' is a characteristic of certain species that have distinct unisexual individuals, each producing either male or female gametes, either directly (in animals) or indirectly (in seed plants). Dioecious reproduction is biparental reproduction.', 'genetics'),
('dioecious', '/daɪˈiːʃ(i)əs/ dy-EE-sh(ee-)əs; adjective for dioecy', 'genetics'),
('Panmixia', '(or panmixis) means uniform random fertilization. A panmictic population is one where all potential parents may contribute equally to the gamete pool, and that these gametes are uniformly distributed within the gamete population (gamodeme). This assumes that there are no hybridising restrictions within the parental population : neither genetics, cytogenetics nor behavioural; and neither spatial nor temporal (see also Quantitative genetics for further discussion). Therefore, all gamete recombination (fertilization) is uniformly possible.', 'genetics'),
('herkogamy',  '(or hercogamy) the spatial separation of the anthers and stigma in hermaphroditic angiosperms. A common strategy for reducing self-fertilization.', 'genetics'),
('self-incompatibility', 'a general name for several genetic mechanisms that prevent self-fertilization in sexually reproducing organisms, and thus encourage outcrossing and allogamy. It is contrasted with separation of sexes among individuals (dioecy), and their various modes of spatial (herkogamy) and temporal (dichogamy) separation', 'genetics'),
--
('kingdom', 'In biology, a kingdom is the second highest level taxon of organisms in scientific classification. The domains or empire are the topmost level. The kingdoms are then divided into smaller groups called phyla (for animals) or divisions (for plants).', 'biology'),
('metabolic pathway', 'a linked series of chemical reactions occurring within a cell catalyzed by enzymes. In most cases of a metabolic pathway, the product of one enzyme acts as the substrate for the next.', 'biochemistry'),
('metabolite', 'any of the reactants, products, and intermediates of an enzymatic reaction, which are modified by a sequence of chemical reactions catalyzed by enzymes', 'biochemistry'),
('enzyme', NULL, 'biochemistry'),
('angiosperms', 'flowering plants', 'phytology'),
('gymnosperms', 'conifers, cycads and allies', 'phytology'),
('pteridophytes', 'ferns and allies', 'phytology'),
('bryophytes', 'mosses and liveworts', 'phytology'),
('halophyte', NULL, 'phytology'),
('pseudocereal', NULL, 'phytology'),
('monocotyledoneus', NULL, 'phytology'),
('pseudanthia', 'reduced inflorescences', 'phytology'),
--
('microclimate', ' a small area within a larger site that has special conditions which favour certain species which will grow well elsewhere', NULL),
('autogamy or self-fertilization', 'the fusion of two gametes that come from one individual;predominantly observed in the form of self-pollination, a reproductive mechanism employed by many flowering plants. However, species of protists have also been observed using autogamy as a means of reproduction. Flowering plants engage in autogamy regularly, while the protists that engage in autogamy only do so in stressful environments', 'biology'),
('population', 'a group of interbreeding individuals in similar geographic area that undergo negligible gene flow with other groups of the species', 'biology'),
('minimum viable population (MVP)', 'the smallest possible size at which a biological population can exist without facing extinction from natural disasters or demographic, environmental, or genetic stochasticity (chance)', 'biology'),
('conservation biology', 'the study of the conservation of nature and of Earth''s biodiversity with the aim of protecting species, their habitats, and ecosystems from excessive rates of extinction and the erosion of biotic interactions', 'biology'),
('fixation (genetics)', 'the change in a gene pool from a situation where there exists at least two variants of a particular gene (allele) in a given population to a situation where only one of the alleles remains. That is, the allele becomes fixed', 'population genetics'),
('genetic drift', 'also known as random genetic drift, allelic drift or the Wright effect, is the change in the frequency of an existing gene variant (allele) in a population due to random chance', 'ecology'),
('gene pool', 'the set of all genes, or genetic information, in any population, usually of a particular species', 'ecology'),
('population bottleneck or genetic bottleneck', 'a sharp reduction in the size of a population due to environmental events such as famines, earthquakes, floods, fires, disease, and droughts; or human activities such as genocide, speciocide, widespread violence or intentional culling.', 'ecology'),
('biological fitness', 'an organism''s ability to survive and perpetuate its genetic material', 'biology'),
('inbreeding', 'the breeding of related individuals', 'breeding'),
('inbreeding depression', 'the reduced biological fitness that may result from inbreeding', 'breeding'),
('self-fertilization', 'pollen from a plant will fertilise reproductive cells or ovules of the same plant', 'plant breeding'),
('cross-pollination', 'pollen from one plant can only fertilize a different plant', 'plant breeding'),
('asexual propagation', 'the new plant is genetically identical to its parent (e.g. runners from strawberry plants)', 'plant breeding'),
('apomixis (self-cloning)', 'seeds are produced asexually and the new plant is genetically identical to its parent', 'plant breeding'),
--
('self-sowing', NULL, NULL), -- adj
('succulent', NULL, 'phytology'); --  also found in TABLE 'life_types';

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
