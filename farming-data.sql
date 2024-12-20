
-- Support species to fill in the gaps in tightly-spaced hedgerows:
--   Asian pears, wild pears, rugosa roses, goumi, elderberry, medlar, currants, brambles.
-- perennial vegetables for the edible hedge:
--   asparagus, good king Henry, Turkish rocket, sunchokes, tuberous sweet pea, sweet woodruff, Caucasian spinach, perennial arugula, fennel, pokeweed, endive, garlic, walking onions, ramps, monarda, mints, groundnut, passion fruit, yams
-- trees for the hedgerow: bullace, hazelnut, crab apple, medlar, Asian pear, cornelian, cherry, goumi


-- Tables 'climates' and 'soils' may be referenced,
-- therefore they should precede all others

INSERT INTO plants (bname, family, life_type, climate) VALUES
('spinach', 'Amaranthaceae', 'vegetable', NULL),
('Chenopodium quinoa', 'Amaranthaceae', 'pseudocereal', 'generally undemanding and altitude-hardy'),
('Chenopodium berlandieri', 'Amaranthaceae', 'annual herbaceous', NULL),
('Panax ginseng', 'Araliaceae', 'perennial', 'mountain'),
('Zea may', 'Poaceae', 'cereal', NULL),
('Asparagus officinalis', 'Asparagaceae', 'perennial vegetable', NULL),
('Baptisia spp.', 'Fabaceae', 'leguminous shrub', NULL), -- wild indigo or false indigo; is a medium-size leguminous shrub. It builds soil fertility and can be coppiced for woody biomass and grown around the edges of the central tree.
('Toona sinensis', NULL, 'ornamental', NULL),
('Campanula', 'Campanulaceae', 'edible ornamental', 'full sun to moderate shade. Can do well in poor to rich garden soil, heavy or light. Cannot compete well with grasses.'), -- full sun to moderate shade; bellflower
('Campanula rapunculus', NULL, 'edible ornamental', NULL),
('Campanula versicolor', NULL, 'edible ornamental', NULL),
('hosta', 'Asparagaceae', 'long-lived perennial', 'moist, shady'), -- 'full shade, rich, woodland soils with coarse woody debris mulch' =
-- ('Japonica (striped) corn/maize', NULL, NULL,  'full sun, rich fertile garden soil'),
('cymbopogon', 'Poaceae', NULL, NULL), -- lemongrass
('Lupinus', 'Fabaceae', NULL, NULL), -- lupin, lupine, or regionally bluebonnet; altramuz (es)
('Lupinus Mutabilis', 'Fabaceae', NULL, NULL),
('Malva moschata',    'Malvaceae', NULL, NULL), -- beautiful ornamental edible mallow
('malva',             'Malvaceae', 'grass', NULL), -- beautiful ornamental edible mallow
('Malva sylvestris',  'Malvaceae', 'grass', NULL), -- beautiful ornamental edible mallow
('Malva alcea',       'Malvaceae', 'ornamental perennial', NULL), -- beautiful ornamental edible mallow
('Hibiscus syriacus', 'Malvaceae', 'ornamental/edible bush or tree', NULL),
('Asclepias syriaca', 'Apocynaceae', ' herbaceous perennial',  'full sun to part shade; highly variable soils, can thrive in sandy soil to swamp'), -- in the milkweeds
('Claytonia perfoliata', 'Apocynaceae', NULL, NULL), -- common milkweed, butterfly flower, silkweed, silky swallow-wort, and Virginia silkweed
-- ('Brassica oleracea acephala', 'brassica', NULL), -- kale

-- ('cauliflower', NULL,'brassica', NULL),
-- ('broccoli', NULL,'brassica', NULL),
-- ('tree collard', NULL,'brassica', NULL),
-- ('purple broccoli', NULL,'brassica', NULL),
('Cynara', 'Asteraceae', 'thistle-like perennial', NULL),
-- ('scarlet runner bean', NULL, NULL, NULL),
('Dolichos Lablab', 'Fabaceae', 'perennial grass', NULL),
('Phaseolus vulgaris', 'Fabaceae', NULL, NULL),
-- ('Purple dragon dwarf bush bean', NULL, NULL, NULL),
('Borago officinalis', 'Boraginaceae', NULL, NULL), -- starflower
('sorrel', 'Polygonaceae', 'herbaceous perennial', NULL), -- Sorrel is a leafy green plant, use alternately as an herb and a vegetable, with a distinctive sour, lemony flavor. It's from the knotweed family, or Polygonaceae, the same botanical family as buckwheat and rhubarb. It also goes by the name "dock."
('Rumex acetosa', 'Polygonaceae', 'herbaceous perennial', NULL), -- Common sorrel (Rumex acetosa) is the one most readily available at markets and nurseries for planting. It is a deep-rooted perennial that will last for years and years if it finds a spot it likes. It has a sharp flavor and somewhat large, arrow-shaped leaves.
('Rumex scutatus', 'Polygonaceae', 'herbaceous perennial', NULL), -- French sorrel (Rumex scutatus) is also cultivated, so you'll see it at markets sometimes. It has a milder flavor than common sorrel, with smaller and more rounded leaves.
('Rumex sanguineus', 'Polygonaceae', 'herbaceous perennial', NULL), -- Red-veined sorrel (Rumex sanguineus) has, as you may have already guessed, deep red veins running through its leaves. It has a very mild, almost un-sorrel-like flavor with very little of the tartness usually associated with this plant. It does stand out in a salad.
('Rumex acetosella', 'Polygonaceae', 'herbaceous perennial', NULL), -- Sheep's sorrel (Rumex acetosella) grows wild in much of the United States. It is about as sour as common sorrel but with smaller leaves. It is foraged rather than cultivated.
('Conopodium majus', 'Apiaceae', 'edible tubers', 'in woods and fields from Norway to Italy and Corsica'), -- earthnut
('Fagopyrum esculentum', 'Polygonaceae', 'herbaceous annual pseudocereal', NULL), -- buckwheat
-- ('BNAME', 'Polygonaceae', 'LIFE_TYPE', 'CLIMATE'), -- rhubarb
('Amaranthus', 'Amaranthaceae', 'short-lived perennials', NULL), -- amaranth
('Amaranthus caudatus', 'Amaranthaceae', 'annual, broad-leaved dicotyledon', NULL), --
('Allium cepa', 'Amaryllidaceae', 'herbaceous biennial vegetable', 'temperate'), -- onions
-- ('garlic', NULL, NULL, NULL), -- allium genus, scapes, bulbils
-- In the APG III classification system, Allium is placed in the family Amaryllidaceae, subfamily Allioideae (formerly the family Alliaceae).[11] In some of the older classification systems, Allium was placed in Liliaceae.
('Allium x proliferum', 'Liliaceae', NULL, NULL), -- allium genus, onion flavour, alternative fam. 'Amaryllidaceae'
('Allium schoenoprasum', 'Liliaceae', NULL, NULL),-- allium genus, alternative fam. 'Amaryllidaceae'
('Allium ampeloprasum', 'Liliaceae', NULL, NULL), -- allium genus, alternative fam. 'Amaryllidaceae'
-- ('scallion', NULL, NULL, NULL), -- allium genus?
('Allium tuberosum', 'Liliaceae', NULL, NULL), -- allium genus, alternative fam. 'Amaryllidaceae'
('Allium Carninatum', 'Liliaceae', NULL, NULL), -- allium genus, alternative fam. 'Amaryllidaceae'
('Allium Cowanii', 'Liliaceae', NULL, NULL), -- allium genus, alternative fam. 'Amaryllidaceae'
('Allium unifolium', 'Liliaceae', NULL, NULL), -- allium genus, alternative fam. 'Amaryllidaceae'
('Salvia hispanica', 'Lamiaceae', 'annual grass', NULL), -- chia
('Agastache foeniculum', 'Lamiaceae', NULL, NULL),
('Jerusalem artichoke', 'Asteraceae', NULL, NULL),
('Urtica dioica', 'Urticaceae', 'weedy perennial', NULL), -- 'stinging nettle'
('Raphanus sativus', 'Brassicaceae', 'annual or biennial', NULL),
('Capsicum annuum', 'Solanaceae', 'annual pepper cultivar', NULL), -- bell pepper
('Moringa oleifera', 'Moringaceae', 'small deciduous tree', 'tropical'), -- also naturalized in Africa and tropical America. Flowers, pods, leaves, and even twigs are cooked and eaten. The leaves, which can also be eaten raw when young, are especially nutritious and are high in iron, potassium, and vitamin C. A horseradish-flavoured condiment is prepared from the crushed roots. Ben oil, extracted from the seeds, is used by watchmakers and in cosmetics; perfume makers value it for its retention of scents.
-- ('wild plum', NULL, NULL, NULL),
-- ('elderberry', NULL, NULL, NULL),
-- ('blackberry', NULL, NULL, NULL), -- low-maintenance
-- ('raspberry', NULL, NULL, NULL),  -- low-maintenance
-- ('goumi', NULL, NULL, NULL),  -- low-maintenance
-- ('Hardy kiwi', NULL, NULL, NULL),  -- low-maintenance
                                                                                        -- Issai recommended
