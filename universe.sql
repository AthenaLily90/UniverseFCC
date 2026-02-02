--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth integer,
    type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    space_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    age numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon 4', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon 5', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon 6', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon 7', 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon 8', 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon 9', 1, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon 10', 1, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon 11', 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon 12', 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 13', 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 14', 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 15', 1, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 16', 1, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 17', 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 18', 1, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 19', 1, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 20', 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Planet 2', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Planet 3', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet 4', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet 5', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet 6', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet 7', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet 8', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet 9', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet 10', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet 11', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet 12', 1, NULL, NULL, NULL, NULL);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES (2, 'Imaginary Space', NULL);
INSERT INTO public.space VALUES (3, 'More Space?', NULL);
INSERT INTO public.space VALUES (1, 'Space', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Star 2', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star 3', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star 4', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star 5', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star 6', 6, NULL, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: space space_space_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_space_id_key UNIQUE (space_id);


--
-- Name: space space_space_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_space_id_key1 UNIQUE (space_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

