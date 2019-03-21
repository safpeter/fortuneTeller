--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

ALTER TABLE IF EXISTS ONLY public.cards DROP CONSTRAINT IF EXISTS pk_card_id CASCADE;


DROP TABLE IF EXISTS public.question CASCADE;
DROP SEQUENCE IF EXISTS public.question_id_seq;
DROP TABLE IF EXISTS public.answer CASCADE;
DROP SEQUENCE IF EXISTS public.answer_id_seq;
DROP TABLE IF EXISTS public.comment CASCADE;
DROP SEQUENCE IF EXISTS public.comment_id_seq;
DROP TABLE IF EXISTS public.question_tag CASCADE;
DROP TABLE IF EXISTS public.tag CASCADE;
DROP SEQUENCE IF EXISTS public.tag_id_seq;
DROP TABLE IF EXISTS public.users CASCADE;
DROP SEQUENCE IF EXISTS public.users_id_seq;



DROP TABLE IF EXISTS public.cards;
CREATE TABLE cards (
  id serial NOT NULL,
  name text,
  meaning text,
  polarity text,
  pic_route text,
PRIMARY KEY (id)
);

ALTER TABLE ONLY cards
    ADD CONSTRAINT pk_card_id PRIMARY KEY (id);



INSERT INTO cards VALUES (1, 'baby', 'You''ll make a child in hope for getting a loan of 10 million HUF', '+', '../static/gypsy_card/baby.png');

INSERT INTO cards VALUES (2, 'consolation', 'You need to clean the table, if you want to see Heath Ledger flying ', '+', '../static/gypsy_card/consolation.png');

INSERT INTO cards VALUES (3, 'death', 'If you have batwings, just cut them off', '-', '../static/gypsy_card/death.png');

INSERT INTO cards VALUES (4, 'despair', 'Deák Ferenc', '-', '../static/gypsy_card/despair.png');

INSERT INTO cards VALUES (5, 'doctor', 'Be careful. Zoltán Kodály wants your girl to touch him', '-', '../static/gypsy_card/doctor.png');

INSERT INTO cards VALUES (6, 'enemy', 'Your personal mentor dresses like a woman and hides behind a tree', '+', '../static/gypsy_card/enemy.png');

INSERT INTO cards VALUES (7, 'faithfulness', 'Buy something from gypsies and you''ll get a dog' , '+', '../static/gypsy_card/faithfulness.png');

INSERT INTO cards VALUES (8, 'falseness', 'Your cat will turn into Yoda', '-', '../static/gypsy_card/falseness.png');

INSERT INTO cards VALUES (9, 'foe', 'Don''t let in the one-armed woman', '-', '../static/gypsy_card/foe.png');

INSERT INTO cards VALUES (10, 'fortune', 'You''ll be so rich that your girl will pour money from her breast', '+', '../static/gypsy_card/fortune.png');

INSERT INTO cards VALUES (11, 'gift', 'If you left the window open, the rain will fall into the dining room', '-', '../static/gypsy_card/gift.png');

INSERT INTO cards VALUES (12, 'haughtiness', 'Eating green chicken causes hallucinations', '+', '../static/gypsy_card/haughtiness.png');

INSERT INTO cards VALUES (13, 'hope', 'If you cut your hair with a saw, you may need bandages', '-', '../static/gypsy_card/hope.png');

INSERT INTO cards VALUES (14, 'house', 'The left part of your house could easily shrink', '-', '../static/gypsy_card/house.png');

INSERT INTO cards VALUES (15, 'journey', 'If you break your horse''s leg, it will stop immediately', '-', '../static/gypsy_card/journey.png');

INSERT INTO cards VALUES (16, 'joyfulness', 'You won''t go to Ozora this summer', '-', '../static/gypsy_card/joyfulness.png');

INSERT INTO cards VALUES (17, 'letter', 'Levelet kaptam LIFE', '+', '../static/gypsy_card/letter.png');

INSERT INTO cards VALUES (18, 'lord', 'Your horse will eat your trousers, but you can hide them with long boots', '-', '../static/gypsy_card/lord.png');

INSERT INTO cards VALUES (19, 'love', 'Your child eat in McDonalds too often', '-', '../static/gypsy_card/love.png');

