SET NAMES utf8mb4;
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
-- SET @old_autocommit=@@autocommit;

USE creation;

SET AUTOCOMMIT=0;

INSERT INTO terms (term, description, field) VALUES
-- ('TERM', 'DESCRIPTION', 'FIELD'),
-- ('TERM', 'DESCRIPTION', 'FIELD'),
-- ('TERM', 'DESCRIPTION', 'FIELD'),
-- ('TERM', 'DESCRIPTION', 'FIELD'),
('teleology', 'a belief that things are purposeful and aimed towards a goal', 'thought');

INSERT INTO practices (practice, description, field, theory) VALUES
('samatha',  NULL, 'religion', NULL),
-- ('', NULL, 'religion', NULL),
-- ('', NULL, 'religion', NULL),
-- ('', NULL, 'religion', NULL),
('ritual',   NULL, 'religion', NULL),
('chod', 'active cutting;', 'religion', NULL);

INSERT INTO base_dirs (base_dir, device, file_type) VALUES
('~/former/home/francisco/Downloads/ebooks/', 'sda5', 'ePUB MOBI'),
('~/Downloads/temp/ebooks/', 'sda7', 'ePUB MOBI'),
('~/audiobooks/ePUB_mobi_PDF/ebooks_sda8/', 'sda8', 'ePUB MOBI'),
('~/Downloads/temp/books/', 'sda7', 'PDF'),
('~/windows/Users/Francisco/books/', 'sda4', 'PDF'),
('~/audiobooks/ePUB_mobi_PDF/books/', 'sda8', 'PDF'),
-- (''),
-- (''),
('~/former/home/francisco/Documents/', 'sda5', 'Documents'),
('~/former/home/francisco/Downloads/html/', 'sda5', 'HTML web_downloads');

INSERT INTO theories (theory, description, approach) VALUES
-- ('', NULL, NULL),
-- ('', NULL, NULL),
-- ('', NULL, NULL),
('five kingdoms',
'Robert Whittaker recognized an additional kingdom for the Fungi. The resulting five-kingdom system, proposed in 1969, has become a popular standard and with some refinement is still used in many works, or forms the basis for newer multi-kingdom systems. It is based mainly on differences in nutrition: his Plantae were mostly multicellular autotrophs, his Animalia multicellular heterotrophs, and his Fungi multicellular saprotrophs. The remaining two kingdoms, Protista and Monera, included unicellular and simple cellular colonies.', 'biology taxonomy'),
('autopoiesis', 'The concept of autopoiesis depicts a living system as an autonomously self-fabricating and self-organizing unit within its physical boundary, generating and continually regenerating its own components, thereby maintaining the molecular and supramolecular hierarchy of interacting networks that self-assemble, self-organize and self-perpetuate the system.\nRoughly speaking, an autopoietic (literally, self-producing) system is a network of component-producing processes with the property that the interactions between the components generate the very same network of processes that produced them, as well as constituting it as a distinct entity in the space in which it exists. The paradigmatic example of autopoiesis is a cell, in which the components are molecules, the interactions are chemical reactions, and the cell membrane serves as a physical boundary that spatially localizes these reactions into an entity (or “unity”) distinguishable from its environment.', 'theoretical biology'),
('opposames', NULL, 'conspiracy'), -- by David Icke
('Moon Matrix', 'the Earth and the collective human mind are manipulated from the Moon, a spacecraft and inter-dimensional portal the reptilians control. The Moon Matrix is a broadcast from that spacecraft to the human body–computer, specifically to the left hemisphere of the brain, which gives us our sense of reality: "We are living in a dreamworld within a dreamworld – a Matrix within the virtual-reality universe – and it is being broadcast from the Moon. Unless people force themselves to become fully conscious, their minds are the Moon''s mind."', 'conspiracy'), -- by David Icke, in Human Race Get Off Your Knees: The Lion Sleeps No More (2010)
('Saturn–Moon Matrix', 'the rings of Saturn (which he believes were artificially created by reptilian spacecraft) are the ultimate source of the signal, while the Moon functions as an amplifier.[129][page needed][162] He claims that frequencies broadcast from the hexagonal storm on Saturn are amplified through the hollow structure of our artificial moon keeping humanity trapped in a holographic projection.', NULL),  -- by David Icke, explored in "Remember Who You Are: Remember 'Where' You Are and Where You 'Come' From" (2012)
('buddhism', NULL, NULL),
('sutrayana', NULL, 'buddhism'),
('Three Kayas', 'dharmakaya, sambhogakaya, nirmanakaya', 'buddhism'),
('sunyata', NULL, NULL),
('yogachara', NULL, NULL),
('dzogchen', NULL, NULL),
('upadesha', NULL, 'dzogchen'),
('rigpa', 'instant presence, the experience thereof', 'dzogchen'),
('tregchod', 'You are totally relaxed in your knowledge, the understanding about your real nature that you have already discovered; total relaxation;', 'dzogchen'), -- only in Upadesha
('thodgal',  '', 'dzogchen'), -- only in Upadesha
('tantra', 'To know the value of movement, and how to incorporate movement into the practice of contemplation.', NULL),
('nepa-gyuwa', 'calm state vs. movement', 'tantra'),
('vajrayana', NULL, NULL),
('mahamudra', NULL, 'vajrayana'),
('anuttaratantra', 'highest yoga tantra', 'vajrayana'),
('semde', 'the series of bodhicitta or "nature of mind," the primordial state', NULL),
('longde', 'the series of "space"', NULL),
('shamanism', NULL, NULL),
('hygge', NULL, NULL),
('logom', NULL, NULL),
('conviviality', NULL, NULL),
('wabi-sabi', NULL, NULL),
('natural way', NULL, NULL),
('Waldorf', NULL, NULL),
('biodynamic (farming)', NULL, NULL),
('orthomolecular medicine', 'a form of alternative medicine that claims to maintain human health through nutritional supplementation', 'alternative medicine'),
('deep ecology', NULL, NULL),
('permaculture', NULL, NULL),
('reactor-grade PU weapons', NULL, NULL),
('effective altruism', NULL, NULL);
-- ('', NULL, NULL)
-- ('', NULL, NULL),
-- ('', NULL, NULL),
-- ('', NULL, NULL);


