--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 10);
INSERT INTO public.games VALUES (2, 2, 891);
INSERT INTO public.games VALUES (3, 2, 889);
INSERT INTO public.games VALUES (4, 3, 314);
INSERT INTO public.games VALUES (5, 3, 630);
INSERT INTO public.games VALUES (6, 2, 474);
INSERT INTO public.games VALUES (7, 2, 775);
INSERT INTO public.games VALUES (8, 2, 558);
INSERT INTO public.games VALUES (9, 4, 13);
INSERT INTO public.games VALUES (10, 5, 222);
INSERT INTO public.games VALUES (11, 5, 75);
INSERT INTO public.games VALUES (12, 6, 900);
INSERT INTO public.games VALUES (13, 6, 342);
INSERT INTO public.games VALUES (14, 5, 260);
INSERT INTO public.games VALUES (15, 5, 689);
INSERT INTO public.games VALUES (16, 5, 409);
INSERT INTO public.games VALUES (17, 4, 1);
INSERT INTO public.games VALUES (18, 7, 893);
INSERT INTO public.games VALUES (19, 7, 3);
INSERT INTO public.games VALUES (20, 8, 977);
INSERT INTO public.games VALUES (21, 8, 570);
INSERT INTO public.games VALUES (22, 7, 571);
INSERT INTO public.games VALUES (23, 7, 479);
INSERT INTO public.games VALUES (24, 7, 422);
INSERT INTO public.games VALUES (25, 1, 17);
INSERT INTO public.games VALUES (26, 9, 350);
INSERT INTO public.games VALUES (27, 9, 640);
INSERT INTO public.games VALUES (28, 10, 570);
INSERT INTO public.games VALUES (29, 10, 963);
INSERT INTO public.games VALUES (30, 9, 51);
INSERT INTO public.games VALUES (31, 9, 6);
INSERT INTO public.games VALUES (32, 9, 536);
INSERT INTO public.games VALUES (33, 11, 12);
INSERT INTO public.games VALUES (34, 12, 622);
INSERT INTO public.games VALUES (35, 12, 371);
INSERT INTO public.games VALUES (36, 13, 718);
INSERT INTO public.games VALUES (37, 13, 607);
INSERT INTO public.games VALUES (38, 12, 847);
INSERT INTO public.games VALUES (39, 12, 853);
INSERT INTO public.games VALUES (40, 12, 94);
INSERT INTO public.games VALUES (41, 1, 11);
INSERT INTO public.games VALUES (42, 14, 31);
INSERT INTO public.games VALUES (43, 14, 893);
INSERT INTO public.games VALUES (44, 15, 496);
INSERT INTO public.games VALUES (45, 15, 571);
INSERT INTO public.games VALUES (46, 14, 819);
INSERT INTO public.games VALUES (47, 14, 257);
INSERT INTO public.games VALUES (48, 14, 7);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'felipe');
INSERT INTO public.users VALUES (2, 'user_1749606734467');
INSERT INTO public.users VALUES (3, 'user_1749606734466');
INSERT INTO public.users VALUES (4, 'Dexter Morgan');
INSERT INTO public.users VALUES (5, 'user_1749606857603');
INSERT INTO public.users VALUES (6, 'user_1749606857602');
INSERT INTO public.users VALUES (7, 'user_1749606942620');
INSERT INTO public.users VALUES (8, 'user_1749606942619');
INSERT INTO public.users VALUES (9, 'user_1749607017263');
INSERT INTO public.users VALUES (10, 'user_1749607017262');
INSERT INTO public.users VALUES (11, 'Dexter Morga');
INSERT INTO public.users VALUES (12, 'user_1749607349170');
INSERT INTO public.users VALUES (13, 'user_1749607349169');
INSERT INTO public.users VALUES (14, 'user_1749607735168');
INSERT INTO public.users VALUES (15, 'user_1749607735167');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 48, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

