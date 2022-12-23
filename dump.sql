--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: link; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.link (
    id integer NOT NULL,
    email character varying(30) NOT NULL,
    "originalLink" character varying(50) NOT NULL,
    "shortUrl" character varying(8) NOT NULL,
    "visitCount" integer DEFAULT 0
);


--
-- Name: link_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.link_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.link_id_seq OWNED BY public.link.id;


--
-- Name: session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.session (
    id integer NOT NULL,
    token character varying(50) NOT NULL,
    email character varying(30) NOT NULL,
    "time" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: session_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.session_id_seq OWNED BY public.session.id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    name text NOT NULL,
    email character varying(30) NOT NULL,
    password character varying(30) NOT NULL
);


--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- Name: link id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.link ALTER COLUMN id SET DEFAULT nextval('public.link_id_seq'::regclass);


--
-- Name: session id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session ALTER COLUMN id SET DEFAULT nextval('public.session_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- Data for Name: link; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.link VALUES (1, 'joaoNeryRafael@gmail.com', 'https://google.com', 'ahe3r4d1', 0);
INSERT INTO public.link VALUES (2, 'joaoNeryRafael@gmail.com', 'https://google1.com', 'ahe3r4d2', 0);
INSERT INTO public.link VALUES (3, 'joaoNeryRafael@gmail.com', 'https://google2.com', 'ahe3r4d3', 0);
INSERT INTO public.link VALUES (4, 'joaoNeryRafael@gmail.com', 'https://google3.com', 'ahe3r4d4', 0);
INSERT INTO public.link VALUES (5, 'joaoNeryRafael@gmail.com', 'https://google4.com', 'ahe3r4d5', 0);
INSERT INTO public.link VALUES (6, 'MariaNeryRafael@gmail.com', 'https://google.com', 'ahe3r4d1', 0);
INSERT INTO public.link VALUES (7, 'MariaNeryRafael@gmail.com', 'https://google1.com', 'ahe3r4d2', 0);
INSERT INTO public.link VALUES (8, 'MariaNeryRafael@gmail.com', 'https://google2.com', 'ahe3r4d3', 0);
INSERT INTO public.link VALUES (9, 'MariaNeryRafael@gmail.com', 'https://google3.com', 'ahe3r4d4', 0);
INSERT INTO public.link VALUES (10, 'MariaNeryRafael@gmail.com', 'https://google4.com', 'ahe3r4d5', 0);
INSERT INTO public.link VALUES (11, 'cauecermak@gmail.com', 'https://cauecermak.com', 'cauecaue', 0);


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.session VALUES (1, '1234567', 'joaoNeryRafael@gmail.com', '2022-12-23 17:05:49.768949');
INSERT INTO public.session VALUES (2, '2345678', 'MariaNeryRafael@gmail.com', '2022-12-23 17:05:49.768949');
INSERT INTO public.session VALUES (3, '3456789', 'cauecermak@gmail.com', '2022-12-23 17:05:49.768949');


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.usuario VALUES (1, 'Joao', 'joaoNeryRafael@gmail.com', '1234');
INSERT INTO public.usuario VALUES (2, 'Joao2', 'joaoNeryRafael2@gmail.com', '1234');
INSERT INTO public.usuario VALUES (3, 'Joao3', 'joaoNeryRafael3@gmail.com', '1234');
INSERT INTO public.usuario VALUES (4, 'Joao4', 'joaoNeryRafael4@gmail.com', '1234');
INSERT INTO public.usuario VALUES (5, 'Joao5', 'joaoNeryRafael5@gmail.com', '1234');
INSERT INTO public.usuario VALUES (6, 'Joao6', 'joaoNeryRafael6@gmail.com', '1234');
INSERT INTO public.usuario VALUES (7, 'Maria', 'MariaNeryRafael@gmail.com', '1234');
INSERT INTO public.usuario VALUES (8, 'Maria2', 'MariaNeryRafael2@gmail.com', '1234');
INSERT INTO public.usuario VALUES (9, 'Maria3', 'MariaNeryRafael3@gmail.com', '1234');
INSERT INTO public.usuario VALUES (10, 'Maria4', 'MariaNeryRafael4@gmail.com', '1234');
INSERT INTO public.usuario VALUES (11, 'Maria5', 'MariaNeryRafael5@gmail.com', '1234');
INSERT INTO public.usuario VALUES (12, 'Maria6', 'MariaNeryRafael6@gmail.com', '1234');
INSERT INTO public.usuario VALUES (13, 'caue', 'cauecermak@gmail.com', '1234');


--
-- Name: link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.link_id_seq', 11, true);


--
-- Name: session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.session_id_seq', 3, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usuario_id_seq', 13, true);


--
-- Name: link PK_LINK; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT "PK_LINK" PRIMARY KEY (id);


--
-- Name: usuario PK_USER; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "PK_USER" PRIMARY KEY (email);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);


--
-- Name: link FK_USER; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT "FK_USER" FOREIGN KEY (email) REFERENCES public.usuario(email) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

