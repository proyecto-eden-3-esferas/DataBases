-- Shade-tolerant cover crops
--   These include cowpea, burr medic and hyacinth bean
-- Salt-tolerant cover crops
--   Strawberry clover, white clover, burr medic, field pea, barley ‘Salina’,
--   are all ideal for use in areas of high salination or heavy salt spray.

-- silage


-- INSERT INTO plants (bname, family, life_type, climate, src) VALUES
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable', NULL, 'Mason');

INSERT INTO vernacular (vname, bname, code) VALUES
('ryegrass', 'Lolium perenne', 'en'),
('sorghum', 'Sorghum bicolor', 'en'),
('canola',   'Brassica napus', 'en'),
-- ('rape',     'Brassica napus', 'en'),
-- ('rapeseed', 'Brassica napus', 'en'),
('lucerne', 'Medicago sativa', 'en'),
-- ('alfalfa', 'Medicago sativa', 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
-- (VNAME, BNAME, 'en'),
('soybean', 'Glycine max', 'en');

INSERT INTO terms (term, description, field) VALUES
('tine', NULL, NULL),
('tilth', NULL, NULL),
-- ('TERM', DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
-- (TERM, DESCRIPTION, FIELD),
('cover crop', 'a plant that is grown for improving the condition of the soil; most commonly ploughed in, but can also be cut and left to lie on the soil', 'NULL');



INSERT INTO pests (pname, nature, mechanism, part, vector, conditions) VALUES
('Sclerotinia', NULL, NULL, NULL, NULL, NULL),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
-- ('PNAME', 'NATURE', MECHANISM, PART, VECTOR, CONDITIONS),
('nematodes',    NULL,      NULL, 'roots', NULL,      NULL);

-- INSERT INTO plant_uses (bname, field, a_use) VALUES
-- (BNAME, FIELD, ITS_USES),
-- (BNAME, FIELD, ITS_USES),
-- (BNAME, FIELD, ITS_USES),
-- (BNAME, FIELD, ITS_USES),
-- (BNAME, FIELD, ITS_USES),
-- (BNAME, FIELD, ITS_USES);
