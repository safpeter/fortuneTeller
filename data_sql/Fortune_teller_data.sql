--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

ALTER TABLE IF EXISTS ONLY public.cards DROP CONSTRAINT IF EXISTS pk_card_id CASCADE;


DROP TABLE IF EXISTS public.question CASCADE;
DROP SEQUENCE IF EXISTS public.question_id_seq;
DROP TABLE IF EXISTS public.answer;
DROP SEQUENCE IF EXISTS public.answer_id_seq;
DROP TABLE IF EXISTS public.comment;
DROP SEQUENCE IF EXISTS public.comment_id_seq;
DROP TABLE IF EXISTS public.question_tag;
DROP TABLE IF EXISTS public.tag;
DROP SEQUENCE IF EXISTS public.tag_id_seq;
DROP TABLE IF EXISTS public.users;
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



INSERT INTO cards VALUES (1, 'baby', 'You''ll make a child in hope for getting a loan of 10 million HUF', '+', 'gypsy_card/baby.png');
INSERT INTO cards VALUES (2, 'consolation', 'You need to clean the table, if you want to see Heath Ledger flying ', '+', 'gypsy_card/consolation.png');
INSERT INTO cards VALUES (3, 'death', 'If you have batwings, just cut them off', '-', 'gypsy_card/death.png');
INSERT INTO cards VALUES (4, 'despair', 'Deak Ferenc', '-', 'gypsy_card/despair.png');
INSERT INTO cards VALUES (5, 'doctor', 'Be careful. Zoltan Kodaly wants your girl touch him', '-', 'gypsy_card/doctor.png');
INSERT INTO cards VALUES (6, 'enemy', 'Your personal mentor dresses like a woman and hides behind a tree', '+', 'gypsy_card/enemy.png');
INSERT INTO cards VALUES (7, 'faithfulness', 'Buy something from gypsies and you''ll get a dog' , '+', 'gypsy_card/faithfulness.png');
INSERT INTO cards VALUES (8, 'falseness', 'Your cat will turn into Yoda', '-', 'gypsy_card/falseness.png');
INSERT INTO cards VALUES (9, 'foe', 'Don''t let the one-armed woman in', '-', 'gypsy_card/foe.png');
INSERT INTO cards VALUES (10, 'fortune', 'You''ll be so rich that your girl will pour money from her breast', '+', 'gypsy_card/fortune.png');
INSERT INTO cards VALUES (11, 'gift', 'If you left the window open, the rain will fall into the dining room', '-', 'gypsy_card/gift.png');
INSERT INTO cards VALUES (12, 'haughtiness', 'Eating too much chicken causes hallucinations', '+', 'gypsy_card/haughtiness.png');
INSERT INTO cards VALUES (13, 'hope', 'If you cut your hair with a saw, you may need bandages', '-', 'gypsy_card/hope.png');
INSERT INTO cards VALUES (14, 'house', 'The left part of your house could easily shrink', '-', 'gypsy_card/house.png');
INSERT INTO cards VALUES (15, 'journey', 'If you break your horse''s leg, it will stop immediately', '-', 'gypsy_card/journey.png');
INSERT INTO cards VALUES (16, 'joyfulness', 'You won''t go to Ozora this summer', '-', 'gypsy_card/joyfulness.png');
INSERT INTO cards VALUES (17, 'letter', 'Levelet kaptam LIFE', '+', 'gypsy_card/letter.png');
INSERT INTO cards VALUES (18, 'lord', 'Your trousers won''t be long enough, but you can hide them with long boots', '-', 'gypsy_card/lord.png');
INSERT INTO cards VALUES (19, 'love', 'Your child eat in McDonalds too often', '-', 'gypsy_card/love.png');
INSERT INTO cards VALUES (20, 'lover', 'Don''t panic, search your trousers on balconies', '+', 'gypsy_card/lover.png');
INSERT INTO cards VALUES (21, 'malady', 'You don''t have to work anymore', '+', 'gypsy_card/malady.png');
INSERT INTO cards VALUES (22, 'melancholy', 'Sitting on curly brackets won''t help you learn javascript', '-', 'gypsy_card/melancholy.png');
INSERT INTO cards VALUES (23, 'messenger', 'You will develop a messenger app', '+', 'gypsy_card/messenger.png');
INSERT INTO cards VALUES (24, 'misfortune', 'Walls of a house on fire can be very slippery', '-', 'gypsy_card/misfortune.png');
INSERT INTO cards VALUES (25, 'money', 'Broking up with your girlfriend will earn you a lot of money', '+', 'gypsy_card/money.png');
INSERT INTO cards VALUES (26, 'old_woman', 'Someone will steal your grandma''s biggest painting', '+', 'gypsy_card/old_woman.png');
INSERT INTO cards VALUES (27, 'party', 'Be aware of girls who wants you to split in their glasses', '+', 'gypsy_card/party.png');
INSERT INTO cards VALUES (28, 'pleasure-seekers', 'One of your friends likes wearing woman''s underwear', '-', 'gypsy_card/pleasure-seekers.png');
INSERT INTO cards VALUES (29, 'priest', 'If you grow too big, you can''t fit into the Western Railway Station', '-', 'gypsy_card/priest.png');
INSERT INTO cards VALUES (30, 'prison', 'Don''t show your face when you wear red trousers on your back', '-', 'gypsy_card/prison.png');
INSERT INTO cards VALUES (31, 'reunion', 'A lady will appreciate if you help her out from a banana', '+', 'gypsy_card/reunion.png');
INSERT INTO cards VALUES (32, 'scholar', 'You''ll grow old when you finish python tutorial', '-', 'gypsy_card/scholar.png');
INSERT INTO cards VALUES (33, 'servant', 'Your future wife', '+', 'gypsy_card/servant.png');
INSERT INTO cards VALUES (34, 'service', 'You can not afford to buy a car', '-', 'gypsy_card/service.png');
INSERT INTO cards VALUES (35, 'sighs', 'If you believe in flat Earth, think it over', '+', 'gypsy_card/sighs.png');
INSERT INTO cards VALUES (36, 'soldier', 'The Viet Cong will liberate Italy', '+', 'gypsy_card/soldier.png');
INSERT INTO cards VALUES (37, 'sorrow', 'If you are too tired to swim just fall asleep anywhere you want', '+', 'gypsy_card/sorrow.png');
INSERT INTO cards VALUES (38, 'sweetheart', 'Your girlfriend will bleed after crashed into the roses', '+', 'gypsy_card/sweetheart.png');
INSERT INTO cards VALUES (39, 'thief', 'Consider using the curtain instead of a shovel after leaving the toilet ', '+', 'gypsy_card/thief.png');
INSERT INTO cards VALUES (40, 'thought', 'Neck bleeding will make your head bald', '-', 'gypsy_card/thought.png');
INSERT INTO cards VALUES (41, 'visit', 'Being alone is not the worst thing', '-', 'gypsy_card/visit.png');
INSERT INTO cards VALUES (42, 'waiting', 'Waiting too much in the wind makes your head flat', '-', 'gypsy_card/waiting.png');
INSERT INTO cards VALUES (43, 'wedding', 'If you touch Santa Clause, he will turn you into a woman', '+', 'gypsy_card/wedding.png');
INSERT INTO cards VALUES (44, 'widower', 'This is the border of the country. You will never step over it', '-', 'gypsy_card/widower.png');
INSERT INTO cards VALUES (45, 'wife', 'Big bloody valentine', '-', 'gypsy_card/wife.png');
INSERT INTO cards VALUES (46, 'young_woman', 'Dressing like a woman doesn''t help you, have a shower instead', '+', 'gypsy_card/young_woman.png');


