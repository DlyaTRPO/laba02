--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(100) NOT NULL,
    fname character varying(100) NOT NULL,
    mname character varying(100)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer,
    soft_id integer
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer NOT NULL,
    note character varying(150),
    id_addr character varying(150) NOT NULL,
    mac_addr character varying(150) NOT NULL
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num integer NOT NULL,
    emp_id integer NOT NULL
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character varying(100) NOT NULL,
    ver character varying(50) NOT NULL,
    quant integer NOT NULL
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
45	Shaw	Darcy	Ippolitovich
50	Baker	Kory	
24	Marsh	August	Adamovich
75	Richardson	Simon	Fedorovich
31	Harrell	Lester	Javialities
102	Wilcox	Thomas	Pankratovich
145	Clark	Steven	
12	Blanken	David	Venediktovich
10	Thompson	Brian	Davidovich
123	Stone	Mark	
421	Skinner	Jack	Alexandrovich
187	Walters	Abel	Emilevich
234	Jefferson	David	Ernestovich
754	Codd	Elvin	Pahomovoj
364	Goodman	Gyles	
845	Powers	Simon	
64	Walton	Jack	Semenovich
86	Shelton	Jack	Bogdanovich
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
101	1
101	3
102	2
103	5
104	1
104	2
105	4
105	5
106	1
106	5
107	2
107	3
108	3
108	5
109	1
109	2
110	1
110	2
111	1
111	2
111	3
111	4
112	2
112	3
112	4
112	5
113	1
113	2
113	3
113	4
114	3
114	4
114	5
114	1
115	1
115	2
115	3
116	4
116	3
116	2
116	1
117	3
117	2
117	4
118	5
119	1
120	2
121	3
122	4
123	5
124	4
125	1
126	2
127	3
127	4
128	5
128	3
129	2
129	3
129	4
130	1
130	2
130	3
130	4
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, id_addr, mac_addr) FROM stdin;
101	210	bd	174.199.37.89	03:F&:67:1C:35:EF
102	211	bd	148.158.211.149	25:C2:88:58:98:DE
103	212	bd	240.166.89.86	08:F9:58:5D:48:EE
104	213	bd	128.132.223.22	00:C0:67:4C:58:FE
105	214	bd	179.69.157.188	03:E4:74:6E:85:DE
106	215	bd	78.59.10.115	12:D7:58:8C:67:FE
107	216	bd	222.19.232.159	01:F6:87:1D:96:EF
108	217	bd	71.86.174.96	05:F1:66:7E:87:FE
109	218	bd	201.67.126.170	05:F6:96:3C:66:DE
110	219	bd	35.125.7.123	25:C4:96:6D:78:DE
111	220	bd	126.137.223.97	22:E0:97:8B:67:EF
112	221	bd	123.197.207.218	08:E3:68:5E:45:FF
113	222	bd	237.34.186.102	14:F3:96:WE:78:DE
114	223	bd	167.103.232.206	14:A4:95:4b:35:DE
115	224	bd	85.80.67.148	23:E7:48:1b:58:DE
116	225	bd	127.192.33.254	05:E8:77:8D:65:DF
117	225	Visiol Studio	48.79.191.89	23:B6:98:8E:35:FE
118	226	Visio	76.236..228.229	19:A9:77:5F:87:FE
119	226	Paint	174.140.222.231	20:F6:97:2E:96:FF
120	226	Viso	143.213.155.203	06:F9:98:6C:45:EF
121	227	bd	222.6.81.193	09:E6:86:2F:46:FE
122	227	JAVA	255.200.15.119	16:C0:75:1D:87:EF
123	227	JAVA	222.64.41.157	21:E7:48:7F:46:FE
124	227	JAVA	221.35.2.128	05:A1:76:8C:46:FE
125	227	cc	65.153.197.14	07:A5:79:4C:88:EF
126	227	ss	170.75.92.159	29:E9:47:5E:85:DE
127	227	rgrg	173.189.43.193	05:C5:59:6F:76:DE
128	227	qwerty	31.226.160.34	19:D6:65:3B:66:EE
129	227	qwerty	60.234.43.120	01:C9:97:1B:55:FF
130	227	qwerty	174.198.125.177	04:E6:68:3C:88:FF
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
210	310	45
211	213	50
212	112	24
213	326	75
214	402	31
215	404	102
216	410	145
217	202	12
218	303	10
219	115	123
220	224	421
221	317	187
222	417	234
223	403	754
224	226	364
225	134	845
226	420	64
227	120	86
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant) FROM stdin;
1	PHOTOSHOP	v20	15
2	VISUAL_STUDIO	v2020	20
3	MICROSOFT_OFFICE	v2020	20
4	ANDROID_STUDIO	v20	15
5	UNITY	v2019	15
\.


--
-- Name: employees pervich_key_employees; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pervich_key_employees PRIMARY KEY (id);


--
-- Name: pcs pervich_key_pcs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pervich_key_pcs PRIMARY KEY (id);


--
-- Name: rooms pervich_key_rooms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT pervich_key_rooms PRIMARY KEY (id);


--
-- Name: soft pervich_key_soft; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT pervich_key_soft PRIMARY KEY (id);


--
-- Name: installs fk_installs_pc_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_installs_pc_id FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: installs fk_installs_soft_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_installs_soft_id FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- Name: pcs fk_pcs_rooms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT fk_pcs_rooms FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: rooms fk_rooms_emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rooms_emp FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- PostgreSQL database dump complete
--

