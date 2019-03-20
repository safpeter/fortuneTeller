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



INSERT INTO cards VALUES (1, 'baby', '', '+', 'gypsy_card/baby.png');
INSERT INTO cards VALUES (2, 'consolation', '', '+', 'gypsy_card/consolation.png');
INSERT INTO cards VALUES (3, 'death', '', '+', 'gypsy_card/death.png');
INSERT INTO cards VALUES (4, 'despair', '', '+', 'gypsy_card/despair.png');
INSERT INTO cards VALUES (5, 'doctor', '', '+', 'gypsy_card/doctor.png');
INSERT INTO cards VALUES (6, 'enemy', '', '+', 'gypsy_card/enemy.png');
INSERT INTO cards VALUES (7, 'faithfulness', '', '+', 'gypsy_card/faithfulness.png');
INSERT INTO cards VALUES (8, 'falseness', '', '+', 'gypsy_card/falseness.png');
INSERT INTO cards VALUES (9, 'foe', '', '+', 'gypsy_card/foe.png');
INSERT INTO cards VALUES (10, 'fortune', '', '+', 'gypsy_card/fortune.png');
INSERT INTO cards VALUES (11, 'gift', '', '+', 'gypsy_card/gift.png');
INSERT INTO cards VALUES (12, 'haughtiness', '', '+', 'gypsy_card/haughtiness.png');
INSERT INTO cards VALUES (13, 'hope', '', '+', 'gypsy_card/hope.png');
INSERT INTO cards VALUES (14, 'house', '', '+', 'gypsy_card/house.png');
INSERT INTO cards VALUES (15, 'journey', '', '+', 'gypsy_card/journey.png');
INSERT INTO cards VALUES (16, 'joyfulness', '', '+', 'gypsy_card/joyfulness.png');
INSERT INTO cards VALUES (17, 'letter', '', '+', 'gypsy_card/letter.png');
INSERT INTO cards VALUES (18, 'lord', '', '+', 'gypsy_card/lord.png');
INSERT INTO cards VALUES (19, 'love', '', '+', 'gypsy_card/love.png');
INSERT INTO cards VALUES (20, 'lover', '', '+', 'gypsy_card/lover.png');
INSERT INTO cards VALUES (21, 'malady', '', '+', 'gypsy_card/malady.png');
INSERT INTO cards VALUES (22, 'melancholy', '', '+', 'gypsy_card/melancholy.png');
INSERT INTO cards VALUES (23, 'messenger', '', '+', 'gypsy_card/messenger.png');
INSERT INTO cards VALUES (24, 'misfortune', '', '+', 'gypsy_card/misfortune.png');
INSERT INTO cards VALUES (25, 'money', '', '+', 'gypsy_card/money.png');
INSERT INTO cards VALUES (26, 'old_woman', '', '+', 'gypsy_card/old_woman.png');
INSERT INTO cards VALUES (27, 'party', '', '+', 'gypsy_card/party.png');
INSERT INTO cards VALUES (28, 'pleasure-seekers', '', '+', 'gypsy_card/pleasure-seekers.png');
INSERT INTO cards VALUES (29, 'priest', '', '+', 'gypsy_card/priest.png');
INSERT INTO cards VALUES (30, 'prison', '', '+', 'gypsy_card/prison.png');
INSERT INTO cards VALUES (31, 'reunion', '', '+', 'gypsy_card/reunion.png');
INSERT INTO cards VALUES (32, 'scholar', '', '+', 'gypsy_card/scholar.png');
INSERT INTO cards VALUES (33, 'servant', '', '+', 'gypsy_card/servant.png');
INSERT INTO cards VALUES (34, 'service', '', '+', 'gypsy_card/service.png');
INSERT INTO cards VALUES (35, 'sighs', '', '+', 'gypsy_card/sighs.png');
INSERT INTO cards VALUES (36, 'soldier', '', '+', 'gypsy_card/soldier.png');
INSERT INTO cards VALUES (37, 'sorrow', '', '+', 'gypsy_card/sorrow.png');
INSERT INTO cards VALUES (38, 'sweetheart', '', '+', 'gypsy_card/sweetheart.png');
INSERT INTO cards VALUES (39, 'thief', '', '+', 'gypsy_card/thief.png');
INSERT INTO cards VALUES (40, 'thought', '', '+', 'gypsy_card/thought.png');
INSERT INTO cards VALUES (41, 'visit', '', '+', 'gypsy_card/visit.png');
INSERT INTO cards VALUES (42, 'waiting', '', '+', 'gypsy_card/waiting.png');
INSERT INTO cards VALUES (43, 'wedding', '', '+', 'gypsy_card/wedding.png');
INSERT INTO cards VALUES (44, 'widower', '', '+', 'gypsy_card/widower.png');
INSERT INTO cards VALUES (45, 'wife', '', '+', 'gypsy_card/wife.png');
INSERT INTO cards VALUES (46, 'young_woman', '', '+', 'gypsy_card/young_woman.png');


