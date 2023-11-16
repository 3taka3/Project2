--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

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
-- Name: artists_painter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists_painter (
    id_painters integer NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    birthdate date,
    sexe character varying(1),
    city character varying(30),
    movement character varying(30),
    country character varying(30)
);


ALTER TABLE public.artists_painter OWNER TO postgres;

--
-- Name: artists_painter_id_artist_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artists_painter_id_artist_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_painter_id_artist_seq OWNER TO postgres;

--
-- Name: artists_painter_id_artist_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artists_painter_id_artist_seq OWNED BY public.artists_painter.id_painters;


--
-- Name: painters_work; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.painters_work (
    id_work integer NOT NULL,
    painter character varying(30),
    workname character varying(30),
    workdate integer,
    ref_image integer
);


ALTER TABLE public.painters_work OWNER TO postgres;

--
-- Name: painters_work_id_work_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.painters_work_id_work_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.painters_work_id_work_seq OWNER TO postgres;

--
-- Name: painters_work_id_work_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.painters_work_id_work_seq OWNED BY public.painters_work.id_work;


--
-- Name: artists_painter id_painters; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists_painter ALTER COLUMN id_painters SET DEFAULT nextval('public.artists_painter_id_artist_seq'::regclass);


--
-- Name: painters_work id_work; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.painters_work ALTER COLUMN id_work SET DEFAULT nextval('public.painters_work_id_work_seq'::regclass);


--
-- Data for Name: artists_painter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artists_painter (id_painters, firstname, lastname, birthdate, sexe, city, movement, country) FROM stdin;
1	Gustave	Klimt	1862-07-14	H	Vienne	Art Nouveau	Autriche
2	Gustave	Courbet	1819-06-10	H	Ornans	Realisme	France
3	Frida	Kahlo	1907-07-06	F	Coyoacan	Surrealisme	Mexique
4	Henri	de Toulouse-Lautrec	1901-09-09	H	Albi	Surrealisme	France
5	Egon	Schiele	1890-06-12	H	Vienne	Expressionnisme	Autriche
6	Joan	Miro	1893-04-20	H	Barcelone	Dadaisme	Espagne
\.


--
-- Data for Name: painters_work; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.painters_work (id_work, painter, workname, workdate, ref_image) FROM stdin;
1	Klimt	Danaé	1907	\N
\.


--
-- Name: artists_painter_id_artist_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artists_painter_id_artist_seq', 6, true);


--
-- Name: painters_work_id_work_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.painters_work_id_work_seq', 2, true);


--
-- Name: artists_painter k_lastname; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists_painter
    ADD CONSTRAINT k_lastname UNIQUE (lastname);


--
-- Name: painters_work painters_work_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.painters_work
    ADD CONSTRAINT painters_work_pkey PRIMARY KEY (id_work);


--
-- Name: ix_painters_movements; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_painters_movements ON public.artists_painter USING btree (firstname, lastname, movement);


--
-- Name: painters_work k_lastname; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.painters_work
    ADD CONSTRAINT k_lastname FOREIGN KEY (painter) REFERENCES public.artists_painter(lastname);


--
-- PostgreSQL database dump complete
--

