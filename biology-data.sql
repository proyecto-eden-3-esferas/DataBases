SET NAMES utf8mb4;
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- You cannot just DROP SCHEMA biology unless FOREIGN KEY checks are suspended:
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE biology;



INSERT INTO biochemicals (biochemical, description) VALUES
-- protein INTO amino acid composites peptide (bonds) BY proteases
-- lipid INTO fatty acid AND glycerol BY lipases
-- Starch INTO PIECES OF simple disaccharide S BY amylases
-- Cellulose INTO glucose
-- disaccharides AND polysaccharides SUCH AS maltose AND starch, AND OF THE monosaccharide glucose
('alkaloid', NULL),
('ergovaline', 'an alkaloid mycotoxin');


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
('yeast', NULL),
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
('nematode', 'also called roundworms or eelworms;  are a diverse animal phylum inhabiting a broad range of environments. Most species are free-living, feeding on microorganisms, but there are many that are parasitic. The parasitic worms (helminths) are the cause of soil-transmitted helminthiases'),
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


INSERT INTO relationships (relationship, description, arity) VALUES
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
-- ('RELATIONSHIP', 'DESCRIPTION', 2),
('is_species_of_family', 'DESCRIPTION', 2),
('is_species',           'DESCRIPTION', 1);

INSERT INTO terms(term, description, field) VALUES
('saprotrophic', 'nutrition /sæprəˈtrɒfɪk, -proʊ-/ or lysotrophic nutrition is a process of chemoheterotrophic extracellular digestion involved in the processing of decayed (dead or waste) organic matter', 'nutrition'),
('blight', 'a rapid and complete chlorosis, browning, then death of plant tissues such as leaves, branches, twigs, or floral organs', 'phytology'),
('chlorosis', 'a condition in which leaves produce insufficient chlorophyll', 'phytology'),

('metabolomics', NULL, NULL),
--
('genomics', NULL, 'genetics'),
('gene expression', NULL, 'genetics'),
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
('fixation', 'the change in a gene pool from a situation where there exists at least two variants of a particular gene (allele) in a given population to a situation where only one of the alleles remains. That is, the allele becomes fixed', 'population genetics'),
-- Histology
('stroma', '(from Ancient Greek στρῶμα: layer, bed, bed covering) the part of a tissue or organ with a structural or connective role; made up of all the parts without specific functions of the organ - for example, connective tissue, blood vessels, ducts, etc.', 'histology'),
('parenchyma', 'consists of the cells that perform the function of the tissue or organ', 'histology'),
-- Ecology:
('niche', NULL, 'ecology'),
('epiphytic', NULL, 'ecology'),
('phyllosphere', NULL, 'ecology'),
('endosphere', 'the interior of plants as a habitat for other organisms', 'ecology'),
('endophyte', 'a microorganism colonizing the interior of plants (the endosphere) without causing disease', 'ecology'),
('holobiome', 'the combination of the plant and its associated microbiome', 'ecology'),
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
('stem cell', '', ''),
-- Anatomy
('malleus', '(hammer), the largest ear bone', 'ear bone'),
('incus', '', 'ear bone'),
('stapes', '', 'ear bone'),
('patella', 'kneecap', 'bone'),

-- Anatomical Terms
('fossa', 'a depression in a bone', 'anatomy'),
('lumen', 'open space', 'anatomy'),
('styloid', 'pointy', 'anatomy'),
('process', 'something that sticks out', 'anatomy'),
('epicondyle', '', 'anatomy'),

('mesentery', 'a fold of membrane that attaches the intestine to the wall around the stomach area and holds it in place', 'anatomy'),
('plexus', '', 'anatomy'),
('sympathetic', '', ''),
('pathogens', 'disease-causing foreign invaders', 'pathology'),
('epithelial', '', 'histology'),
('mediastinum', '', 'anatomy'),
('meninges', '(sg. meninx: the three membranes (dura mater, arachnoid, pia mater) that envelop the brain', 'animal histology'),
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