INSERT INTO works (title, subtitle, description, approach, published) VALUES
('The Protocols of the Elders of Zion', NULL, 'a fabricated text purporting to detail a Jewish plot for global domination','antisemitic conspiracy theory', NULL), -- first published in Imperial Russia in 1903
('The People of the Lie', 'The Hope For Healing Human Evil', NULL, NULL, NULL),
('Nuclear War', 'A Scenario', '','', 2024), -- by rAnnie Jacobsen
('Juan de Mairena', '', '','', NULL),
('Gulliver''s Travels', NULL, '','', NULL),
('Zen Mind, Beginner''s Mind', '', '','', NULL),
('Zen and the Art of Motorbike Maintenance', NULL, '', '', NULL),
('Lila', 'An Inquiry into Morals', '', '', NULL),
('I Jing', '', '','', NULL),
('1984', NULL, '','', NULL),
('Brave New World', NULL, '','', NULL),
('Lord of the Flies', '', '','', NULL),
('The Boy, the Mole, the Fox and the Horse', NULL, '','', NULL),
('The Morning of the Magicians', 'The Dawn of Magic', '','', NULL),
('The Nine Cloud Dream', NULL, '','', NULL),
('Sefer Yetzirah', '', '','', NULL),
('Zen and the Birds of Appetite', NULL, '','', NULL),
('The Perennial Philosophy', NULL, '','', NULL),
('Cosmic Trigger', NULL, '','', NULL),
('The Way of Chuang Tzu', NULL, '','', NULL),
('Creativity', NULL, '','', NULL),
('A Confederacy of Dunces', NULL, '','', NULL),
('Upanishads', '', '','', NULL),
('Vedas', '', '','', NULL),
('The Consolation of Philosophy', NULL, '','', NULL),
('Mahabharata', '', '','', NULL),
('Ramayana', '', '','', NULL),
('Bhagavad Gita', '', '','', NULL),
('The Origins of Totalitarianism', NULL, '','', NULL),
('Kalevala', '', '','', NULL),
('Lotus Sutra', '', '','', NULL),
('Permaculture', 'Principles and Pathways Beyond Sustainability', '','permaculture', 2002),
('Edible Forest Gardens, Volume One', 'Ecological Vision and Theory for Temperate Climate Permaculture', '','permaculture', 2005),
('Edible Forest Gardens, Volume Two', 'Ecological Design and Practice for Temperate Climate Permaculture', '','permaculture', 2005),
('The Timeless Way of Building', NULL, '','design', NULL),
('A Pattern Language', 'Towns, Buildings, Construction', '','design', 1977),
-- ('', '', '','permaculture', NULL),
-- ('', '', '','permaculture', NULL),
-- ('', '', '','design', NULL),
-- ('', '', '','design', NULL),
('Design with Nature', '', '','design', 1971),
('Reactor-Grade Plutonium and Nuclear Weapons', 'Exploding the Myths', '[...] shows that nuclear weapons can be manufactured using reactor-grade plutonium that have the same predetonation probability, size, and weight as nuclear weapons using weapon-grade plutonium.','reactor-grade PU weapons', 2018),
-- ('', '', '','environment', NULL),
-- ('', '', '','environment', NULL),
('Ulysses', NULL, '','', NULL),
('Dawn of the New Everything', 'Encounters with Reality and Virtual Reality', '','', NULL),
('Silent Spring', NULL, '','', NULL),
('This Changes Everything', 'Capitalism vs. the Climate', NULL, 'environment', 2014),
('Kunjed Gyalpo', NULL, 'can be considered the fundamental tantra of Dzogchen','dzogchen', NULL),  -- or All-creating King
-- ('', '', '','', NULL),
-- ('', '', '','', NULL),
-- ('', '', '','', NULL),
-- ('', '', '','', NULL),
-- ('', '', '','', NULL),
-- ('', '', '','', NULL),
('Shambhala', 'The Sacred Path of the Warrior', '','', NULL);