-- ('honeyberry', NULL, NULL, NULL),  -- low-maintenance
-- ('Aronia berry', NULL, NULL, NULL),  -- low-maintenance
-- ('strawberry', NULL, NULL, NULL),  -- low-maintenance
-- ('hawthorn', NULL,'tree', NULL), -- lower-yielding
-- ('Asian pear', NULL,'fruit tree', NULL),
-- ('blackthorn', NULL,'tree', NULL),
-- INSERT INTO plants ('BNAME', 'FAMILY', 'LIFE_TYPE', 'CLIMATE')
('Asimina triloba', 'Annonaceae', 'small deciduous fruit tree', NULL), -- require very little care
-- ('jujube', NULL,'fruit tree', NULL), -- big, sweet, valuable fruit without such a problem with bugs
-- ('mango', NULL,'fruit tree', NULL),    -- require very little care
-- ('Aromatnaya quince', NULL,'fruit tree', NULL),  -- recommended above other vars
-- ('quince', NULL,'fruit tree', NULL),   -- require very little care
                                                                                               -- a fireblight host, though
('Cajanus cajan', 'Fabaceae', 'legume', NULL),
-- ('apple', NULL,'fruit tree', NULL),
-- ('pear', NULL,'fruit tree', NULL),
-- ('peach', NULL,'fruit tree', NULL),
-- ('Chinese Mormon apricot', NULL,'fruit tree', NULL),
-- ('apricot', NULL,'fruit tree', NULL),
-- ('Nakita''s gift persimmon', NULL,'fruit tree', NULL), -- big, sweet, valuable fruit without such a problem with bugs
-- ('persimmon', NULL,'fruit tree', NULL),
-- ('plum', NULL,'fruit tree', NULL),
-- ('cherry', NULL,'fruit tree', NULL),
-- ('citrus', NULL,'fruit tree', NULL),
-- ('fig', NULL, NULL, NULL),
-- ('sea buckthorn', NULL, NULL, NULL),
-- ('mulberry', NULL, NULL, NULL),  -- lower-yielding
-- ('contorted mulberry', NULL, NULL, NULL),
-- ('weeping mulberry', NULL, NULL, NULL),
-- ('serviceberry', NULL, NULL, NULL),  -- lower-yielding
-- NUT TREES FOR THE HOME-GROWER:
-- ('black walnut', NULL,'nut tree', NULL),
  -- Valuable tree, difficult nuts to crack. Select easy-to-crack varieties
-- ('Carpathian walnut', NULL,'nut tree', NULL),
-- ('pecan', NULL,'nut tree', NULL),
-- ('butternut', NULL,'nut tree', NULL),
-- ('heartnut', NULL,'nut tree', NULL),
-- ('hickory nut', NULL,'nut tree', NULL),
-- ('chestnut', NULL,'nut tree', NULL),
  -- Staple carb crop highly recommended for larger gardens or forest systems.
-- ('Korean pine', NULL,'nut tree', NULL),
('Camasia quamash', 'Asparagaceae', 'perennial herbaceous monocot', 'mediterranean'),
('Symphytum', 'Boraginaceae', NULL, NULL),
-- ('Bocking comfrey', NULL, NULL, NULL),
('Symphytum ibericum', 'Boraginaceae', NULL, NULL), -- This is a most useful and handsome plant making impenetrable weed-cover in shade among shrubs. It forms mounds of large dark green leaves, spreading by underground shoots. In spring before the new leaves are fully developed the fiddle-neck clusters of flowers change from burnt-orange buds to creamy-yellow bells. - dwarf comfrey
('Hemerocallis fulva',           'Asphodelaceae', NULL, NULL),
('Hemerocallis lilioasphodelus', 'Asphodelaceae', NULL, NULL),
-- ('dogwood', NULL, NULL, NULL),  -- lower-yielding
-- ('', NULL, NULL, NULL),
-- ('', NULL, NULL, NULL),
-- ('', NULL, NULL, NULL),
-- ('', NULL, NULL, NULL),
-- ('', NULL, NULL, NULL),
-- ('crab apple', NULL, NULL, NULL), -- lower-yielding
('Petasites japonica', 'Asteraceae', 'herbaceous perennial',  'woodland plant, thrives in shade');

