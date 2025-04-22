--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-22 11:01:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16450)
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    user_id integer
);


ALTER TABLE public.post OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16449)
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;


--
-- TOC entry 218 (class 1259 OID 16439)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16438)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4701 (class 2604 OID 16453)
-- Name: post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16442)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4857 (class 0 OID 16450)
-- Dependencies: 220
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (id, title, content, user_id) FROM stdin;
1	Post 1	Conteudo	1
2	Post 2	Conteudo	2
3	Post 2	Conteudo	3
\.


--
-- TOC entry 4855 (class 0 OID 16439)
-- Dependencies: 218
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, name, email, password) FROM stdin;
1	Andre	andre@gmail.com	amods
2	Carlos	carlos@gmail.com	amods
4	Joao	joao@gmail.com	111
6	Lucas	lucas@gmail.com	333
7	Mariana	mariana@gmail.com	444
8	Gustavo	gustavo@gmail.com	555
9	Camila	camila@gmail.com	666
10	Felipe	felipe@gmail.com	777
11	Caio	caio@gmail.com	amods
3	Antonio	antonio@gmail.com	amods
12	Arthit	arthit@gmail.com	pwd1
13	Benjawan	benjawan@gmail.com	pwd2
14	Chaiya	chaiya@gmail.com	pwd3
15	Darika	darika@gmail.com	pwd4
16	Ekkachai	ekkachai@gmail.com	pwd5
17	Fah	fah@gmail.com	pwd6
18	Ganya	ganya@gmail.com	pwd7
19	Hansa	hansa@gmail.com	pwd8
20	Issara	issara@gmail.com	pwd9
21	Jintana	jintana@gmail.com	pwd10
22	Kamon	kamon@gmail.com	pwd11
23	Lalana	lalana@gmail.com	pwd12
24	Manop	manop@gmail.com	pwd13
25	Niran	niran@gmail.com	pwd14
26	Orasa	orasa@gmail.com	pwd15
27	Pailin	pailin@gmail.com	pwd16
28	Ratchanee	ratchanee@gmail.com	pwd17
29	Sakda	sakda@gmail.com	pwd18
30	Tida	tida@gmail.com	pwd19
31	Udom	udom@gmail.com	pwd20
32	Vichai	vichai@gmail.com	pwd21
33	Wanida	wanida@gmail.com	pwd22
34	Ying	ying@gmail.com	pwd23
35	Anong	anong@gmail.com	pwd24
36	Boonsri	boonsri@gmail.com	pwd25
37	Chatchai	chatchai@gmail.com	pwd26
38	Duangjai	duangjai@gmail.com	pwd27
39	Ekkarat	ekkarat@gmail.com	pwd28
40	Fuangfa	fuangfa@gmail.com	pwd29
41	Grit	grit@gmail.com	pwd30
42	Hathai	hathai@gmail.com	pwd31
43	Inthira	inthira@gmail.com	pwd32
44	Jirawat	jirawat@gmail.com	pwd33
45	Kanchana	kanchana@gmail.com	pwd34
46	Lawan	lawan@gmail.com	pwd35
47	Montree	montree@gmail.com	pwd36
48	Nipa	nipa@gmail.com	pwd37
49	Orapin	orapin@gmail.com	pwd38
50	Prasert	prasert@gmail.com	pwd39
51	Rung	rung@gmail.com	pwd40
52	Somchai	somchai@gmail.com	pwd41
53	Thida	thida@gmail.com	pwd42
54	Veera	veera@gmail.com	pwd43
55	Wichai	wichai@gmail.com	pwd44
56	Yupa	yupa@gmail.com	pwd45
57	Anan	anan@gmail.com	pwd46
58	Boonmee	boonmee@gmail.com	pwd47
59	Chai	chai@gmail.com	pwd48
60	Duang	duang@gmail.com	pwd49
61	Ekkapong	ekkapong@gmail.com	pwd50
\.


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_id_seq', 3, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 61, true);


--
-- TOC entry 4707 (class 2606 OID 16457)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16448)
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- TOC entry 4705 (class 2606 OID 16446)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16458)
-- Name: post post_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;


-- Completed on 2025-04-22 11:01:35

--
-- PostgreSQL database dump complete
--

