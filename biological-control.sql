SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE farming;

-- This set of tables deal with Biological Control

-- Examples of commercial biological control products for controlling plant disease
CREATE TABLE bcas ( -- (commercial) Biological Control AgentS
-- plant_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  bioactive_ingredient VARCHAR( 45) NOT NULL,
  target               VARCHAR( 45), -- NOT NULL, -- disease or pathogen
  mechanisms           VARCHAR(999), -- NOT NULL,
  PRIMARY KEY (bioactive_ingredient),
  FOREIGN KEY (target) REFERENCES farming.pests(pname), -- commented out because of fields like "woody biannual"
  KEY idx_target (target)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE bcas_commercial ( -- Biological Control AgentS Commercial (Details)
-- plant_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  product_name         VARCHAR(45) NOT NULL,
  bioactive_ingredient VARCHAR(45) NOT NULL,
  territories_approved_or_marketed VARCHAR(99),
  PRIMARY KEY (product_name),
-- FOREIGN KEY (bioactive_ingredient) REFERENCES bcas(bioactive_ingredient),
  KEY bioactive_ingredient (bioactive_ingredient)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO bcas (bioactive_ingredient, target, mechanisms) VALUES
-- Bacteria:
('Agrobacterium radiobacter', 'Crown gall caused by Agrobacterium tumefaciens', 'Antibiosis and competition in wounds'),
('Bacillus amyloliquefaciens (formerly B. subtilis) QST 713', 'Many, e.g., Pythium, clubroot; yellow rust; bacteria', 'Antibiosis (lipopeptides), induced resistance'),
'Bacillus subtilis GB03', 'Cotton wilts caused by Rhizoctonia and Fusarium', 'Antibiosis and competition'),
('Pseudomonas chlororaphis MA342', 'Many, e.g., Fusarium crown rot', 'Endophyte in embryo: antibiosis'),
('Pseudomonas sp. DSMZ13134', 'Soilborne pathogens', 'Competition for space and nutrients, induced resistance'),
('Streptomyces griseoviridis', 'Many, includes, bacteria, fungi and oomycetes', 'Antibiosis and competition'),
-- Fungi and oomycetes:
('Ampelomyces quisqualis M10', 'powdery mildew', 'mycoparasitism'),
('Aspergillus flavus NRRL 21882', 'Mycotoxigenic Aspergillus spp. on maize', 'Competition for nutrients and space'),
('A. flavus AF36', 'Aspergillus fluvus on cotton', 'Competition for nutrients and space'),
('A. flavus MUCL 54911', 'Mycotoxigenic Aspergillus spp. on maize', 'Competition for nutrients and space'),
('Aureobasidium pullulans DSM 14940 + DSM 14941', 'Fire blight and postharvest diseases of pome fruits', 'Competition for space and nutrients, physical barrier against pathogen infection'),
('Candida oleophila I−182', 'Botrytis spp., Penicillium spp. on citrus, pome fruit', 'Induced resistance'),
('Coniothyrium minitans CON/M/91-08', 'Sclerotinia sclerotiorum, Sclerotinia minor', 'Mycoparasitism of sclerotia'),
('Gliocladium catenulatum J1446 (current name Clonostachys rosea)', 'Soilborne pathogens and grey mould', 'Competition in rhizosphere, mycoparasitism, CWDE, antibiosis'),
('Gliocladium virens GL−21', 'Rhizoctonia solani and Pythium spp. on ornamentals, vegetables, cotton', NULL),
('Phlebiopsis gigantea', 'Root and butt rot caused by Heterobasidion annosum', 'Competition'),
('Pseudozyma flocculosa', 'Powdery mildew on wheat, barley, grapevines, apple and vegetables', 'Parasitism'),
('Pythium oligandrum M1', 'Grey mould and Sclerotinia', 'Mycoparasitism, induced resistance'),
('Trichoderma afroharzianum CBS 134709 (IBT 41409, G.J.S. 08–137)', 'Soilborne fungal plant pathogens (mostly food crops)', ''),
('Trichoderma asperellum ICC012 + Trichoderma gamsii ICC080', 'Soilborne pathogens and grapevine trunk diseases', 'Competition for space and nutrients mycoparasitism'),
('T. asperellum T25 + Trichoderma atroviride T11', 'Soilborne pathogens', 'Competition for space and nutrients, mycoparasitism, antibiosis'),
('Trichoderma guizhouense CBS 134707 (IBT 41407, G.J.S. 08–135)', 'Soilborne fungal plant pathogens', ''),
('Trichoderma harzianum + Trichoderma polysporum', NULL, 'Competition for space, mycoparasistism CWDE, antibiosis'),
('T. harzianum T22', 'Root diseases', 'Competition in rhizosphere, mycoparasitism, CWDE, antibiosis, induced resistance'),
('T. harzianum CBS 134708 (IBT 41408, G.J.S. 08–136)', 'Soilborne fungal plant pathogens', ''),
('Trichoderma simmonsii CBS 134706 (IBT 41406, G.J.S. 08–134)', 'Soilborne fungal plant pathogens', ''),
('Serendipita indica (syn. Piriformospora indica)', 'A wide range of mostly soilborne pathogens', 'Improves nutrient uptake, but also induces resistance'),
-- Bacteriophage:
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
-- ('BIOACTIVE_INGREDIENT', 'TARGET', ''),
('Consortium comprising Glomus intraradices, Funneliformis (Glomus) mosseae, T. atroviride and PGPR', NULL, 'Biostimulant');
-- Agrobacterium radiobacter 	Crown gall caused by Agrobacterium tumefaciens 	Antibiosis and competition in wounds 	Australia 1988, USA 2000, Turkey 2005 	K84 or K1026 Galltroll, NOGALL® (Becker Underwood)

INSERT INTO bcas_commercial (product_name, bioactive_ingredient, territories_approved_or_marketed) VALUES
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
-- ('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL),
('PRODUCT_NAME', 'BIOACTIVE_INGREDIENT', NULL);





SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