INSERT INTO vernacular (vname, bname, code) VALUES
-- (VNAME,BNAME,CODE),
('chia', 'Salvia hispanica', 'en'),
('chia', 'Salvia hispanica', 'es'),
('ginseng', 'Panax ginseng', 'en'),
('ginseng', 'Panax ginseng', 'es'),
('cassava (/kəˈsɑːvə/)', 'Manihot esculenta', 'en'),
('manioc',               'Manihot esculenta', 'en'),
('yuca',                 'Manihot esculenta', 'en'),
('hosta',        'hosta','en'),
('plantain lily','hosta','en'),
('gibōshi',      'hosta','en'),
('hosta',        'hosta','es'),
('kale', 'Brassica oleracea acephala', 'en'), -- shoud match a ssp. not a sp.
('maize', 'Zea may','en'),
('corn',  'Zea may','en'),
('rose of Sharon', 'Hibiscus syriacus', 'en'),
-- ('Good King Henry', '', 'vegetable', NULL),
('False indigo bush', 'Baptisia spp.', 'en'),
-- ('Turkish rocket', '', 'perennial vegetable', NULL), -- produces yearly crops of broccoli-flower heads and edible leaves. The flowers support myriad pollinators
('Toon tree', 'Toona sinensis', 'en'),
('bellflower', 'Campanula', 'en'),
('(dreaded) bellflower', 'Campanula rapunculus', 'en'),
('versicolor bellflower', 'Campanula versicolor', 'en'),
-- ('hosta', '', ''en'),
-- ('Japonica maize', '''en'),
('lemongrass', 'cymbopogon', 'en'),
('lupine', 'Lupinus', 'en'),
('Andean lupine', 'Lupinus Mutabilis', 'en'),
('Mallow', 'Malva', 'en'),
('musk mallow', 'Malva moschata', 'en'),
('marshmallow', 'Malva', 'en'),
('common mallow', 'Malva sylvestris', 'en'),
('cheeses', 'Malva sylvestris', 'en'),
('high mallow', 'Malva sylvestris', 'en'),
('tall mallow', 'Malva sylvestris', 'en'),
('mauve des bois', 'Malva sylvestris', 'fr'),
('hollyhock mallow', 'Malva alcea', 'en'), -- beautiful ornamental edible mallow
-- ('rose of Sharon', NULL, NULL,    NULL'en'), -- beautiful ornamental edible mallow
('milkweed', 'Asclepias syriaca', 'en'),
('miner''s Lettuce', 'Claytonia perfoliata', 'en'),
-- ('cauliflower', NULL,'brassica',    NULL'en'),
-- ('broccoli', NULL,'brassica',    NULL'en'),
-- ('tree collard', NULL,'brassica',    NULL'en'),
-- ('purple broccoli', NULL,'brassica',    NULL'en'),
('artichokes', 'Cynara', 'en'),
('cardoons', 'Cynara', 'en'),
-- ('scarlet runner bean', '', 'en'),
('hyacinth beans', 'Dolichos Lablab', 'en'),
('common bean', 'Phaseolus vulgaris', 'en'),
-- ('Purple dragon dwarf bush bean', '', 'en'),
('Borage', 'Borago officinalis', 'en'),
-- ('sorrel', '', 'en'),
-- ('amaranth', '', 'en'),
-- ('onion', NULL, NULL,   NULL'en'), -- allium genus
-- ('garlic', '', 'en'), -- allium genus, scapes, bulbils
('Egyptian walking onion', 'Allium x proliferum', 'en'),
('chive', 'Allium schoenoprasum', 'en'),-- allium genus
('leek', 'Allium ampeloprasum', 'en'), -- allium genus
-- ('scallion', '', 'en'), -- allium genus?
-- ('', 'Allium tuberosum', NULL,    NULL'en'), -- allium genus
-- ('', 'Allium Carninatum', NULL,    NULL'en'), -- allium genus
-- ('', 'Allium Cowanii', NULL,    NULL'en'), -- allium genus
('Single Leaf Onion', 'Allium unifolium', 'en'), -- allium genus
('celery', 'Agastache foeniculum', 'en'),
('Anise hyssop', 'Agastache foeniculum', 'en'),
-- ('Jerusalem artichoke', '', 'en'),
-- ('wild plum', '', 'en'),
-- ('elderberry', '', 'en'),
-- ('blackberry', '', 'en'),
-- ('raspberry', '', 'en'),
-- ('goumi', '', 'en'),
-- ('Hardy kiwi', '', 'en'),
-- ('honeyberry', '', 'en'),
-- ('Aronia berry', '', 'en'),
-- ('strawberry', '', 'en'),
-- ('hawthorn', '', 'en'),
-- ('Asian pear', '', 'en'),
-- ('blackthorn', '', 'en'),
('paw paws', 'Asimina triloba', 'en'),
-- ('jujube', '', 'en'),
-- ('mango', '', 'en'),
-- ('Aromatnaya quince', '', 'en'),
-- ('quince', '', 'en'),
('pigeon pea tree', 'Cajanus cajan', 'en'),
-- ('apple', '', 'en'),
-- ('pear', '', 'en'),
-- ('peach', '', 'en'),
-- ('Chinese Mormon apricot', '', 'en'),
-- ('apricot', '', 'en'),
-- ('Nakita''s gift persimmon', '', 'en'),
-- ('persimmon', '', 'en'),
-- ('plum', '', 'en'),
-- ('cherry', '', 'en'),
-- ('citrus', '', 'en'),
-- ('fig', '', 'en'),
-- ('sea buckthorn', '', 'en'),
-- ('mulberry' '', 'en'),
-- ('contorted mulberry', '', 'en'),
-- ('weeping mulberry', '', 'en'),
-- ('serviceberry', '', 'en'),  -- lower-yielding
-- NUT TREES FOR THE HOME-GROWER:
-- ('black walnut', '', 'en'),
  -- Valuable tree, difficult nuts to crack. Select easy-to-crack varieties
-- ('Carpathian walnut', '', 'en'),
-- ('pecan', '', 'en'),
-- ('butternut', '', 'en'),
-- ('heartnut', '', 'en'),
-- ('hickory nut', '', 'en'),
-- ('chestnut', '', 'en'),
  -- Staple carb crop highly recommended for larger gardens or forest systems.
-- ('Korean pine', '', 'en'),
('camas', 'Camasia quamash', 'en'),
('comfrey', 'Symphytum', 'en'),
-- ('Bocking comfrey', '', 'en'),
('dwarf comfrey', 'Symphytum ibericum', 'en'),
('ditch lily (a)', 'Hemerocallis fulva', 'en'),
('ditch lily (b)', 'Hemerocallis lilioasphodelus', 'en'),
('Bocking comfrey', 'Symphytum × uplandicum', 'en'),
('Egyptian walking onions', 'Allium x proliferum', 'en'),
('fuki', 'Petasites japonica', 'en');

INSERT INTO crop_groups (crop,crop_group,code) VALUES
('broccoli', 'brassicas', 'en'),
('brussels sprouts', 'brassicas', 'en'),
('cabbage', 'brassicas', 'en'),
('cauliflower', 'brassicas', 'en'),
('sea kale', 'brassicas', 'en'),
('kohl rabi', 'brassicas', 'en'),
('turnip', 'brassicas', 'en'),
('swede', 'brassicas', 'en'),
('radish', 'brassicas', 'en'),
('horseradish', 'brassicas', 'en'),
('cucumber', 'cucurbitaceae', 'en'),
('marrow', 'cucurbitaceae', 'en'),
('pumpkin', 'cucurbitaceae', 'en'),
('squash', 'cucurbitaceae', 'en'),
('cantaloupe', 'cucurbitaceae', 'en'), -- ie rock melon
('zucchini', 'cucurbitaceae', 'en'),
('onion', 'liliaceae', 'en'),
('leeks', 'liliaceae', 'en'),
('garlic', 'liliaceae', 'en'),
('asparagus', 'liliaceae', 'en'),
('chives', 'liliaceae', 'en'),
('peas', 'fabaceae', 'en'),
('beans', 'fabaceae', 'en'),
('clover', 'fabaceae', 'en'),
-- ('', 'fabaceae', 'en'),
('maize', 'poaceae', 'en'),
('wheat', 'poaceae', 'en'),
('barley', 'poaceae', 'en'),
('rye', 'poaceae', 'en'),
('oats', 'poaceae', 'en'),
-- ('corn', 'poaceae', 'en'),
('celery', 'apiaceae', 'en'),
('carrot', 'apiaceae', 'en'),
('parsnip', 'apiaceae', 'en'),
('fennel', 'apiaceae', 'en'),
('chicory', 'asteraceae', 'en'),
('lettuce', 'asteraceae', 'en'),
('endive', 'asteraceae', 'en'),
('globe artichoke', 'asteraceae', 'en'),
('sunflower', 'asteraceae', 'en'),
('silver beet', 'chenopodiaceae', 'en'),
('beetroot', 'chenopodiaceae', 'en'), -- red beet
('spinach', 'chenopodiaceae', 'en'),
('tomato', 'cucurbitaceae', 'en'),
('capsicum', 'solanaceae', 'en'),
('potato', 'solanaceae', 'en'),
('eggplant', 'solanaceae', 'en');

INSERT INTO companion(bname, with_bname, explanation) VALUES
-- (bname, with_bname, explanation),
('Asparagus officinalis', 'tomato', 'The tomato plant repels the asparagus beetle. Asparagus may repel some harmful root nematodes that affect tomato plants.');

INSERT INTO pests (pname, nature, mechanism, part, vector, conditions) VALUES
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
('powdery mildew', NULL, NULL, NULL, NULL, NULL),
('Argentinian weevil', 'invasive weed', NULL, NULL, NULL, NULL),
('Fallopia japonica', 'invasive weed', NULL, NULL, NULL, NULL), -- Japanese knotweed
('Fusarium', 'ascomycete fungus', NULL, NULL, NULL, NULL), -- MECHANISM, PART, VECTOR, CONDITIONS),
('Phytophthora cinnamomi', 'oomycete', NULL, NULL, NULL, NULL), -- MECHANISM, PART, VECTOR, CONDITIONS), -- causes Phytophthora root rot of many plants
('Plasmopara viticola', 'oomycete', NULL, NULL, NULL, NULL), -- MECHANISM, PART, VECTOR, CONDITIONS), -- causes grapevine downy mildew
('Phytophthora infestans', 'oomycete', NULL, NULL, NULL, NULL), -- MECHANISM, PART, VECTOR, CONDITIONS), -- the potato late blight pathogen
('Agrobacterium tumefaciens', 'bacteria', NULL, NULL, NULL, NULL), -- MECHANISM, PART, VECTOR, CONDITIONS),
('downy mildew', 'a fungal disease that causes yellow to grey-brown patches on leaves, especially the undersides. Water plants at soil level (not on the leaves), remove and destroy affected leaves and do not overcrowd plants to ensure adequate air flow. If problems persist, spray with a homemade milk spray or fungicide.', NULL, 'leaves', NULL, NULL),
('aphids', 'small (2-4mm long) sap-sucking insects. They can cause leaves to wilt or become discoloured, and also excrete honeydew which can attract ants and other insect pests. To manage aphids, remove them by spraying with a garden hose, apply a soap or alcohol spray, or encourage predatory insects to your garden.', NULL, 'new shoots or the undersides of leaves', NULL, NULL),
('botryotinia', 'ascomycete fungi', 'Plant diseases caused by Botryotinia species appear primarily as blossom blights and fruit rots but also as leaf spots and bulb rots in the field and in stored products. The fungi induce host cell death resulting in progressive decay of infected plant tissue', NULL, NULL, NULL),
('Fusarium oxysporum', 'ascomycete fungus', NULL, 'root', NULL, NULL), --  causes a disease called fusariosis in roots that causes a yellowing and wilting, with serious ecological damages to woodland plants and economic losses in plants of commercial interest.
('cabbage moth', NULL, NULL, NULL, NULL, NULL),
('fireblight', NULL, NULL, NULL, NULL, NULL),
('fruit moth', NULL, NULL, NULL, NULL, NULL),
('apple maggot', NULL, NULL, NULL, NULL, NULL),
('rusts', NULL, NULL, NULL, NULL, NULL),
('borers', NULL, NULL, NULL, NULL, NULL),
('spotted lantern fly risk', NULL, NULL, NULL, NULL, NULL),
('tomato hornworms', NULL, NULL, NULL, NULL, NULL);

INSERT INTO terms (term, description, field) VALUES
('consortia', 'mixtures of microorganisms', 'biological control'),
('stratification', NULL, NULL),
('stover', 'the leaves and stalks of field crops, such as corn (maize), sorghum or soybean that are commonly left in a field after harvesting the grain; similar to straw, the residue left after any cereal grain or grass has been harvested at maturity for its seed', 'farming'),
('pseudocereal', 'or pseudograin, is one of any non-grasses that are used in much the same way as cereals (true cereals are grasses). Prominent examples include amaranth, quinoa, and buckwheat. They have a good nutritional profile, with high levels of essential amino acids, essential fatty acids, minerals, and some vitamins.', NULL),
('herb', 'a widely distributed and widespread group of plants, excluding vegetables and other plants consumed for macronutrients, with savory or aromatic properties that are used for flavoring and garnishing food, for medicinal purposes, or for fragrances.\nCulinary use typically distinguishes herbs from spices. Herbs generally refers to the leafy green or flowering parts of a plant (either fresh or dried), while spices are usually dried and produced from other parts of the plant, including seeds, bark, roots and fruits.', 'kitchen'),
('bonemeal', NULL, 'farming'),
('cultivar', 'a kind of cultivated plant that people have selected for desired traits and which retains those traits when propagated.', 'farming'),
('variety', NULL, 'farming'),
('biological control', 'any reduction in the amount or the effect of pathogens (disease-producing activity) that is achieved through the induction of biological mechanisms or the action of naturally occurring or introduced antagonists, that occurs by manipulating the microenvironment to favour the activity of antagonists', 'farming'),
('biodynamic preparations/sprays', NULL, 'biodynamic'),
-- For teaching purpose, plant breeding is presented as four categories:
('line breeding', '(autogamous crops)', 'plant breeding category'),
('population breeding', '(allogamous crops)', 'plant breeding category'),
('hybrid breeding', '(mostly allogamous crops, some autogamous crops)', 'plant breeding category'),
('clone breeding', '(vegetatively propagated crops)', 'plant breeding category'),
('biotemperature', 'proxy based on the growing season length and temperature. Measured as the mean of all annual temperatures, with all temperatures below freezing and above 30 °C adjusted to 0 °C, as most plants are dormant at these temperatures.', NULL),
('hardiness zone', 'a geographic area defined as having a certain average annual minimum temperature, a factor relevant to the survival of many plants.', NULL),
('essential nutrient', 'a nutrient required for normal physiological function that cannot be synthesized in the body – either at all or in sufficient quantities – and thus must be obtained from a dietary source', NULL),
('phytochemical', 'chemical compounds produced by plants, generally to help them resist fungi, bacteria and plant virus infections, and also consumption by insects and other animals', NULL),
('fortress plant', NULL, 'farming'),
('guerrilla gardening', NULL, 'farming'),
('insectary plant', NULL, 'farming'),
('breed', NULL, NULL),
('swath', NULL, NULL),
('zone', NULL, NULL),
('GMO', 'genetically modified organism', 'farming'),
('heirloom', 'tend to be of more value to both wildlife and humans', 'horticulture'),
('hardy', NULL, NULL), -- adj

('hybrid', NULL, NULL),

('variegated', NULL, NULL), -- adj
('to overwinter', NULL, NULL), -- verb

('buck', NULL, NULL),
('doe', NULL, NULL),

('to fritter', NULL, 'kitchen'), -- verb
('to stir fry', NULL, 'kitchen'), -- verb
('to sautee', NULL, 'kitchen'), -- verb
('dip', NULL, 'kitchen'),
('licorice', NULL, NULL),
('molass', NULL, NULL),
('okra', NULL, NULL),
('polenta', NULL, NULL),
('tangy [taste]', NULL, NULL), -- adj
('tart [taste]', NULL, NULL), -- adj
('zingy [taste]', NULL, NULL), -- adj
('caper', NULL, 'farming'),
('fodder', NULL, 'farming'),
('graywater', 'household water, such as that from the laundry or bath, that does not contain serious contaminants', NULL),
('greenbelt', NULL, 'farming'),
('livestock', NULL, 'farming'),
('rootstock', NULL, 'farming'),
('[water] runoff', NULL, 'farming'),
('stormwater', NULL, 'farming'),
('understory', NULL, 'ecology'),
('vineyard', NULL, 'farming'),
('amendment', NULL, 'farming'),
('appropriate technology', NULL, NULL),
('double digging', NULL, 'farming'),
('espalier', NULL, 'farming'),
('grazier', NULL, 'farming'),
('guild', NULL, 'farming'),
('hügelkultur', 'roughly, “mound culture” in German. Wood is stacked on the ground (or in shallow trenches), and a layer of soil or compost is shoveled over the top. The mound becomes a raised garden bed.\nThe plants growing there can take advantage of the slow decomposition of the wood, which holds moisture and slowly releases nutrients.', 'farming'),
('humanure', 'human waste', 'farming'),
('intercropping', NULL, 'farming'),
('mulch', NULL, 'farming'),
('polyculture', NULL, 'farming'),
('swale', NULL, 'farming'),
('Three Sisters guild', NULL, 'farming'),
('tillage', NULL, 'farming'),
('trellise', NULL, 'farming'),
('veggie circle beds', NULL, 'farming'),
('worm tubes', NULL, 'farming'),
('to re-skill', NULL, NULL), -- verb
('to bag', NULL, 'farming'), -- verb
('to browse', NULL, 'farming'), -- verb
('to coppice', NULL, 'farming'), -- verb
('to forage', NULL, 'farming'), -- verb
('to harden off', NULL, 'farming'), -- verb
('to pollard', NULL, 'farming'), -- verb
('to prune', NULL, 'farming'), -- verb
('to spray', NULL, 'farming'), -- verb
('to thin', NULL, 'farming'), -- verb
('disruptive technology', 'any innovation that disrupts an existing market or
industry, displacing established products or services and creating new markets and
opportunities', NULL),
('to train', NULL, 'farming'); -- verb

INSERT INTO plant_anatomy (part, description) VALUES
('acorn', 'or oaknut, the nut of the oaks and their close relatives (genera Quercus and Lithocarpus, in the family Fagaceae)'),
('cotyledon', '(/ˌkɒtɪˈliːdən/; a "seed leaf" - a significant part of the embryo within the seed of a plant, and is formally defined as "the embryonic leaf in seed-bearing plants, one or more of which are the first to appear from a germinating seed."\nBotanists use the number of cotyledons present as one characteristic to classify the flowering plants (angiosperms): species with one cotyledon are called monocotyledonous ("monocots"); plants with two embryonic leaves are termed dicotyledonous ("dicots").'),
('actinomorphic', NULL),
('apoplast', NULL),
('anther', NULL),
('berry', NULL),
('bract', NULL),
('bracteole', NULL),
('bulb', NULL),
('carpel', NULL),
('circumscissile', NULL),
('clump', NULL),
('corm', NULL),
('cyme', NULL),
('diaspore', NULL),
('herbaceous', NULL),
('hypogynous', NULL),
('idioblast', NULL),
('locule', NULL),
('panicle', NULL),
('pantoporate', NULL),
('perianth', NULL),
('perisperm', NULL),
('petiole', NULL),
('pseudostaminode', NULL),
('runner', NULL),
('seedling', NULL),
('spike', NULL),
('scarious', NULL),
('stamen', NULL),
('stipules', NULL),
('stand', NULL),
('tepal', NULL),
('tuber', NULL),
('utricle', NULL);


-- TABLE 'farming_theories' mainly consists of a theory + a long discussion.
-- Check the size of column 'description' VARCHAR(XXXX), possibly around 2000 characters maximum
INSERT INTO farming_theories (theory, description) VALUES
-- Approaches discussed in "Sustainable Agriculture", by John Mason
('low input', 'Based on the idea that depletion of resources is a major problem'),
('regenerative', 'Seeks to create a system that will regenerate itself after each harvest. Techniques such as composting, green manuring and recycling may be used to return nutrients to the soil after each crop. Permaculture is currently perhaps the ultimate regenerative system'),
('biodynamic', 'Concentrates on mobilising biological mechanisms. Organisms such as worms and bacteria in the soil break down organic matter and make nutrients available to pastures or crops. Under the appropriate conditions, nature will help dispose of wastes (eg animal manures), and encourage predators to eliminate pests and weeds. It has many things in common with other forms of natural growing, but it also has a number of unique characteristics.\nBiodynamics views the farm or garden as a "total" organism and attempts to develop a sustainable system where all of the components of the living system have a respected and proper place.\nThere is a limited amount of scientific evidence available which relates to biodynamics.'),
('organic','Traditionally this involves using natural inputs for fertilisers and pest control, and techniques such as composting and crop rotation. In many countries, there are schemes which "certify" produce as being organic. These schemes lay down very specific requirements, including products and farming techniques which are permitted, and others which are prohibited.'),
('conservation farming', 'Based on the idea of conserving resources that already exist on the farm. It may involve such things as, for example, identifying and retaining the standard and quality of waterways, creek beds, nature strips, slopes.'),
('hydroponics', 'Involves separating plant growth from the soil, and taking greater control of the growth of a crop. This increases your ability to manage both production and the disposal of waste.\n Hydroponics is not a natural system of cropping, but it can be very environmentally friendly. A lot of produce can be grown in a small area; so despite the high establishment costs, the cost of land is much less, allowing farms to operate closer to markets. In the long term, a hydroponic farm uses fewer land resources, fewer pesticides, and is less susceptible to environmental degradation than many other forms of farming.'),
('genetic improvement', 'This principle involves breeding or selecting animal or plant varieties which have desirable genetic characteristics. If a particular disease becomes a problem, you select a variety that has reduced susceptibility. If the land is threatened with degradation in a particular way, you should change to varieties that do not pose that problem.'),
('polycultures', 'Many modern farms practise monoculture, growing only one type of animal or plant. With large populations of the same organism, though, there is greater susceptibility to all sorts of problems. Diseases and pests can build up to large populations. One type of resource (required by that variety) can be totally depleted, while other resources on the farm are under-used. If the market becomes depressed, income can be devastated. A polyculture involves growing a variety of different crops or animals, in order to overcome such problems.'),
('integrated management', 'Holds that good planning and monitoring the condition of the farm and marketplace will allow the farmer to address problems before they lead to irreversible degradation.\nChemical pesticides and artificial fertilisers may still be used, but their use will be better managed. Soil degradation will be treated as soon as it is detected. Water quality will be maintained. Ideally, diseases will be controlled before they spread. The mix of products being grown will be adjusted to reflect changes in the marketplace (eg battery hens and lot-fed animals may still be produced but the waste products which often damage the environment should be properly treated, and used as a resource rather than being dumped and causing pollution).'),
('permaculture', 'a carefully designed landscape which contains a wide range of different plants and animals. This landscape can be small (eg a home garden), or large (eg a farm), and it can be harvested to provide such things as wood (for fuel and building), eggs, fruit, herbs and vegetables, without seriously affecting the environmental balance. In essence, it requires little input once established, and continues to produce and remain sustainable.\nIn its strictest sense, permaculture is a system of production based on perennial, or self-perpetuating, plant and animal species which are useful to people. In a broader context, permaculture is a philosophy which encompasses the establishment of environments which are highly productive and stable, and which provide food, shelter, energy, etc., as well as supportive social and economic infrastructures.\nIn comparison to modern farming techniques practised in Western civilisations, the key elements of permaculture are low energy and high diversity inputs. The design of the landscape, whether on a suburban block or a large farm, is based on these elements.\nA permaculture system can be developed on virtually any type of site. Establishing a permaculture system requires a reasonable amount of pre-plan- ning and designing. Factors such as climate, landform, soils, existing vegetation and water availability need to be considered. Observing patterns in the natural environment can give clues to matters which may become a problem later, or which may be beneficial.'),
-- Sustainable Concepts (a chapter in John Mason's "Sustainable Agriculture":
('natural farming', 'Natural farming works with nature rather than against it. It recognises the fact that nature has many complex processes which interact to control pests, diseases and weeds, and to regulate the growth of plants.\nChemicals such as pesticides and artificial fertilisers are being used more and more, even though they can reduce both the overall health of the environment and the quality of farm produce. Undesirable long-term effects such as soil degradation and imbalances in pest-predator populations also tend to occur. As public concern grows, these issues are seen as increasingly important. Farming the natural way aims to ensure quality in both the environment in which we live and in the produce we grow on our farms.\nThere are a variety of ways of growing plants that work with nature rather than against it. Some techniques have been used for centuries.'),
-- Section "Organic farming" on pages 16-17
-- ('organic farming', 'Organic farming has been given a variety of names over the years – biological farming, sustainable agriculture, alternative agriculture, to name a few. Definitions of what is and isn''t "organic" are also extremely varied. Some of the most important features of organic '),
('whole farm planning', 'Encourages a "holistic" and long-term approach to farm planning. It requires giving due consideration to all of the farm assets (physical and non physical) over a long period of time (perhaps several generations); with respect to all of the aims which the farmer may aspire to (eg profit, lifestyle, sustainability of production).\nThe farmer must first assess the site in terms of potential use/suitability. The farm is then subdivided, usually by fences, to emphasise useful or problem areas (eg erosion, salinity). Water and access routes are highlighted. Cropping or livestock rates are increased if feasible. Shelter is planned and planted out, or built. Pest animals and plants are located, identified and controlled by chemical or natural alternatives.\nConservation is a very important aspect of whole farm planning; native birds and animals are mostly beneficial on the farm as they control a range of pest animals and insects.\nCosts inevitably will be a deciding factor. The farmer needs to determine what costs may be involved and what the benefits of whole farm planning are to the future of the farm.');
-- ('THEORY', 'DESCRIPTION'),
-- ('THEORY', 'DESCRIPTION'),
-- ('THEORY', 'DESCRIPTION'),

INSERT INTO farming_theory_features (theory, feature) VALUES
-- under the heading "Criteria", from "Sustainable Agriculture", by John Mason
('permaculture', 'Upon maturity it forms a balanced, self-sustaining ecosystem where the relationships between the different plants and animals do not compete strongly to the detriment of each other. Althought the farm does not change a great deal from year to year, nonetheless it still continues to change.'),
('permaculture', 'It replenishes itself. The plants and animals on the farm feed each other, with perhaps
only minimal feed (eg natural fertilisers) needing to be introduced from the outside.'),
('permaculture', 'Minimal, if any, work is required to maintain the farm once it is established. Weeds, diseases and pests are minimal due to companion planting and other natural effects which parts of the ecosystem have on each other.'),
('permaculture', 'It is productive. Food or other useful produce can be harvested from the farm on an ongoing basis.'),
('permaculture', 'It is intensive land use. A lot is achieved from a small area. A common design format used is the Mandala Garden, based on a series of circles within each other, with very few pathways and easy, efficient watering.'),
('permaculture', 'A diverse variety of plant types is used. This spreads cropping over the whole year, so that there is no time when a "lot" is being taken out of the system. This also means that the nutrients extracted (which are different for each different type of plant or animal) are "evened out" (ie one plant takes more iron, while the plant next to it takes less iron, so iron doesn''t become depleted as it would if all the plants had a high demand for iron). The diversity of species acts as a buffer, one to another.'),
('permaculture', 'It can adapt to different slopes, soil types and other microclimates.'),
('permaculture', 'It develops through an evolutionary process changing rapidly at first but then gradually over a long period – perhaps never becoming totally stable. The biggest challenge for the designer is to foresee these ongoing, long-term changes.'),
-- Structure of a permaculture system
('permaculture', 'Large trees dominate the system. The trees used will affect everything else – they create shade, reduce temperature fluctuations below (create insulation), reduce light intensities below; reduce water loss from the ground surface, act as wind barriers, etc.'),
('permaculture', 'In any system, there should also be some areas without large trees.'),
('permaculture', 'The "edge" between a treed and non-treed area will have a different environment to the areas with and without trees. These "edges" provide conditions for growing things which won''t grow fully in the open or in the treed area. The north edge of a treed area (in the southern hemisphere) is sunny but sheltered while the south edge is cold but still sheltered more than in the open. "Edges" are an example of microclimates, small areas within a larger site that have special conditions which favour certain species which will grow well elsewhere.'),
('permaculture', 'Pioneer plants are used initially in a permaculture system to provide vegetation and aid the development of other plants which take much longer to establish. For example, many legumes grow fast and fix nitrogen (raise nitrogen levels in the soil) and thus increase nutrients available to nut trees growing beside them. Over time the nuts will become firmly established and the legumes will die out. Pioneer plants are frequently (but not always) short lived.'),
('biodynamic', 'Biodynamics involves a different way of looking at growing plants and animals.'),
('biodynamic', 'Plant and animal production interrelate; manure from animals feeds plants and plant growth feeds the animals.'),
('biodynamic', 'Biodynamics considers the underlying cause of problems and attempts to deal with those causes rather than treating problems in a superficial way. Instead of responding to poor growth in leaves by adding nutrients, biodynamics looks at what is causing the poor growth – perhaps soil degradation or wrong plant varieties – and then deals with the bigger question.'),
('biodynamic', 'Produce is a better quality when it is "in touch" with all aspects of a natural ecosystem. Produce which is produced artificially (eg battery hens or hydroponic lettuces) will lack this contact with "all parts of nature" and, as such, the harvest may lack flavour, nutrients, etc. and not be healthy food.'),
('biodynamic', 'Economic viability and marketing considerations affect what is grown'),
('biodynamic', 'Available human skills, manpower and other resources affect what is chosen to be grown'),
('biodynamic', 'Conservation and environmental awareness are very important'),
('biodynamic', 'Soil quality is maintained by paying attention to soil life and fertility'),
('biodynamic', 'Lime, rock dusts and other slow-acting soil conditioners may be used occasionally'),
('biodynamic', 'Maintaining a botanical diversity leads to reduced problems'),
('biodynamic', 'Rotating crops is important'),
('biodynamic', 'Farm manures should be carefully handled and stored'),
('biodynamic', 'Biodynamics believes there is an interaction between crop nutrients, water, energy (light, temperature) and special biodynamic preparations (ie sprays) which result in biodynamically produced food having unique characteristics.'),
('biodynamic', 'Plant selection is given particular importance. Generally, biodynamic growers emphasise the use of seed which has been chosen because it is well adapted to the site and method of growing being used.'),
('biodynamic', 'Moon planting is often considered important. Many biodynamic growers believe better results can be achieved with both animals and plants if consideration is given to lunar cycles. They believe planting, for example, when the moon is in a particular phase; can result in a better crop.');
-- ('biodynamic', 'DESCRIPTION')
-- ('biodynamic', 'DESCRIPTION'),
-- ('biodynamic', 'DESCRIPTION'),
-- ('biodynamic', 'DESCRIPTION'),
-- ('biodynamic', 'DESCRIPTION'),
-- ('THEORY', 'DESCRIPTION'),

INSERT INTO farming_practices (practice, description, approach) VALUES
-- ('PRACTICE', 'DESCRIPTION', 'APPROACH'),
-- ('PRACTICE', 'DESCRIPTION', 'APPROACH'),
-- ('PRACTICE', 'DESCRIPTION', 'APPROACH'),
('double digging', NULL, NULL),
('to bag', NULL, NULL),
('to spray', NULL, NULL),
('veggie circle beds', NULL, NULL),
('worm tubes', NULL, NULL),
('to coppice', NULL, NULL),
('crop rotation', 'consists of growing different crops in succession in the same field, as
opposed to continually growing the same crop', 'organic'),
('raised beds - one method', 'Build four walls for each bed from timber. Use a wood which will resist rotting such as red gum, jarrah, recycled railway sleepers or even treated pine. The dimensions of the box can be varied but commonly might be 20–30 cm or more high and at least 1 m wide and 1–3 m or more long. The box can be built straight on top of existing ground. There should be a little slope on the ground it is built over to ensure good drainage. It may also be necessary to drill a few holes near the base of the timber walls to ensure water is not trapped behind them. Weed growth under and around the box should be cleaned up before it is built. This may be done by burning, mowing, hand weeding, mulching, or a combination of techniques.\nThe box can be filled with good quality organic soil, compost, or some other soil substitute such as alternate layers of straw and compost from the compost heap or alternate layers of graded and composted pine bark, manure and soil. The growing medium must be friable, able to hold moisture, and free of disease and weeds (avoid materials, such as grass hay, or fresh manures that may hold large quantities of weed seeds).\nA commonly used watering technique in these beds is to set a 2 L plastic bottle (eg soft drink or milk) into the centre of the bed below soil level. Cut the top out, and make holes in the side. This can be filled with water, which will then seep through the holes into the surrounding bed. Mulching the surface may be desirable to assist with controlling water loss and reducing weeds', 'no-dig'),

('Vegetable-sod inter planting', 'This involves growing mulched rows of vegetables 20–40 cm wide over an existing mowed turf. A narrow line may be cultivated, sometimes down the centre of each row, to sow seed into, if growing by seed, to hasten germination. Mulch mats, black plastic, paper or organic mulches can be used to contribute to weed control in the rows. Crop rotation is usually practised between the strips. This contributes towards better weed control. Clover is often encouraged in the strips of turf between rows to help improve nitrogen supplies in the soil.', 'no-dig'),
('Mandala Garden', 'based on a series of circles within each other, with very few pathways and easy, efficient watering.',  'permaculture'),
('mulching', NULL, NULL);

--

INSERT INTO phytochemicals (phytochemical, properties, human_nutrition, other) VALUES
-- ('PHYTOCHEMICAL', 'PROPERTIES', 'HUMAN_NUTRITION', 'OTHER'),
('Antinutrient', 'a natural or synthetic compounds that interferes with the absorption of nutrients', NULL, NULL),
('tannin', 'a class of astringent, polyphenolic biomolecules that bind to and precipitate proteins and various other organic compounds including amino acids and alkaloids', 'traditionally been considered antinutritional', NULL),
('alkaloid', 'PROPERTIES', 'HUMAN_NUTRITION', 'OTHER'),
('starch', NULL, NULL, NULL),
('betalain (pigment)', NULL, NULL, NULL),
('carotenoids', NULL, NULL, NULL),
('cyanide', 'toxic', NULL, NULL),
('polyphenols', NULL, NULL, 'they include phenolic acids, flavonoids, stilbenes or lignans'),
('flavonoids', NULL, NULL, NULL),
('isoflavonoid ', NULL, NULL, NULL),
('resveratrols', NULL, NULL, NULL),
('lignan', NULL, NULL, NULL),
('anthocyanin (pigment)', NULL, 'delicious, reduces the cabbage flavor, highly nutritious', NULL),
('methylenedioxyflavonol', NULL, NULL, NULL),
('saponin', NULL, NULL, NULL),
('triterpenoid', NULL, NULL, NULL),
('turpine', NULL, NULL, NULL),
('ecdysteroid', NULL, NULL, NULL);


INSERT INTO plant_uses (bname, field, its_uses) VALUES
('Tagetes', 'biological control', 'planted as a cover crop just prior to a nematode-susceptible crop, has been shown to suppress nematodes'),
('Panax ginseng', 'health', 'There is no high-quality evidence for ginseng having any health effect.\nBelieved that it may improve memory and cognition in otherwise healthy adults and that it may improve sexual function in adults with erectile dysfunction.'),
('Manihot esculenta', 'kitchen', '[...] is predominantly consumed in boiled form, but substantial quantities are processed to extract cassava starch, called tapioca, which is used for food, animal feed, and industrial purposes. The Brazilian farinha, and the related garri of West Africa, is an edible coarse flour obtained by grating cassava roots, pressing moisture off the obtained grated pulp, and finally drying it (and roasting in the case of both farinha and garri).\nCassava is the third-largest source of food carbohydrates in the tropics, after rice and maize. Cassava is a major staple food in the developing world, providing a basic diet for over half a billion people.\nCassava is classified as either sweet or bitter. Like many other roots and tubers, both bitter and sweet varieties of cassava contain toxins; the bitter varieties contain much larger amounts. Cassava must be properly prepared before consumption, as improper preparation can leave enough residual cyanide to cause cyanide poisoning.'),
('Lupinus Mutabilis', 'kitchen', 'edible when raw; larger peas and a better texture than ordinary lupine'),
('Borago officinalis', 'garden', 'reportedly repellent to tomato hornworms and other garden foes (some say this is due to its attractiveness to predatory wasps) it is often advised as a universal companion plant'),
('Camasia quamash', 'kitchen', 'reportedly its roots were so valued by certain Native American tribes that they were used as currency'),
('Symphytum', 'general', 'medicinal, companion, loaded with minerals, insectary and pollinator plant, a mulch-maker and vigorous fortress plant\nextremely aggressive plant with large, eager seeds'),
('Symphytum × uplandicum', 'garden', 'much less aggressive than other comfreys'),
('Symphytum ibericum', 'general', 'related to comfrey, native to Europe, and less aggressive'),
('Hemerocallis fulva', 'kitchen', 'reliable good eating'),
('Hemerocallis lilioasphodelus', 'kitchen', 'reliable good eating'),
('Petasites japonica', 'garden', 'can produce a LOT of edible biomass in deep dark woods'),
('Allium x proliferum', 'garden',  'These can make an excellent pest repellent spray, can be planted near trees to repel animals, and used as a nitrogen rich mulch if they become over-abundant.'),
('Allium x proliferum', 'guild',  'Guild-matrix candidate, pest-repellent, can be part of a fortress-planting, may have mild grass-repelling properties, nutrient-accumulator, mulch-maker.'),
('Allium x proliferum', 'kitchen', 'Leaves: cut as needed and use as green onions. An excellent flavor, especially in spring.\nBulb and leaves: Can be used as scallions, and caramelizes quickly for a very sweet spring caramelized onion. I will use as many as 20 spring onions in one batch when I caramelize.\n Bulb, harvested when the greens go dormant, usually in a late summer drought. Bend over the plants to promote bulb swell, then harvest before rains come. Keep in cool, dark, dry storage.\n Topsets: harvest before skins form to avoid peeling, though they can be used after. I use then whole in soups and stews and pickle them for one of my favorite pickles.'),
('malva', 'kitchen', 'the vegan''s best friend, providing a thickener and vegan meringue that can be turned into, yes, marsh mallows. The greens of most make a decent cooked spinach, and marshmallow leaves can be used to thicken soup like okra'),
-- the shoots are edible as an asparagus substitute, though they have a strong milkweed flavor [...] usually available much later than asparagus; the flower buds are edible and also the flowers; finally, there are the pods and the pre-silk inside the pods. They have to be harvested before the silk forms, usually when they are under two inches in length. These can be eaten whole or separately; feed for monarch butterflies
('Asclepias syriaca', 'kitchen', 'spring shoots, flower buds, flowers, and young seed pods'),
('Asclepias syriaca', 'garden',  'Deer-and-wildlife-resistant, attracts monarchs, extremely versatile in guilds and doesn''t tend to outcompete other plants. Tolerates grasses well.'),
('Malva moschata', 'kitchen', 'salad green and edible flower'),
-- ('Phaseolus vulgaris', 'Purple dragon dwarf bush bean', NULL, 'garden', 'ornamental in borders'),
-- ('Phaseolus vulgaris', 'Purple dragon dwarf bush bean', NULL, 'kitchen', 'its beans great for homesteaders, both green and dry'),
('Campanula versicolor', 'kitchen', 'good edible leaves for a bellflower');
