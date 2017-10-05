USE testdb;

DROP TABLE `book`;

CREATE TABLE `book` (
  `id` INT(11) unsigned NOT NULL auto_increment,
  `title` VARCHAR(100) NOT NULL,
  `description` VARCHAR(255) default NULL,
  `author` VARCHAR(100) default NULL,
  `isbn` VARCHAR(20) default NULL,
  `printYear` INT(4) default NULL,
  `readAlready` bit(1) default 0,
  PRIMARY KEY (`id`)
) 
ENGINE= INNODB
DEFAULT CHARACTER set = utf8
AUTO_INCREMENT=1;

INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Microserfs', 'Funny, illuminating and ultimately touching, Microserfs is the story of one generation''s very strange and claustrophobic coming of age.', 'Douglas Coupland', '0060987049', 1995, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Tinker, Tailor, Soldier, Spy', 'It is now beyond a doubt that a mole, implanted decades ago by Moscow Centre, has burrowed his way into the highest echelons of British Intelligence. His treachery has already blown some of its most vital operations and its best networks.', 'John le Carre', '0743457900', 2002, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('On Bullshit', 'One of the most salient features of our culture is that there is so much bullshit. Everyone knows this. Each of us contributes his share. But we tend to take the situation for granted.', 'Harry G. Frankfurt', '0691122946', 2005, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('I Capture the Castle', 'Through six turbulent months of 1934, 17-year-old Cassandra Mortmain keeps a journal, filling three notebooks with sharply funny yet poignant entries about her home, a ruined Suffolk castle, and her eccentric and penniless family.', 'Dodie Smith', '0312181108', 1998, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Of Mice and Men', 'The compelling story of two outsiders striving to find their place in an unforgiving world. Drifters in search of work, George and his simple-minded friend Lennie have nothing in the world except each other and a dream', 'John Steinbeck', '0142000671', 2002, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Send More Idiots', 'Juarez, Mexico, is murder city, so it''s not surprising when an American real estate broker vanishes there without a trace. The only person who shows any interest in his disappearance is his brother, Jon.', 'Tony Perez-Giese', '1480813494', 2014, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('I Am America', 'I Am America (And So Can You!) contains all of the opinions that Stephen doesn''t have time to shoehorn into his nightly broadcast.', 'Stephen Colbert', '0446580503', 2007, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Neverwhere', 'Under the streets of London there''s a place most people could never even dream of. A city of monsters and saints, murderers and angels, knights in armour and pale girls in black velvet. This is the city of the people who have fallen between the cracks.', 'Neil Gaiman', '0060557818', 2003, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('A Clockwork Orange', 'A vicious fifteen-year-old "droog" is the central character of this 1963 classic, whose stark terror was captured in Stanley Kubrick''s magnificent film of the same title.', 'Anthony Burgess', '0393312836', 1995, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Tender Is the Night', 'Set on the French Riviera in the late 1920s, Tender Is the Night is the tragic romance of the young actress Rosemary Hoyt and the stylish American couple Dick and Nicole Diver.', 'F. Scott Fitzgerald', '068480154X', 1995, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Atlas Shrugged', 'This is the story of a man who said that he would stop the motor of the world and did. Was he a destroyer or the greatest of liberators?', 'Ayn Rand, Leonard Peikoff', '0452011876', 1999, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Steal This Book', 'A driving force behind the social revolution of the 1960s and 1970s, Hoffman inspired a generation to challenge the status quo.', 'Abbie Hoffman', '156858217X', 2002, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Naked Lunch', 'Naked Lunch (sometimes The Naked Lunch) is a novel by William S. Burroughs originally published in 1959. The book is structured as a series of loosely connected vignettes. Burroughs stated that the chapters are intended to be read in any order. ', 'William S. Burroughs', '0802140181', 2004, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Green Eggs and Ham', 'Originally created by Dr. Seuss, Beginner Books encourage children to read all by themselves, with simple words and illustrations that give clues to their meaning.', 'Dr. Seuss', '0394800168', 1988, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('The Lovely Bones', 'The Lovely Bones is the story of a family devastated by a gruesome murder -- a murder recounted by the teenage victim. Upsetting, you say?', 'Alice Sebold', '0316166685', 2006, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Infinite Jest', 'A gargantuan, mind-altering comedy about the Pursuit of Happiness in America.', 'David Foster Wallace', '0316921173', 2005, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Girl, Interrupted', 'First published in 1994. Reprinted and a bestseller in 2000 (due to movie based on the book).', 'Susanna Kaysen', '0679746048', 1994, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Of Human Bondage', 'The first and most autobiographical of Maugham''s masterpieces. It is the story of Philip Carey, an orphan eager for life, love and adventure.', 'W. Somerset Maugham', '0451530179', 2007, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Lord of the Flies', 'The boys'' struggle to find a way of existing in a community with no fixed boundaries invites readers to evaluate the concepts involved in social and political constructs and moral frameworks.', 'William Golding', '0140283331', 1999, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Never Let Me Go', 'A tale of deceptive simplicity that slowly reveals an extraordinary emotional depth and resonance – and takes its place among Kazuo Ishiguro''s finest work.', 'Kazuo Ishiguro', '1400078776', 2010, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Everyone Poops', 'With a straightforward text and illustrations showing beasts and bugs doing it, younger children are shown a natural part of life. Elephants and mice, fish and raccoons, grown-ups and children, all in their own style do it.', 'Taro Gomi', '192913214X', 1993, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Running with Scissors', 'The true story of an outlaw childhood where rules were unheard of, the Christmas tree stayed up all year round, Valium was consumed like candy, and if things got dull an electroshock-therapy machine could provide entertainment.', 'Augusten Burroughs', '031242227X', 2003, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Water for Elephants', 'An atmospheric, gritty, and compelling novel of star-crossed lovers, set in the circus world circa 1932 illuminated by a wonderful sense of time and place. Winner of the 2007 BookBrowse Award for Most Popular Book.', 'Sara Gruen', '1565125606', 2007, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Nigger', '"Good evening, ladies and gentlemen. I understand there are a good many Southerners in the room tonight. I know the South very well. I spent twenty years there one night..."', 'Dick Gregory, Robert Lipsyte', '0671735608', 1990, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('The Age of Innocence', 'Winner of the 1921 Pulitzer Prize, The Age of Innocence is Edith Wharton’s masterful portrait of desire and betrayal during the sumptuous Golden Age of Old New York, a time when society people “dreaded scandal more than disease.”', 'Edith Wharton', '159308143X', 2004, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('The Fuck-Up', 'Arthur Nersesian''s underground literary treasure is an unforgettable slice of gritty New York City life...and the darkly hilarious odyssey of an anonymous slacker.', 'Arthur Nersesian', '0671027638', 1999, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('The Great Gatsby', 'This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan', 'F. Scott Fitzgerald', '0743273567', 2004, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Vanity Fair', 'Vanity Fair: A Novel without a Hero is a novel by William Makepeace Thackeray, first published in 1847–48, satirizing society in early 19th-century Britain.', 'William Makepeace Thackeray', '0141439831', 2003, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Sexting', 'English writer, Michael Lincoln, embarks on an internet relationship with a younger fan, Elise McHugh, who comes from Singapore.', 'G.B. Hope', '0957074557', 2013, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('The Kite Runner', 'A sweeping story of family, love, and friendship told against the devastating backdrop of the history of Afghanistan over the last thirty years, The Kite Runner is an unusual and powerful novel that has become a beloved, one-of-a-kind classic.', 'Khaled Hosseini', '1594480001', 2004, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Her Fearful Symmetry', 'Six years after the phenomenal success of The Time Traveler''s Wife, Audrey Niffenegger has returned with a spectacularly compelling and haunting second novel set in and around Highgate Cemetery in London.', 'Audrey Niffenegger', '0224085611', 2009, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('The Name of the Rose', 'The year is 1327. Franciscans in a wealthy Italian abbey are suspected of heresy, and Brother William of Baskerville arrives to investigate. When his delicate mission is suddenly overshadowed by seven bizarre deaths, Brother William turns detective.', 'Umberto Eco', '0156001314', 1994, True);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Desolation Angels', 'Along with such visionaries as William S. Burroughs, Neal Cassady, and Allen Ginsberg, Kerouac changed the face of American literature, igniting a counterculture revolution that even now, decades later, burns brighter than ever in Desolation Angels.', 'Jack Kerouac', '1573225053', 1995, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Still Life with Woodpecker', 'Still Life with Woodpecker is a sort of a love story that takes place inside a pack of Camel cigarettes.', 'Tom Robbins', '184243022X', 2001, False);
INSERT INTO book(title, description, author, isbn, printYear, readAlready) VALUES
('Wishful Drinking', 'In Wishful Drinking, Carrie Fisher tells the true and intoxicating story of her life with inimitable wit. Born to celebrity parents, she was picked to play a princess in a little movie called Star Wars when only 19 years old.', 'Carrie Fisher', '1439102252', 2008, True);