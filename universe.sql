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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type character varying(20),
    distance_from_earth_in_light_years numeric,
    age_in_millions_of_years integer,
    description text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    bigger_than_earth_moon boolean,
    unique_on_the_planet boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_type character varying(30),
    has_life boolean,
    bigger_than_earth boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_type character varying(20),
    distance_from_earth_in_light_years numeric,
    age_in_millions_of_years integer,
    description text NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Itokawa', 'First asteroid sampled');
INSERT INTO public.asteroids VALUES (2, 'Ryugu', 'FirRyugu is a C-type near-Earth asteroid with a diameter of about one kilometer.');
INSERT INTO public.asteroids VALUES (3, 'Didymos', 'Didymos is a binary asteroid, with two bodies orbiting each other, close to Earth.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', NULL, 13600, 'The Milky Way is a spiral galaxy where our
solar system and the earth are located');
INSERT INTO public.galaxy VALUES (3, 'Canis Major Overdensity', 'Elliptical', 25000, NULL, 'The Canis Major Overdensity is a disputed
dwarf irregular galaxy in the Local Group,
located in the same part of the sky as
the constellation Canis Major.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2500000, 10000, 'The Andromeda Galaxy, M31, is the largest galaxy close to
our Milky Way. In structure it is quite similar to our own
galaxy.');
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf Spheroidal Galaxy', 'Elliptical', 65230, NULL, 'The Sagittarius Dwarf Spheroidal Galaxy
is an elliptical loop-shaped satellite
galaxy of the Milky Way.');
INSERT INTO public.galaxy VALUES (5, 'NGC 262', 'Spiral', 287000000, NULL, 'This galaxy has an apparent diameter of 1.1" of the
Earths sky. It holds approximately 15 trillion stars.');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Spiral', 158200, 1101, 'The Large Magellanic Cloud (LMC), or Nubecula Major is a satellite galaxy of the Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', true, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, false, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', false, false, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', false, false, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', false, false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', false, false, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', false, false, 6);
INSERT INTO public.moon VALUES (13, 'Titan', true, false, 6);
INSERT INTO public.moon VALUES (14, 'Puck', false, false, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', false, false, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', false, false, 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', false, false, 7);
INSERT INTO public.moon VALUES (18, 'Titania', false, false, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', false, false, 7);
INSERT INTO public.moon VALUES (20, 'Proteus', false, false, 8);
INSERT INTO public.moon VALUES (21, 'Charon', false, true, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Rocky', true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mercurio', 'rocky', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'rocky', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'rocky', false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'gas giant planet', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'gas giant planet', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'ice giant', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'dwarf', false, false, 1);
INSERT INTO public.planet VALUES (10, 'K2-377b', 'Rocky', false, true, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 'Rocky', false, true, NULL);
INSERT INTO public.planet VALUES (12, 'Teegarden b', 'exoplanet', false, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 0.000015665, 4603, 'The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma.', 1);
INSERT INTO public.star VALUES (2, 'R136a1', 'WN5h', 163000, 3, 'R136a1 is one of the most massive and luminous stars known, at 196 solar mass and nearly 4.7 million solar luminosity, and is also one of the hottest, at around 46000 K', 6);
INSERT INTO public.star VALUES (3, 'Procyon', 'F5 IV–V', 11.41, 1701, 'Procyon is the brightest star in the constellation of Canis Minor and usually the eighth-brightest star in the night sky, with an apparent visual magnitude of 0.34.', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'M2Iab', 642.5, 10, 'Betelgeuse is a red supergiant of spectral type M1-2 and one of the largest stars visible to the naked eye.', 1);
INSERT INTO public.star VALUES (5, 'Alpheratz', 'B8IVpMnHg', 96.87, NULL, 'Alpheratz is the brightest star in the constellation of Andromeda when Beta Andromedae undergoes its periodical dimming.', 1);
INSERT INTO public.star VALUES (6, 'Deneb', 'A2 Ia', 2616, 10, 'Deneb  is a first-magnitude star in the constellation of Cygnus, the swan. Deneb is one of the vertices of the asterism known as the Summer Triangle and the "head" of the Northern Cross.', 1);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--