INSERT INTO people (personname, life, approach, born, died) VALUES
('Hayao Miyazaki', NULL, 'Japanese animator, filmmaker, and manga artist', NULL, NULL), -- born Jan 5, 1941
('Chögyam Trungpa', '', 'buddhism', NULL, NULL),
('Chögyal Namkhai Norbu', '', 'dzogchen', NULL, NULL), -- born in 1938
('Garab Dorje', 'transmitted the teachings and tantras of Dzogchen currently available to us', 'dzogchen', NULL, NULL),
('Shri Simha', '', 'dzogchen', NULL, NULL),
('Padmasambhava', '', 'dzogchen', NULL, NULL),
('Rabindranath Tagore', '', 'dzogchen', NULL, NULL),
('Carlos Castaneda', '', 'shamanism', NULL, NULL),
('Sakyong Mipham Rimpoche', '', '', NULL, NULL),
('D. T. Suzuki', '', '', NULL, NULL),
('Tenzin Wangyal', '', '', NULL, NULL),
('Christmas Humphreys', '', '', NULL, NULL),
('Jeremy Hayward', '', '', NULL, NULL),
('Thomas Cleary', '', '', NULL, NULL),
('Rumi', '', 'sufi', NULL, NULL),
('Richard Wilhelm', '', 'orientalist; translated from Chinese to German', NULL, NULL),
('C. G. Jung', '', '', NULL, NULL),
('Sigmund Freud', '', '', NULL, NULL),
('Stanislav Grof', '', '', NULL, NULL),
('Jeremy Rifkin', '', '', NULL, NULL),
('P. D. Ouspensky', '', '', NULL, NULL),
('Gurdjieff', '', '', NULL, NULL),
('M. Scott Peck', '', '', NULL, NULL),
('Vitalik Buterin', '', 'social thinker; blockchain', NULL, NULL),
('Vaclav Smil', '', '', NULL, NULL),
('David Bohm', '', '', NULL, NULL),
('Douglas R Hofstadter', '', '', NULL, NULL),
('Eva Wong', '', '', NULL, NULL),
('Thomas Merton', '', '', NULL, NULL),
('Aldous Huxley', '', '', NULL, NULL),
('Robert M. Pirsig', '', '', NULL, NULL),
('E. F. Schumacher', '', '', NULL, NULL),
('Pedro Baños', '', '', NULL, NULL),
('George Orwell', '', '', NULL, NULL),
('David Suzuki', '', '', NULL, NULL),
('Cass R. Sunstein', '', '', NULL, NULL),
('Karl Jaspers', '', '', NULL, NULL),
('Mircea Eliade', '', '', NULL, NULL),
('G. K. Chesterton', '', '', NULL, NULL),
('Buckminster Fuller', '', '', NULL, NULL),
('Julius Evola', '', 'traditionalist', NULL, NULL),
('Slavoj Žižek', '', 'liberal left', NULL, NULL),
('Rudyard Kipling', '', 'writer; vitalist', NULL, NULL),
('Rudolf Steiner', '', 'anthroposophy', NULL, NULL),
('Linus Pauling', '', 'orthomolecular medicine', 1901, 1994),
('Albert Howard', NULL, 'organic farming', NULL, NULL),
('Gene Logsdon', '', '', NULL, NULL),
('Wendell Berry', '', '', NULL, NULL),
('Robert Macfarlane', '', '', NULL, NULL),
('Alan Chadwick', '', '', NULL, NULL),
('Geoff Lawton', '', 'permaculture', NULL, NULL),
('Bill Mollison', 'A founder of permaculture', 'permaculture', NULL, NULL),
('David Holmgren', 'A founder of permaculture', 'permaculture', NULL, NULL),
-- INSERT INTO people (personname, life, approach, born, died) VALUES
('Susan Sontag', '', '', NULL, NULL),
-- ('', '', '', NULL, NULL),
-- ('', '', '', NULL, NULL),
-- ('', '', '', NULL, NULL),
-- ('', '', '', NULL, NULL),
-- ('', '', '', NULL, NULL),
('Akira Miyawaki', 'M. was a forester interested in regrowing healthy forests in Japan for purpose of maintaining habitat, controlling erosion, sequestering carbon, and solving other problems through the ecosystem services.', 'He noticed that the plant spacings and communities used in "conventional" forestry practice looked nothing at all like the types of spacings and communities that would occur during natural reforestation. He also noticed that the conventional approach often performed poorly in comparison to the way nature solved this same problem.\nHe hypothesized that the conventional recommendations were tested and developed to optimize commercial yield in various ways, not to optimize fast, easy, cost-effective establishment of healthy forest. Basing his approach off of the observation of naturally occurring rapid reforestation, he developed a system of using seed from locally adapted, free specimens, with intermixed stages of succession, at very tight plantings, and he found that nature was solving the problem the right way.', NULL, NULL),
('Masanobu Fukuoka', '', '', NULL, NULL),
('Jacob Needleman', '', '', NULL, NULL),
('Alex Jones', '', '', NULL, NULL),
('Ken Wilber', '', '', NULL, NULL),
('Ray Kurzweil', '', '', NULL, NULL),
('David Icke', '', 'conspiracy theorist', NULL, NULL),
('Tom Burgis', '', 'investigative journalist', NULL, NULL),
('Steven Pinker', '', '', NULL, NULL),
('Roger Penrose', '', '', NULL, NULL),
('Edgar Codd', NULL, 'relational', NULL, NULL),
('Noam Chomsky', '', '', NULL, NULL),
('Epictetus', '', '', NULL, NULL),
('William Gibson', 'William Ford Gibson (born March 17, 1948) is an American-Canadian speculative fiction writer and essayist widely credited with pioneering the science fiction subgenre known as cyberpunk. Beginning his writing career in the late 1970s, his early works were noir, near-future stories that explored the effects of technology, cybernetics, and computer networks on humans—a "combination of lowlife and high tech"—and helped to create an iconography for the information age before the ubiquity of the Internet in the 1990s. Gibson coined the term "cyberspace" for "widespread, interconnected digital technology" in his short story "Burning Chrome" (1982), and later popularized the concept in his acclaimed debut novel Neuromancer (1984). These early works of Gibson''s have been credited with "renovating" science fiction literature in the 1980s.\nAfter expanding on the story in Neuromancer with two more novels (Count Zero in 1986 and Mona Lisa Overdrive in 1988), thus completing the dystopic Sprawl trilogy, Gibson collaborated with Bruce Sterling on the alternate history novel The Difference Engine (1990), which became an important work of the science fiction subgenre known as steampunk.\nIn the 1990s, Gibson composed the Bridge trilogy of novels, which explored the sociological developments of near-future urban environments, postindustrial society, and late capitalism. Following the turn of the century and the events of 9/11, Gibson emerged with a string of increasingly realist novels—Pattern Recognition (2003), Spook Country (2007), and Zero History (2010)—set in a roughly contemporary world. These works saw his name reach mainstream bestseller lists for the first time. His most recent novels, The Peripheral (2014) and Agency (2020), returned to a more overt engagement with technology and recognizable science fiction themes.', '', NULL, NULL),
('Naomi Wolf', '', '', NULL, NULL),
('Naomi Klein', '', '', NULL, NULL),