INSERT INTO animal_molecules (molecule, description, type) VALUES
('pheromone', 'a secreted or excreted chemical factor that triggers a social response in members of the same species.', 'hormone'),
('cholesterol', 'the principal sterol of all higher animals, distributed in body tissues, especially the brain and spinal cord, and in animal fats and oils; an essential structural component of animal cell membranes; a precursor for the biosynthesis of steroid hormones, bile acid and vitamin D', ''),
('collagen', 'the main structural protein in the extracellular matrix of a body&apos;s various connective tissues', 'protein'),
('elastin', 'elastin fibers provide elasticity, which allows the skin to come back to shape if stretched; the number of fibers increases with depth in the dermis', ''),
('estrogen', 'a hormone...', 'hormone'),
('testosterone', 'a hormone...', 'hormone'),
('histamine', 'released by the immune system; causes allergy symptoms; it also regulats the sleep-wake cycle and cognitive function', ''),
('lipase', 'an enzyme the body uses to break down fats in food so they can be absorbed in the intestines. Lipase is produced in the pancreas, mouth, and stomach', 'enzyme'),
('glucagon', '', ''),
('insulin', '', ''),
('keratin', 'a hard waterproof protein'),
('proteoglycan', 'a protein molecule with a carbohydrate added to it'),
('protease' , '(also called a peptidase, proteinase, or proteolytic enzyme) an enzyme that catalyzes proteolysis, breaking down proteins into smaller polypeptides or single amino acids, and spurring the formation of new protein products', 'enzyme'),
('fatty acid', '', '');

INSERT INTO organelles (organelle, description) VALUES
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),
-- ('', ''),

-- Components of a typical animal cell:
('nucleolus', '')
('nucleus', ''),
('ribosome (dots as part of 5)', ''),
('vesicle', ''),
('golgi apparatus (or, golgi body)', ''),
('cytoskeleton', ''),
-- ('smooth endoplasmic reticulum', ''),
-- ('rough endoplasmic reticulum', ''),
('mitochondrion', ''),
('vacuole', ''),
('cytosol', 'a liquid matrix around the organelles'),
('lysosome', ''),
('centrosome', ''),
('cell membrane', ''),
('endoplasmic reticulum', 'a part of a transportation system of the eukaryotic cell, with many other important functions such as protein folding; made up of two subunits – rough endoplasmic reticulum (RER), and smooth endoplasmic reticulum (SER); forms an interconnected network of flattened, membrane-enclosed sacs known as cisternae (in the RER), and tubular structures in the SER');

INSERT INTO animal_cells(cell, description) VALUES
('T cells', NULL),

-- cell types:
('epithelial', NULL),
('dendritic', NULL),
('mesenchymal', NULL),
('endothelial', NULL),

('keratinocyte', 'begin in the stratum basale and make up the majority of epidermal cells; purpose to grow and divide, and as they divide, they push the older cells up toward the surface; produce and fill themselves with keratin as they move towards the surface and die (cornification)'),
('melanocyte', 'produce skin pigments called melanin; stay in the stratum basale, with projections to more superficial layers'),
('dendritic cell', 'immune system cells found in the stratum spinosum and the stratum granulosum; alert the body''s immune system to the invasion of pathogens that could make it through the stratum corneum'),

('fibroblast', 'spindle-shaped; synthesizes the extracellular matrix and collagen, produces the structural framework (stroma) for animal tissues, and plays a critical role in wound healing; the most common cells of connective tissue in animals'),
('chondrocyte', 'cartilage cell; produces a matrix of proteoglycans and water'),
('spermatozoon', NULL),
('astricyte', NULL),
('hepatocyte', NULL),

-- Brain cells:
('neuron', NULL),
('glial cell', NULL),

