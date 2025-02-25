
INSERT INTO buddha_families (fam, buddha, colour, element, aggregate, klesha, mudra, throne, bija_syl, wisdom) VALUES
('Buddha', 'Vairocana', 'white', 'earth', 'form (or consciousness)', 'aversion (or ignorance, ávidyā)', 'teaching mudra', 'lion', 'om', 'Perfectly Pure Dharma sphere Jñana'),
('Vajra', 'Akṣobhya', 'blue', 'space', 'consciousness (or form) (rupa)', 'ignorance (or aversion)', 'earth-touching mudra', 'Elephant throne', 'hum', 'Mirror-like Jñana'),
('Ratna (Jewel)', 'Ratnasambhava', 'yellow', 'water', 'feeling (vedana)', 'pride (or greed)', 'Giving mudra', 'Horse', 'tram', 'Sameness Jñana'),
('Padma (Lotus)', 'Amitābha', 'red', 'fire', 'perception (saṃjñā)', 'craving', 'meditation mudra', 'peacock throne', 'hrih', 'Discriminating Jñana'),
('Karma', 'Amoghasiddhi', 'green', 'wind', 'volition (samkhara)', 'envy', 'fearlessness mudra', 'Garuda throne', 'ah', 'Perfect practice Jñana');
-- (FAM, BUDDHA, COLOUR, ELEMENT, AGGREGATE, KLESHA, MUDRA, THRONE, BIJA_SYL, WISDOM),

INSERT INTO buddha_partners (buddha_skt, wisdom_consort, bodhisattva, protector, pure_land_and_direction) VALUES
('Vairocana', 'Ākāśadhātvīśvarī, also known as Vajradhātvisharī, Buddhaḍākinī or Sparśavajrī', 'Vajraparamita or Vajrasattva', 'Acala', 'Akaniṣṭha-Ghanavyūha (Center)'),
('Akṣobhya', 'Locanā, also known as Buddhalocanā, Tathāgatalocanā', 'Vajrapani or Samantabhadra', 'Trailokyavijaya', 'Abhirati (East)'),
('Amitābha', 'Paṇḍāravāsinī, also known as Sitavāsinī', 'Avalokiteśvara', 'Yamāntaka', 'Sukhāvatī (West)'),
('Ratnasaṃbhava', 'Māmakī', 'Mañjusri, Ratnapani', 'Kuṇḍali', 'Śrīmat (South)'),
('Amoghasiddhi', 'Tara, Samayatārā', 'Maitreya, or Viśvapāni', 'Vajrayakṣa', 'Karmaprasiddhi or Prakuṭā [es] (North)');

INSERT INTO nyingma_yanas (id, name, description) VALUES
(1, 'NAME', NULL),
(2, 'NAME', NULL),
(3, 'mahayana', NULL),
(4, 'Kriyayoga', NULL),
(5, 'Caryayoga', NULL),
(6, 'Yogatantra', NULL),
(7, 'Mahayoga', NULL),
(8, 'Anuyoga', NULL),
(9, 'Atiyoga', NULL);
