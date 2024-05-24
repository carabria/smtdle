--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: demons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demons (
    demon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    alignment_one character varying(50) NOT NULL,
    alignment_two character varying(50) NOT NULL,
    mythology character varying(50) NOT NULL,
    race character varying(50) NOT NULL,
    starting_level integer NOT NULL
);


ALTER TABLE public.demons OWNER TO postgres;

--
-- Name: demons_demon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demons_demon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.demons_demon_id_seq OWNER TO postgres;

--
-- Name: demons_demon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demons_demon_id_seq OWNED BY public.demons.demon_id;


--
-- Name: demons demon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demons ALTER COLUMN demon_id SET DEFAULT nextval('public.demons_demon_id_seq'::regclass);


--
-- Data for Name: demons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.demons (demon_id, name, alignment_one, alignment_two, mythology, race, starting_level) FROM stdin;
1	Makami	Light	Neutral	Japanese	Avatar	21
2	Anubis	Light	Neutral	Egyptian	Avatar	41
3	Barong	Light	Neutral	Balinese	Avatar	60
4	Feng Huang	Light	Law	Chinese	Avian	22
5	Jatayu	Light	Law	Hindu	Avian	32
6	Thunderbird	Light	Law	American	Avian	38
7	Zhuque	Light	Law	Chinese	Avian	43
8	Yatagarasu	Light	Law	Japanese	Avian	54
9	Garuda	Light	Law	Hindu	Avian	64
10	Cait Sith	Neutral	Neutral	Irish	Beast	7
11	Inugami	Neutral	Neutral	Japanese	Beast	24
12	Nekomata	Neutral	Neutral	Japanese	Beast	34
13	Orthrus	Neutral	Neutral	Greco-Roman	Beast	42
14	Orobas	Neutral	Neutral	Abrahamic	Beast	49
15	Loup-garou	Neutral	Neutral	European	Beast	54
16	Cerberus	Neutral	Neutral	Greco-Roman	Beast	64
17	Daemon	Neutral	Chaos	Abrahamic	Brute	7
18	Azumi	Neutral	Chaos	Japanese	Brute	11
19	Ippon-Datara	Neutral	Chaos	Japanese	Brute	17
20	Oni	Neutral	Chaos	Japanese	Brute	23
21	Shiki-Ouji	Neutral	Chaos	Japanese	Brute	29
22	Kin-Ki	Neutral	Chaos	Japanese	Brute	49
23	Sui-Ki	Neutral	Chaos	Japanese	Brute	56
24	Fuu-Ki	Neutral	Chaos	Japanese	Brute	63
25	Ongyo-Ki	Neutral	Chaos	Japanese	Brute	78
26	Thoth	Light	Neutral	Egyptian	Deity	33
27	Horus	Light	Neutral	Egyptian	Deity	42
28	Atavaka	Light	Neutral	Buddhist	Deity	54
29	Khonsu	Light	Neutral	Egyptian	Deity	62
30	Mithra	Light	Neutral	Zoroastrian	Deity	65
31	Odin	Light	Neutral	Norse	Deity	77
32	Khonsu Ra	Light	Neutral	Egyptian	Deity	78
33	Zeus	Light	Neutral	Greco-Roman	Deity	86
34	Vishnu	Light	Neutral	Hindu	Deity	87
35	Baal	Light	Neutral	Canaanite	Deity	93
36	Angel	Neutral	Law	Abrahamic	Divine	10
37	Archangel	Neurtal	Law	Abrahamic	Divine	18
38	Principality	Neutral	Law	Abrahamic	Divine	28
39	Power	Neutral	Law	Abrahamic	Divine	39
40	Dominion	Neutral	Law	Abrahamic	Divine	50
41	Throne	Neutral	Law	Abrahamic	Divine	64
42	Xuanwu	Light	Chaos	Chinese	Dragon	23
43	Quetzalcoatl	Light	Chaos	Aztec	Dragon	34
44	Qing Long	Light	Chaos	Chinese	Dragon	45
45	Ananta	Light	Chaos	Hindu	Dragon	59
46	Huang Long	Light	Chaos	Chinese	Dragon	78
47	Aitvaras	Dark	Chaos	Lithuanian	Drake	17
48	Basilisk	Dark	Chaos	European	Drake	31
49	Hydra	Dark	Chaos	Greco-Roman	Drake	53
50	Fafnir	Dark	Chaos	Norse	Drake	60
51	Seth	Dark	Chaos	Egyptian	Drake	67
52	Vasuki	Dark	Chaos	Hindu	Drake	74
53	Erthys	Neutral	Neutral	Original	Element	9
54	Aeros	Neutral	Neutral	Original	Element	12
55	Aquans	Neutral	Neutral	Original	Element	15
56	Flaemis	Neutral	Neutral	Original	Element	18
57	Pixie	Neutral	Neutral	Engllish	Fairy	2
58	High Pixie	Neutral	Neurtal	English	Fairy	18
59	Jack-'o-Lantern	Neutral	Neutral	English	Fairy	20
60	Jack Frost	Neutral	Neutral	English	Fairy	25
61	Kelpie	Neutral	Neutral	Irish	Fairy	30
62	Setanta	Neutral	Neutral	Irish	Fairy	35
63	Silky	Neutral	Neutral	Scottish	Fairy	41
64	Oberon	Neutral	Neutral	English	Fairy	47
65	Titania	Neutral	Neutral	English	Fairy	57
66	Andras	Neutral	Chaos	Abrahamic	Fallen	18
67	Berith	Neutral	Chaos	Abrahamic	Fallen	24
68	Forneus	Neutral	Chaos	Abrahamic	Fallen	31
69	Eligor	Neutral	Chaos	Abrahamic	Fallen	37
70	Ose	Neutral	Chaos	Abrahamic	Fallen	44
71	Flauros	Neutral	Chaos	Abrahamic	Fallen	50
72	Decarabia	Neutral	Chaos	Abrahamic	Fallen	55
73	Nebiros	Neutral	Chaos	Abrahamic	Fallen	67
74	Adramelech	Neutral	Chaos	Abrahamic	Fallen	71
75	Fallen Abdiel	Neutral	Law	Abrahamic	Fallen	89
76	Mermaid	Neutral	Chaos	English	Femme	12
77	Leanan Sidhe	Neutral	Chaos	Irish	Femme	17
78	Manananggal	Neutral	Chaos	Filipino	Femme	25
79	Yaksini	Neutral	Chaos	Hindu	Femme	30
80	Lamia	Neutral	Chaos	Greco-Roman	Femme	36
81	Dakini	Neutral	Chaos	Buddhist	Femme	46
82	Clotho	Neutral	Chaos	Greco-Roman	Femme	52
83	Lachesis	Neutral	Chaos	Greco-Roman	Femme	58
84	Cleopatra	Neutral	Chaos	Egyptian	Femme	61
85	Atropos	Neutral	Chaos	Greco-Roman	Femme	64
86	Rangda	Neutral	Chaos	Balinese	Femme	70
87	Kali	Neutral	Chaos	Hindu	Femme	76
88	Matador	Neutral	Neutral	European	Fiend	24
89	Daisoujou	Neutral	Neutral	Buddhist	Fiend	30
90	Hell Biker	Neutral	Neutral	Pop Culture	Fiend	36
91	Alice	Neutral	Neutral	English	Fiend	40
92	White Rider	Dark	Neutral	Abrahamic	Fiend	43
93	Red Rider	Dark	Neutral	Abrahamic	Fiend	47
94	Black Rider	Dark	Neutral	Abrahamic	Fiend	52
95	Pale Rider	Dark	Neutral	Abrahamic	Fiend	57
96	Mother Harlot	Dark	Neutral	Abrahamic	Fiend	64
97	Trumpeter	Neutral	Neutral	Abrahamic	Fiend	73
98	Slime	Dark	Chaos	Pop Culture	Foul	1
99	Legion	Dark	Chaos	Abrahamic	Foul	19
100	Black Ooze	Dark	Chaos	Pop Culture	Foul	33
101	Dionysus	Light	Chaos	Greco-Roman	Fury	44
102	Chernobog	Light	Chaos	Slavic	Fury	52
103	Mot	Light	Chaos	Canaanite	Fury	63
104	Zaou-Gongen	Light	Chaos	Japanese	Fury	75
105	Asura	Light	Chaos	Buddhist	Fury	84
106	Shiva	Light	Chaos	Hindu	Fury	96
107	Kurama Tengu	Light	Neutral	Japanese	Genma	39
108	Hanuman	Light	Neutral	Hindu	Genma	46
109	Cu Chulainn	Light	Neutral	Irish	Genma	52
110	Fionn mac Cumhaill	Light	Neutral	Irish	Genma	71
111	Amanozako	Light	Neutral	Japanese	Genma	76
112	Preta	Dark	Chaos	Hindu	Haunt	3
113	Obariyon	Dark	Chaos	Japanese	Haunt	12
114	Poltergeist	Dark	Chaos	European	Haunt	25
115	Pisaca	Dark	Chaos	Hindu	Haunt	31
116	Kumbhanda	Dark	Chaos	Buddhist	Haunt	41
117	Melchizedek	Light	Law	Abrahamic	Herald	60
118	Camael	Light	Law	Abrahamic	Herald	69
119	Sraosha	Light	Law	Abrahamic	Herald	77
120	Abdiel	Light	Law	Abrahamic	Herald	80
121	Uriel	Light	Law	Abrahamic	Herald	82
122	Raphael	Light	Law	Abrahamic	Herald	84
123	Gabriel	Light	Law	Abrahamic	Herald	86
124	Sandalphon	Light	Law	Abrahamic	Herald	88
125	Michael	Light	Law	Abrahamic	Herald	90
126	Metatron	Light	Law	Abrahamic	Herald	95
127	Shiisaa	Light	Neutral	Japanese	Holy	19
128	Cironnup	Light	Neutral	Japanese	Holy	27
129	Hayataro	Light	Neutral	Japanese	Holy	40
130	Baihu	Light	Neutral	Chinese	Holy	43
131	Chimera	Light	Neutral	Greco-Roman	Holy	55
132	Turdak	Dark	Neutral	Tibetan	Jaki	11
133	Rakshasa	Dark	Neutral	Buddhist	Jaki	20
134	Loa	Dark	Neutral	Haitian	Jaki	30
135	Macabre	Dark	Neutral	European	Jaki	43
136	Hecatoncheires	Dark	Neutral	Greco-Roman	Jaki	55
137	Kodama	Neutral	Neutral	Japanese	Jirae	6
138	Tsuchigumo	Neutral	Neutral	Japanese	Jirae	13
139	Sudama	Neutral	Neutral	Japanese	Jirae	17
140	Kaya-no-Hime	Neutral	Neutral	Japanese	Jirae	21
141	Koropokkur	Neutral	Neutral	Japanese	Jirae	26
142	Hua Po	Neutral	Neutral	Chinese	Jirae	31
143	Narcissus	Neutral	Neutral	Greco-Roman	Jirae	38
144	Attis	Light	Chaos	Greco-Roman	Kishin	27
145	Zouchouten	Light	Chaos	Buddhist	Kishin	36
146	Koumokuten	Light	Chaos	Buddhist	Kishin	44
147	Jikokuten	Light	Chaos	Buddhist	Kishin	51
148	Bishamonten	Light	Chaos	Buddhist	Kishin	58
149	Thor	Light	Chaos	Norse	Kishin	66
150	Take-Minakata	Light	Chaos	Japanese	Kunitsu	19
151	Sukuna-Hikona	Light	Chaos	Japanese	Kunitsu	37
152	Oyamatsumi	Light	Chaos	Japanese	Kunitsu	40
153	Kushinada-Hime	Light	Chaos	Japanese	Kunitsu	49
154	Okuninushi	Light	Chaos	Japanese	Kunitsu	55
155	Arahabaki	Light	Chaos	Japanese	Kunitsu	62
156	Kikuri-Hime	Light	Chaos	Japanese	Lady	24
157	Hariti	Light	Chaos	Buddhist	Lady	35
158	Isis	Light	Chaos	Egyptian	Lady	46
159	Cybele	Light	Chaos	Greco-Roman	Lady	56
160	Ishtar	Light	Chaos	Babylonian	Lady	62
161	Skadi	Light	Chaos	Norse	Lady	67
162	Nuwa	Light	Chaos	Chinese	Lady	80
163	Alilat	Light	Chaos	Arabian	Lady	81
164	Inanna	Light	Chaos	Mesopotamian	Lady	87
165	Nuwa (Serpent)	Light	Chaos	Chinese	Lady	89
166	Danu	Light	Chaos	Irish	Lady	93
167	Fortuna	Light	Neutral	Greco-Roman	Megami	15
168	Ame-no-Uzume	Light	Neutral	Japanese	Megami	22
169	Anahita	Light	Neutral	Zoroastrian	Megami	29
170	Parvavti	Light	Neutral	Hindu	Megami	35
171	Artemis	Light	Neutral	Greco-Roman	Megami	37
172	Idun	Light	Neutral	Norse	Megami	42
173	Sarasvati	Light	Neutral	Hindu	Megami	47
174	Scathach	Light	Neutral	Irish	Megami	55
175	Norn	Light	Neutral	Norse	Megami	67
176	Lakshmi	Light	Neutral	Hindu	Megami	70
177	Demeter	Light	Neutral	Greco-Roman	Megami	76
178	Maria	Light	Law	Abrahamic	Megami	84
179	Sandman	Neutral	Chaos	European	Night	8
180	Mokoi	Neutral	Chaos	Australian	Night	16
181	Incubus	Neutral	Chaos	Abrahamic	Night	22
182	Lilim	Neutral	Chaos	Abrahamic	Night	32
183	Succubus	Neutral	Chaos	Abrahamic	Night	38
184	Black Frost	Neutral	Chaos	Original	Night	44
185	Kaiwan	Neutral	Chaos	Mesopotamian	Night	45
186	Queen Medb	Neutral	Chaos	Irish	Night	56
187	Lilith	Neutral	Chaos	Abrahamic	Night	68
188	Raptor	Dark	Law	Japanese	Raptor	4
189	Zhen	Dark	Law	Chinese	Raptor	14
190	Muu Shuwuu	Dark	Law	Uliger	Raptor	38
191	Anzu	Dark	Law	Mesopotamian	Raptor	48
192	Naga	Neutral	Chaos	Buddhist	Snake	27
193	Naga Raja	Neutral	Chaos	Buddhist	Snake	40
194	Yurlungur	Neutral	Chaos	Aboriginal	Snake	50
195	Yamata-no-Orochi	Neutral	Chaos	Japanese	Snake	72
196	King Frost	Dark	Chaos	Original	Tyrant	33
197	Belphegor	Dark	Chaos	Abrahamic	Tyrant	44
198	Moloch	Dark	Chaos	Abrahamic	Tyrant	51
199	Loki	Dark	Chaos	Norse	Tyrant	56
200	Surt	Dark	Chaos	Norse	Tyrant	62
201	Mara	Dark	Chaos	Buddhist	Tyrant	67
202	Abbadon	Dark	Chaos	Abrahamic	Tyrant	72
203	Arioch	Dark	Chaos	Abrahamic	Tyrant	75
204	Mithras	Dark	Chaos	Greco-Roman	Tyrant	77
205	Mephisto	Dark	Chaos	European	Tyrant	79
206	Amon	Dark	Chaos	Abrahamic	Tyrant	82
207	Chi You	Dark	Chaos	Chinese	Tyrant	87
208	Belial	Dark	Chaos	Abrahamic	Tyrant	92
209	Beelzebub	Dark	Chaos	Abrahamic	Tyrant	95
210	Baphomet	Dark	Chaos	Occult	Vile	33
211	Mishaguji	Dark	Law	Japanese	Vile	42
212	Lahmu	Dark	Chaos	Mesopotamian	Vile	48
213	Pazuzu	Dark	Law	Mesopotamian	Vile	52
214	Girimekhala	Dark	Law	Buddhist	Vile	66
215	Mada	Dark	Law	Hindu	Vile	83
216	Neko Shogun	Light	Neutral	Chinese	Wargod	5
217	Yoshitsune	Light	Neutral	Japanese	Wargod	45
218	Ganesha	Light	Neutral	Hindu	Wargod	57
219	Siegfried	Light	Neutral	European	Wargod	63
220	Futsunushi	Light	Neutral	Japanese	Wargod	69
221	Bicorn	Dark	Neutral	European	Wilder	14
222	Bugs	Dark	Neutral	English	Wilder	24
223	Mothman	Dark	Neutral	Pop Culture	Wilder	29
224	Nue	Dark	Neutral	Japanese	Wilder	49
225	Mandrake	Neutral	Law	European	Yoma	6
226	Agathion	Neutral	Law	Abrahamic	Yoma	10
227	Apsaras	Neutral	Law	Buddhist	Yoma	16
228	Koppa Tengu	Neutral	Law	Japanese	Yoma	24
229	Valkyrie	Neutral	Law	Norse	Yoma	40
230	Tao	Light	Law	Original	Panagia	60
\.


--
-- Name: demons_demon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demons_demon_id_seq', 230, true);


--
-- Name: demons demons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demons
    ADD CONSTRAINT demons_pkey PRIMARY KEY (demon_id);


--
-- PostgreSQL database dump complete
--