-- neuroglia (aid in neuron function)
('oligodendrocyte', 'forms myelin in the CNS'),
('ependymal cell', 'produces cerebrospinal fluid in the CNS'),
('astrocyte', 'forms the blood-brain barrier in the CNS'),
('microglion', 'seeks out and fight pathogens in the CNS'),
('schwann cell', 'forms myelin in the PNS'),
('satellite cell', 'controls the environment for ganglia in the PNS'),

-- Bone cells:
('osteoblasts', 'they build bone tissue by forming a soft matrix of protein and carbohydrate molecules with collagen fibers'),
('osteoclasts', 'they destroy bone tissue; they allow hard mineral crystals to be deposited in the matrix'),

-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
('erythrocyte', 'red blood cell'),
('lymphocyte', 'white blood cell');


INSERT INTO animal_organs(organ, description) VALUES
('bone', NULL),
('joint', NULL),
('cartilage', NULL),

('muscle', NULL),
('tendon', NULL),
('ligament', NULL),

('spinal cord', NULL),
('brain', NULL),
('nerve', NULL),

('heart', NULL),
('blood', NULL),
('artery', NULL),
('vein', NULL),

('nasal cavity', NULL),
('oral cavity', NULL),
('pharynx', NULL),
('lung', NULL),
('diaphragm', NULL),
('trachea', NULL),

('esophagus', NULL),
('spleen', NULL),

('mouth', NULL),
('intestine', NULL),
('stomach', NULL),
('anus', NULL),

('kidney', NULL),
('bladder', NULL),
('ureter', NULL),
('urethra', NULL),

('skin', NULL),
('nail', NULL),
('hair', NULL),

('pancreas', NULL),
-- ('', NULL),
-- ('', NULL),

('thymus', 'the organ primarily responsible for the production and maturation of immune cells; including small lymphocytes that protect the body against foreign antigens; produces the cells that will live in the lymphoid tissues and supports their maturation and proper function'),

('fascial compartment', 'a section within the body that contains muscles and nerves and is surrounded by fascia.'),


('lymph node', NULL);

-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL),
-- ('', NULL);

INSERT INTO animal_tissues (tissue, organ, description) VALUES
('epithelial', NULL, ''),
('muscle', NULL, ''),
('nervous', NULL, ''),
('connective', NULL, ''),

-- skin layers:
('epidermis',    'skin', 'the skin''s outermost layer; provides a protective barrier'),
('dermis',       'skin', 'the skin''s middle layer; home to various structures, including sweat glands, connective tissue, lymphatic vessels, blood vessels, and hair follicles'),
('subcutaneous', 'skin', 'the skin''s deeper layer; made up of Fat and connective tissue'),

('fascia', NULL, '(/ˈfæʃ(i)ə/; a generic term for macroscopic membranous bodily structures.'),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', ''),
-- ('', '', '');
('lymph', NULL, '(lymphatic fluid) a collection of the extra fluid that drains from cells and tissues in your body and isn''t reabsorbed into your capillaries; it contains many different substances, including proteins, minerals, fats, damaged cells, cancer cells and germs');


INSERT INTO animal_body_systems (sys, description) VALUES
('skeletal', 'serves as the body''s skeleton and primary support structure'),
('muscular', 'make possible motion and aid in maintaining an upright posture'),
('nervous', 'coordinates motions and activities within the body'),
('cardiovascular', 'provide oxygen and nutrients to the body''s cells and organs'),
('respiratory', 'take in oxygen and expel carbon dioxide'),
('digestive', 'process food into energy and metabolites'),
('urinary', 'remove saste products from the blood'),
('integumentary', 'shield the body from harm and maintain a comfortable internal temperature'),
('endocrine', 'secrete hormones and control metabolism and development'),
('immune', 'protect the body against external pathogens'),
('lymphatic', 'a group of organs, vessels and tissues that protect you from infection and keep a healthy balance of fluids throughout your body; its organs include your bone marrow, thymus and lymph nodes');



SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