('Neal Stephenson', '', '', NULL, NULL),
('Allen Ginsberg', '', '', NULL, NULL),
('Jack Kerouac', '', '', NULL, NULL),
('William S. Burroughs', '', '', NULL, NULL),
('Henry Miller', '', '', NULL, NULL),

('Edgar Cayce', '', '', NULL, NULL),
('Alfred Russel Wallace', NULL, 'codiscoverer of the Theory of Evolution', NULL, NULL),

('Alan Turing', '', '', NULL, NULL),
('Linus Torvalds', '', '', NULL, NULL),
('Milton Friedman', '', '', NULL, NULL),
('Robert Nozick', '', '', NULL, NULL),
('David Graeber', '', '', NULL, NULL),
('Thomas L. Friedman', '', '', NULL, NULL),
('Ayn Rand', '', '', NULL, NULL),
('Murray Rothbard', '', '', NULL, NULL),
('Terry Eagleton', '', '', NULL, NULL),
('Rupert Sheldrake', '', '', NULL, NULL),
-- ('', '', '', NULL, NULL),
-- ('', '', '', NULL, NULL),
('Gregory S. Jones', 'long-time defense analyst', 'reactor-grade PU weapons', NULL, NULL),
('Peter Singer', '', 'effective altruism', NULL, NULL),
('ANONYMOUS', '', '', NULL, NULL);

