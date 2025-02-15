-- Shade-tolerant cover crops
--   These include cowpea, burr medic and hyacinth bean
-- Salt-tolerant cover crops
--   Strawberry clover, white clover, burr medic, field pea, barley ‘Salina’,
--   are all ideal for use in areas of high salination or heavy salt spray.

-- silage


INSERT INTO plants (bname, family, life_type, climate, src) VALUES
('Acacia dealbata', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Acacia mearnsii', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Acacia melanoxylon', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Acacia stenophylla', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Allocasuarina cristata', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Allocasuarina glauca', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Casuarina cunninghamiana', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Casuarina obesa', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Corymbia citriodora subsp. variegata', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Corymbia tesselaris', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Eucualyptus camaldulensis', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Eucualyptus occidentalis', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Eucualyptus sargentii', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Eucualyptus spathulata', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Melauleuca halmaturorum', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Melaleuca leucandendra', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Melaleuca uncinatum', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Pinus pinaster', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Pinus radiata', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Phoenix canariensis', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Tamarix spp.', NULL, 'tree', NULL, 'Mason'), -- salt-tolerant
('Tanacetum vulgare', 'aster', 'perennial grass', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
-- ('BNAME', NULL, 'tree', NULL, 'Mason'),
('Atriplex spp.', NULL, 'shrub, grass or pasture', NULL, 'Mason'), -- salt-tolerant
('Elytrigia elongata', NULL, 'shrub, grass or pasture', NULL, 'Mason'), -- salt-tolerant
('Halosarcia spp. Melaleuca nodosa', NULL, 'shrub, grass or pasture', NULL, 'Mason'), -- salt-tolerant
('Paspalum vaginatum', NULL, 'shrub, grass or pasture', NULL, 'Mason'), -- salt-tolerant
('Puccinellia ciliata', NULL, 'shrub, grass or pasture', NULL, 'Mason'), -- salt-tolerant
('Trifolium michelianum', NULL, 'shrub, grass or pasture', NULL, 'Mason'); -- salt-tolerant
-- (BNAME, FAMILY, 'vegetable|tree|grass', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable|tree|grass', NULL, 'Mason'),
-- (BNAME, FAMILY, 'vegetable|tree|grass', NULL, 'Mason'),

INSERT INTO vernacular (vname, bname, code) VALUES
('ryegrass', 'Lolium perenne', 'en'),
('sorghum', 'Sorghum bicolor', 'en'),
('canola',   'Brassica napus', 'en'),
-- ('rape',     'Brassica napus', 'en'),
-- ('rapeseed', 'Brassica napus', 'en'),
('lucerne', 'Medicago sativa', 'en'),
-- ('alfalfa', 'Medicago sativa', 'en'),
('tansy', 'Tanacetum vulgare', 'en'),
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

INSERT INTO plant_uses (bname, field, a_use) VALUES
('Acacia dealbata', 'farming', 'salt-tolerant tree'),
('Acacia mearnsii', 'farming', 'salt-tolerant tree'),
('Acacia melanoxylon', 'farming', 'salt-tolerant tree'),
('Acacia stenophylla', 'farming', 'salt-tolerant tree'),
('Allocasuarina cristata', 'farming', 'salt-tolerant tree'),
('Acacia glauca', 'farming', 'salt-tolerant tree'),
('Casuarina cunninghamiana', 'farming', 'salt-tolerant tree'),
('Casuarina obesa', 'farming', 'salt-tolerant tree'),
('Corymbia citriodora subsp. variegata', 'farming', 'salt-tolerant tree'),
('Corymbia tesselaris', 'farming', 'salt-tolerant tree'),
('Eucualyptus camaldulensis', 'farming', 'salt-tolerant tree'),
('Eucualyptus occidentalis', 'farming', 'salt-tolerant tree'),
('Eucualyptus sargentii', 'farming', 'salt-tolerant tree'),
('Eucualyptus spathulata', 'farming', 'salt-tolerant tree'),
('Melauleuca halmaturorum', 'farming', 'salt-tolerant tree'),
('Melauleuca leucandendra', 'farming', 'salt-tolerant tree'),
('Melauleuca uncinatum', 'farming', 'salt-tolerant tree'),
('Pinus pinaster', 'farming', 'salt-tolerant tree'),
('Pinus radiata', 'farming', 'salt-tolerant tree'),
('Phoenix canariensis', 'farming', 'salt-tolerant tree'),
('Tamarix spp', 'farming', 'salt-tolerant tree'),
('Atriplex spp.', 'farming', 'salt-tolerant shrub, grass or pasture'),
('Elytrigia elongata', 'farming', 'salt-tolerant shrub, grass or pasture'),
('Halosarcia spp', 'farming', 'salt-tolerant shrub, grass or pasture'),
('Melaleuca nodosa', 'farming', 'salt-tolerant shrub, grass or pasture'),
('Paspalum vaginatum', 'farming', 'salt-tolerant shrub, grass or pasture'),
('Puccinellia ciliata', 'farming', 'salt-tolerant shrub, grass or pasture'),
('Trifolium michelianum', 'farming', 'salt-tolerant shrub, grass or pasture');
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
-- (BNAME, 'farming', ''),