INSERT INTO cards VALUES (20, 'lover', 'Don''t panic, search your trousers on the balconies', '+', '../static/gypsy_card/lover.png');

INSERT INTO cards VALUES (21, 'malady', 'You don''t have to work anymore', '+', '../static/gypsy_card/malady.png');

INSERT INTO cards VALUES (22, 'melancholy', 'Sitting on curly brackets won''t help you learn javascript', '-', '../static/gypsy_card/melancholy.png');

INSERT INTO cards VALUES (23, 'messenger', 'You will develop a new messenger app', '+', '../static/gypsy_card/messenger.png');

INSERT INTO cards VALUES (24, 'misfortune', 'Walls of a house on fire can be very slippery', '-', '../static/gypsy_card/misfortune.png');

INSERT INTO cards VALUES (25, 'money', 'Breaking up with your girlfriend will earn you a lot of money', '+', '../static/gypsy_card/money.png');

INSERT INTO cards VALUES (26, 'old_woman', 'Someone will steal your grandma''s biggest painting', '+', '../static/gypsy_card/old_woman.png');

INSERT INTO cards VALUES (27, 'party', 'Be aware of girls who wants you to spit in their glasses', '+', '../static/gypsy_card/party.png');

INSERT INTO cards VALUES (28, 'pleasure-seekers', 'One of your friends likes wearing woman''s underwear', '-', '../static/gypsy_card/pleasure-seekers.png');

INSERT INTO cards VALUES (29, 'priest', 'If you grow too big, you won''t fit into the Western Railway Station', '-', '../static/gypsy_card/priest.png');

INSERT INTO cards VALUES (30, 'prison', 'Don''t show your face when you wear red trousers on your back', '-', '../static/gypsy_card/prison.png');

INSERT INTO cards VALUES (31, 'reunion', 'A lady will appreciate if you help her out from a banana', '+', '../static/gypsy_card/reunion.png');

INSERT INTO cards VALUES (32, 'scholar', 'This card shows you the time you need to finish javascript tutorial', '-', '../static/gypsy_card/scholar.png');

INSERT INTO cards VALUES (33, 'servant', 'Your future wife', '+', '../static/gypsy_card/servant.png');

INSERT INTO cards VALUES (34, 'service', 'You can not afford to buy a car', '-', '../static/gypsy_card/service.png');

INSERT INTO cards VALUES (35, 'sighs', 'If you believe in flat Earth, think it over', '+', '../static/gypsy_card/sighs.png');

INSERT INTO cards VALUES (36, 'soldier', 'The Viet Cong will liberate Italy', '+', '../static/gypsy_card/soldier.png');

INSERT INTO cards VALUES (37, 'sorrow', 'If you are too tired to swim just fall asleep anywhere you want', '+', '../static/gypsy_card/sorrow.png');

INSERT INTO cards VALUES (38, 'sweetheart', 'Your girlfriend will bleed after falling into the rose bush', '+', '../static/gypsy_card/sweetheart.png');

INSERT INTO cards VALUES (39, 'thief', 'Consider using the curtain instead of a shovel after defecating', '+', '../static/gypsy_card/thief.png');

INSERT INTO cards VALUES (40, 'thought', 'Neck bleeding will make your head bald', '-', '../static/gypsy_card/thought.png');

INSERT INTO cards VALUES (41, 'visit', 'Being alone is not the worst thing', '-', '../static/gypsy_card/visit.png');

INSERT INTO cards VALUES (42, 'waiting', 'Waiting too much in the wind makes your head flat', '-', '../static/gypsy_card/waiting.png');

INSERT INTO cards VALUES (43, 'wedding', 'If you touch Santa Clause, he will turn you into a woman', '+', '../static/gypsy_card/wedding.png');

INSERT INTO cards VALUES (44, 'widower', 'This is the border of the country. You will never step over it', '-', '../static/gypsy_card/widower.png');

INSERT INTO cards VALUES (45, 'wife', 'Big bloody valentine', '-', '../static/gypsy_card/wife.png');

INSERT INTO cards VALUES (46, 'young_woman', 'Dressing like a woman doesn''t help you, have a shower instead', '+', '../static/gypsy_card/young_woman.png');


