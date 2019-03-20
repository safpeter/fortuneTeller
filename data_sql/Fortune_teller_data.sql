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



INSERT INTO cards VALUES (1, 'baby', '', '+', '../static/gypsy_card/baby.png');

INSERT INTO cards VALUES (2, 'consolation', '', '+', '../static/gypsy_card/consolation.png');

INSERT INTO cards VALUES (3, 'death', '', '+', '../static/gypsy_card/death.png');

INSERT INTO cards VALUES (4, 'despair', '', '+', '../static/gypsy_card/despair.png');

INSERT INTO cards VALUES (5, 'doctor', '', '+', '../static/gypsy_card/doctor.png');

INSERT INTO cards VALUES (6, 'enemy', '', '+', '../static/gypsy_card/enemy.png');

INSERT INTO cards VALUES (7, 'faithfulness', '', '+', '../static/gypsy_card/faithfulness.png');

INSERT INTO cards VALUES (8, 'falseness', '', '+', '../static/gypsy_card/falseness.png');

INSERT INTO cards VALUES (9, 'foe', '', '+', '../static/gypsy_card/foe.png');

INSERT INTO cards VALUES (10, 'fortune', '', '+', '../static/gypsy_card/fortune.png');

INSERT INTO cards VALUES (11, 'gift', '', '+', '../static/gypsy_card/gift.png');

INSERT INTO cards VALUES (12, 'haughtiness', '', '+', '../static/gypsy_card/haughtiness.png');

INSERT INTO cards VALUES (13, 'hope', '', '+', '../static/gypsy_card/hope.png');

INSERT INTO cards VALUES (14, 'house', '', '+', '../static/gypsy_card/house.png');

INSERT INTO cards VALUES (15, 'journey', '', '+', '../static/gypsy_card/journey.png');

INSERT INTO cards VALUES (16, 'joyfulness', '', '+', '../static/gypsy_card/joyfulness.png');

INSERT INTO cards VALUES (17, 'letter', '', '+', '../static/gypsy_card/letter.png');

INSERT INTO cards VALUES (18, 'lord', '', '+', '../static/gypsy_card/lord.png');

INSERT INTO cards VALUES (19, 'love', '', '+', '../static/gypsy_card/love.png');

INSERT INTO cards VALUES (20, 'lover', '', '+', '../static/gypsy_card/lover.png');

INSERT INTO cards VALUES (21, 'malady', '', '+', '../static/gypsy_card/malady.png');

INSERT INTO cards VALUES (22, 'melancholy', '', '+', '../static/gypsy_card/melancholy.png');

INSERT INTO cards VALUES (23, 'messenger', '', '+', '../static/gypsy_card/messenger.png');

INSERT INTO cards VALUES (24, 'misfortune', '', '+', '../static/gypsy_card/misfortune.png');

INSERT INTO cards VALUES (25, 'money', '', '+', '../static/gypsy_card/money.png');

INSERT INTO cards VALUES (26, 'old_woman', '', '+', '../static/gypsy_card/old_woman.png');

INSERT INTO cards VALUES (27, 'party', '', '+', '../static/gypsy_card/party.png');

INSERT INTO cards VALUES (28, 'pleasure-seekers', '', '+', '../static/gypsy_card/pleasure-seekers.png');

INSERT INTO cards VALUES (29, 'priest', '', '+', '../static/gypsy_card/priest.png');

INSERT INTO cards VALUES (30, 'prison', '', '+', '../static/gypsy_card/prison.png');

INSERT INTO cards VALUES (31, 'reunion', '', '+', '../static/gypsy_card/reunion.png');

INSERT INTO cards VALUES (32, 'scholar', '', '+', '../static/gypsy_card/scholar.png');

INSERT INTO cards VALUES (33, 'servant', '', '+', '../static/gypsy_card/servant.png');

INSERT INTO cards VALUES (34, 'service', '', '+', '../static/gypsy_card/service.png');

INSERT INTO cards VALUES (35, 'sighs', '', '+', '../static/gypsy_card/sighs.png');

INSERT INTO cards VALUES (36, 'soldier', '', '+', '../static/gypsy_card/soldier.png');

INSERT INTO cards VALUES (37, 'sorrow', '', '+', '../static/gypsy_card/sorrow.png');

INSERT INTO cards VALUES (38, 'sweetheart', '', '+', '../static/gypsy_card/sweetheart.png');

INSERT INTO cards VALUES (39, 'thief', '', '+', '../static/gypsy_card/thief.png');

INSERT INTO cards VALUES (40, 'thought', '', '+', '../static/gypsy_card/thought.png');

INSERT INTO cards VALUES (41, 'visit', '', '+', '../static/gypsy_card/visit.png');

INSERT INTO cards VALUES (42, 'waiting', '', '+', '../static/gypsy_card/waiting.png');

INSERT INTO cards VALUES (43, 'wedding', '', '+', '../static/gypsy_card/wedding.png');

INSERT INTO cards VALUES (44, 'widower', '', '+', '../static/gypsy_card/widower.png');

INSERT INTO cards VALUES (45, 'wife', '', '+', '../static/gypsy_card/wife.png');

INSERT INTO cards VALUES (46, 'young_woman', '', '+', '../static/gypsy_card/young_woman.png');