INSERT INTO authorships (title, subtitle, author, nature) VALUES
('The People of the Lie', 'The Hope For Healing Human Evil', 'M. Scott Peck', NULL),
('Dirt', 'The Erosion of Civilizations', 'David R. Montgomery', 'soil conservation'),
('Gulliver''s Travels', NULL, 'Jonathan Swift', NULL),
('Zen and the Art of Motorbike Maintenance', NULL, 'Robert M. Pirsig', NULL),
('Lila', 'An Inquiry into Morals', 'Robert M. Pirsig', NULL),
('1984', NULL, 'George Orwell', NULL),
('The Morning of the Magicians', 'The Dawn of Magic', 'Jacques Bergier', NULL),
('The Morning of the Magicians', 'The Dawn of Magic', 'Louis Pauwels', NULL),
('The Boy, the Mole, the Fox and the Horse', NULL, 'Charlie Mackesy', NULL),
('The Nine Cloud Dream', NULL, 'Kim Man-jung', NULL),
('Creativity', NULL, 'Mihaly Csikszentmihalyi', NULL),
('A Confederacy of Dunces', NULL, 'John Kennedy Toole', NULL),
('The Consolation of Philosophy', NULL, 'Boethius', NULL),
('Zen and the Birds of Appetite', NULL, 'Thomas Merton', NULL),
('The Perennial Philosophy', NULL, 'Aldous Huxley', NULL),
('Cosmic Trigger', NULL, 'Robert Anton Wilson', NULL),
('The Way of Chuang Tzu', NULL, 'Thomas Merton', NULL),
('Brave New World', NULL, 'Aldous Huxley', NULL),
('The Timeless Way of Building', NULL, 'Christopher Alexander', NULL),
('A Pattern Language', NULL, 'Christopher Alexander', NULL),
('A Pattern Language', NULL, 'Sara Ishikawa', NULL),
('A Pattern Language', NULL, 'Murray Silverstein', NULL),
('Design with Nature', '', 'Ian L. McHarg', NULL),
('Permaculture', 'Principles and Pathways Beyond Sustainability', 'David Holmgren',''),
('Edible Forest Gardens, Volume One', 'Ecological Vision and Theory for Temperate Climate Permaculture', 'Dave Jacke',''),
('Edible Forest Gardens, Volume One', 'Ecological Vision and Theory for Temperate Climate Permaculture', 'Eric Toensmeier',''),
('Edible Forest Gardens, Volume Two', 'Ecological Design and Practice for Temperate Climate Permaculture', 'Dave Jacke',''),
('Edible Forest Gardens, Volume Two', 'Ecological Design and Practice for Temperate Climate Permaculture', 'Eric Toensmeier',''),
('Ulysses', NULL, 'James Joyce', NULL),
('Dawn of the New Everything', 'Encounters with Reality and Virtual Reality', 'Jaron Lanier', NULL),
('Silent Spring', NULL, 'Rachel Carson', NULL),
('The Origins of Totalitarianism', NULL, 'Hannah Arendt', NULL),
('This Changes Everything', 'Capitalism vs. the Climate', 'Naomi Klein', ''),
('Shambhala', 'The Sacred Path of the Warrior', 'Chögyam Trungpa', NULL),
-- ('', '', '','', NULL),
-- ('', '', '','', NULL),
('Nuclear War', 'A Scenario', 'Annie Jacobsen', NULL),
('TITLE', 'SUBTITLE', 'AUTHOR', 'NATURE');

-- UNLOCK TABLES;
-- COMMIT;


-- SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- SET autocommit=@old_autocommit;
