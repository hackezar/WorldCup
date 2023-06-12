--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 306, 307, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 308, 309, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 307, 309, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 306, 308, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 307, 310, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 309, 311, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 308, 312, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 306, 313, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 309, 314, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 311, 315, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 308, 316, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 312, 317, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 307, 318, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 310, 319, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 313, 320, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 306, 321, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 322, 321, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 323, 312, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 321, 323, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 322, 312, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 323, 324, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 321, 308, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 312, 314, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 322, 306, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 312, 325, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 314, 313, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 306, 326, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 322, 327, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 323, 317, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 324, 328, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 321, 315, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 308, 329, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (306, 'France');
INSERT INTO public.teams VALUES (307, 'Croatia');
INSERT INTO public.teams VALUES (308, 'Belgium');
INSERT INTO public.teams VALUES (309, 'England');
INSERT INTO public.teams VALUES (310, 'Russia');
INSERT INTO public.teams VALUES (311, 'Sweden');
INSERT INTO public.teams VALUES (312, 'Brazil');
INSERT INTO public.teams VALUES (313, 'Uruguay');
INSERT INTO public.teams VALUES (314, 'Colombia');
INSERT INTO public.teams VALUES (315, 'Switzerland');
INSERT INTO public.teams VALUES (316, 'Japan');
INSERT INTO public.teams VALUES (317, 'Mexico');
INSERT INTO public.teams VALUES (318, 'Denmark');
INSERT INTO public.teams VALUES (319, 'Spain');
INSERT INTO public.teams VALUES (320, 'Portugal');
INSERT INTO public.teams VALUES (321, 'Argentina');
INSERT INTO public.teams VALUES (322, 'Germany');
INSERT INTO public.teams VALUES (323, 'Netherlands');
INSERT INTO public.teams VALUES (324, 'Costa Rica');
INSERT INTO public.teams VALUES (325, 'Chile');
INSERT INTO public.teams VALUES (326, 'Nigeria');
INSERT INTO public.teams VALUES (327, 'Algeria');
INSERT INTO public.teams VALUES (328, 'Greece');
INSERT INTO public.teams VALUES (329, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 65, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 32, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 329, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

