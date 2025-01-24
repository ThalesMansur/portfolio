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
    user_id integer NOT NULL,
    tries integer NOT NULL
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

INSERT INTO public.games VALUES (23, 34, 1);
INSERT INTO public.games VALUES (24, 34, 1);
INSERT INTO public.games VALUES (25, 35, 1);
INSERT INTO public.games VALUES (26, 35, 2);
INSERT INTO public.games VALUES (27, 36, 237);
INSERT INTO public.games VALUES (28, 36, 522);
INSERT INTO public.games VALUES (29, 37, 551);
INSERT INTO public.games VALUES (30, 37, 906);
INSERT INTO public.games VALUES (31, 36, 40);
INSERT INTO public.games VALUES (32, 36, 904);
INSERT INTO public.games VALUES (33, 36, 265);
INSERT INTO public.games VALUES (34, 38, 929);
INSERT INTO public.games VALUES (35, 38, 432);
INSERT INTO public.games VALUES (36, 39, 231);
INSERT INTO public.games VALUES (37, 39, 204);
INSERT INTO public.games VALUES (38, 38, 459);
INSERT INTO public.games VALUES (39, 38, 372);
INSERT INTO public.games VALUES (40, 38, 167);
INSERT INTO public.games VALUES (41, 40, 115);
INSERT INTO public.games VALUES (42, 40, 245);
INSERT INTO public.games VALUES (43, 41, 161);
INSERT INTO public.games VALUES (44, 41, 551);
INSERT INTO public.games VALUES (45, 40, 132);
INSERT INTO public.games VALUES (46, 40, 395);
INSERT INTO public.games VALUES (47, 40, 156);
INSERT INTO public.games VALUES (48, 42, 4);
INSERT INTO public.games VALUES (49, 42, 365);
INSERT INTO public.games VALUES (50, 43, 542);
INSERT INTO public.games VALUES (51, 43, 306);
INSERT INTO public.games VALUES (52, 42, 598);
INSERT INTO public.games VALUES (53, 42, 122);
INSERT INTO public.games VALUES (54, 42, 772);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (34, 'Thales');
INSERT INTO public.users VALUES (35, 'Marcos');
INSERT INTO public.users VALUES (36, 'user_1737737413851');
INSERT INTO public.users VALUES (37, 'user_1737737413850');
INSERT INTO public.users VALUES (38, 'user_1737737521002');
INSERT INTO public.users VALUES (39, 'user_1737737521001');
INSERT INTO public.users VALUES (40, 'user_1737737576438');
INSERT INTO public.users VALUES (41, 'user_1737737576437');
INSERT INTO public.users VALUES (42, 'user_1737737609873');
INSERT INTO public.users VALUES (43, 'user_1737737609872');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 54, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


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

