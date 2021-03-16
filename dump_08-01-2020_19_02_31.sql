--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md525c81a8adc1a97c53b8222c4672dbc5b';






--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1.pgdg90+1)
-- Dumped by pg_dump version 11.5 (Debian 11.5-1.pgdg90+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1.pgdg90+1)
-- Dumped by pg_dump version 11.5 (Debian 11.5-1.pgdg90+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: postgres; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE postgres SET "TimeZone" TO 'Asia/Jakarta';


\connect postgres

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

SET default_with_oids = false;

--
-- Name: backend_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backend_user (
    "USERNAME" character varying(30) NOT NULL,
    "NAME" character varying(50) NOT NULL,
    "PASSWORD" character varying(255) NOT NULL,
    "ROLE" character varying(10) NOT NULL,
    "DEFAULT_PASSWORD" boolean
);


ALTER TABLE public.backend_user OWNER TO postgres;

--
-- Name: banner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banner (
    "ID_BANNER" integer NOT NULL,
    "ID_NEWS" integer NOT NULL,
    "IMAGE_BANNER" character varying(255) NOT NULL,
    "DATE_BANNER" timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.banner OWNER TO postgres;

--
-- Name: captcha_ID_CAPTCHA_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."captcha_ID_CAPTCHA_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public."captcha_ID_CAPTCHA_seq" OWNER TO postgres;

--
-- Name: captcha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captcha (
    "ID_CAPTCHA" integer DEFAULT nextval('public."captcha_ID_CAPTCHA_seq"'::regclass) NOT NULL,
    "CAPTCHA_TIME" bigint NOT NULL,
    "IP_ADDRESS" character varying(16) NOT NULL,
    "WORD" character varying(20) NOT NULL
);


ALTER TABLE public.captcha OWNER TO postgres;

--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    "ID_CATEGORY" character(1) NOT NULL,
    "NAME_CATEGORY" character varying(15)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    "ID_COMMENT" bigint NOT NULL,
    "ID_NEWS" integer NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "COMMENT_TEXT" text NOT NULL,
    "IS_APPROVED" boolean NOT NULL,
    "DATE_APPROVED" timestamp(0) without time zone,
    "DATE_COMMENT" timestamp(0) without time zone NOT NULL,
    "ADMIN_REPLY" text
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_ID_COMMENT_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."comments_ID_COMMENT_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."comments_ID_COMMENT_seq" OWNER TO postgres;

--
-- Name: comments_ID_COMMENT_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."comments_ID_COMMENT_seq" OWNED BY public.comments."ID_COMMENT";


--
-- Name: cover_story; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cover_story (
    "ID_COVERSTORY" bigint NOT NULL,
    "TITLE_COVERSTORY" character varying(100) NOT NULL,
    "SUMMARY" text NOT NULL,
    "IMAGE_COVERSTORY" character varying(255) NOT NULL,
    "DATE_COVERSTORY" timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.cover_story OWNER TO postgres;

--
-- Name: cover_story_ID_COVERSTORY_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."cover_story_ID_COVERSTORY_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."cover_story_ID_COVERSTORY_seq" OWNER TO postgres;

--
-- Name: cover_story_ID_COVERSTORY_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."cover_story_ID_COVERSTORY_seq" OWNED BY public.cover_story."ID_COVERSTORY";


--
-- Name: emagz_ID_EMAGZ_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."emagz_ID_EMAGZ_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."emagz_ID_EMAGZ_seq" OWNER TO postgres;

--
-- Name: emagz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emagz (
    "ID_EMAGZ" integer DEFAULT nextval('public."emagz_ID_EMAGZ_seq"'::regclass) NOT NULL,
    "THUMBNAIL" character varying(255),
    "FILE" character varying(255),
    "DATE_UPLOADED" timestamp(0) without time zone NOT NULL,
    "NAME" character varying(100) NOT NULL
);


ALTER TABLE public.emagz OWNER TO postgres;

--
-- Name: firebase_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.firebase_token (
    "TOKEN" character varying(255) NOT NULL
);


ALTER TABLE public.firebase_token OWNER TO postgres;

--
-- Name: galeri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galeri (
    "IMAGE_FILE" character varying(255) NOT NULL,
    "ID_NEWS" bigint
);


ALTER TABLE public.galeri OWNER TO postgres;

--
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    "ID_LIKES" bigint NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "ID_NEWS" integer NOT NULL
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- Name: likes_ID_LIKES_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."likes_ID_LIKES_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."likes_ID_LIKES_seq" OWNER TO postgres;

--
-- Name: likes_ID_LIKES_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."likes_ID_LIKES_seq" OWNED BY public.likes."ID_LIKES";


--
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    "ID_NEWS" integer NOT NULL,
    "ID_CATEGORY" character(1) NOT NULL,
    "TITLE_NEWS" character varying(200) NOT NULL,
    "CONTENT_NEWS" text,
    "VIEWS_COUNT" bigint NOT NULL,
    "SHARES_COUNT" bigint NOT NULL,
    "DATE_NEWS" timestamp(0) without time zone NOT NULL,
    "NEWS_IMAGE" character varying(255),
    "USER_EDITOR" character varying(30) DEFAULT ''::character varying,
    "USER_VERIFICATOR" character varying(30),
    "STATUS" character varying(10),
    "URL" character varying(255)
);


ALTER TABLE public.news OWNER TO postgres;

--
-- Name: news_ID_NEWS_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."news_ID_NEWS_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."news_ID_NEWS_seq" OWNER TO postgres;

--
-- Name: news_ID_NEWS_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."news_ID_NEWS_seq" OWNED BY public.news."ID_NEWS";


--
-- Name: news_cover; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_cover (
    "ID_COVERSTORY" bigint NOT NULL,
    "ID_NEWS" bigint NOT NULL
);


ALTER TABLE public.news_cover OWNER TO postgres;

--
-- Name: news_share; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_share (
    "ID" integer NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "ID_NEWS" integer NOT NULL
);


ALTER TABLE public.news_share OWNER TO postgres;

--
-- Name: news_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_tags (
    "ID_TAGS" integer NOT NULL,
    "ID_NEWS" integer NOT NULL
);


ALTER TABLE public.news_tags OWNER TO postgres;

--
-- Name: news_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_view (
    "ID" integer NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "ID_NEWS" integer NOT NULL
);


ALTER TABLE public.news_view OWNER TO postgres;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    "ID_TAGS" integer NOT NULL,
    "TAGS" character varying(50) NOT NULL,
    "DATE_CREATED" timestamp(0) without time zone
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tag_ID_TAG_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tag_ID_TAG_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tag_ID_TAG_seq" OWNER TO postgres;

--
-- Name: tag_ID_TAG_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tag_ID_TAG_seq" OWNED BY public.tags."ID_TAGS";


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    "EMAIL" character varying(50) NOT NULL,
    "USER_NAME" character varying(100) NOT NULL,
    "PROFILEPIC_URL" text,
    "LAST_LOGIN" timestamp(0) without time zone NOT NULL,
    "DATE_BIRTH" date,
    "GENDER" character(1),
    "USER_TYPE" character varying(10)
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: video; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video (
    "ID_VIDEO" character varying(15) NOT NULL,
    "TITLE" character varying(100),
    "DESCRIPTION" text,
    "DATE_PUBLISHED" timestamp(0) without time zone,
    "URL_DEFAULT_THUMBNAIL" character varying(255),
    "URL_MEDIUM_THUMBNAIL" character varying(255),
    "URL_HIGH_THUMBNAIL" character varying(255),
    "STATUS_PUBLISHED" boolean DEFAULT true NOT NULL
);


ALTER TABLE public.video OWNER TO postgres;

--
-- Name: view_comments; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_comments AS
SELECT
    NULL::integer AS "ID_NEWS",
    NULL::character(1) AS "ID_CATEGORY",
    NULL::character varying(200) AS "TITLE_NEWS",
    NULL::bigint AS "COMMENTS";


ALTER TABLE public.view_comments OWNER TO postgres;

--
-- Name: view_likes; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_likes AS
SELECT
    NULL::integer AS "ID_NEWS",
    NULL::character(1) AS "ID_CATEGORY",
    NULL::character varying(200) AS "TITLE_NEWS",
    NULL::bigint AS "LIKES";


ALTER TABLE public.view_likes OWNER TO postgres;

--
-- Name: view_news; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_news AS
 SELECT news."ID_NEWS",
    category."NAME_CATEGORY",
    news."TITLE_NEWS",
    news."CONTENT_NEWS",
    news."VIEWS_COUNT",
    news."SHARES_COUNT",
    news."DATE_NEWS",
    news."NEWS_IMAGE",
    view_likes."LIKES",
    COALESCE(view_comments."COMMENTS", (0)::bigint, view_comments."COMMENTS") AS "COMMENTS",
    "E"."NAME" AS "EDITOR",
    "V"."NAME" AS "VERIFICATOR",
    news."STATUS"
   FROM (((((public.news
     JOIN public.category ON ((news."ID_CATEGORY" = category."ID_CATEGORY")))
     LEFT JOIN public.view_likes ON ((view_likes."ID_NEWS" = news."ID_NEWS")))
     LEFT JOIN public.view_comments ON ((view_comments."ID_NEWS" = news."ID_NEWS")))
     LEFT JOIN public.backend_user "E" ON (((news."USER_EDITOR")::text = ("E"."USERNAME")::text)))
     LEFT JOIN public.backend_user "V" ON (((news."USER_VERIFICATOR")::text = ("V"."USERNAME")::text)));


ALTER TABLE public.view_news OWNER TO postgres;

--
-- Name: view_news_comments; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_news_comments AS
 SELECT comments."ID_COMMENT",
    comments."ID_NEWS",
    comments."EMAIL",
    comments."COMMENT_TEXT",
    comments."IS_APPROVED",
    comments."DATE_COMMENT",
    "user"."USER_NAME",
    "user"."PROFILEPIC_URL",
    comments."ADMIN_REPLY"
   FROM ((public.news
     JOIN public.comments ON ((comments."ID_NEWS" = news."ID_NEWS")))
     JOIN public."user" ON (((comments."EMAIL")::text = ("user"."EMAIL")::text)));


ALTER TABLE public.view_news_comments OWNER TO postgres;

--
-- Name: view_news_cover; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_news_cover AS
 SELECT view_news."ID_NEWS",
    view_news."NAME_CATEGORY",
    view_news."TITLE_NEWS",
    view_news."CONTENT_NEWS",
    cover_story."ID_COVERSTORY",
    cover_story."TITLE_COVERSTORY",
    view_news."VIEWS_COUNT",
    view_news."SHARES_COUNT",
    view_news."DATE_NEWS",
    view_news."NEWS_IMAGE",
    view_news."LIKES",
    view_news."COMMENTS",
    view_news."EDITOR",
    view_news."VERIFICATOR",
    view_news."STATUS"
   FROM ((public.view_news
     LEFT JOIN public.news_cover ON ((news_cover."ID_NEWS" = view_news."ID_NEWS")))
     LEFT JOIN public.cover_story ON ((news_cover."ID_COVERSTORY" = cover_story."ID_COVERSTORY")));


ALTER TABLE public.view_news_cover OWNER TO postgres;

--
-- Name: view_news_trending; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_news_trending AS
 SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    news."DATE_NEWS",
    news."VIEWS_COUNT",
    COALESCE(view_comments."COMMENTS", (0)::bigint, view_comments."COMMENTS") AS "COMMENTS",
    COALESCE((news."VIEWS_COUNT" + view_comments."COMMENTS"), (0)::bigint, (news."VIEWS_COUNT" + view_comments."COMMENTS")) AS "TRENDING",
    news."STATUS"
   FROM (public.news
     LEFT JOIN public.view_comments ON ((view_comments."ID_NEWS" = news."ID_NEWS")))
  ORDER BY COALESCE((news."VIEWS_COUNT" + view_comments."COMMENTS"), (0)::bigint, (news."VIEWS_COUNT" + view_comments."COMMENTS")) DESC;


ALTER TABLE public.view_news_trending OWNER TO postgres;

--
-- Name: comments ID_COMMENT; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN "ID_COMMENT" SET DEFAULT nextval('public."comments_ID_COMMENT_seq"'::regclass);


--
-- Name: cover_story ID_COVERSTORY; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cover_story ALTER COLUMN "ID_COVERSTORY" SET DEFAULT nextval('public."cover_story_ID_COVERSTORY_seq"'::regclass);


--
-- Name: likes ID_LIKES; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes ALTER COLUMN "ID_LIKES" SET DEFAULT nextval('public."likes_ID_LIKES_seq"'::regclass);


--
-- Name: news ID_NEWS; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN "ID_NEWS" SET DEFAULT nextval('public."news_ID_NEWS_seq"'::regclass);


--
-- Name: tags ID_TAGS; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN "ID_TAGS" SET DEFAULT nextval('public."tag_ID_TAG_seq"'::regclass);


--
-- Data for Name: backend_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_user ("USERNAME", "NAME", "PASSWORD", "ROLE", "DEFAULT_PASSWORD") FROM stdin;
admin@ptpn10.co.id	Admin	21232f297a57a5a743894a0e4a801fc3	admin	f
muh.rizal@ptpn10.co.id	Muhammad Rizal	ffaa10512cbbe43388cb4f6a97204616	publisher	t
daudana@ptpn10.co.id	Daudana D.P.	666cc8878dee41efd0f9fd733bf140bf	publisher	t
\.


--
-- Data for Name: banner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banner ("ID_BANNER", "ID_NEWS", "IMAGE_BANNER", "DATE_BANNER") FROM stdin;
\.


--
-- Data for Name: captcha; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captcha ("ID_CAPTCHA", "CAPTCHA_TIME", "IP_ADDRESS", "WORD") FROM stdin;
189	1578449458	::1	VaQU
190	1578453330	114.4.32.178	RfI9
185	1578447144	66.102.6.144	8sup
186	1578447177	36.71.115.55	s8WW
187	1578447181	36.71.115.55	VwOO
188	1578447182	36.71.115.55	bNZH
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category ("ID_CATEGORY", "NAME_CATEGORY") FROM stdin;
B	Berita
A	Artikel
S	Siaran Pers
G	Galeri
P	Produksi
M	Milenial
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments ("ID_COMMENT", "ID_NEWS", "EMAIL", "COMMENT_TEXT", "IS_APPROVED", "DATE_APPROVED", "DATE_COMMENT", "ADMIN_REPLY") FROM stdin;
49	3	firnasreyhan@gmail.com	tes komentar dari mobile	t	2019-11-03 14:28:36	2019-11-03 14:28:21	\N
50	17	irfanalfiansyah10@gmail.com	tes komentar iOS	t	2019-12-04 01:38:51	2019-11-11 03:45:26	\N
53	18	reyhan.adani@stiki.ac.id	Tes komen dari mobile	t	2019-12-04 01:39:23	2019-12-04 01:38:01	\N
51	3	bagus.kristanto@stiki.ac.id	halo smart people	t	2019-12-04 02:23:56	2019-12-04 01:17:34	\N
47	3	firnasreyhan@gmail.com		t	2019-11-03 14:23:15	2019-11-03 14:22:13	\N
48	3	firnasreyhan@gmail.com	tes komentar	t	2019-11-03 14:26:33	2019-11-03 14:26:09	<p>tes balasan komentar oleh admin</p>
4	3	firnasreyhan@gmail.com	Tes	f	\N	2019-12-14 09:59:02	\N
5	3	firnasreyhan@gmail.com	tes lagi	f	\N	2019-12-14 09:59:22	\N
6	3	firnasreyhan@gmail.com		f	\N	2019-12-14 10:00:26	\N
7	3	firnasreyhan@gmail.com		f	\N	2019-12-14 10:00:37	\N
9	3	firnasreyhan@gmail.com		f	\N	2019-12-14 10:09:03	\N
14	3	firnasreyhan@gmail.com	Tes tes	f	\N	2019-12-14 17:56:29	\N
15	3	firnasreyhan@gmail.com	tes	f	\N	2019-12-14 17:56:47	\N
17	3	firnasreyhan@gmail.com	yoi gan	f	\N	2019-12-14 18:01:57	\N
18	3	firnasreyhan@gmail.com	oyi gan	f	\N	2019-12-14 18:03:50	\N
19	3	firnasreyhan@gmail.com	hshshsh	f	\N	2019-12-14 18:04:05	\N
22	3	firnasreyhan@gmail.com	tes tes	f	\N	2019-12-14 19:20:45	\N
23	3	firnasreyhan@gmail.com	tes tes	f	\N	2019-12-14 19:22:38	\N
24	3	firnasreyhan@gmail.com	tes	f	\N	2019-12-14 19:25:36	<p>tes</p>
52	18	bagus.kristanto@stiki.ac.id	testing	t	2019-12-04 01:38:46	2019-12-04 01:21:35	\N
10	3	firnasreyhan@gmail.com	tes lagi cok	f	2019-12-14 03:10:00	2019-12-14 10:09:17	\N
26	3	firnas@ptpn10.co.id	Tes mobile	t	2019-12-20 11:36:05	2019-12-20 11:36:05	\N
27	3	firnas@ptpn10.co.id	Tes	t	2019-12-20 15:16:11	2019-12-20 15:16:11	\N
31	3	bimasaishoku@gmail.com	hayuuuu	t	2019-12-20 16:32:32	2019-12-20 16:32:32	\N
32	28	andika.vernanda@gmail.com	mencoba berkomentar	t	2019-12-23 15:37:02	2019-12-23 15:37:02	\N
33	28	andika.vernanda@gmail.com	testing	t	2019-12-23 15:37:32	2019-12-23 15:37:32	\N
56	3	firnasreyhan@gmail.com	Tes tugas ppb	f	2020-01-02 13:34:17	2020-01-02 13:34:17	\N
57	3	digimagz5@gmail.com	Tes iOS	f	2020-01-02 21:18:54	2020-01-02 21:18:54	\N
\.


--
-- Data for Name: cover_story; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cover_story ("ID_COVERSTORY", "TITLE_COVERSTORY", "SUMMARY", "IMAGE_COVERSTORY", "DATE_COVERSTORY") FROM stdin;
3	Contoh Coverstory	<p>Contoh coverstory dari Digimagz</p>	4987.jpg	2019-10-02 03:33:26
4	Agroforestry	<p>PTPN X bekerjasama dengan Perhutani untuk penyediaan lahan tebu yang nantinya dapat menjadi bahan baku PTPN X</p>	Lahan_Pandean.jpeg	2019-10-22 07:16:31
\.


--
-- Data for Name: emagz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emagz ("ID_EMAGZ", "THUMBNAIL", "FILE", "DATE_UPLOADED", "NAME") FROM stdin;
8	edisi31.jpg	emagz31.pdf	2019-12-27 09:57:33	PTPN X Magz Edisi 31
9	0*-ri4Avy2vR_rzP2r.png	Modul_-_Network_Fundamentals1.pdf	2019-12-27 10:01:56	test panji
\.


--
-- Data for Name: firebase_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.firebase_token ("TOKEN") FROM stdin;
dwH_E_Mqwwg:APA91bGeit3dPwpNzBtA9qi0Mf64WuzEDVeejud0TUMTmoS3A0jjt4XhwslpErHb9LeQCM_KG_AsTWjXSsoexLJEca-EREF4X9QY58FEcZcvecVjeG6D2S7WR6AeVF-6arYszI6aE0_e
cNcMpp5TZO0:APA91bFS5UfwAYP0AofaAzaKj-dXJR9xFbzTaG7IB3AtYgg1pO9GSr2CdahfOkTVh_AyH4vsztZg9cWHlJwlrp5qyPjGyYpBq_PIZo7vYMNlUysv1vPv9Ot37ai99Hsj58g3_9VdU69l
eGZtKLkpCqo:APA91bGuT0ZFxXSruFWOPyZ6ZvoNJZopg6Mi6RWzx2YZk0HmCRoLqX79UiL5Cca6FWmbszULcvW2LOWxcKduXvF5uvE6grdSeZx-0M3IZKi7UXPbF01VmYpZhb_phwxY82celAQ72TeN
f9_2R25t4Vc:APA91bGpb9eIJ3q6U5hYhbCbrw-7t-fxnWmpRmn4jLUK_Tj-5L9u0IyVMFm01hMPZ6n6nTSkRWDciSF3Fj-IPoEeOuJD0_1DU8DJsOSO47ti5Ks4l_VIxF6K-6MZTNTnVSD1qlXnQWeJ
dhjUGGrvh5o:APA91bG4ECq7fRXBJYR3-2dEprx_FuKp_V4NcgUK4S5nGbMq1ybp4sk-8s6Av2kX38x3sXPGrxDhWh0C-EqFzpN9IRKbLkSqa6OD4Mo_AAyWQCKi2RY6PUJAJCDfnp3FfseYkXbMBthL
eCif9JrRhos:APA91bHve7OvRxiG8ozB3EhpD5vrSrWb0CQA9UVV2lKtIwz4kpenyoLnL1_c6Yv4e4nNuwN4bQbJAJ8pqhcu9iYHE8I_xWaWda9DaGLJQFpI3bBD9tzLncOmNakRx6wYm-TE8jUjXlVF
eP6SIdTW_WI:APA91bFO44pY93m-Fugt7jJZl8At9PDxUV8bguKMdPDk6jewMjfM9FUWbMy2vdn6z-c7U_FdcrL6hRm4p8tMNF-dkEb3jXaMCSaek5D6PuobnXOsIHED-6lJAOyhb2dmESKwjQfEfNx-
eC1gpcFwYRM:APA91bEo2t_H8pt8q7ZE4JEYpuhktb78QY2qmy3ckLVtrspKJb1XLikPqoDpK2Oj-lenL2orCL5gcE9ravYqCicM9hvjYkGylrulgnScnWx47q15j4ac1E7-kxNYZiE2Zfktk4pNHJZz
fNd28z_STIM:APA91bFgRvH-QNaECC9i7JxHmtvsLhwHtsxdJG7nDLRskJ9pKIOP2acdJveA6hWQ-sxYc3ctRFCFQZAZH36eD3TCcu5qbtPAYMqtuzywtRSEv9Y-nYIRH5AzSmuGof9gbcVBsdvAhmL6
BLACKLISTED
fLE9SbeFfHg:APA91bF9-tppOkS_3dWwkVE1y0wa-Yk64Y6JeMNe7fiqC8U6hiNtgOKhRT__OfLVhLzzL_h9io6o3WMJO6yW3hY9_vIDU5CZsNxmfum0J_qazVSCcEXN-TwXOL3R1MMeWPA2o6TJFKS8
fXoccJd9bgo:APA91bF5Esr729_5_-22I3DGmoXw7Ru5TxEMoJ5Wq6t2WZkeu3BkwIYV_UMQi5E0Hdk_uOO824yhzyta0usA0Pe0BkVRu4PnMB4_fXr8hAChyylqTw-vEp-mNZXbuwDN17GouWbQbhn4
eADxELRdgX8:APA91bG5YW_s2wha3v0JgPPHiSSdvGZtkubE_CaKVBkAGg9XNkX865op4MpmQRXGv_EZER2I--Ov2aM7rs3-x_RCQ5BVXWt2AzpSXOL-XZIaQBvcs4KxOcdFDX6wMi7Q-hR37ApcQ8vQ
d2t8yrsAvdE:APA91bEtbk9KgatMb6hqGGGJGM87Ddq7rRDSHcnV-hwhfIjhkG5BZA3naU3kA6xv1dUBbBdT3io4qNq7j8jBjmQiwXUeZlTRKpieC5OlYwqbBkB8Y1LawmE1Q1Pmp3bOLaFDoNykxicZ
cMv1NAgZ2qk:APA91bFqxEuTB9_xlWC_HB6qppPIkmrz23obR-nZPslyiedZneWtsaHBDkJBZmffUsih_F9OGOQzqRURhtwqGoJhKFn8KCcvSFjK5Luj0nMHw-ZvcxSpvUdTVvw1V7sLaCnhRz3s2Muf
fDQT1hCvkj8:APA91bESrH90ah5D9oYkPT88RRRUpK-6xPsRYPucmtSK1FombC2tL2eDg6Q8mEgJVCf2QQsCnL4WSW3HKH5iLGJSiOtVBdZ-WagAzKDRDMrPrtZfaVK0s6SB40hntIrGk8z5BnetflUt
emnXTtV-FXA:APA91bFQwKWxDYFGsk8ol5t-uDFG-PNJioSxMrvJCxzL04kKZPqFZDWKVx09f3qNFcMWISCg7mKIkZK0AgcifRkfp0XbuXe9cIy7Ah3WCZ0ZgJmeAlDBf4-d1u4RcVzb2z-WHWIFVJ6X
fIyocsUSqUE:APA91bFjPvxrMXl7KSoGPa9EAP5q3AM-tL7MK-aPPbuAVRb_5ZFkaJ-hWtnq-JL-1Py7pFLsVr6Os3PDoBDA7xN1nQTlBFXi22p4DrzqjVQN-3rJGxR8teYC0-7qJpcpzB1xoqqPXSCr
fj-2W52YlZY:APA91bHl4ABu82-f1wShEEI2RWFe8mLJm6_P5q7FnSGhCLYPTupNF4yMVVSvB9ry484vkUIerVZMvDtV32UouJNcaTGBAgO_78pAGkiCrYV5NKDj5ZoA136CUYIPSOSz1Co1Hj9ypDey
c8ZOfL3-s7w:APA91bEaefYTKXZYvLIRgVHSbIliXG33brivxxtqe2cwP3FZs447lHT7zQzLkLlAp2juKoKOSkZJUw6-aRYtAi9fwa1UlPuUgIdCdMkMvXGdNxwaXDX_qgW6QPia-cEeVy9c4EkKHBhT
dob1s0pitB4:APA91bEPhUDFWjwxiwxcT3PbCl7Vk_n_pvZ7Ha7r8lV0SCvlyCQ_B1yLSy7b6SelVAVh3iS7z2wuTHWjm5rwThNkVPbF3pgmKfIoQJxidhCbajvdKyvtIDsvg8Ezd6kMr85df-0nKXTx
eDei7pMZLyQ:APA91bG9__Jl3VyS2A9V_0MRgo9357mFulviofrISFkLwWEuRbfMy8C5JXzFe1h-CizndA_AhN0DatHiMdEDGa9DqlHgJqc-6_m4u_nT6f4eLPu8tdgJHuXd4YpRiLYImRmOeYUXZCWa
flugBSmVNk8:APA91bHQxjJCPeJA-erkQBzGynHzFsPLFWHsaKHWoEBi845SNoDfPTBVpcHiSmgku7Xq-l_vkn5ITIUF7LKJ-Ja2Nq3IAXJGVe-DrMzv_kKrRVlZaSK5jqisT6EcesOao4pim6501LeB
eoBiPsQHUFg:APA91bHaw6APhAd--1sFrbvq_ifqA26cnrU9WrK-uN4ZvzGdMTryoBsYhEgiSFb_zn3WtNec_Tu5qy5IXvexkt7CCtNa8ojzG5SagkuaLk9i8twHtj9AxMWh5FzvyDj6JrtypSGkZcjn
eRNTBWTkDe0:APA91bGbs9CuWeiqDyT6VD1wZT07I-EKi1LmVmz7lhsTzIMWRK7XDXLkW0nGYLo173aQcmHXooFzt1c7aBytPAf9FvgUs0bMRv6iCD-ga_2YQEtY6PCPjnZvuN65y7uFi1xFBze3vb9s
f677mGYVQog:APA91bFoDwkwtQExryI-oL4fc2dcZ91w7_OUDplBMm01X6gbuT6zS0kvY8sdMjP85L_B-jtlHxB_U99l372ftaEm1TZrVdYMO4Y9-owmkuj6gIgSDH50TVpBEZM2llvTHysX639dt8Jh
fhllcAvWeyU:APA91bGcTc9LF6PSnsCvAPZsYyfSj4VAWgohYbJ7um6Tt0yT_a32OKQZiWon0lmJXigAMKaCOa6Z5EQ3dJtX7X54_T7hM1xC8wcftNVOwTqs-JBzGNA_BvdVqXL65JRFJetP23O4P7nz
eTEqwQuE-ds:APA91bGv8utpmiZ3DUNDxkgxAGt05bqu3H4IMv-EnsxUXhbC_jFdqrvWljaERHDOa4CDi6Xijb9KuGtnvvZxvyKdQ4dH8AiMTBuWzRwCjxxNWR8mesrNctwfy0vLE5h65lSxrWMNKOfw
eA8C9eYcHGg:APA91bGwtcnLTNUliSaKeB_CMYzrGAW-4ZkIZm8MZ40M4826rNnt2c-_sijilSHlkib7MT7rwZkFd92uRkenrHvkzaQ3NAFrNLtqZD1RmnQt5rcfwRTkNCoNlaYa-vlDpMXK_8IqHBKt
dOekb5qVToQ:APA91bHX81KP3lcF7LoleaYiP9NNRpGC9DjnSsysmtmPN_2B78uHz_GA7mNwpJSwr51mbTfXtz7LHCn7isCms--xItyW6Lo8AtEYbgj00XwTMKXfMgharW_wYeQGpdKJh-jj4SCtaMLw
c4YKEeLxpYM:APA91bH7rnCeQAJhLUrNIACTVigM-GrA3GFWgi5wqMcKzLKK1Jk-I-9J9Ixj0GqsdVPm3f3MW-mGR50h_Vm_Q_Lh4eGr26vLUHBjB2wSqhIZLFrIh1JC8JQ4GpONpSn7RGx0jt8G6VG9
eWKFHYmkBTQ:APA91bGCgJY5TvAqIYgnyBh_gTTN73I84AL6QxTkyGjq505uI34bQP0ifcxu03AWgyTcf2d3f8cTLvt3P_ygF8qydHihQZ4YvHlnNn_ErlwlfJkyo5NSgeWGW1yGv7zOMH8szzXxwuDk
fJ3Djfz5Nlc:APA91bFN-E6hTWhJWA9FmInjKC9ILLcuX6izMBoMR3sgqhRMjkNndtIqHrGwWQAJ6kZO8ta6P55IVdXqStwV5lB4s7AyE_QqNwUnOtjNRXkYotJ1BDwZ3A1kHUWc69QlPTx_80JYxFqB
dgmd5RKjP3s:APA91bEwfdRZ9mOXz_Zkpn8QzSHtFISDNVpyXrL2-A3Y-j0gJbnjH80EJMUrzeENWXIZCBdW8LDKH5cx43P57bpw_Pt4LM3QY0rr4FL3p12TZfCv9vhnGEAxInimd4aj41PaQqcn8bNI
fkGPvAIPXrE:APA91bGobBqpShUO4PR_7V8I440t1EAN-tBp9hZkwIj8Fdg-QOEG5KOBWs99f1AcaFIdFsLWFL0QyHTeqWN23apdK8YYjbtIK6VR54DEZxTxA9honeXApEYRhA__UdRWAkFL4h0fPcg7
ccilVQt4bsE:APA91bHFyvvYwOxdIsLMaPU-Sifydti6IPwIifH1Rq4AzBkJDZQKxNLOCio5irHZ1s16LGwLHIMbMHuORCqJx-6OPrL9d0cvec_FA-msOLHmCGXLBhmoywevA_q9Pm75UHI6sn-6601w
dnIWlvUxTEQ:APA91bGaLaYUbJod2hNmAnr5fHWUQvwjhm7k5Dgd_W5Ezh_0erC3d4lOswwP62xvShiZfxgtllbACiPAHblalt5bHkV-FwLCZXP48Krp4hyeIcEW3aI61AJCGistZboQ-rLIZgme6p-2
f6WnSInQaYE:APA91bG2RKMWmkjyM3sShJiRm-sLxBbwEt0gkvPMKn3Kxmm2BonmXlAwnDE-qYEUh_729oROnkCPPlp7-ruXPR9QSnKsUiDscKH3Ie-xGbuV0Ug8JMV2xtawLUlV2QZfp16QE9ZFT9v6
f6WnSInQaYE:APA91bF6Ot50Us19gK7HoRAYXf2lDxgXUZrFhRJDWA1isrnyr_qEJaLra1m2f_liFJeEi0Cn9CNgPBd2dQuj2_QKAVz89DmdrN6zCjbTHna1D8FaVblfD5DBr24Y06QTgpw9dkn10ZvG
enXTEIfZfjo:APA91bHag_8voOih9LRHwntkYyFsXLwugbOzsiHNn3rYCkPn-nfAaDvp0BIY5ecCDQU554ARDjMCFYm3RKsSj7unyKBx9ATeTCZlUshAo8q53fphLlUGwrPTtZ4SnYE3lVXAC6Cowzky
dXG1S3caKJc:APA91bE7Cd0K7kL1f8-MyOLtD0M-V6NTu_w30qKzkY4UwI4NMYcdr3qfTkGS6mWe6lwCPPlc5oTjz_FbCyQrkqoKH3PL9cqIae9unJU7CFAZyPnN_v2HqhYeHpiLFYMTwwc9HrK3dPcB
emNwpIdtkZY:APA91bH8LkCfASDjh0srL2sbQECaP1-9rekb2fwV38h0ceBEZpkx7xnZvp8thuwnvIshbPLUonMT5ZM6r-wMMjpE7kUy1SfOf0-OwsFoIESD4jl23qFG8V7FQqI_ihU_MQL3-Ntq-e7e
dU0lHjbKXBI:APA91bGGS92BrnRk40NSowQrMYHeuiAAckZef4uRiwNYn5cWUW7RPNvvJRmROzykBdgUDfVM7lryWmxGsL5uHaotvLQzIGte3uhdDvwitqnB2DFYrRn4WFnQvWcu9Pe-DepIO4XhutQn
dd9Tuk7x77w:APA91bGFxu4Lyz5fl-Nydb7znvyDqQv1_-8z5_fZrdYE7s_suzuwEZsMZJNXJo5igiUBtqZodegIv5orrL4co8bKShlKBTDAXhOwT3lC5gYN5VZF0eQz3tYT3lg7fQvkUGV8Sh9thCd-
dh7FnZqAqaM:APA91bEkLYtoUqoT9q_1bbSZx4t-4zD0lVoMXXzTTXISF4jXf2q4mXieI1Vzc0cZtF6x6Vi64XFuZNwz60KUqwSkZ31ZwvJaUaasAHNur3najus2a1lg1XUS-IcfbfeeGMSYjbNj2d_U
ftM8bPf64RU:APA91bEO12jmeILkNsEazYEYJRAtvwZhwYPyLmYymQfT5fj8nCxaJZeYXmdm-n2PLcKrr72a0kAP3ToIQc7LHlKXDlcjGlorv2exO_px2PmVhYXrjoQtUhJ6jg7F2qeOW6i-R4G9k8vx
cODymOnRsDI:APA91bEyRwkQ1Z63MoIz4VtsIf-CvdnD_WMiLjb3cKmbJkJ8c8hYn8kY89ku7TUsOVXDTZ-T2NgriLiMAs6BiurRkBEnhOjuNxNeXFCQ5ykJtN_jI_7NjHQ2VvPVhKAEQbLscOhkO_Cz
eFc_yyD09FI:APA91bGhEizT3vzoBJ4fql7eAvjd3ZYRoMxo0WMSUG_uMRBSRblbx7eFEame6pEOF2mW_RGAxgjFnVN50WGA8LubhfEVX2iaIBciw-VxB6yKsQHdjpItbDqfZYnyslSZ_cFWwmm8FbDM
fdm0RVL0Sjg:APA91bEsUob19DbgUsbJzGLdREdHUL2ssKw2pvGEd2IewM7awuGTnjxEGLWIS5DVqb4pbxaDWZQaPlzQZdzoaD8ROb_6LddjgBu5_fBJql48Xu-00KqJewNI76kJs4yopyg9l2P5WCxq
cmO7L4jVTiE:APA91bEiekuu-OsdtDa8h0K4w6pwOcsTUBKZYRObtdpV0WK7VajGlQYTjqYPH4R6UH5cQphpYZVr6uqRz0oKTa_XJBWOZT4LQ2TWfkNDLRVi5HvGaMWNhL-AhdIbj3SXuKiqmRZMlrhv
fordVWnXXmY:APA91bEpBM6dk9I3wacaPl6ZvEET4yh52pJI415aNKt4oVxdrvh9pvw4wVLWXdrrTXCNWMORMlH2tY8KR4IUntrc3uUAayJRqXl0HuvkDq9TzA581e8SHfUddy39bFB7rjwD4l1Tzzgd
dj-k2JNysmE:APA91bH6CxxNGtEEoe9Lzl9u6P5dXqsiwml7XjgXCFS3VJU_Nh07TB63otRRwAIc-7NE1-4SNDyBB5ucBsfJu0Gy584UZyrEHOArV1-4vZQdpXnFSh8nIvXT7yS4ljU2JbNhq1DEPndQ
dWsCj3jvmCA:APA91bGIkK6CKD3Jbd33vNX1rHi9szr4FtIrjC5oTZZmtd3LSP-WPh6e2Gy1Y_88b0FOfarn0nJM7TuIoaqY6f5Y3tNzHbSI2CJ1UO_f1FIk-WR-aRAKy531d4YLMpGHlm4sfd20yYXU
dy7bYJX9OaM:APA91bE1icbuygykk3MKarr9DO6P4wamnXd8yDM96Go0AcIDa4UvyfnV1j_l3OwB8Vb_3rJREAeS0dlGJAaG1qNUm6EeMdX4epOU8c181k-VnGNZj4cJX_9RdAihG738SUw00KKNW_n2
f8TIt5csFzg:APA91bEkwu1fU2dwzLMEmUoMl5A7taI2BZY2WOoxGjOkjOT2yqdNnZ1ieezSrf5ShOzymWFPz9lC9TqqhRSqMPoOitWZvIl15bB099roDr1FXOmcOgtlT38SD7wLk4213zC31HM_1P5Y
dHcIYsIIhnU:APA91bEkZmWEqoVEv-I2dk81pSD5maQBWTwTKpfzAOgLU2lxCO78ELTzOCxB9tbFBgapaDD3V8yujae_e_r-Nn9BLQEwcJenmPzzoRXDiWEvOfsuhMOqExgLNjqCZ7VV2CyUd_9IWhD1
duINHyHETTs:APA91bGgZ314Y3haa-M7kP33sckomzhuV8R5JK_BdSJR3ELXIEpoVT2qCKx0m_rn5Xn81frlGoktkgWl2AELfT8VHgCiJvwoiCQ0t0-5d2ztNREsITdsxUmf4eigo_ShRdFfMdG59lx2
e7abc9sVBvs:APA91bHtBx9crNWIkIOPYoXMw9N8h08mSNoBa6zI6OD_weAsfjfVqtk5hCBpK6mL0bpU4RIsItLJvnbc941A11SidjSR-chVd2pCWSQgCJMbH5j9DKLsahvPo9Kvh5lzmrn2IAyr3Lef
e08KA0gpYPA:APA91bFYqOA6IbBnWUdqWC8y9feF5Dvom65C6cZ3dlbFCyQk5aRdiy9BkTeRYFAgr5jYb6WDwguooEC6lviWzY0eT21rlDur00V99F16536WymVL5sfZ1CKtWwvmYys5x-y5zUNyHfhP
eWBQWJo6eQI:APA91bElWeSoVf4ovkVHqrfg6qjjBqFXk2FkKIc4YxCnXuQyDtSLeZJpQwEuxkbm-LvJiGRbw-xQwutFTRiInsayey-E8raeHPFDcNJCjHcX1e3xBo_vCgqGPkBSQEDR6jhxPo6BRf6H
cid6CFnjK54:APA91bGReCIx8dkmnn_v5bGI_9mrcKIDwZe62xZySrFqgz7pRndXJIUkQNx0F3GMrPd_K1yae7nrj7yTnPg3lrheGz_TrpuB5-lw24RM4KswaTBNu-1mQG6OkuAy3lBcDCea1E12tWSs
eE8ZepSp5Hw:APA91bESuiCCk_QuPnEkqO4wt0oW_27PgWSSfgIx0rHvvQMSxLpANRpzigc65B87fkUisM_VG1yW_cl2o6QiDxrh88es3c4Z2hkJq8mlxUX2GUe6HdnRo-H6ntWdD4nITR3fkg3C8-Zt
ddd1y8Xncxg:APA91bGDvWmPgcSUzrA_y3sWZuwEFqPtnnUhQl_RwO32q7z8x4DAq1SJh5YeAn7Q0Iom_YGbauE1n32VgX5TqoGXGe4aQLV86qxU-3bHszv7u-mQhAJayfsMqT1l_QsT0QVw8OSiS39X
djRvrrJB2Gw:APA91bHwsB1nu9xOUlgoWZAKKlpI0vLTLrBLWdy19XcTm4TbKctBPHwCcrOX04Clwdv-FnQYOWAH_-olvhQUJC7zzLdbSChN6WKB75h8d8y-Ebv6BC6I4zd4xWirFHR3vqi70irYHlYl
dtM_wp0ELWk:APA91bHAx2QhuIWOAWv63iHwSK9B4-OgiB-Gm615gikKbprE0GISWCwigx__FJU-2OHPuU80D3kiQUcQeuwTwNN1kY1hTOGJUX26xCSmjqZWeBAJG-UUC42tdPhtqJ8D-pajiZvISbaR
cJSgwf-LIik:APA91bG_-iTXiEbaVfxHeVWEAzkw81-jnd395Y_mV-0ItsmUt4pxUP06cxMOLcHdLlQZYLTBbIce4QbcTxALVxozyH4Fu8DhKXXTyLH6jf6ipnDJLXldZ0lbPLul5ec_KmV8j0gIw9JX
c-yUhoaLPm0:APA91bHQJCpkiIhWXck3-p1m3Iwvcwbsx-9_Xy7XHvErjxgNEHLAczNx0QanvBi4DEdkFCUr9GqBvRa-tLxZVbFNsEWFqot42VEUuVwLeIIKtyBYtuzcd0ehQVzDQAcgPyWvTaObKebW
fZGKJf3erLY:APA91bHOVCcoS6ruHK2sdbH-pRPPJVCkSj3yuQyVfxaT22Oq8ncO6uxGTF8f3R_SUIZLSkISB87mP8RnVCLGKMztMwPcJ3QEmvswCfEzHZiQBAbTrfsiVqcMAp6_VbiTrjovH6c0L-ze
ci5gyC8TNKA:APA91bFSMyyyT4E0NNf5cXk65E8Z918rpRbJqdO3MhLYUFXeM05Akcb6aOdvcJS0g8QqqYKQIIqsAl12tOoCx8k8WRjnJfy7OvBRf_Y9oZisxhYt9urjOh42yi3gmkhtGi8qryBOxDC4
e_4JKyqVpS4:APA91bF4mJ5iHNRPZYOzDRwPJqWd0ol0PygWtWWouMTrWageUkNUx1vXbq7hsE6r_f5-LBBUU7Q2FPC8u3mALWMYxQ5iSQDo0sbZ4cby0IOsNjGixETyO3n0YfGp04v7wfHoL9q8dO1U
dzzUVQ0m30Q:APA91bH9uKWpNE6BsR0ucIQaE30EKTDOu-uSreJPvD22w1qp1iLRO4TGkmcOmSMc7nUI8OfECytiKLyTRQrAB84RVmv73nJssBxv7byPAbLJ9-U8X-FiDmD0Tp6zJK3D_OqHZk_Ge3vA
d_bNZ1cqZaI:APA91bFK5m-JYrsgasdLbHWqwQsW2AZL0bTR5cQ6MMuRUBliR-lA8Qaz05tMp4pFfILZC_i8ZrrPX3L2ay-ZLBhbZxhXUhgEGyX9rtdqNMn-kG6E-WGmItMHOblUmEJLtjxx95f1EaJB
cwIF1DUw2ic:APA91bG5d4uZ0JKx2vgdK3mL2ASGV7I1f8BxPiM9fVckZqqgXg4x3ldxsbZXtp4YmDcuvV-8i8C1ZuTjUBKP3ezcM-2Iu7j3-LyAdvHXpoZCfHRP37XwAsUcVuD43Qqw5YhdfJZvgMnD
c8xvdJ-Q0NQ:APA91bEs44458mnVSGAHUsqyJ3nk5eu_omq3OIDUZy6w_us_PGU0nhSyGYsNgcBUIqGMYeHxML2UIB8Oo0O4CPmsQI3HIkcaSaSulSEevXpRgYm_zWcxlmuf2Gj6uTUUilWCM5S6RjLe
f97YktOizJk:APA91bHiS21oX22-Sx2rQ2YllOhj4h4cV34lV5F6C5uCL5ACS_SXeYj0GM1dqA2otUCAJ1JrHOtDDe_NZaHuxYEPw5LEsHU0ELYawlqhBhi3dh112QnTqfLKwF7w1yrznEUg-Cc857Gw
chGKJmpPwmU:APA91bGtD5w-Lj0CySMCBtusEOka-8YWWbPn0jFHvUWwqfPZyQBiwnEhnNWdRMccrErkaXo8I3fWP2Y3bwW2wGXM7sxxWnZPdJJbPFDx3UMa0MosSTUinu8qFWZm6UqCo_SDBeE1-Usq
dgqT_lUtnWw:APA91bE02MZmOvAJk69JqK9WlbMnuogdaok8NmJ-0YuKVN8eCTYrsvLblPDpfhnTKIBtnQz1vHzjYr7jtduzAvKghoxjbs-Ygld53RpHP1U0ovv8UfA4em7N9Q8ohKedDomoPAekWV__
exS_7EfRI5E:APA91bFqOtXV4dkD9oyY40OTXrybWDPKY1B9Y5iD1MmQdXCVyIJFbLNacl4wLpIVzyBOYFYkZMInhcwcujF0rr_slS5hf4Ne40NRr0GM9B1mybAhrcx260vWwzXOkceZ5ZUM0YOgpih8
f6F0A9AXj08:APA91bH7i1ZjF0ivtBAlk8I1jbQ00vLN8c8IGieNxzIX74bDrpCP8PPRKKB8ZllkcD2vgL9ByeeDJa92eDYVOSvY-s7GTDOdeVvkual2DAvpQEmCH0PQc593bQA_JpnWcN8O1mezPJRK
dLnkb1qoXMk:APA91bH6E9AfpTovQzY0zqmDKPLuG5HrI07OpILXk-5mKXnOfk6eOexbf7HA2Nvk08Y3XbYMob0z15VlAgVpfVlIKJZO2hMGJ2M8U5k7dtI_CWeG1UuFCEiz0twRd2HJQDK99tPohpZS
dNo2M1Tln7A:APA91bHrbmf-rIZZQyBK4JP4ByW0-Kib-kgfjC6gxKMdSNKdhokU5nXKtZRjaZaYucHSufP3PDmdV6ujGzhEQps7xuyOi0BrcOQ7ZsKiGUE111mKzzITxQ0U4_eLFqydmhyb0i8SWeb7
d9xQdpGNYeA:APA91bEv-XtcMMW3D-R7oONlgK2m88otdOgRgXsFHir95SOkBN2bOtHRAB90DFBqbkXVq4xgEquh3kZlZXZ53H5ZJTya2h4uWbkK5wQolBF3tYr0Q--CkVqRFd96smTPaJvx_UaALohY
eQ_ysqDGqDQ:APA91bG8s9UbcBWPNitB4oMw3ucvYVOBKjzgx_bUlkEZ1Q7pD26ICDsx0mobLE4hefgTn0aKXcBf7Pjj6mEYdMG_nvLr-yFjWSAHh1pU9-7Yl4ClDLRU2sVTF88S3c_BMstLE1TUurXV
dMy6qMJeSzU:APA91bGSvIX6BnALYL7s4geWsQDnIH9K2onfGp4zNIMhA9V5_R0eGeUWCSYb-CSDGZ03-3-lxDmQSe6hWSRBRxbNMSH3cvG1M-8VYssAvaDqeDrGdQEIWM2UvApOcucVKa9fWpXlDH-I
dWC_ifF5TGk:APA91bHsYjLYHlCpxPBDiz_hU6G30nxUNSo3CuuAEtrivYSWgKAKE7PmVQAeVBIEqkB9dPSM4MnU3uX8K3RjqdIe4nZlOp19FcJKeK781S1HdZV5Hb2yuFyJXGmLpIL5XCnzDW-HSLPp
dPmPX1HVxrI:APA91bGNwuXf8n_gdVtXSrAckuO-3OctzBGYGoh3qhACTYutpfBAaT8azI0B0Nuzejp5YyPP4inW0SAF0lO0Xj2bP-OWCVLgmJ4m-_n3VZaAUlVhi0QTB1yufPNniFWwhEk-8iycaZ5v
cfgCDF0SMZM:APA91bHs5Vlw7RaAB7ot4LZ38P3aqK7kvNdaqt6U_rMlIOEUXcRrJqiL2IWm9Bf6jEDObnW0a0jfONtkawBaUi16ZlxLywfRby5YP7mCZ15BFT2WUSRkTfI13WUBKmn0a1hH5Q2vMxqh
fer8Zyxqpbs:APA91bFpPjpWgvFEEVn-xOb8Yv7vtuUAWtrPSDp919Q9xGwDnnyfSAvJzFurDBGN6ZON4kDMSfECfXXJVJqY2aLVSQw6Jh0KiJstiuo2IrzYb7oJyrsUYS_VBxmp1hgZiSjxAZ-rw9H8
fqdhhcBDOms:APA91bHCITHB7VTCyl8tXc8_oi2sNeHcZ2hfpi0wRxZ78GBqEZ588sxzcgSKpy9vWwH0ueRlB0MtJC8ieaUYE4o2heJavwDlb3JkHwsMiLHpsbCKKHl84kDNVD7GdovpayTcCyyRalBG
fOFd30vmIaE:APA91bFCQuXgcY-9biVc77q7I1XjXLFyRdg70sJxqHbdI7MnsjXjvOJjXOkjZztvupaGKJMyxlendNYnytyxg0MGUobvDBmwLIj7iIAxXBN7nJnxe3dI7p466jLeuk8SKhqkCwSUPpvS
dgrJq21r-qk:APA91bEICj3aL-SwaR8C-Rn5T2_C4xDiGhx2xpE2dBmrrBA7SPoeRQbyTU6UTJQj920YfX1smfqY2eiufp5DDbzf6OjoqnhYfnQaAppGZlB0Y8tlTfkaQ3wWMIu0bmVgBaP8N_teQEIr
cnCqiyeL3OQ:APA91bEK5S9UBGEkaOBDWpXJfPR9SyJard35HSnhg1gM2BnJQhLWx_9ysMQt9AaSI8CaNJzDJbxvvbxglj2NUcnvTpcMhy83669e-We-sXCoZHQwcQiUE6xYjvJ-DH8P6Usn_mIY6UBZ
cK9IptsjygM:APA91bFlDS34HYe3mwSrjSTXFLq1n-IqwxWT8gDCuxkToMIbMypwtoLiRecs6KNbQ8G-dSEGMdcoHTYbB6kQNc065gGU-vN0sVg7j3hUV_cOv5RIr9Vg1pDa-ArC_GUchgQbUT02JxBG
c72n0TJcqRQ:APA91bH9pekLmEcM5haS94Y2DBPIikhgpqL6RxKDMpwv4T8pUXYyEJ0CLLT_LEuyGC16EYa00qXhItfmNzJE-z6jwcwx7CkDh0rK4TwF_B5KlgSa0x0JyVAEhS5lvnYln5-N8d3-IhTn
dRTjhng-Yas:APA91bHOyPbrNQ4tvKEgJnFXqna49YitJZLWchqx7im9Paj1o-W-mQNJKWOL6xAK8hhz04q3wGP3xBd_KxTlcwqzv8Hd5xUvquXPftlje25TWxKGBeSgckHoBNn53oIFo9e7zlrEX5Gj
dPfhAHbV8nk:APA91bGsnc5e8HNZ0OpsX3ADGIdJVYW9nOQHz0CW_Z36IpUYo66iBMF5oAvHJpHk3bG0qcZPiU6IrSPNUqYwU8U8LSgAzZ_zbceSfgNQQIcXbimSNKOEqwYK78S6RsDvbcXA7_iU5ElB
fFMIMAlctlQ:APA91bHezqv65vC6ET3pDEdqEGck-OrzjPtpy4iIx8_IgyXUfMiCzphpH2RG0ugf3ZxB4V7gzelU-sDJv5-HkUFQ6L2h9paEPGnXybUqhbePMLX7RZjZoYU3uL33Us2mWE7f5ZV7eB_5
deEZPv-w07I:APA91bFRkIwalgGrZP43FH94xl8Mr-gUdadAiNMyzJpZz0pc4KLpKeEBgq6J8ZbVgHT6dV46stmLV9LQp9Y4jP8PwgAJfBO9eybMbcqSO4Me6unc6RIIdkd1wqUvEK5AcZaMXvNHUh2g
eBFS922dv3Q:APA91bEQoIFmo46A7qOK09ooUr_8EevpputVV6RcodE0iAs8mWjybR_sNyzA13GmJNbrRScyep9viL2_82UCOeLNK_xgjVMJ_t-X40GJkPU89yi433MGBjXQ4r-0vofI4AhKLJMAakm4
cKOPz6Gz9Zo:APA91bESEpMOb-CN28bcldheSt0ZObViIPDITpLZAnhlrqSMZDF_U7q7mEMH1GBPU12xmJq0EE0sY8WeGc8ugon9XO7ghgoDLaAcRTnItdMBtXcj-AHarXa9xrrbzj3PcwKiknDaSPXq
f6ImneUmCTY:APA91bH0qizAj58TmBoC-wEKWtmdjsSwUU7MLVu2D8LDnhOVwR8nIjuKvbFTsZrZj7HSI8-9t5SLmCkuXc8z_V6zqdiCiZiL8qgdglfu2A77GCr2P7kYnxcFlqPQPpLt6Pf88g4WOSKK
et5a5TslSEw:APA91bEB9xtkooDOsuYhe5tIASh3A8tJIauQJczbQUGqV9421qght5PypBD-q78VIIGt5b_NXFqCgLxltAZWq-PbKG9kte2y0YrHCfF-Ez4lF5kgxtfzDRUhi7aEp6n2Huq-XIArqayH
\.


--
-- Data for Name: galeri; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galeri ("IMAGE_FILE", "ID_NEWS") FROM stdin;
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes ("ID_LIKES", "EMAIL", "ID_NEWS") FROM stdin;
72	voidels.rey05@gmail.com	18
76	daudana.dp@gmail.com	3
81	monicatifany99@gmail.com	3
83	monicatifany99@gmail.com	3
84	monicatifany99@gmail.com	17
98	irfanalfiansyah10@gmail.com	3
105	irfanalfiansyah10@gmail.com	18
106	irfanalfiansyah10@gmail.com	17
107	bagus.kristanto@stiki.ac.id	3
108	daudana.dp@gmail.com	18
109	bagus.kristanto@stiki.ac.id	18
110	bagus.kristanto@stiki.ac.id	18
111	bagus.kristanto@stiki.ac.id	18
112	bagus.kristanto@stiki.ac.id	17
113	bagus.kristanto@stiki.ac.id	17
114	daudana.dp@gmail.com	17
115	reyhan.adani@stiki.ac.id	18
116	panjidia995@gmail.com	18
117	panjidia995@gmail.com	3
2	yohanesdl9@gmail.com	3
5	firnas@ptpn10.co.id	3
6	firnas@ptpn10.co.id	18
13	bimasaishoku@gmail.com	3
14	andika.vernanda@gmail.com	28
121	firnasreyhan@gmail.com	17
122	firnasreyhan@gmail.com	3
128	digimagz5@gmail.com	75
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news ("ID_NEWS", "ID_CATEGORY", "TITLE_NEWS", "CONTENT_NEWS", "VIEWS_COUNT", "SHARES_COUNT", "DATE_NEWS", "NEWS_IMAGE", "USER_EDITOR", "USER_VERIFICATOR", "STATUS", "URL") FROM stdin;
47	A	3 Piramida, Cara Sukses Lebih Cepat Untuk Karyawan	<p style="text-align: justify;">Tentu setiap diri karyawan di perusahaan menginginkan jenjang karir yang baik untuk masa depannya. Apakah anda pernah bertanya, dimanakah titik tertinggi sebuah kesuksesan seorang karyawan?. Pada dasarnya, setiap orang mempunyai pencapaian titik kesuksesan. Sukses bisa diraih oleh semua orang dengan titik yang berbeda, tergantung penerimaan <em>mindset </em>sukses itu sendiri seperti apa.&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>Time is life</em>, kesuksesan tersusun dari jutaan proses, dan anda harus melaluinya. Sebagai karyawan anda harus cerdas manajemen diri, terlebih soal waktu. Karena penguasaan waktu mempengaruhi tingkat kesuksesan.</p>\r\n\r\n<p style="text-align: justify;">Ada banyak cara dalam membangun perjalanan menuju kesuksesan yang anda inginkan dalam pekerjaan saat ini. Namun, untuk mencapai itu semuanya, dibutuhkan upaya kerja keras dan usaha yang maksimal.</p>\r\n\r\n<p style="text-align: justify;">Berikut gagasan <em>three pyramids</em> yang saya tulis, yang bisa menjadi inspirasi dan menjadi cara untuk membantu anda menjadi seorang karyawan yang sukses lebih cepat:</p>\r\n\r\n<p style="text-align: justify;"><strong>Frugal Time </strong></p>\r\n\r\n<p style="text-align: justify;">Hemat waktu merupakan sebuah <em>mindset</em> untuk lebih efisien terhadap penggunaan waktu.&nbsp; Untuk mencapai target pencapaian yang bagus, karyawan harus pandai dalam manajemen waktu. Lantas bagaimana cara menghemat waktu yang tepat?</p>\r\n\r\n<p style="text-align: justify;"><em>Frugal Time,</em> tentang sebuah kelas waktu untuk menjadikan potensi diri menjadi komoditi yang bernilai tinggi.&nbsp; Setiap waktu berjalan dengan&nbsp; kecepatan yang sama, namun setiap diri karyawan memiliki titik faktor kesuksesan yang berbeda.</p>\r\n\r\n<p style="text-align: justify;">Sebagai karyawan, anda harus menerapkan prinsip bahwa setiap detik waktu adalah impian, dan detik selanjutnya adalah usaha pencapaian.&ldquo;Sasaran itu impian yang memiliki tenggat waktu.&rdquo; &ndash; Diana Scharf.</p>\r\n\r\n<p style="text-align: justify;">Seperti yang dikatakan oleh Diana Scharf, bahwa impian itu memiliki tenggat waktu. Jadi, anda sebagai karyawan harus mempunyai&nbsp; <em>new idea instincts how to quickly pursue dreams.</em></p>\r\n\r\n<p style="text-align: justify;">Ada beberapa tips untuk anda sebagai karyawan untuk menghemat waktu.</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Jangan menunda pekerjaan, selesaikan secepatnya. Jika memang pekerjaan tidak bisa diselsaikan hari ini, maka buat agenda penyelesaian untuk hari esok</li>\r\n\t<li style="text-align: justify;">Jika ada waktu luang saat bekerja, maksimalkan dengan mempelajari hal baru</li>\r\n\t<li style="text-align: justify;">Berikan waktu terbaikmu untuk perusahaan dengan bekerja <em>professional</em>, inovatif dan kreatif</li>\r\n\t<li style="text-align: justify;">Buatlah metode-metode baru dalam penyelsaian pekerjaan anda, agar pekerjaan lebih mudah dan cepat selesai</li>\r\n\t<li style="text-align: justify;">Buat peran yang jelas pada tim anda, karena dengan peran yang tepat maka pekerjaan anda akan lebih cepat selesai dengan akurasi yang baik.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Setiap detik waktu adalah kehidupan. Waktu anda terbatas, jadi jangan sia-siakan. Berhematlah dengan waktu dan berbagilah banyak hal positif untuk orang lain, karena sesuatu yang tidak dapat ditarik adalah pengaruh yang kita berikan kepada orang lain, dan itu bisa menjadi investasi yang baik dimasa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Wasting Time</strong></p>\r\n\r\n<p style="text-align: justify;">Waktu adalah salah satu hal penting yang perlu diperhatikan, karena sedetik pun waktu tidak akan pernah bisa diulangi atau diputar kembali. Waktu adalah kesempatan. Banyak orang tanpa sadar membuang banyak waktunya untuk momen yang kurang tepat. Buatlah prioritas, agar efektivitas kerja dapat memberikan <em>value</em> yang baik. Jadilah <em>smart employee</em> yang mempunyai standar <em>mindset</em>, <em>that time</em> <em>cannot be played back, do many great things. </em></p>\r\n\r\n<p style="text-align: justify;">Sebagai karyawan anda harus lebih aktif, lakukan banyak hal dan jangan pasif. Sukses adalah tentang sebuah proses. Ada harga mahal yang harus anda bayar untuk kesuksesan lebih cepat dari biasanya.</p>\r\n\r\n<p style="text-align: justify;">Seperti yang dikatakan Bruce Lee, &ldquo;Menggunakan waktu adalah memanfaatkannya sesuai dengan apa yang telah ditentukan sebelumnya. Menghamburkan waktu adalah menyia-nyiakanya tanpa rencana dan sembarangan&rdquo;.</p>\r\n\r\n<p style="text-align: justify;">Nah sekarang anda sebagai karyawan perusahaan, maksimalkan waktu bekerja sebaik mungkin dengan membuat rancangan atau agenda kerja yang terstruktur. Mengerjakan sesuatu tanpa perencanaan hanya akan membuat anda bekerja tidak efektif. Hanya akan membuat Anda membuang energi tanpa hasil. Nah dengan membuat <em>to-do list,</em> kedepannya semua waktu kerja anda akan tergunakan secara maksimal dan anda akan tampil lebih produktif.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><strong>Give yourself motivation</strong></p>\r\n\r\n<p style="text-align: justify;">Era globalisasi saat ini berkembang sangat <em>absurd</em>,&nbsp; mau tidak mau keadaan akan menuntut anda untuk selalu melakukan pekerjaan dengan cepat dan tepat. Sehingga <em>mood</em> yang baik sangat diperlukan, karena jika kita tidak dalam mood yang baik, akan mempengaruhi kualitas kinerja anda.</p>\r\n\r\n<p style="text-align: justify;">Dengan berbagai jenis tantangan pekerjaan, seringkali <em>work mood</em> anda akan mengalami naik turun. Nah, situasi seperti ini harus anda waspadai. Untuk segala keadaan, anda sebagai karyawan harus mampu menunjukkan performa yang baik. Untuk terbang lebih tinggi, anda harus tampil menginspirasi dan selalu mampu membuat serta menunjukkan <em>Fresh Idea</em> anda.</p>\r\n\r\n<p style="text-align: justify;"><em>Give yourself motivation</em>, anda harus mampu memberi semangat dan memotivasi diri sendiri.&nbsp; buat diri karismatik dengan passion terbaik anda. Karena sejatinya, hidup tanpa semangat maka akan terasa mati.</p>\r\n\r\n<p style="text-align: justify;">Salvador Dali mengatakan bahwa &ldquo;Kecerdasan tanpa ambisi adalah seperti burung tanpa sayap&rdquo;. Begitu juga dengan pekerjaan, bekerja juga membutuhkan ambisi sebagai daya untuk mencapai target. Lantas bagaimana cara mudah untuk memotivasi diri?. Berikut ada beberapa tips yang mungkin bisa anda coba sebagai inspirasi untuk memotivasi diri.</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Buatlah sebuah tujuan di <em>ending work</em> anda.</li>\r\n\t<li style="text-align: justify;"><em>Reward yourself</em>, Berjanjilah pada diri anda, bahwa jika mencapai target, maka anda akan memberi sebuah penghargaan pada diri anda sendiri.</li>\r\n\t<li style="text-align: justify;">Buatlah <em>mindset,</em> bahwa hari ini adalah hari terkahir anda bekerja. Maka anda akan bersungguh-sungguh dalam bekerja.</li>\r\n\t<li style="text-align: justify;">Berusahalah menciptakan keajaiban baru dengan prestasi kerja anda, maka dunia akan mengenalmu lebih baik.</li>\r\n\t<li style="text-align: justify;">Temuilah lebih banyak orang, untuk belajar tentang filosofi motivasi kerja. Dengan banyak relasi, lebih banyak pula pengalaman baru yang akan anda dapatkan. (Dhanaviya_Enero, CIN_Sekper)</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Sumber gambar beritagar.id</p>\r\n	1	0	2019-07-17 22:00:41	artikel.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/3-piramida-cara-sukses-lebih-cepat-untuk-karyawan
43	B	PTPN X Tanam Perdana Lahan Agroforestry di Ngunjung Barat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan penanaman tebu di lahan Agroforestry Ngunjung Barat, Nganjuk pada Kamis (31/10). Lahan tersebut akan ditanami varietas unggul baru, dengan potensi produksi 80 Ton/ Ha dan rendemen 9%. Program Agroforestry kali ini merupakan bekerjasama dengan Kesatuan Pengelolaan Hutan (KPH) Jombang dalam melakukan pemanfaatan kawasan hutan untuk kegiatan budidaya tanaman tebu guna mendukung ketahanan pangan.</p>\r\n\r\n<p style="text-align: justify;">Kali ini rencananya akan dilakukan penanaman lahan seluas 40,275 Ha, yang terdiri dari tiga petak yang tersebar di RPH Ngujung, BKPH Ngujung Barat, dan KPH Jombang, Kebun Sanggrahan, Ds. Sanggrahan, Kec. Gondang, Kab. Nganjuk. Nantinya hasil dari program Agroforestry di Nganjuk ini akan dikelola langsung ke PG Lestari pada musim giling tahun 2020.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Dengan adanya program Agroforestry ini diharapkan mampu memberdayakan masyarakat sekitar, untuk bersama-sama membangun, melindungi, dan memanfaatkan sumberdaya hutan sebagai penggerak ekonomi di pedesaan,&rdquo; ujar Aris Toharisman, Direktur Operasional PTPN X dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Berdasarkan hasil evaluasi pelaksanaan BUMN Sinergi Agroforestry Tebu musim giling 2019, PG Lestari telah menorehkan cacatan dengan hasil produksi sebesar 72,2 Ton/ Ha dengan Rendemen 8,64%. Diharapkan hasil lahan ini mampu meningkatkan produktivitas tebu PG Lestari pada musim giling mendatang. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-10-31 21:47:37	WhatsApp_Image_2019-11-01_at_07.05.53.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tanam-perdana-lahan-agroforestry-di-ngujung-barat
44	B	PTPN X Resmikan Masjid AL-Fitrah Jember	<p style="text-align: justify;">Rabu (30/10), PT Perkebunan Nusantara (PTPN) X meresmikan masjid Al Fitrah yang berada di wilayah kerja Kebun Ajong Gayasan, Jember. Acara dihadiri langsung oleh Direktur Utama PTPN X,&nbsp;Dwi Satriyo Annurogo, Direktur Komersil PTPN X, Slamet Djumantoro, dan beberapa pejabat puncak PTPN X.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Sebagai anak perusahaan dari PTPN III (Persero), PTPN X senantiasa memberikan manfaat kepada masyarakat sekitar sebagai wujud BUMN Hadir Untuk Negeri. Masjid Al-Fitrah ini dibangun kurang lebih sekitar satu tahun dimana dananya berasal dari PKBL PTPN X dan sumbangan dari para donatur.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya berharap keberadaan masjid Al-Fitrah dapat meningkatkan kegiatan keagamaan dan ketaqwaan karyawan serta masyarakat sekitar,&rdquo; terang Dwi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, program CSR juga telah dilakukan oleh PTPN X khususnya di sekitar wilayah kerja, baik di pabrik gula maupun kebun tembakau. Contohnya, pengiriman tim tanggap bencana, pembangunan irigasi, pemberian bantuan pengobatan, dan pelatihan kepada petani. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2019-10-30 22:34:53	foto_web.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-resmikan-masjid-al-fitrah-jember
45	B	PTPN X Bedah Rumah dan Bangun Sarana MCK 	<p style="text-align: justify;">Sebagai anak perusahaan PT Perkebunan Nusantara (PTPN) III (Persero), PTPN&nbsp;X menyelenggarakan acara Bedah Rumah Tidak Layak Huni (RTLH) dan pembangunan sarana MCK di Jember (30/10). Acara yang dihadiri langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Direktur Komersil, Slamet Djumantoro ini merupakan wujud kepedulian PTPN X terhadap masyarakat sekitar terutama yang berada di wilayah lingkungan unit kerja PTPN X. Program kali ini dilakukan di wilayah kerja kebun Ajong Gayasan tepatnya di Desa Kawangrejo dan Desa Lengkong, Kecamatan Mumbulsari.&nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Program CSR berfokus pada bedah rumah tidak layak huni dan pembangunan sarana MCK. Sejumlah satu unit rumah yang berada di wilayah Penataran Dawuhan, Desa Kawangrejo akan diperbaiki, sehingga menjadi layak huni bagi keluarga yang menempatinya. Sedangkan pembangunan sarana Mandi, Cuci, Kakus (MCK) dilakukan pada 11 titik yang berada di wilayah Desa Lengkong.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapan saya, melalui program bedah rumah dan pembangunan sarana MCK dapat memberikan manfaat bagi semua pihak, khususnya dalam hal peningkatan kesejahteraan masyarakat. Saya mewakili manajemen PTPN X mengucapkan terimakasih kepada seluruh masyarakat sekitar wilayah kerja Kebun Ajong Gayasan atas dukungannya selama ini.&rdquo; ujar Dwi Satriyo Annurogo, Direktur Utama PTPN X dalam sambutannya. (Valen_UWM, CIN_Sekper)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n	0	0	2019-10-30 17:25:55	WhatsApp_Image_2019-10-30_at_10.20.52.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-bedah-rumah-dan-bangun-sarana-mck
46	A	Kombinasi Bioethanol dan Biogas Industri Gula sebagai Energi	<p style="text-align: justify;">Kebutuhan energi dunia terus meningkat seiring dengan pertumbuhan populasi. Terutama untuk sektor transportasi, 58% bergantung sepenuhnya pada energi fosil. Selain menipisnya ketersediaan energi fosil, isu lingkungan akibat penggunaan energi fosil menjadi masalah. Energi terbarukan menjadi terobosan dalam menangani masalah ini. Energi terbarukan sumbernya beragam: sumber langsung (panas, <em>photochemical</em>, <em>photoelectric</em>) dan sumber tidak langsung (angin, <em>hydropower</em>, <em>fotosintesa</em> dan biomassa, <em>geothermal</em>). Khusus untuk biomassa, perannya berkontribusi 9-13% dari total energi dunia. Biomassa berasal dari degradasi hasil alam dan industri terkait. Untuk menghasilkan energi, biomassa diproses dengan degradasi <em>thermochemical </em>dan <em>biochemical</em> <em>process</em>.</p>\r\n\r\n<p style="text-align: justify;">Pada industri gula, molases merupakan biomassa yang dapat diolah menjadi bioethanol sebagai energi melalui proses fermentasi dan selanjutnya hasil samping bioethanol, <em>vinasse</em> dapat diolah menjadi biogas melalui proses <em>anaerobic</em>. Kombinasi bioethanol dan biogas memiliki prospek yang cerah untuk dikembangkan. Bioethanol sendiri saat ini menjadi sumber subsitusi BBM (Bahan Bakar Minyak) paling berkembang di dunia. Kebaikan bioethanol sebagai energi antara lain:</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Bioethanol mampu mengurangi 90% emisi atas efek rumah kaca yang berkontribusi dalam mitigasi perubahan iklim,</li>\r\n\t<li style="text-align: justify;">Pembakaran yang bersih akan meningkatkan performa mesin dan mengurangi polusi udara,</li>\r\n\t<li style="text-align: justify;">Rasio nilai energi ethanol 9 kali lebih besar dari energi fosil,</li>\r\n\t<li style="text-align: justify;">Bisa langsung dicampurkan pada BBM tanpa perantara sekitar kandungan 10% bioethanol.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Brazil sebagai barometer penggunaan ethanol, menjadi contoh sukses penggunaan bioethanol ini. Saat ini, Brazil berhasil menurunkan impor minyak sekaligus memanfaatkan ethanol pada saat harga gula dunia turun. Hampir 88% kendaraan di Brazil telah berjenis <em>Flex Fuel Vehicle&rsquo;s</em> (FFV) yang mempunyai fleksibilitas dalam penggunaan BBM dan bioethanol atau kombinasi keduanya. Pada tahun 2012, penggunaan BBM sebagai sumber energi murni terus menurun dari kisaran 50% dan digantikan oleh pemanfaatan bioethanol dan <em>Flex</em> <em>Fuel</em> (kombinasi BBM dan bioethanol) dengan target penggunaan BBM murni hanya 20% saja pada tahun 2030.</p>\r\n\r\n<p style="text-align: justify;">Tidak berhenti disitu, <em>vinasse </em>hasil samping bioethanol baik juga dikonversi sebagai biogas sebagai sumber energi. Sekitar 18% energi masih tersimpan pada <em>vinasse</em> dari sisa proses produksi bioethanol. Melalui serangkaian proses <em>hydrolisis</em> sampai <em>methanogenesis, </em>akan dihasilkan gas <em>methane</em> (CH4) yang dapat dimanfaatkan energi panasnya secara langsung atau dikonversi menjadi listrik bahkan sebagai bahan bakar kendaraan.</p>\r\n\r\n<p style="text-align: justify;">Sebagai contoh, produksi umum biogas di Brazil sekitar 175 Nm<sup>3</sup>/m<sup>3</sup> ethanol. Energi ini ekuivalen dengan 3,74 MJ/L ethanol. Sama halnya dengan bioethanol, biogas merupakan energi ramah lingkungan dibanding <em>natural</em> <em>gas</em>. Kombinasi bioethanol dan biogas diharapkan memiliki prospek cerah untuk terus dikembangkan. Terlebih Indonesia memiliki banyak pabrik gula yang dapat dikembangkan industri hilirnya sebagai bioethanol dan biogas. Kombinasinya mampu mengurangi emisi 89% tertinggi dibanding industri biomassa lain seperti: jagung, gandum, singkong, dll.&nbsp;<span style="font-family: open_sansregular, sans-serif; font-size: 14px; text-align: justify;">(Ariel_Enero, CIN_Sekper)</span></p>\r\n\r\n<p style="text-align: justify;"><strong>Sumber:</strong></p>\r\n\r\n<p style="text-align: justify;">Zuuber P., van de Vooren J., 2008: <em>Sugarcane Ethanol: Contributions to Climate Change Mitigation and Environment, </em>Wageningen Academic Publishers</p>\r\n\r\n<p style="text-align: justify;">Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens</p>\r\n\r\n<p style="text-align: justify;">KG Cesaro A and Belgiorno V., 2015: <em>Combined Biogas and Bioethanol Production: Opportunities and Challenges for Industrial Application,energies journal:&nbsp; </em><a href="http://www.mdpi.com/journal/energies">www.mdpi.com/journal/energies</a></p>\r\n\r\n<p style="text-align: justify;">Belincata J., Alchorne J. A., Teixeira da Silva M., 2016: <em>The Brazilian Experience with Ethanol Fuel: Aspects of Production, Use, Quality and Distribution Logistics</em>,&nbsp; Brazilian Journal of Chemical Engineering: www.scielo.br/scielo.php?script=sci_arttext&amp;pid=S0104-66322016000401091</p>\r\n	0	0	2019-10-23 15:26:35	foto1.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kombinasi-bioethanol-dan-biogas-industri-gula-sebagai-energi
48	A	Invisible Work	<p style="text-align: justify;">Di belahan dunia bahwa sebagian besar seseorang mempunyai pekerjaan dalam kehidupannya. Mereka semua bekerja dengan kemampuan, gaya dan kecepatan masing-masing. Namun beberapa orang menghabiskan lebih dari separuh kehidupan mereka. Semua itu bukanlah cara bekerja yang benar, ada yang salah dengan cara bekerja mereka. Sebenarnya ada sisi bagian dari sebuah pekerjaan yang tidak terlihat oleh mereka. Ada tiga hal yang menarik untuk dilakukan oleh seorang pemimpin perusahaan sebagai inspirasi karyawan dalam menemukan <em>invisible work</em> (sisi bagian pekerjaan yang tidak terlihat) untuk cara bekerja yang lebih baik.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>Melihat semua keindahan dalam pekerjaan.</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam sebuah pekerjaan pasti ada satu titik dimana seseorang akan mengalami depresi, kejenuhan dan rasa putus asa. Semua itu akan membuat mereka meninggalkan pekerjaan mereka. Bahwasannya ada hal yang lebih mendasar di balik semua itu, yakni mereka banyak melewatkan keindahan dalam pekerjaan mereka. Sebagai seorang pemimpin, beritahu kepada karyawan yang bekerja untuk Anda bahwa pekerjaan itu adalah sesuatu aktivitas yang menyenangkan. Bantulah mereka untuk menemukan jati diri mereka dalam pekerjaanya dan inspirasi mereka agar mempunyai waktu, energi, dan kejernihan untuk fokus pada pemurnian diri sebagai navigasi baru dalam bekerja.</p>\r\n\r\n<p style="text-align: justify;"><strong>Kepedulian Pemimpin</strong></p>\r\n\r\n<p style="text-align: justify;">Seni kepemimpinan sangatlah berpengaruh dalam perkembangan <em>mindset</em> karyawan. Banyak karyawan yang mempunyai <em>passion </em>yang bagus namun akhirnya mereka tidak produktif bahkan kehilangan pekerjaan mereka. Hampir 70% gaya kepemiminan akan mempengaruhi baiknya kinerja karyawan dalam pekerjaan. <em>Global Studies </em>mengungkapkan bahwa 79% orang keluar dari pekerjaan karena kurangnya apresiasi sebagai alasan mereka untuk meninggalkan perusahaan. Dari penelitian itu dapat disimpulkan bahwa sangat pentingnya perhatian dan <em>respect</em> pemimpin kepada karyawan yang bekerja dibawahnya.</p>\r\n\r\n<p style="text-align: justify;">Ada delapan hal dimana bisa dijadikan sebagai bentuk inspirasi perhatian dan bentuk kepedulian yang menurut Jay Shetty akan merubah pola kerja karyawan untuk menjadi <em>smart people.</em></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Jadwalkan pertemuan dengan setiap pegawai,</li>\r\n\t<li style="text-align: justify;">Tanyakan tentang kebahagiaan mereka,</li>\r\n\t<li style="text-align: justify;">Tanyalah apakah pekerjaan mereka berarti,</li>\r\n\t<li style="text-align: justify;">Tanyakan bagaimana mereka pola pikir budaya bisa ditingkatkan,</li>\r\n\t<li style="text-align: justify;">Tanya mereka tentang keseimbangan kehidupan kerja mereka dan bagaimana itu bisa lebih baik,</li>\r\n\t<li style="text-align: justify;">Tanya apakah mereka merasa dihargai di tempat kerja,</li>\r\n\t<li style="text-align: justify;">Tanya mereka apa yang dapat membantu mereka mencintai pekerjaan mereka dan perusahaan Anda,</li>\r\n\t<li style="text-align: justify;">Dan yang terakhir, bersiaplah untuk mendengar kebenaran dan kenyataannya. Jika Anda siap mendengarnya, mereka akan siap untuk mendengar balik.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><strong>Kekuatan Kepercayaan</strong></p>\r\n\r\n<p style="text-align: justify;">Milikilah keberanian untuk mengikuti hati dan intuisi Anda sebagai pemimpin di perusahaan. Banyak pemimpin yang kurang percaya terhadap kemampuan karyawan yang bekerja untuknya. Sehingga membuat <em>mindset</em> karyawan berpikir bahwa mereka dipandang sebelah mata. Hal seperti ini tentu tidak baik untuk perkembangan performa dan <em>passion</em> karyawan dalam jangka panjang.&nbsp; Sebagai pemimpin, milikilah kekuatan rasa memiliki dan kepercayaan lebih atas semua yang ada dalam diri karyawan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p>Sumber Gambar: https://blog.clarifai.com</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n	0	0	2019-05-03 20:34:35	invisible_work.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/invisible-work
49	A	Kecerdasan Buatan (AI), Inspirasi Menjadi Karyawan Versi Terbaik	<p>Metode Kecerdasan Buatan (AI) merupakan sebuah metode baru yang dikembangkan untuk menggali potensi karyawan disebuah perusahaan. Metode ini adalah hasil dari sebuah rekayasa <em>mindset </em>untuk memadukan kekuatan pikiran (Rasional) dan Hati nurani (Metafisika).</p>\r\n\r\n<p>Setiap diri karyawan pasti memiliki kelebihan dan kekurangan. Tidak ada manusia yang diciptakan tanpa <em>power knowledge</em>. Menggali potensi karyawan dengan metode kecerdasan buatan (AI) merupakan teknik terbarukan yang dikembangkan untuk menemukan jati diri karyawan dalam bekerja. Mereka akan dipandu dalam tiga konspirasi, yakni <em>&ldquo;siapa anda?, apa tujuan bekerja?, </em>dan <em>apa arti dari sebuah pekerjaan?&rdquo;</em>.</p>\r\n\r\n<p>Kecerdasan buatan (AI) memiliki banyak kelebihan dibandingkan dengan metode lain. AI memfokuskan pada titik emosional untuk membangkitkan kekuatan perasaan dalam diri seseorang. Karena bakat terpendam akan bisa bekerja dengan diberi rangsangan melalui sebuah peristiwa yang disusun oleh konsep yang matang.</p>\r\n\r\n<p>Begitu banyak orang yang bekerja hanya sekedar bekerja, tidak memperhitungkan waktu, kesempatan, dan kemampuan. Mereka hanya melakukan aktifitas yang sama setiap harinya, bahkan ada sebagian orang yang datang bekerja tanpa tujuan. Inilah yang menjadi faktor terbesar penyebab perusahaan tidak berkembang.</p>\r\n\r\n<p>Target Metode Kecerdasan Buatan (AI) adalah menjadikan karyawan yang produktif dengan teknik komunikasi <em>feeling</em> untuk membentuk karakter karyawan yang mampu menghasilkan karya, bukan penikmat karya sehingga karyawan mampu menjadi versi terbaik dari dalam dirinya.</p>\r\n\r\n<p>Dalam Kecerdasan Buatan (AI) disusun oleh &nbsp;<em>three feeling thoughts </em>yang harus diciptakan oleh seorang pemimpin untuk meregenerasi<em> the strength of employee feelings. &nbsp;</em></p>\r\n\r\n<p><strong><em>1. Method of opening the brain</em></strong><strong>.</strong></p>\r\n\r\n<p style="margin-left:35.45pt;"><em>Method of opening the brain </em>merupakan sebuah metode membuka kecerdasan otak dengan sebuah rekayasa <em>mindset</em>. Hal ini dilakukan dengan media memberi kesempatan pada karyawan untuk menyalurkan ide dan gagasan dalam <em>event</em> progam pengembangan perusahaan. Tidak hanya sebatas itu, tapi karyawan mengaplikasikan secara langsung konsep mereka di lapangan. Dalam hal ini, karyawan tersebut akan merasa bahwa keberadaanya diperusahaan diakui dan memacu <em>mindset</em> untuk menunjukkan bahwa dirinya mampu untuk melakukannya. Dari sini, karyawan akan belajar banyak kesulitan dan pengendalian diri untuk proses perubahan menjadi versi terbaik dari dalam dirinya.</p>\r\n\r\n<p style="margin-left:35.45pt;">Masih dalam <em>line mindset, </em>sebagian besar pemimpin memberikan motivasi yang salah terhadap karyawan perusahaan. Salah satunya adalah &ldquo;membandingkan kesuksesan perusahaan lain menjadi tolak ukur nilai prestasi yang mereka capai&rdquo;. Seolah-olah <em>mindset</em> tersebut benar, namun kenyataannya justru akan melemahkan <em>mindset </em>kepercayaan diri dan mematahkan performa atau <em>passion </em>mereka.</p>\r\n\r\n<p style="margin-left:35.45pt;">Setiap sebuah tim mempunyai seni bekerja dan kapasitas yang berbeda. Rasa kepercayaan antar satu tim adalah kunci dari pencapaian target yang gemilang. Seharusnya yang harus ditanam dalam <em>mindset </em>karyawan adalah &ldquo;Sebesar apapun target yang dicapai, haruslah tetap berdiri optimis dan mempunyai rasa penerimaan yang besar&rdquo;.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan:</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Tanamkan <em>mindset</em> pada karyawan bahwa kecerdasan saja tidaklah cukup untuk membangun perusahaan yang besar. Ada yang lebih besar dari pada itu, ia adalah kekuatan perasaan. Perasaan yang lebih untuk memahami tujuan <em>end working</em>, perasaan yang lebih untuk mencintai pekerjaan dan perasaan yang lebih untuk melakukan penerimaan yang besar ketika diri kecewa karena gagal mencapai target. Tidak semua hal harus diakui diatas kertas putih. Setiap hal punya gaya dan percepatan masing-masing, serta berkembang sesuai waktunya. Jangan biarkan perasaan karyawan larut dalam rasa terburu-buru karena perbedaan titik kesuksesan.</p>\r\n\r\n<p><strong>2. Emotional approach method</strong></p>\r\n\r\n<p style="margin-left:35.45pt;"><em>Emotional approach method</em> adalah konsep pendekatan emosional, untuk menciptakan rasa suka dan bahagia dalam bekerja. Konsep pendekatan emosional ini untuk meningkatkan frekuensi cara berfikir positif serta meremajakan energi.</p>\r\n\r\n<p style="margin-left:35.45pt;">Berfikir positif merupakan salah satu faktor terbesar yang mempengaruhi performa kinerja karyawan.&nbsp; <em>Emotional approach method</em> dilakukan dengan cara menciptakan komunikasi yang baik. Sebenarnya banyak hal yang mampu diciptakan dari sebuah komunikasi. Salah satunya adalah &nbsp;menjalin <em>feelings communication</em> &nbsp;atau dikenal dengan istilah komunikasi perasaan.</p>\r\n\r\n<p style="margin-left:35.45pt;">Dalam riset yang saya lakukan, kebanyakan seorang pemimpin gagal dalam menjalin komunikasi perasaan terhadap karyawan, sehingga menyebabkan buruknya hubungan kerja sama tim. Hal ini tentu tidak menguntungkan bagi perusahaan, karena dapat merusak performa karyawan yang memiliki <em>passion</em> dan potensi yang baik.</p>\r\n\r\n<p style="margin-left:35.45pt;">Selama ini, sebagian besar seorang pemimpin fokus dalam pengembangan dari segi teknis dan mengabaikan <em>development feelings communication</em>. Ini tidaklah buruk sebenarnya, namun hal ini hanya akan memberikan dampak hanya 50% terhadap pengembangan diri karyawan.</p>\r\n\r\n<p style="margin-left:35.45pt;">Perasaan bukan soal fakta, angka maupun buku teori, melainkan tentang sebuah <em>instinct, </em>sebuah pemikiran baru untuk sebuah dorongan dari dalam diri, untuk menjadi sesuatu yang berbeda dari sebelumnya. Berbeda dalam artian sebuah perubahan baru menjadi versi yang lebih baik dari sebelumnya.</p>\r\n\r\n<p style="margin-left:35.45pt;">&ldquo;Makna kehidupan adalah untuk menemukan bakatmu dan tujuan hidup adalah untuk memberikannya&rdquo; Pablo piccaso.</p>\r\n\r\n<p style="margin-left:35.45pt;">Seperti apa yang dikatakan Pablo piccaso, bahwa kehidupan akan menjadi lebih baik ketika diri menemukan bakat dan tujuan. Seperti halnya bekerja, ada tujuan berarti ada alasan untuk merubah pola fikir bagaimana cara bekerja yang baik.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan:</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Seorang pemimpin harus menjadi pribadi <em>open mind, </em>dan menjadi pribadi lebih perhatian dengan menjadi karakter yang lebih sadar untuk mengamati realitas dari pada menjadi penonton. Dalam konteks ini, ada hal yang menjadi garis besar bahwa ada yang menjadi pembatas kesuksesan, ia adalah komunikasi yang buruk. Pemimpin harus menciptakan komunikasi yang baik dari level karyawan paling kecil dengan cara menjadi pendengar yang baik dan menjadi <em>the</em> <em>good respect for employee ideas.</em></p>\r\n\r\n<p><strong><em>3. Find a way to be a winner</em></strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Tidak mudah menjadi pribadi yang menginspirasi diperusahaan, pribadi yang mampu menjadi promotor perubahan. <em>Find a way to be a winner</em>,&nbsp; tentang sebuah perjalanan menuju pribadi pemenang.</p>\r\n\r\n<p style="margin-left:35.45pt;">Terkadang karyawan bekerja dengan <em>mindset </em>yang salah. Mereka hanya berfikir bagaimana caranya mendapatkan uang saja dan mengabaikan rasa produktifitas.</p>\r\n\r\n<p style="margin-left:35.45pt;">Banyak karyawan bekerja dengan <em>mindset</em> yang merelakan mimpinya, memilih untuk bekerja rata-rata, dan cara bekerja yang gampang. Itulah salah satu menjadi faktor terbesar yang membuat perusahaan tidak berkembang. Salah satu hal yang akan membuat perubahan yang besar adalah merevolusi sudut pandang karyawan dalam etika bekerja.</p>\r\n\r\n<p style="margin-left:35.45pt;">Seperti yang dikatakan Wayne Dyer, terkadang perlu mengubah cara pandang terhadap sesuatu, maka sesuatu yang kita lihat akan berubah.</p>\r\n\r\n<p style="margin-left:35.45pt;">AI bekerja dari segi perasaan untuk mendorong melahirkan potensi yang baru. Ada tiga hal yang akan merubah sudut pandang karyawan dalam pekerjaannya yakni waktu, alasan dan selamanya.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Waktu</strong>, seberapa jauh diri untuk menjelajah dan menemukan tingkat kepercayaan, harga diri, dan kesadaran&nbsp; yang baru. C.S Lewis berkata, &ldquo; Dirimu tidak mempunyai jiwa, tapi dirimu lah jiwa itu sendiri dan jiwa dirimulah yang memiliki tubuh&rdquo; . Ketika <em>mindset </em>perasaan kita bekerja untuk menyadari bahwa diri ini abadi, kekal, penuh pengetahuan, penuh kebahagiaan dan hidup dari ruang dimana kita mampu menerangi seluruh dunia, saat itulah diri ini menjadi seorang pemenang.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Alasan</strong>, sekuat apapun tantangan pekerjaan yang anda lalui, pasti anda akan menemukan satu titik alasan untuk bertahan, bahkan memicu diri untuk berevolusi menjadi sesuatu yang besar meski mengorbankan segalanya, dan mungkin alasannya adalah orang-orang yang anda cintai.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Selamanya</strong>, tidak akan ada kata akhir dalam sebuah pekerjaan. Seorang karyawan sejati akan terus berkarya meski diri mereka terbuang. Mereka akan hanya memikirkan bagaimana caranya menciptakan karya di perusahaan. &nbsp;</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Dalam target pencapaian perusahaan terkadang banyak sekali hal-hal yang tidak tercapai. Seorang pemimpin harus mengajarkan pada karyawan bahwa tidak semua pencapaian harus ditentukan oleh angka, karena dalam kegagalan, akan menemukan kekuatan terbesar dalam diri. Sukses tidak dibangun diatas kesuksesan. Sukses dibangun diatas kegagalan, atas rasa frustasi, dan atas ketakutan yang harus dikalahkan. Tanamkan <em>mindset</em> rasa kepercayaan diri yang tangguh pada karyawan, bahwa saat gagal bukan berarti semua telah berakhir namun disitulah diri sedang diarahkan ke dalam sesuatu yang lebih baik. (Dhanavya_Enero,Okta_UMM)</p>\r\n\r\n<p style="margin-left:35.45pt;">&nbsp;</p>\r\n\r\n<p style="margin-left:18.0pt;">Sumber gambar : www.techno.id</p>\r\n\r\n<p style="margin-left:18.0pt;">Situs youtube jay shetty</p>\r\n	0	0	2019-03-29 16:39:53	artikel_menjadi_karyawan_terbaik.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kecerdasan-buatan-ai-inspirasi-menjadi-karyawan-versi-terbaik
23	B	Gelar NSS, Ini Beberapa Solusi Ikagi-AGI untuk Industri Gula Tanah Air	<div class="gs" style="margin: 0px; padding: 0px 0px 20px; width: 1292.01px; color: rgb(34, 34, 34); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: medium;">\r\n<div>\r\n<div class="ii gt" id=":pu" style="font-size: 0.875rem; direction: ltr; margin: 8px 0px 0px; padding: 0px; position: relative;">\r\n<div class="a3s aXjCH " id=":oi" style="overflow: hidden; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: small; line-height: 1.5; font-family: Arial, Helvetica, sans-serif;">\r\n<div dir="auto">\r\n<p dir="ltr" style="text-align: justify;">Industri gula di tanah air menghadapi era yang semakin menantang. Untuk menghadapinya, para ahli gula yang bergabung dalam Asosiasi Gula Indonesia (AGI) dan Ikatan Ahli Gula Indonesia (IKAGI) merumuskan beberapa solusi yang dibeberkan dalam National Sugar Summit (NSS) 2019 di Ballroom Convex Grand City, 12-13 Desember 2019.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Beberapa rumusan yang dibahas dalam pertemuan dua hari diantaranya penyusunan kembali peta jalan pengembangan industri gula nasional disertai instrumen&nbsp; pendukungnya yang kondusif, lintas sektoral dan terintegrasi, terutama menyangkut aspek produksi, distribusi, kelembagaan, pendanaan dan hilirisasi.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"></p>\r\n\r\n<p dir="ltr" style="text-align: justify;">&quot;Hal lain adalah perlu adanya kemudahan pendanaan dari perbankan, penyediaan teknologi budidaya, penyediaan pupuk dan benih tebu unggul, bantuan bongkar ratoon,&nbsp; penyuluhan, perbaikan infrastuktur jalan, jembatan dan saluran irigasi untuk mendukung pengembangan tebu rakyat,&quot; kata Ketua IKAGI&nbsp;<a href="tel:20192022" style="color: rgb(17, 85, 204);" target="_blank">2</a>019-2022, Dwi Satriyo Annurogo, Kamis (12/12/2019).</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Pemerintah sebelumnya menargetkan bisa melakukan peningkatan produksi gula secara bertahap hingga mencapai swasembada. Namun hingga saat ini produksi gula nasional belum menunjukkan perkembangan yang menggembirakan.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">&ldquo;Tantangan yang dihadapi industri gula kian dinamis. Kita dihadapkan pada permasalahan-permasalahan terkait pengembangan industri gula (baik di sisi on farm, off farm, maupun diversifikasi), biaya produksi, dan lain-lain,&quot; ujar Dwi yang juga Direktur Utama PTPN X.&nbsp;</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"></p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Diharapkan melalui pembahasan tersebut bisa dirumuskan solusi terbaik untuk permasalahan yang dihadapi industri gula nasional. (Red1, CIN_Sekper)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n	1	0	2019-12-13 14:55:15	web_nss.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/gelar-nss-ini-beberapa-solusi-ikagi-agi-untuk-industri-gula-tanah-air
17	B	Dirut PTPN X Kunjungi Lahan Agroforestry Tebu di Bojonegoro	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">BOJONEGORO</span>&nbsp;&ndash; Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo, lakukan kunjungan ke Lahan Perum Perhutani BKPH Celangap, KPH Bojonegoro pada Kamis (3/10). Kunjungan ini menindaklanjuti adanya kerjasama penggunaan dan pemanfaatan kawasan hutan untuk kegiatan budidaya tanaman tebu dengan Perum Perhutani yang telah berlangsung sejak Oktober 2017.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Kerjasama yang bertujuan untuk mendukung ketahanan pangan ini terkait di antaranya pengerjaan lahan Perum Perhutani untuk kegiatan penanaman Agroforestry tebu seluas 5.661,5 Ha yang mana telah mendapat persetujuan Kementerian Lingkungan Hidup dan Kehutanan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Seluas 52,3 Ha lahan Perhutani di kawasan KPH Bojonegoro akan ditanami tebu dan dikelola langsung oleh Pabrik Gula (PG) Djombang Baru. Lahan ini nantinya akan ditanami varietas unggul baru, dengan potensi produksi 80 Ton/ Ha dan rendemen 9%.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kerjasama terkait pengerjaan lahan Agroforestry tebu ini sebagai upaya dari PTPN X untuk memastikan keajegan pasok BBT ke pabrik gula pada masa giling tahun 2020,&rdquo;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya di tahun 2019 ini akan ada pengerjaan seluas 423 Ha. Sebelumnya, lahan yang telah dikerjakan berada di kawasan KPH Jombang seluas 108 Ha yang dikelola oleh PG Lestari. Selanjutnya, akan ada pengerjaan lahan di kawasan KPH Mojokerto seluas 253 Ha yang akan dikelola oleh PG Gempolkrep. (Ella_Unair, CIN_Sekper)</p>	0	0	2019-10-22 07:20:41	agrofore1.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
21	B	PT Mitratani Dua Tujuh Ekspor Sweet Potatoes ke Jepang	<p style="text-align: justify;">PT Mitratani Dua Tujuh, anak perusahaan PT Perkebunan Nusantara (PTPN) X kian mengembangkan pasar ekspornya. Kali ini untuk pertama kali PT Mitratani Dua Tujuh mengekspor <em>sweet potatoes </em>ke Jepang sebanyak 23 ton.<em> Launching</em> ekspor tersebut dihadiri langsung oleh Direktur Operasional, Aris Toharisman, Senin (16/12).</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Adanya ekspor ini diharapkan mampu memberikan nilai tambah bagi PT Mitratani Dua Tujuh dan juga langkah awal untuk ekspor selanjutnya,&rdquo; ungkap Aris.</p>\r\n\r\n<p style="text-align: justify;">Hingga tahun 2020, direncanakan PT Mitratani Dua Tujuh akan rutin ekspor sebesar 300 ton ke Jepang. Ke depannya, angka ekspor ini akan terus meningkat karena kebutuhan pasar Jepang sendiri mencapai 35.000 ton per tahunnya.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, Aris juga menghimbau untuk memanfaatkan lahan-lahan <em>idle </em>milik PTPN X dalam hal produksi produk-produk <em>frozen vegetables</em>. Sehingga, lahan <em>idle</em> dapat teroptimalisasi dengan maksimal.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, PT Mitratani Dua Tujuh telah merambah beberapa negara untuk produk <em>frozen vegetables</em> lainnya yaitu edamame, okra, dan lain-lain. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2019-12-16 22:32:18	WhatsApp_Image_2019-12-16_at_15.27.38.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pt-mitratani-dua-tujuh-ekspor-sweet-potatoes-ke-jepang
22	B	IGG Kunjungi PTPN X	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X mendapatkan kunjungan dari Industri Gula Glenmore (IGG) di Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya (16-17/12). Kunjungan ini dalam rangka studi banding mengenai penerapan <em>Quality Assurance </em>di Pabrik Gula milik PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas kunjungan ke PTPN X. Semoga kunjungan hari ini dapat memberikan pengetahuan dan ilmu yang bermanfaat bagi kedua belah pihak tentunya dalam bidang QA baik <em>on farm</em> maupun <em>off farm</em>,&rdquo; ujar Kepala Urusan <em>Off Farm</em> QA PTPN X, Budi Cahyono.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan ini berupa <em>sharing session</em> dan tanya jawab mengenai proses <em>on farm</em> dan <em>off farm </em>yang diikuti oleh 5 perwakilan dari IGG dan kepala urusan QA Kantor Pusat PTPN X. Hal-hal yang dibahas antara lain proses pengolahan gula dari awal tebu masuk ke pabrik hingga proses pengiriman gula serta SOP dari tiap-tiap prosesnya. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-12-16 20:37:47	WhatsApp_Image_2019-12-16_at_13.28.05.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/igg-kunjungi-ptpn-x
24	B	PTPN X Bekerjasama dengan PT PP (Persero) Tbk. Gelar Pelatihan Petani Tebu Rakyat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X bekerjasama dengan PT Pembangunan Perumahan (Persero) Tbk. mengadakan pelatihan untuk para petani tebu milenial di Klub Bunga Butik Resort, Batu (5/12).</p>\r\n\r\n<p style="text-align: justify;">Dibuka langsung oleh Direktur Komersil PTPN X, Slamet Djumantoro, pelatihan ini diikuti oleh 35 orang petani muda tebu rakyat binaan pabrik gula PG Modjopanggoong. Menurut Slamet, industri gula membutuhkan sentuhan dan perhatian para generasi muda. Karena di tangan generasi mudalah perkembangan industri tebu ke depan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Anda semua merupakan pahlawan bagi Ketahanan Pangan Indonesia ke depan. Untuk itu diharapkan dengan pelatihan ini akan mampu menggerakkan minat generasi muda untuk lebih proaktif lagi sehingga dapat meningkatkan daya saing yang dimiliki, &quot; jelasnya.</p>\r\n\r\n<p style="text-align: justify;">Dijelaskan, bahwa masih banyak potensi yang belum digali dari industri tebu. Diharapkan dengan keterlibatan generasi muda yang mempunyai kreativitas semua potensi industri tebu dapat dimanfaatkan.</p>\r\n\r\n<p style="text-align: justify;">Di samping itu, Panji Decca Dunianto, Manajer Unit Program Kemitraan dan Bina Lingkungan (PKBL) PT PP (Persero) Tbk mengatakan bahwa&nbsp;bantuan yang diberikan merupakan bentuk kepedulian perusahaan terhadap lingkungan sekitar dan kali ini diperuntukkan untuk pelatihan bagi para petani milenial.</p>\r\n\r\n<p style="text-align: justify;">&quot;Diharapkan dengan adanya pelatihan ini sinergi antara PT PP dan PTPN X ini maka dapat meningkatkan kinerja dari kedua belah pihak dan dapat menjadi motor penggerak bagi para petani milenial untuk dapat meningkatkan daya saing yang ada &quot; jelas Panji.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Dalam pelatihan ini, beberapa materi pun diberikan antara lain motivasi dan spirit usaha, budidaya dan aplikasi, mekanisasi tanaman tebu, <em>core sampler</em>, <em>e-farming,</em> dan rendemen. (Red2, PUT_Sekper)</p>\r\n	0	0	2019-12-05 17:57:58	5de87d25-d9c8-4477-af12-1718e3e14fb4-web.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-bekerjasama-dengan-pt-pp-persero-tbk-gelar-pelatihan-petani-tebu-rakyat
50	A	Ethanol Fuel Grade, Alternatif Baik Solusi Global Warming	<p style="text-align: justify;">Kebutuhan konsumsi Energi Baru Terbarukan (EBT) di Indonesia terus mengalami kenaikan seiring dengan berkurangnya cadangan bahan bakar fosil. Pada tahun 2025, kebutuhan akan EBT ditargetkan mencapai 23% dari total energi yang dibutuhkan (KESDM, 2015). Disisi lain kebutuhan energi di Indonesia khususnya bahan bakar minyak (BBM) terus mengalami kenaikan dari tahun ke tahun. Tingkat konsumsi rata-rata meningkat 6% setiap tahunnya, sementara cadangan dan produksi BBM mengalami penurunan 10%, setiap tahunnya (Kuncahyo dkk., 2013).</p>\r\n\r\n<p style="text-align: justify;">Salah satu dampak terbesar dari selalu digunakannya bahan bakar fosil adalah <em>global warming</em>. Pada tahun 2010 ada lebih dari 1 miliar kendaraan bermotor diseluruh dunia dan diproyeksikan akan terus mengalami peningkatan. Hal ini tentunya meningkatkan kadar emisi CO<sub>2</sub>&nbsp;dipermukaan bumi.</p>\r\n\r\n<p style="text-align: justify;">Karbondioksida di atmosfer mencapai level tertinggi tahun 2016. Kondisi ini membuat suhu bumi semakin panas dan berbahaya buat generasi mendatang.&nbsp;Hal ini disampaikan badan World Meteorological Organization (WMO). Menurut laporan tersebut, kadar&nbsp;karbondioksida mencapai rekor tertinggi dengan konsentrasi CO<sub>2</sub>&nbsp;di angka 403,3 bagian per juta (ppm) pada tahun&nbsp;2016, naik dari angka 400 bagian per juta (ppm) di tahun 2015. &ldquo;Tanpa upaya mengurangi kadar CO<sub>2</sub>&nbsp;dan emisi gas rumah kaca, kita akan berada di kondisi membahayakan akhir abad ini, melebihi target yang juga kita ingin capai dari kesepakatan Paris,&rdquo; ungkap Petteri Taalas, Sekjen WMO dalam pernyataan resminya seperti dilansir dari&nbsp;CNBC.</p>\r\n\r\n<p style="text-align: justify;"><em>Global warming</em> bisa menjadi salah satu penyebab masalah global yang kompleks apabila tidak ada langkah yang positif dan cara penanggulangan yang tepat. Dampak yang paling berbahaya dari <em>global warming </em>adalah lapisan ozon mulai menipis dimana fungsi utamanya menyelimuti bumi. Oleh karena itu pemerintah menyusun berbagai opsi pemanfaatan EBT, salah satunya adalah dengan memanfaatkan Bahan Bakar Nabati (BNN). Salah satu jenis BBN berbasis&nbsp;<em>biofuel</em>&nbsp;yang sudah diterapkan pemerintah sampai saat ini adalah bieotanol (BPPT, 2015).</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Ethanol merupakan terobosan bioteknologi yang bisa menjadi alternatif bahan bakar energi terbarukan yang ramah lingkungan. Ethanol dikembangkan dengan teknologi modern, salah satunya ethanol dari pengolahan bahan dasar molasses (tetes tebu) hingga tingkat kemurnian mencapai 99.5%.</p>\r\n\r\n<p style="text-align: justify;">Ethanol fuel grade 99.5% merupakan bio-energi yang mampu menjadi pengganti bahan bakar fosil. Salah satu keunggulan bahan bakar etanol yang paling jelas adalah</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Bahan bakar etanol merupakan sumber energi terbarukan, yang berarti bahwa bahan bakar etanol tidak terbatas seperti bahan bakar fosil.</li>\r\n\t<li style="text-align: justify;">Pembakaran etanol lebih bersih daripada bahan bakar fosil yang berarti mengurangi emisi gas rumah kaca. Hal ini merupakan keuntungan etanol yang paling signifikan bagi lingkungan dibandingkan dengan bahan bakar fosil.</li>\r\n\t<li style="text-align: justify;">Bioethanol memiliki nilai oktan yang lebih tinggi dengan nilai (110)</li>\r\n\t<li style="text-align: justify;">Bioethanol memiliki kadar emisi yang rendah, penurunan emisi NO sebanyak 25%-32%, penurunan emisi VOC sebanyak 20%, dan penurunan emisi CO 12%-24%. Emisi CO2 juga lebih rendah, karena setiap mol bioethanol hanya menghasilkan 2 mol CO2. Berbeda dengan bensin yang dapat menghasilkan hingga 8 mol CO2.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Di era globalisasi sekarang sudah ada beberapa jalan keluar untuk hal ini, yang kita butuhkan sekarang adalah kemauan politik global dan respons akan kondisi darurat dan genting saat ini. Faktanya bahwa <em>bio-fuel grad</em>e ethanol mampu mengurangi kadar CO2 dipermukaan bumi apabila digunakan secara maksimal dalam segi bahan bakar, sehingga ethanol bisa menjadi salah satu alternatif yang baik untuk menjadi solusi mengatasi permasalahan isu global warming.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Referensi:</p>\r\n\r\n<p style="text-align: justify;">Rahman Indra.<strong>&rdquo;</strong>&nbsp;Kadar Karbon Dioksida di Atmosfer Capai Level Tertinggi&rdquo;.www.cnnindonesia.com. 31 November 2017.&nbsp;19 Desember 2018.https://www.cnnindonesia.com/gaya-hidup/20171031142925-255-252425/kadar-karbon-dioksida-di-atmosfer-capai-level-tertinggi</p>\r\n\r\n<p style="text-align: justify;">https://en.wikipedia.org/wiki/Alcohol_fuel</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: www.maxmanroe.com</p>\r\n\r\n<p>&nbsp;</p>\r\n	0	0	2019-02-07 16:58:53	gambar_artikel_etanol.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ethanol-fuel-grade-alternatif-baik-solusi-global-warming
25	B	PTPN X Resmikan Hunian Bedah Rumah 	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menunjukkan kepeduliannya kepada masyarakat dengan menyalurkan&nbsp;<em>Corporate Social Responsibility</em>&nbsp;(CSR) melalui program bedah rumah. Acara kali ini merupakan penyerahan secara simbolis rumah yang telah selesai di renovasi kepada pemiliknya, Nursi&rsquo;ah pada Rabu, (4/12). Sebelumnya, PTPN X telah secara resmi memulai proses bedah rumah tersebut yang berada di Desa Kawangrejo, Kecamatan Mumbulsari, Jember pada 30 November lalu.</p>\r\n\r\n<p style="text-align: justify;">Penyerahan kali ini dihadiri oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo didampingi oleh Pejabat Puncak PTPN X dan GM Kebun Ajong Gayasan, Dwi Aprilia Sandi. Kehadiran Direktur Utama PTPN X ini untuk memastikan bahwa kegiatan CSR dalam pengerjaan rumah berjalan sesuai dengan ketentuan yang telah dibuat.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapannya, program bedah rumah dapat memberikan manfaat bagi pemilik rumah. Kehadiran PTPN X dalam acara bedah rumah ini sebagai wujud dari tanggungjawab dan kepedulian terhadap kesejahteraan masyarakat wilayah kerja Kebun Ajong Gayasan,&rdquo; ujar Dwi. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-12-04 20:00:22	IMG_7253.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-resmikan-hunian-bedah-rumah
27	B	Lakukan Restrukturisasi, PTPN X Lakukan Sertijab Pejabat Puncak	<p style="text-align: justify;">Sebagai langkah restrukturisasi, PT Perkebunan Nusantara (PTPN) X melakukan serah terima jabatan pada beberapa posisi pejabat puncak. Restrukturisasi organisasi diharapkan akan memberikan penyegaran dalam atmosfer kerja di PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&rdquo;Kepada pejabat yang baru dilantik saya ucapkan selamat bertugas. Saya harapkan pejabat yang hari ini dilantik bisa bertugas secara professional dan memberikan kontribusi terhadap perusahaan,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi ini menurutnya akan memberikan penyegaran dalam atmoser kerja di PTPN X. Tidak hanya penyegaran semata, restrukturisasi organisasi juga akan memicu penciptaan inovasi-inovasi strategis untuk perkembangan korporat ke depan.</p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi organisasi ini berdampak pada jumlah pejabat puncak yang sebelumnya 16 posisi menjadi 13 posisi. &rdquo;Berkurangnya jumlah ini tentunya akan membuat korporasi menjadi lebih lincah dan sinergi lebih kuat dalam upaya pencapaian target perusahaan,&rdquo; ujarnya.</p>\r\n\r\n<p style="text-align: justify;">Dalam kesempatan tersebut Direktur Utama PTPN X juga menyampaikan ucapan terima kasih dan apresiasi kepada dua pejabat puncak yang sudah memasuki masa bebas tugas yaitu Alan Purwandiarto dan Benny Basuki Suryo.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Berikut nama-nama 13 pejabat puncak di Kantor Pusat yang dilantik:</p>\r\n\r\n<ul>\r\n\t<li>Moh.&nbsp;Afif Fauzi sebagai&nbsp;Plt. Kepala Satuan Pengawasan Intern</li>\r\n\t<li>Arif Suhariadi sebagai&nbsp;Kepala Bagian Keuangan dan Akuntansi</li>\r\n\t<li>Herman sebagai&nbsp;Kepala Bagian SDM dan Umum</li>\r\n\t<li>Tri Ari Sulistyawan sebagai&nbsp;Kepala Bagian Hukum dan Pengembangan Aset</li>\r\n\t<li>Wakhyu Priyadi Siswosumarto sebagai&nbsp;Kepala Bagian Perencanaan Strategis</li>\r\n\t<li>Edwin Risananto sebagai&nbsp;Kepala Bagian Pengadaan Barang dan Jasa</li>\r\n\t<li>Ramlan Silvester Sinaga sebagai&nbsp;Pjs. Kepala Bagian Teknik dan Pengolahan</li>\r\n\t<li>Arisson Sianipar sebagai&nbsp;Pjs. General Manager PG Kremboong</li>\r\n\t<li>Agus Mihandoko sebagai&nbsp;General Manager PG Gempolkrep</li>\r\n\t<li>Erwin Budianto sebagai&nbsp;Pjs. General Manager PG Djombang Baru</li>\r\n\t<li>Marshal Gerard Pattiasina&nbsp;sebagai&nbsp;General Manager PG Lestari</li>\r\n\t<li>Bambang Hari Nugroho sebagai&nbsp;General Manager PG Pesantren Baru</li>\r\n\t<li>Miftakhul Munir sebagai&nbsp;General Manager PG Modjopanggoong.</li>\r\n</ul>\r\n\r\n<p><span style="text-align: justify;">(Red1, CIN_Sekper)</span></p>\r\n	0	0	2019-12-02 18:48:24	WhatsApp_Image_2019-12-02_at_11.19.28.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/lakukan-restrukturisasi-ptpn-x-lakukan-sertijab-pejabat-puncak
51	A	9-Box Model Untuk Pengembangan Potensi dan Kinerja Karyawan	<p style="text-align: justify;">Terkadang hasil asesmen karyawan tidak sesuai dengan kinerja yang diinginkan perusahaan. Karyawan yang memiliki hasil asesmen baik, dalam beberapa kasus melaksanakan tanggung jawabnya kurang efektif ataupun sebaliknya. Sehingga menjadi pertanyaan apakah proses asesmen kurang memberikan gambaran karyawan yang sesuai?</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Pada dasarnya asesmen memang tidak mengukur kinerja, melainkan potensi karyawan. Namun asesmen memang diperlukan untuk mencari karyawan yang sesuai dengan kemampuannya, sehingga diharapkan menjadi <em>good</em> <em>performer</em> di perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Sebagai upaya untuk menjembatani hasil asesmen dengan kinerja, maka diperlukan alat atau metode untuk menilai kinerja karyawan serta mengembangkan potensinya untuk perusahaan. Salah satunya dengan <em>9-box matrix</em>. Metode ini dikembangkan pertama kali oleh McKinsey pada tahun 1960-an untuk membantu menilai potensi individu dalam bisnis milik GE.</p>\r\n\r\n<p style="text-align: justify;">Matriks ini bertujuan mengevaluasi kinerja dan merencanakan karyawan untuk &nbsp;menempati jabatan dan peran-peran strategis di perusahaan sesuai potensinya. Sehingga dimensi 9-box ada 2 (dua) yaitu performa karyawan pada masa lalu dan potensi karyawan di masa mendatang. Performa diwakili oleh sumbu X, sedangkan potensi diwakili oleh sumbu Y. Kombinasi dari sumbu X dan Y akan menentukan posisi suatu individu dan menempatkan individu pada kuadran yang berbeda-beda. Pada kuadaran kanan atas, kecenderungan nilai X dan Y akan tinggi, maka individu diidentifikasikan sebagai kandidat yang berpotensi tinggi dalam rencana suksesi perusahaan atau <em>succession</em> <em>planning</em> <em>candidate</em>.</p>\r\n\r\n<p style="text-align: justify;">Dalam penggunaannya, terdapat beberapa tahapan yang harus dilakukan antara lain:</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Pelajari terlebih dahulu&nbsp; pengunaan metode 9-box dengan bantuan HR, independen konsultan dan pimpinan yang bertanggung jawab dalam <em>sucession</em> <em>planning</em></li>\r\n\t<li style="text-align: justify;">Rapat awal untuk memastikan kesamaan persepsi penggunaan 9-box sehingga masing-masing penilai memiliki pandangan yang sama</li>\r\n\t<li style="text-align: justify;">Dapatkan informasi-informasi tambahan terkait dengan individu yang dinilai, diluar penilaian formal</li>\r\n\t<li style="text-align: justify;">Gunakan <em>benchmark</em> untuk membandingkan hasil penilaian anda dengan hasil penilaian yang sudah ada dari perusahaan lain yang menerapkan 9-box</li>\r\n\t<li style="text-align: justify;">Diskusikan secara inten kandidat berdasar hasil penilaiannya dan coba tempatkan kandidat pada kuadran yang berbeda untuk mengetahui peluang lainnya</li>\r\n\t<li style="text-align: justify;">Diskusikan apa saja kebutuhan untuk pengembangan perusahaan dan tindak lanjut bagi karyawan yang dinilai</li>\r\n\t<li style="text-align: justify;">Evaluasi hasil penilaian secara berkala untuk mengetahui tingkat perkembangan karyawan</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Dalam <em>talent</em> <em>management</em>, peran 9-box&nbsp; membantu perusahaan untuk memfokuskan kepada siapa fokus pengembangan individu diberikan. Penggunaan 9 box juga mengurangi penilaian secara subyektif membantu penerapan kriteria karyawan dan <em>low</em> <em>cost</em>. (Ariel_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber:</p>\r\n\r\n<p style="text-align: justify;">McCarthy, D, 2018,Thebalancecareers.com: The Nine-Box Matrix for Succession Planning and Developmnet</p>\r\n\r\n<p style="text-align: justify;">Kusnadi, M, 2015, SWA: Does Talent Assesment Matter?</p>\r\n\r\n<p>&nbsp;</p>\r\n	0	0	2018-09-10 16:45:20	pengembangan_potensi.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/9-box-model-untuk-pengembangan-potensi-dan-kinerja-karyawan
52	A	Sinergi Enero-Mitra Tani 27: Aplikasi Pupuk Hayati Enero untuk Peningkatan Produksi Edamame (Model RAK)	<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="CA" style="font-family: Arial, sans-serif;">Kedelai Edamame merupakan produk unggulan dan berkualitas dari PT Mitra Tani Dua Tujuh (Mitra Tani 27) yang pangsa pasarnya tidak hanya untuk konsumsi domestik melainkan ekspor. Untuk mencapai kualitas yang baik maka perlu diperhatikan sistem budidaya sampai proses produksi dan pengolahannya. Terutama untuk aspek budidaya, selama ini Mitra Tani 27 masih menggunakan <i>full</i> pupuk anorganik dalam sistem budidayanya. Hal ini baik dalam meningkatkan produktivitas tanaman jangka pendek, namun menurunkan kualitas tanah dalam jangka panjang. Berdasarkan hal ini, diperlukan upaya pembenahan tanah sekaligus pengurangan pupuk anorganik dengan pemanfaatan pupuk hayati dalam sistem budidaya untuk mencapai hasil yang optimal.</span></span><span lang="CA" style="font-family: Arial, sans-serif;"></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span style="font-family: Arial, sans-serif;">Di sisi lain, PT Energi Agro Nusantara (Enero) sebagai pabrik bioethanol memiliki hasil samping </span><i style="color: black; font-family: Arial, sans-serif;">vinasse</i><span style="font-family: Arial, sans-serif;"> yang diolah menjadi pupuk hayati cair. Dalam rangka mengetahui efektivitas pupuk hayati tersebut maka diperlukan kerjasama penelitian antara Mitra Tani 27 dan Enero sebagai bentuk sinergi anak perusahaan dibawah PT Perkebunan Nusantara X (PTPN X). Selanjutnya penelitian dilaksanakan untuk mengetahui efektivitas pemupukan Pupuk Hayati enero (PHE) terhadap produksi kedelai edamame.</span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span style="font-family: Arial, sans-serif;"></span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="CA" style="font-family: Arial, sans-serif;">Penelitian dilaksanakan di lahan </span><span lang="CA" style="font-family: Arial, sans-serif;">sewa Mitra Tani 27 pada musim tanam 2018 dengan tanaman kedelai edamame dengan varietas EO54. Aplikasi telah dilaksanakan pada bulan Januari &ndash; April 2018, dengan durasi &plusmn; 70 hari.&nbsp; Luas total plot percobaan </span><span lang="CA" style="font-family: &quot;Times New Roman&quot;, serif;">&plusmn;</span><span lang="CA" style="font-family: Arial, sans-serif;"> 0,1 ha. Model penelitian dalam bentuk Rancangan Acak Kelompok (RAK), dimana dicoba berbagai perlakuan antara lain: (1) pupuk terpadu, enero + pupuk anorganik 80% (P1), (2) pupuk terpadu, enero + pupuk anorganik 75% (P2) dan pupuk terpadu, (3) enero up + pupuk anorganik 75% (P3), serta kontrol (perlakuan eksisting). Perlakuan dilakukan dengan 30 ulangan dengan jarak tanam 10 cm x 20 cm dan luas bedengan 10 m x 1 m. Proses pemupukan pada perlakuan dengan cara aplikasi pengocoran dengan dosis 16 liter per bedeng, sedangkan kontrol dengan cara pemupukan pada umumnya dengan ditabur diatas tanah.</span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">Dari hasil penelitian vegetatif dan generatif didapatkan hasil secara umum, pupuk terpadu enero mampu meningkatkan produksi tanaman. Untuk analisa vegetatif, didapatkan hasil yang tidak berbeda nyata antara beragam perlakuan dan kontrol. Sedangkan untuk analisa generatif dan produksi, pupuk terpadu enero + anorganik memberikan rerata produksi sebesar 12.040 kg dibanding pupuk kontrol 10.880 kg. Dengan kata lain produksi meningkat 10,66%. Sedangkan untuk permintaan ekspor, produksi edamame dengan perlakuan pupuk enero + anorganik mencapai 7.108 kg, sedangkan kontrol hanya 5.655 kg. Dengan kata lain produksi ekspor meningkat 25,69%.</span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">Ditinjau dari analisa biaya usaha taninya, terdapat selisih yang signifikan antara perlakuan dan kontrolnya. Pupuk terpadu, enero + anorganik (P3) memiliki analisa biaya produksi per unit kg paling rendah sebesar Rp. 8.267/kg, sedangkan kontrol Rp. 9.702/kg. Terdapat penurunan biaya produksi sebesar 17,36%. Dari hasil tersebut, pemupukan terpadu dengan pupuk enero dan pengurangan dosis pemupukan anorganik dapat dikatakan memberikan dampak yang lebih baik. Untuk tindak lanjut, diperlukan penelitian dalam skala lebih luas yaitu demplot untuk mengetahui perbedaan yang signifikan. (Ariel_Enero, CIN_Sekper)</span></p>\r\n\r\n<p class="MsoNormal" style="margin: 6pt 0cm 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="AF" style="font-size:10.0pt;line-height:115%;font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-ansi-language:AF">Sumber:</span></span><span lang="AF" style="font-size:10.0pt;line-height:115%;font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-ansi-language:AF"></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="AF" style="font-size:9.0pt;line-height:115%;mso-ansi-language:\r\nAF;mso-fareast-language:IN">Mitra Tani 27, 2018, Jember, Laporan Research &amp; Development, Laporan Penelitian &amp; Pengembangan Bidang: Budidaya: Aplikasi Pupuk enero untuk Meningkatkan Pertumbuhan dan Produksi Edamame</span></span></p>\r\n	0	0	2018-08-27 21:14:20	PHE.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sinergi-enero-mitra-tani-27-aplikasi-pupuk-hayati-enero-untuk-peningkatan-produksi-edamame-model-rak
53	A	5 Bagian Waktu, Mindset Membangun Mimpi	<p style="text-align: justify;">Setiap orang pasti menginginkan dirinya untuk menjadi orang sukses dalam hidupnya. Dan untuk menjadi sukses sendiri, membutuhkan kerja keras, modal yang tidak sedikit dan tentunya sistem manajemen waktu yang baik.</p>\r\n\r\n<p style="text-align: justify;">Salah satu hal yang tidak bisa diulang kembali didunia ini adalah waktu. Sehingga anda butuh sistem manajemen waktu yang baik untuk semua agenda harian. Waktu merupakan elemen penting dalam mengakses sebuah impian besar dalam hidup. Jadi anda harus mempunyai sistem manajemen waktu yang professional bila anda ingin benar-benar ingin menjadi orang sukses dimasa depan.</p>\r\n\r\n<p style="text-align: justify;">Gunakan waktu untuk 5 hal, sebagai inspirasi anda untuk membangun sebuah kesuksesan di masa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>1. Take your time to make a small note about your dreams.</strong></p>\r\n\r\n<p style="text-align: justify;">Impian yang besar butuh persiapan yang matang. Anda perlu lebih awal untuk membuat perancangan sistem tentang tujuan anda dimasa yang akan datang. Dengan membuat catatan kecil, berarti anda sudah mempunanyai garis&nbsp;<em>start</em>&nbsp;untuk menuju kesuksesan. Sejatinya pecapaian sukses yang besar berawal dari sebuah mimpi.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>2.&nbsp;Take your time to visit new places.</strong></p>\r\n\r\n<p style="text-align: justify;">Setiap tempat mempunyai&nbsp;<em>history</em>&nbsp;dan keindahan yang berbeda. Keesotikan sebuah tempat adalah sumber inspirasi yang baik. &nbsp;Dengan mengunjungi banyak tempat, secara perlahan alam akan mengubah arah&nbsp;<em>mindset</em>&nbsp;yang anda miliki. Tentunya ini sangatlah baik untuk perkembangan emosional. Karena emosional yang baik akan mempengaruhi tingkat&nbsp;<em>respect social</em>&nbsp;terhadap hidup anda. Dizaman globalisasi sekarang,&nbsp;<em>respect social</em>&nbsp;menjadi salah satu kunci yang dominan untuk memperoleh kehidupan yang baik. Jika hal itu sudah sudah didapatkan, maka akan mudah membangun akses untuk impian anda dimasa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>3.&nbsp;Take your time to get to know more people.</strong></p>\r\n\r\n<p style="text-align: justify;">Dengan mengenal banyak orang, anda akan mempunyai jaringan yang luas untuk&nbsp;<em>exploring</em>&nbsp;banyak hal. Anda akan lebih mudah untuk mengakses informasi yang anda inginkan. Modal yang besar saja tidak akan cukup bila ingin menciptakan sesuatu yang besar. Anda memerlukan jangakauan informasi yang akurat untuk membangun strategi. Disisih lain, dengan mengenal lebih banyak orang, maka anda akan mempunyai banyak cerita baru untuk menambah semangat membangun mimpi.</p>\r\n\r\n<p style="text-align: justify;"><strong>4.Take your time to write.</strong></p>\r\n\r\n<p style="text-align: justify;">Buatlah tulisan yang menginspirasi banyak orang. Dengan menulis, maka dunia akan mengenalmu lebih baik.</p>\r\n\r\n<p style="text-align: justify;"><strong>5.&nbsp;Take time for your hobby</strong>.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;&rdquo;Pilihlah pekerjaan yang Anda sukai,&nbsp;dan Anda tidak akan perlu&nbsp;bekerja seumur&nbsp;hidup Anda.&rdquo;&nbsp;Kebanyakan dari kita melakukan pekerjaan yang tidak kita sukai. Akibatnya kita terus merasa tertekan dengan pekerjaan dan merasa bahwa pekerjaan kita semakin hari semakin sulit. Jika Anda tidak menginginkan keadaan terjebak pada pilihan yang salah, Anda sebaiknya mulai berjuang untuk pekerjaan yang Anda cintai, bukan pekerjaan yang mau menerima Anda apa adanya. Karena dengan bekerja pada hal yang Anda cintai, Anda tidak akan merasa tertekan. Bahkan Anda seolah merasa dibayar untuk melakukan hobi&rdquo;. Dari kutipan karya&nbsp;&nbsp;<em>Conficius</em>&nbsp;tersebut, maka luangkanlah waktu untuk hobi anda. Bisa jadi hobi anda adalah awal dari impian besar untuk kesuksesan yang sejati. (dnv)</p>\r\n	0	0	2018-08-27 18:13:51	5b837a5b-6984-4b42-add0-10b0e3e14fb4-dream.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/5-bagian-waktu-mindset-membangun-mimpi
28	B	2020, Holding Perkebunan Targetkan PTPN Gula Sumbang Laba Rp 53 Milliar	<p style="text-align: justify;">Di penghujung tahun 2019, Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero) telah melakukan evaluasi kinerja seluruh PTPN gula. Banyak hal yang harus diperbaiki agar kinerja di musim giling tahun 2020 mendatang lebih baik dari kinerja tahun 2019, bahkan Holding Perkebunan Nusantara menargetkan PTPN Gula bisa menyumbang laba sebesar Rp 53 Milliar.</p>\r\n\r\n<p style="text-align: justify;">Direktur Produksi dan Pengembangan Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero), Mahmudi mengungkapkan optimisme di industri gula harus tetap terjaga apapun yang terjadi. Banyak aspek yang mempengaruhi kinerja industri gula bahkan aspek politis pun turut memberi warna. Namun, apapun aspek yang menghadang, industri gula harus terus maju dan berkembang.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kenyataan, kinerja keuangan industri gula dari tahun ke tahun tidak pernah berkontribusi positif,&quot; kata Mahmudi pada acara Evaluasi Giling Tahun 2019 dan Strategi Giling Tahun 2020 yang dihadiri seluruh direksi dan general manager pabrik gula PTPN Grup dan PT RNI di Kantor Pusat PTPN X, Sabtu (30/11).</p>\r\n\r\n<p style="text-align: justify;">Mahmudi mengungkapkan setiap tahun, Holding Perkebunan Nusantara merencanakan dan menargetkan industri gula profit tapi kenyataannya sejak tahun 2016 hingga 2019 ini masih merugi.</p>\r\n\r\n<p style="text-align: justify;">&quot;Untuk musik giling 2020, Holding Perkebunan Nusantara merencanakan PTPN Gula bisa profit sebesar Rp 53 Milliar,&quot; sebutnya.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Apa yang harus dilakukan agar profit, sambung Mahmudi, perencanaan di masing-masing PTPN harus terus di kawal, khususnya di aspek operasional.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Terobosan-terobosan operasional diharapkan akan ada untuk menjawab tantangan menjamur nya pabrik gula swasta dan menurunnya areal tebu,&quot; paparnya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Ditempat yang sama, Plt. Deputi Usaha Industri Agro dan Farmasi Kementerian BUMN, Imam Paryanto mengharapkan agar di musim giling Tahun 2020 mendatang, PTPN Gula dan PT RNI bisa menyumbang laba. Gempuran pabrik gula swasta tidak bisa dihindarkan mengingat jumlah produksi di dalam negeri belum memenuhi kebutuhan yang ada.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sebelum berakhir, seluruh direksi PTPN Gula dan PT RNI melakukan Penandatanganan komitmen pencapaian kinerja tahun 2020. (Red3, CIN_Sekper)</p>\r\n	2	0	2019-12-02 15:28:28	rapat_eval_giling_2019.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/2020-holding-perkebunan-targetkan-ptpn-gula-sumbang-laba-rp-53-milliar
77	B	Menteri Pertanian Lepas Ekspor Edamame Senilai Rp 2,6 Milliar	<p style="text-align: justify;">Menteri Pertanian Republik Indonesia, Syahrul Yasin Limpo melepas kontainer berisi edamame produksi PT Mitratani Dua Tujuh (M27) anak perusahaan PT Perkebunan Nusantara (PTPN) X yang siap di ekspor ke Jepang. Di penghujung tahun 2019 ini, perusahaan yang berlokasi di Mangli, Jember tersebut akan mengekspor edamame senilai USD 185.200 atau 2,6 milliar rupiah.</p>\r\n\r\n<p style="text-align: justify;">Direktur utama PTPN&nbsp;X, Dwi Satriyo Annurogo menyampaikan permintaan Jepang akan edamame sebesar 7.500 ton sedangkan Indonesia baru bisa memenuhi kebutuhan tersebut sebanyak 4.500 ton.</p>\r\n\r\n<p style="text-align: justify;">Edamame, sambung Dwi, memang banyak diproduksi oleh negara lain, sebut saja China, Taiwan dan beberapa negara lainnya. Namun, pasar Jepang lebih menyukai edamame asal Jember ini karena kualitasnya yang terjamin dan cita rasa yang khas dibandingkan dengan edamame dari negara lain.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kapasitas produksi M27&nbsp;ini sudah hampir penuh. Untuk itu, di tahun 2020 mendatang, pihaknya akan melakukan ekspansi dengan rencana produksi mencapai 5.000 ton/tahun,&quot; papar Dwi.</p>\r\n\r\n<p style="text-align: justify;">Selain di Jepang, Dwi mengungkapkan pasar Edamame masih sangat luas seperti di negara-negara di Timur Tengah dan Eropa.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Di tempat yang sama, Syahrul&nbsp;mengatakan produk edamame asal Jember yang menjadi produk primadona bagi masyarakat Jepang merupakan salah satu contoh bahwa Indonesia adalah negara yang hebat.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Edamame jadi contoh yang bisa menjadi kekuatan bangsa Indonesia untuk mensejahterakan rakyatnya,&quot; katanya.</p>\r\n\r\n<p style="text-align: justify;">Syahrul&nbsp;menambahkan pekerjaan&nbsp;Indonesia ini masih banyak untuk mengentaskan seluruh rakyat dari jerat kemiskinan. Produk edamame dari Jember ini merupakan masa depan.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Pertanian itu bicara negara, bicara tenaga kerja dan bicara soal masa depan. Saya akan lapor ke Erick Thohir (Menteri BUMN) kalau ada sesuatu yang menarik di M27&nbsp;ini,&quot; tegasnya.</p>\r\n\r\n<p style="text-align: justify;">Usai memberikan pemaparan, Menteri Pertanian didampingi Direktur Utama PTPN X, Direktur Utama PT M27&nbsp;dan sejumlah undangan memecahkan kendi tanda dilepaskannya kontainer yang siap membawa edamame ke Negeri Sakura. (Red3, PUT_Sekper).</p>\r\n	0	0	2019-12-27 11:01:16	WhatsApp_Image_2019-12-27_at_10.36.33.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/menteri-pertanian-lepas-ekspor-edamame-senilai-rp-26-milliar
79	B	Sambut Natal, PTPN X Gelar Bakti Sosial	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menggelar kegiatan bakti sosial dalam rangkaian Natal tahun 2019. Kegiatan bakti sosial tersebut dipusatkan di wilayah kerja Pabrik Gula (PG) Ngadiredjo yakni di Pare, Kediri.</p>\r\n\r\n<p style="text-align: justify;">Menurut Ketua Panitia acara, Ramlan Silvester Sinaga mengutarakan bahwa kegiatan bakti sosial seperti ini telah menjadi rutinitas setiap tahunnya dalam menyambut Natal.</p>\r\n\r\n<p style="text-align: justify;">&quot;Baksos kali ini kami memberikan bantuan kepada tiga tempat yakni Panti Jompo Dinsos Pare,&nbsp; Panti Asuhan Kasih Karunia Pare, dan Karyawan HGU Ngusri. Dan bantuan yang diberikan berupa sembako, uang, dan segala sesuatu yang dibutuhkan tempat tersebut,&quot; jelas pria yang juga menjabat sebagai Pjs. Kepala Bagian Teknik &amp; Pengolahan PTPN X tersebut.</p>\r\n\r\n<p style="text-align: justify;">Di samping itu, tambahnya melalui kegiatan ini, pihaknya diingatkan kembali akan pentingnya kegiatan berbagi kepada mereka yang membutuhkan, dan menunjukkan sukacita Natal kepada sesama.</p>\r\n\r\n<p style="text-align: justify;">Sementara itu hadir dalam kesempatan yang sama, Direktur Komersil PTPN X, Slamet Djumantoro berharap bahwa dengan dilaksanakannya kegiatan ini akan memberikan kebahagiaan bagi seluruh masyarakat warga di lingkungan PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&quot;Melalui bakti sosial ini kita dapat melihat tidak hanya masyarakat yang selalu dalam kondisi normal saja, ternyata masih banyak di antara kita dalam kondisi di luar yang biasa kita pikirkan,&rdquo; ucap Slamet.</p>\r\n\r\n<p style="text-align: justify;">Untuk itu, ia berpesan bahwa dengan momen Natal ini kita harus berbagi. Natal itu harus dapat memberikan manfaat kepada sesama terutama mereka yang membutuhkan. (Red2, PUT_Sekper)</p>\r\n	0	0	2019-12-22 10:01:14	WhatsApp_Image_2019-12-21_at_17.14.48.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sambut-natal-ptpn-x-gelar-bakti-sosial
18	B	Dirut PTPN X Tinjau Langsung Lahan Agroforestry	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo melakukan kunjungan ke beberapa lahan tebu milik PG Lestari, Rabu (18/9).&nbsp; Kunjungan ini bertujuan untuk meninjau secara langsung program agroforestry yang dilakukan antara PTPN X dengan Perum Perhutani KPH Jombang. Kunjungan dilakukan di lahan Ngujung, Pandean,&nbsp;dan Ngasem.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Penyediaan pengairan dan saprodi untuk lahan tersebut juga telah disediakan guna mendukung pengelolaan&nbsp;<em style="box-sizing: border-box;">on farmn</em>-nya. Dwi menghimbau untuk segera melakukan pekerjaan persiapan pembuatan sumber air guna pengairan, sehingga dapat segera melaksanakan kegiatan pemupukan. Kualitas dan mutu pekerjaan juga harus menjadi perhatian.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kebutuhan biaya pengerjaan segera disusun dan diajukan, sehingga pengairan dan saprodi segera tersedia dan dapat dilanjutkan dengan kegiatan pupuk,&rdquo; terang Dwi lebih lanjut.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya, lahan-lahan ini akan ditanami tebu dengan varietas Cening dan Bululawang. Lahan Ngasem sendiri telah tanam di bulan Mei 2019 dan lahan Ngujung telah tanam di bulan Agustus 2019. Sedangkan untuk lahan Pandean dijadwalkan tanam pada bulan Oktober 2019. (CIN_Sekper, BSA_Sekper)</p>	2	0	2019-10-22 07:22:28	agro2.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
74	A	Mikoriza, Agen Hayati Tanaman Tembakau PTPN X	<p style="text-align: justify;">Mikoriza berasal dari kata <em>m</em><em>yco</em>&nbsp;yang berarti jamur dan <em>r</em><em>hizo</em>&nbsp;yang berarti akar. Mikoriza merupakan jamur yang hidup secara simbiosis pada sistem perakaran tanaman. Pertumbuhan mikoriza pada akar tumbuhan bermanfaat untuk meningkatkan penyerapan unsur hara dan air serta dapat melindungi tembakau dari beberapa jenis penyakit. Secara&nbsp;alamiah, akar tanaman tembakau sudah ditumbuhi mikoriza namun dengan jumlah yang sangat sedikit. Jenis mikoriza pada akar tembakau di&nbsp;setiap daerah berbeda-beda bergantung pada jenis tanah pada wilayah tersebut. Khusus mikroriza pada akar tembakau di Kabupaten&nbsp;Jember berjenis <em>Glomus </em><em>s</em><em>p.</em>&nbsp;Menurut Yulianitha (2012), beberapa karakteristik dari <em>Glomus sp</em><em>.</em>&nbsp;yaitu hanya memiliki satu jenis dinding spora yang berwarna merah sampai cokelat, Permukaan dinding spora halus tanpa dan berjumlah satu, serta seluruh lapisan yang ada pada dinding spora berasal dari dinding hifa&nbsp;(benang)&nbsp;pembawa. Terbatasnya jumlah mikoriza pada akar tanaman tembakau cukup mempengaruhi&nbsp;pertumbuhan tembakau sehingga mikoriza perlu dibudidayakan&nbsp;khusus agar sistem perakaran pada tanaman tembakau bekerja lebih baik.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Salah satu metode yang bisa diterapkan untuk perkembangbiakan&nbsp;mikoriza adalah menggunakan media tanam dengan batuan zeolit. Batu zeolit yang berbentuk granula memiliki kondisi unsur hara yang sesuai sehingga sangat cocok untuk perkembangbiakan mikoriza. Selain granula zeolit, akar tanaman jagung yang berbentuk serabut juga digunakan sebagai tempat menempelnya&nbsp;mikoriza.</p>\r\n\r\n<p style="text-align: justify;">Proses perkembangbiakan khusus jamur mikoriza dilakukan beberapa tahapan yaitu mulai dari tahap ekplorasi dan dilanjutkan dengan tahap pemeliharaan.&nbsp;Pada tahap ekplorasi, langkah awal yang dilakukan adalah mengambil sampel mikoriza yang secara alamiah menempel pada tanaman tembakau&nbsp;dan ditempelkan pada akar jagung. Selanjutnya adalah&nbsp;membuat media tanam dengan dasar granula zeolit yang sebelumnya telah diberikan pupuk fosfat. Tanaman jagung yang akarnya telah tertempel spora mikoriza kemudian ditanam pada media granula zeolit. Jarak antar tanaman selebar 5 cm. Berikutnya adalah&nbsp;tahap pemeliharaan yaitu tanaman dipelihara dengan pemberian air setiap hari dan pemberian pupuk majemuk mikro setiap dua minggu sekali sampai 2 bulan. Setelah dua bulan berlangsung, tanaman jagung dibiarkan tidak disiram dan tidak diberi pupuk selama 1 bulan agar terbentuk biji spora yang tertempel pada granula zeolit. Granula zeolite&nbsp;yang sudah mengandung mikoriza&nbsp;tersebut kemudian dipindahkan dan digunakan sebagai media tanam pada tahap pembibitan serta penanaman pada lahan tanaman tembakau.&nbsp;(Mohamad Wawan S._Penelitian Tembakau Jember, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Referensi:</p>\r\n\r\n<p style="text-align: justify;">Yulianitha, Nurhidayati, &nbsp;Trisnawati, 2012.&nbsp;<strong>Komposisi Jenis Mikoriza </strong><strong>d</strong><strong>ari Perakaran Tembakau (</strong><strong><em>Nicotiana Tabaccum</em></strong><strong>) </strong><strong>d</strong><strong>i Desa Bajur </strong><strong>d</strong><strong>an Orai Pamekasan Madura</strong>. &nbsp;Jurusan Biologi, Fakultas Matematika Dan Ilmu Pengetahuan Alam Institut Teknologi Sepuluh Nopember Surabaya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p align="justify">&nbsp;</p>\r\n	0	0	2016-12-30 10:19:57	5864cbf5-80d0-4139-92ae-1ba8e3e14fb4-pic_artic3b.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/hayati-tanaman-tembakau-ptpn-x
29	B	PTPN X Salurkan CSR untuk Warga di Sekitar Kebun Klaten	<div dir="auto" style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: justify;">\r\n<p>PT Perkebunan Nusantara (PTPN) X bersama tiga BUMN lain yaitu PT Angkasa Pura (Persero), PT Kawasan Industri Wijayakusuma (Persero) dan PTPN IX menyalurkan Cuntuk warga di sekitar Kebun Klaten. Melalui bantuan yang diberikan diharapkan terjadi peningkatan kualitas sumber daya manusia di lingkungan tersebut.&nbsp;Bantuan yang diberikan berupa elektrifikasi, pembangunan sarana MCK (Mandi, Cuci, Kakus), beasiswa, bedah rumah, pembangunan sarana air bersih dan pasar murah.&nbsp;</p>\r\n\r\n<p>Direktur Utama PTPN X, Dwi Satriyo Annurogo mengatakan <em>Corporate Social Responsibility</em> (CSR) disalurkan untuk membantu masyarakat yang membutuhkan. &quot;Bagaimana masyarakat bisa lebih sehat agar dalam aktivitasnya sehari-hari tidak terkendala rumah bocor, MCK tidak sehat dan lain-lain,&quot; ujar Dwi saat memberikan sambutan pada acara penyerahan bantuan di Klaten, Jumat (29/11).</p>\r\n\r\n<p>Dengan individu yang sehat, akan terbentuk keluarga dan lingkungan yang sehat pula. Dan pada gilirannya akan menjadikan bangsa ini kuat.&nbsp;</p>\r\n\r\n<p>&quot;Ini adalah wujud bagaimana BUMN memberikan manfaat bagi masyarakat,&quot; sambung Dwi.&nbsp;</p>\r\n\r\n<p>Elektrifikasi diberikan ke 30 unit rumah mulai dari Desa Ngemplak, Birin, Balang, Ketitang dan lain-lain. Untuk bantuan MCK juga diberikan ke 30 unit rumah yang tersebar di beberapa desa, yaitu Karangasem, Ngriman, Jetak, Birit, dan lain-lain.&nbsp;</p>\r\n\r\n<p>Kegiatan CSR ini juga meliputi pemberian bantuan sarana air bersih di Desa Pandes. Untuk bantuan perbaikan rumah diberikan kepada 5 (lima) rumah, yang berada di Desa Bareng, Metuk lor, Kembang, dan Jetak.&nbsp;</p>\r\n\r\n<p>Yang terakhir, pemberian bantuan beasiswa diserahkan kepada 15 orang siswa baik SD, SMP, mapun SMK. Selain itu pada pekan sebelumnya juga diadakan pasar murah yang menyediakan 1.500 paket sembako untuk masyarakat. (Red1, CIN_Sekper)</p>\r\n</div>\r\n	0	0	2019-12-01 00:59:46	IMG_6678.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-salurkan-csr-untuk-warga-di-sekitar-kebun-klaten
80	B	Sambut 2020, PTPN X Rundingkan PK	<p style="text-align: justify;">Menyambut tahun baru 2020, PT Perkebunan Nusantara (PTPN) X&nbsp; kembali adakan Perundingan Perjanjian Kerja Bersama (PKB) dengan Serikat Pekerja PTPN X. Perundingan yang dibuka oleh Direktur Komersil, Slamet Djumantoro tersebut berlangsung di Hotel Arcadia Surabaya, pada (27-28/12).</p>\r\n\r\n<p style="text-align: justify;">Acara dimulai dengan menyanyikan lagu Indonesia Raya, sambutan dari Ketua Umum Serikat Pekerja PTPN X, M. Amier Hasanoedin, dilanjutkan dengan sambutan dari Direktur Komersil PTPN X, Slamet Djumantoro yang sekaligus membuka acara Perundingan PKB.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Besar harapan saya perundingan ini dapat menjadi ajang untuk bertukar pikiran dan menambah informasi tentang kondisi perusahaan. Agar ke depannya kita sebagai pemilik perusahaan, dalam hal ini tidak hanya Direksi tapi seluruh karyawan <em>aware</em> dengan kondisi perusahaan dan memiliki semangat juang, bersama-sama membangun dan bekerja untuk kejayaan PTPN X&rdquo;, ujar Slamet.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Adanya perundingan PKB ini tentunya juga akan meningkatkan sinergi antara manajemen dengan Serikat Pekerja PTPN X. Sinergi tersebut tentunya mampu membawa PTPN X ke arah yang lebih baik. (PUT_Sekper, CIN_Sekper)</p>\r\n	0	0	2019-12-27 13:30:48	WhatsApp_Image_2019-12-27_at_13.27.40.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sambut-2020-ptpn-x-rundingkan-pk
30	B	Ada yang Spesial di Safety Riding Enero	<p style="text-align: justify;"><strong>Mojokerto </strong>&ndash; Safety Riding yang sedang menjadi program PT Energi Agro Nusantara (Enero), ditindaklanjuti aktivitas yang spesial beberapa waktu lalu. Jika biasanya Safety Riding disosialisasikan secara rutin di dalam perusahaan, kali ini dalam bentuk touring dan sosialisasi kemanfaatan Biofertlizer (pupuk hayati) di berikan kepada kalangan petani bawang daun serta diikuti oleh Enero Motoriders Club dan karyawan Enero lainnya. Acara tersebut diselenggarakan di Desa Kemiri, Kecamatan Pacet, Sabtu (16/11).</p>\r\n\r\n<p style="text-align: justify;">Acara dimulai dengan <em>briefing</em> terkait keamanan dan keselamatan selama berkendara sekaligus cek kondisi kendaraan. Setelah berkendara selama kurang lebih satu jam, agenda dilanjutkan dengan sosialisasi kemanfaatan biofertilizer pada petani bawang daun. Termasuk didalamnya dilakukan aplikasi percobaan biofertilizer skala kecil, yang membandingkan aplikasi biofertilizer dan aplikasi normal (full menggunakan pupuk anorganik). Nantinya, hasil aplikasi akan ditinjau perkembangannya sampai panen.</p>\r\n\r\n<p style="text-align: justify;">Petani menyambut baik inisiatif dari Enero ini. Harapan mereka, penggunaan pupuk anorganik dapat berkurang dan struktur serta kandungan tanah mengalami perbaikan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kami merasa senang dengan percobaan ini, semoga dampak biofertilizer bisa dirasakan pada tanah dan tanaman,&quot; tutur Nurul Huda, salah satu petani yang ikut sosialisasi.</p>\r\n\r\n<p style="text-align: justify;">Rangkaian aktivitas ditutup dengan wisata menikmati keindahan alam di area Pacet. Kedepannya, aktivitas safety riding akan di buat lebih menarik, dengan kunjungan industri ke unit dan anak perusahaan di lingkungan PTPN X atau <em>stakeholder</em> terkait lainnya.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Tidak hanya pengembangan wawasan berkendara bagi karyawan, aktivitas safety riding banyak manfaatnya seperti sarana edukasi dan sosialisasi produk perusahaan serta membangun relasi sosial dengan masyarakat dan pihak-pihak lain,&rdquo; ujar Direktur PT Enero, Dimas Eko Prasetyo. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n	0	0	2019-11-28 18:34:55	foto_web.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ada-yang-spesial-di-safety-riding-enero
31	B	Terus Ukir Prestasi, PTPN X Kembali Raih Tiga Penghargaan	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X kembali meraih penghargaan. Kali ini, PTPN X menyabet tiga penghargaan sekaligus dalam ajang TOP Digital Award 2019. Penghargaan diterima langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Direktur Operasional PTPN X, Aris Toharisman, di Jakarta (27/11). Tiga penghargaan yakni Top Leader on Digital Implementation 2019, Top Digital Implementation on Agriculture Sector 2019 Level Star 4, dan Top Digital on Agriculture &ndash; <em>e-Farming</em> &amp; Investani.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X selalu memperbaiki kinerjanya setiap tahun. Penghargaan ini merupakan hasil kerja keras dan usaha dari seluruh karyawan PTPN X dan juga dukungan dari seluruh&nbsp;<em>stakeholder</em>. Kami mengucapkan terima kasih atas apresiasi dan kepercayaan yang diberikan kepada PTPN X,&rdquo; terang Dwi.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Berhasilnya PTPN X dalam menyabet Top Digital on Agriculture &ndash; e-Farming dan Investani, merupakan salah satu bukti bahwa PTPN X selalu berusaha memberikan kemudahan pelayanan kepada <em>stakeholder</em> khususnya petani. Melalui beberapa program unggulan antara lain e-Farming dan Investani. e-Farming adalah aplikasi pendaftaran lahan dan<em>&nbsp;monitoring</em> kemajuan pekerjaan kebun melalui website dan&nbsp;<em>mobile application</em>&nbsp;(android) yang didukung dengan teknologi GIS dan satelit.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, PTPN X juga memiliki program terbaru yakni Investani. Investani merupakan program investasi dalam bentuk lahan perkebunan wilayah kerja PTPN X. Para investornya adalah karyawan internal dan anggota koperasi karyawan PTPN X, serta Holding Perkebunan Nusantara. Program Investani dan e-Farming ini menjadi langkah awal PTPN X untuk memasuki era industry 4.0.</p>\r\n\r\n<p style="text-align: justify;">&quot;PTPN X senantiasa fokus pada pada perkembangan teknologi informasi sebagai bentuk peningkatan SDM dan komitmen kami untuk mewujudkan SDM yang unggul dan Indonesia yang lebih maju,&quot; tambah Dwi.</p>\r\n	0	0	2019-11-28 17:10:02	WhatsApp_Image_2019-11-27_at_8.17.10_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/terus-ukir-prestasi-ptpn-x-kembali-raih-tiga-penghargaan
32	B	Kuliah Tamu Enero, Akademisi Polinema Perdalam Proses Bioethanol	<p style="text-align: justify;">PT&nbsp;Energi Agro Nusantara (Enero) kembali menunjukkan komitmennya pada dunia pendidikan Indonesia. Jumat lalu (22/11), Enero mendapatkan kehormatan memberikan kuliah tamu di Politeknik Negeri Malang (Polinema), Malang dengan&nbsp;Sam Alfian Yusuf Helmi (Manajer Proses dan Project) dan Mochammad Dimas Khoirul Umam&nbsp;(Supervisor Proses) sebagai pembicara.</p>\r\n\r\n<p style="text-align: justify;">Kuliah yang bertajuk &ldquo;Proses Fermentasi dan Distilasi Produksi Bioethanol pada Skala Industri&rdquo; ini dihadiri para akademisi di Jurusan Teknik Kimia. Acara ini sendiri bertujuan memperdalam pengetahuan proses produksi bioethanol pada skala industri. Kuliah tamu dibuka dengan sambutan dari Kepala Jurusan Teknik Kimia Polinema, Eko Naryono, yang mengungkapkan harapan kerjasama antar kedua belah pihak.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kami mengharapkan, kerjasama dengan dunia industri semakin terjalin dan kedepannya bisa menjadikan Polinema sebagai <em>teaching factory</em> dan menghasilkan lulusan-lulusan yang siap pakai di dunia industri&rdquo; ujar Eko.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Acara dilanjutkan dengan penyampaian materi kuliah oleh Sam Alfian, tentang proses produksi bioethanol, standar spesifikasi produk sesuai Standar Nasional Indonesia (SNI) dan diskusi terkait skema pengolahan hasil samping produksi bioethanol. Setelah kuliah tamu, diikuti kunjungan laboratorium praktikum untuk melihat kelengkapan alat-alat <em>pilot plant</em>.</p>\r\n\r\n<p style="text-align: justify;">Sebagai bentuk keseriusan Polinema akan energi terbarukan, saat ini mereka memiliki <em>pilot plant</em> biodiesel, sebagai alat ajar para mahasiswa. <em>Plant </em>dilengkapi dengan peralatan yang lengkap dan diharapkan juga bisa menjadi <em>pilot plant</em> bioethanol di masa datang. (Ariel_Enero, CIN_Sekper)</p>\r\n	0	0	2019-11-28 15:34:15	Kuliah_Tamu_Enero.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kuliah-tamu-enero-akademisi-polinema-perdalam-proses-bioethanol
33	B	PG Kremboong, Salurkan CSR melalui Program Bedah Rumah	<div style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: justify;">\r\n<p>Pabrik Gula (PG) Kremboong, unit usaha dari PT Perkebunan Nusantara (PTPN) X menunjukkan kepeduliannya kepada masyarakat kurang mampu dengan menyalurkan <em>Corporate Social Responsibility</em> (CSR) melalui program bedah rumah. Kegiatan ini diperuntukan guna membantu masyarakat sekitar yang memang memerlukan dan untuk meningkatkan kualitas hidup dengan menciptakan lingkungan yang asri dan nyaman.</p>\r\n\r\n<p>Direktur Komersil PTPN X, Slamet Djumantoro yang hadir dalam kesempatan tersebut mengatakan bahwa bedah rumah ini diberikan semata-mata sebagai perwujudan kepedulian perusahaan sebagai Badan Usaha Milik Negara (BUMN) kepada warga masyarakat sekitar.</p>\r\n\r\n<p>&quot;Perusahaan juga memiliki tanggungjawab untuk membantu meningkatkan kesejahteraan warga desa yang ada di sekitar perusahaan. Untuk itu bedah rumah ini diharapkan mampu dapat menolong mereka terutama bagi yang membutuhkan,&quot; jelas Slamet.</p>\r\n\r\n<p>Sementara itu, General Manager PG Kremboong, Agus Minhandoko mengungkapkan bahwa bantuan kali ini diterima langsung oleh Ibu Ponisah dari Desa Kremboong.</p>\r\n\r\n<p>&quot;Semoga dengan bedah rumah ini bisa bermanfaat untuk Keluarga Ibu Ponisah. Karena ibu Ponisah ini sudah tua renta, janda dan tidak berpenghasilan. Untuk itu diharapkan melalui CSR ini dapat meringankan beban beliau,&quot; tandasnya.</p>\r\n\r\n<p>Dijelaskan Agus, bedah rumah dengan lebar enam meter dan panjang enam meter ini dilaksanakan selama satu bulan.</p>\r\n\r\n<p>&quot;Semua dibangun total dari program CSR dari PKBL dan dibantu secara gotong royong oleh karyawan,&quot; pungkasnya.</p>\r\n\r\n<p>Sementara itu, Ibu Ponisah, pemilik rumah yang dibangun sangat berterima kasih pada PTPN X yang telah membangun rumahnya. Sebelumnya rumahnya memang tidak layak huni.</p>\r\n\r\n<p>&ldquo;Alhamdulillah senang sekali, saya berterima kasih pada PG Kremboong. Dulu kalau hujan rumah saya banjir tidur saja di lantai. Sekali lagi terima kasih,&rdquo; pungkasnya. (Red2, CIN_Sekper)</p>\r\n</div>\r\n	0	0	2019-11-27 22:52:35	WhatsApp_Image_2019-11-27_at_15.41.29.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-kremboong-salurkan-csr-melalui-program-bedah-rumah
34	B	Komisaris Holding Perkebunan Nusantara Tinjau Kebun Tembakau dan Anak Perusahaan PTPN X di Jember	<p style="text-align: justify;">Setelah sebelumnya mengunjungi Pabrik Gula (PG) Gempolkrep dan PT Enero, Dewan Komisari Holding Perkebunan Nusantara meninjau gudang pengolah tembakau di Ajong Gayasan, Selasa (26/11). Kunjungan ke Ajong Gayasan ini untuk melihat proses sortasi daun tembakau hingga pengemasan.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan dilanjutkan ke Industri Bobbin untuk melihat proses pemotongan atau <em>cutting</em> daun tembakau dan pembuatan cigarillos. Kunjungan didampingi langsung oleh Direktur Operasional PTPN X Aris Toharisman dan Kepala Bagian Tembakau Aris Handoyo.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Hasil diskusi dalam kunjungan ini supaya menjadi masukan untuk mempersiapkan tantangan di 2020, sehingga dapat memastikan ketercapaian target produksi PTPN X baik di sektor tebu maupun tembakau,&rdquo; terang Muhammad Syakir, Komisaris Holding Perkebunan Nusantara.</p>\r\n\r\n<p style="text-align: justify;">Sebagai penutup kunjungannya, rombongan meninjau PT Mitratani Dua Tujuh mulai dari lokasi tanam hingga pabrik pengolahan edamame di daerah Mangli, Jember. (PUT_Sekper, CIN_Sekper)</p>\r\n	0	0	2019-11-26 21:24:10	DSC00734.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisaris-holding-perkebunan-nusantara-tinjau-kebun-tembakau-dan-anak-perusahaan-ptpn-x-di-jember
35	B	Komisaris Holding Perkebunan Nusantara Kunjungi PG Gempolkrep dan PT Enero	<p style="text-align: justify;">Komisaris Holding Perkebunan Nusantara, Muhamad Syakir melakukan kunjungan kerja ke Pabrik Gula (PG) Gempolkrep pada (25/11). Kunjungan pertamanya sebagai Dekom Holding Perkebunan Nusantara yang baru ini dalam rangka memastikan target produksi di PTPN X dan pendapatan yang diterima perusahaan dari tebu dan tembakau.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan didampingi oleh Direktur Operasional PTPN X, Aris Toharisman, Tim Komite Audit PG Gempolkrep, dan Jajaran Pejabat Puncak PTPN X. Lawatannya ini memberikan semangat baru bagi PTPN X, pasalnya Muhamad Syakir mengatakan bahwa PTPN X secara komoditas masih masuk dalam 6 besar pemberi keuntungan, yaitu 102% dari RKAP.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas penerimaan yang baik dari PT Perkebunan Nusantara (PTPN) X. Harapan saya dalam musim giling mendatang PTPN X bisa mencapai target atau bahkan melampaui RKAP yang sudah disepakati. Saya yakin dengan kemampuan pasok BBT yang baik di dukung dengan SDM yang kompeten dan berakhlak baik pula, sukses giling tahun 2020 ada di depan mata,&rdquo; terang Syakir.</p>\r\n\r\n<p style="text-align: justify;">Disela-sela kunjungan ini, rombongan menyempatkan untuk meninjau Proyek PMN. Sakir berpesan agar Proyek PMN ini terus dimonitor sehingga <em>timeline project</em> bisa berjalan seluruhnya. Selain itu, rombongan juga meninjau langsung PT Enero yang yang terintegrasi dengan PG Gempolkrep. (PUT_Sekper, CIN_Sekper)</p>\r\n	0	0	2019-11-26 20:47:34	DSC00669.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisaris-holding-perkebunan-nusantara-kunjungi-pg-gempolkrep-dan-pt-enero
37	B	Smart Riders Community Touring ke Lahan HGU Ngusri	<p style="text-align: justify;">Jumat-Sabtu (22-23/11) karyawan Kantor Pusat PTPN X yang tergabung dalam Smart Riders Community (SRC) melakukan kegiatan <em>touring</em> ke Kebun HGU Ngusri Blitar. <em>Touring </em>ini diikuti oleh 45 orang karyawan dengan Suprobo dari Bagian Keuangan selaku koordinator. Pemilihan Kebun HGU Ngusri Blitar sebagai tujuan <em>touring</em> supaya karyawan mengetahui potensi lahan HGU baru milik PTPN X tersebut.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Selama kegiatan berlangsung, karyawan berkeliling lahan Ngusri sambil melihat keindahan pemandangan yang ditawarkan. Anggota SRC juga berkesempatan bermalam di rumah dinas yang berada di sekitar lahan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kegiatan touring ini rutin dilakukan dan memberikan pengalaman baru kepada seluruh anggota SRC. Untuk touring kali ini, kami bisa mengetahui tentang potensi lahan HGU baru milik PTPN X,&rdquo; terang Aldino Ary, karyawan Bagian Pemasaran. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2019-11-25 17:37:32	WhatsApp_Image_2019-11-25_at_10.28.24.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/smart-riders-community-touring-ke-lahan-hgu-ngusri
38	B	PTPN X Kunjungi PT Semen Indonesia 	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan kunjungan ke Pabrik Tuban, PT Semen Indonesia yang terletak di Desa Sumberarum, Kecamatan Kerek, Kabupaten Tuban, Jawa Timur pada (21/11). Kunjungan ini dalam rangka studi banding mengenai Sistem Manajemen dan Teknologi Persediaan Hasil Produksi PT Semen Indonesia.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan diikuti oleh 13 orang perwakilan bagian dari PTPN X dan manajemen PT Semen Indonesia. Adanya studi banding tersebut diharapkan dapat menambah wawasan baru bagi karyawan PTPN X untuk lebih lagi meningkatkan kinerja hasil produksi dan teknik-teknik manajemen terbaru. Sehingga dapat diimplementasi di lingkup PTPN X khususnya Pabrik Gula.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas penerimaan yang baik dari PT Semen Indonesia. Harapan kami studi banding ini dapat menjadi jembatan baru kerjasama antara PTPN X dan PT Semen Indonesia, dan juga saling memberikan <em>benefit </em>antar kedua belah pihak,&rdquo; terang Andika Dhyta Vernanda, Kepala Urusan TI PTPN X.</p>\r\n\r\n<p style="text-align: justify;">Kegiatan ini diawali dengan pemutaran video <em>company profile</em> PT Semen Indonesia, dilanjutkan dengan sambutan dari perwakilan perusahaan. Sesi dimulai dengan pemaparan presentasi dari perwakilan PT Semen Indonesia mengenai proses pengemasan barang hingga proses barang keluar dari pabrik lalu dan ditutup dengan <em>plant tour</em>. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-22 21:41:06	WhatsApp_Image_2019-11-22_at_14.38.21.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-kunjungi-pt-semen-indonesia
36	B	Ciptakan Destinasi Wisata di Tulangan, Komisi D dan Dispora Sidoarjo Datangi PTPN X	<p style="text-align: justify;">Pemerintah Kabupaten Sidoarjo melihat potensi destinasi baru di daerah Tulangan, apalagi aset Pabrik Gula (PG) Toelangan milik PT Perkebunan Nusantara (PTPN) X sangat luas dan belum dimanfaatkan dengan maksimal. Untuk itu, Komisi D DPRD Sidoarjo dan Dinas Pemuda, Olahraga, Kebudayaan dan Pariwisata Kabupaten Sidoarjo berkunjung ke Kantor Pusat PTPN X untuk membahas&nbsp;rencana pengembangan PG Toelangan untuk dijadikan destinasi wisata baru di Kabupaten Sidoarjo.</p>\r\n\r\n<p style="text-align: justify;">Ketua Komisi D DPRD kabupaten Sidoarjo, Moch Dhamroni Chudlori&nbsp; mengatakan Pemerintah Kabupaten Sidoarjo melihat PG Toelangan sudah tidak lagi beroperasi lagi sejak tahun 2016.&nbsp;Namun hingga saat ini, banyak aset yang berpotensi tetapi belum dimanfaatkan secara maksimal.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Di Sidoarjo ini, destinasi wisata masih minim. Kami melihat potensi itu ada di PG Toelangan, untuk itu kami ingin berkonsultasi dan kordinasi dengan PTPN X untuk mengembangkan destinasi wisata baru di eks PG Toelangan,&quot; kata Dhamroni pada acara Rapat Konsultasi terkait Rencana Pengembangan PG Toelangan untuk dijadikan destinasi wisata di ruang Kresna Kantor Pusat PTPN X,&nbsp;Jalan Jembatan Merah, Surabaya, Selasa (26/11).</p>\r\n\r\n<p style="text-align: justify;">Dhamroni menambahkan bila memang PTPN X sudah ada perencanaan untuk pengembangan PG Toelangan maka ini akan menjadi gayung bersambut karena Komisi D juga akan berkonsultasi ke Kementerian BUMN terkait rencana ini.</p>\r\n\r\n<p style="text-align: justify;">Kepala Bidang Umum dan Pengembangan Aset PTPN X, Wahyu P Siswosumarto menjelaskan pihaknya sangat berterima kasih atas kehadiran Pemerintah Kabupaten Sidoarjo , mengingat Sidoarjo dulu pernah menjadi lumbung <em>revenue</em> PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&quot;Untuk pengembangan aset di PG Toelangan memang sudah direncanakan&nbsp; dan ada beberapa yang sudah dilakukan,&quot; kata Wahyu.</p>\r\n\r\n<p style="text-align: justify;">Yang sudah dilaksanakan adalah pembangunan convention hall yang bernama Graha Toelangan,yang memiliki kapasitas hingga 750 orang. Selama ini Gedung Pertemuan milik PG Toelangan banyak dipergunakan masyarakat Sidoarjo untuk berbagai kegiatan mulai dari pernikahan maupun kegiatan lainnya.</p>\r\n\r\n<p style="text-align: justify;">&quot;Rencana pembangunan<em> heritage</em> PG Toelangan, PTPN X pernah mengandeng pihak ketiga untuk menghitung dan membuat <em>feasibility stud</em>y ,&quot; ungkapnya.</p>\r\n\r\n<p style="text-align: justify;">Dari hasil studi kelayakan tersebut, jelas Wahyu, jajaran Direksi PTPN X menilai masih banyak hal yang perlu dipertajam. Namun PTPN X terus mempromosikan dan mencari pihak ketiga yang bersedia untuk bekerjasama membangun PG Toelangan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Hingga saat ini belum ada, kami sangat membutuhkan dukungan dari Pemerintah Kabupaten Sidoarjo untuk bisa mengembangkan destinasi wisata baru di PG Toelangan ini,&quot; imbuhnya.</p>\r\n\r\n<p style="text-align: justify;">Kepala Dinas Pemuda, Olahraga Kebudayaan dan Pariwisata Kabupaten Sidoarjo,Joko Supriadi menjelaskan saat ini, Pemerintah Kabupaten Sidoarjo tengah gencar membangun dan mempromosikan destinasi wisata baru yang terintegrasi. Bahkan Pemerintah Kabupaten Sidoarjo sudah melibatkan <em>travel agent</em> untuk bisa menjual destinasi wisata di Sidoarjo.</p>\r\n\r\n<p style="text-align: justify;">&quot;PG Toelangan ini letaknya cukup strategis dan banyak destinasi yang bisa diintegrasikan dengan PG Toelangan, mulai dari wisata religi situs Medalam dan Candi Pari yang letaknya hanya 4 KM-an,&quot; kata Joko.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, sambung Joko, hanya 1 KM dari PG Toelangan ada Wisata Religi Makam Mbah Jaelani dan ada Kampung Belimbing, dan di Daerah Sudimoro tempat produksi Krupuk Rambak. (Red3, CIN_Sekper)</p>\r\n	1	0	2019-11-26 20:10:24	WhatsApp_Image_2019-11-26_at_12.49.46.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ciptakan-destinasi-wisata-di-tulangan-komisi-d-dan-dispora-sidoarjo-datangi-ptpn-x
81	A	Work as Calling	<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Bicara tentang pekerjaan, hampir semua orang dibelahan dunia memiliki pekerjaan yang beraneka ragam. Namun pada kenyataanya tidak semua orang mengerti apa makna pekerjaan bagi diri mereka. Mereka hanya mengejar dari segi puing materi, tanpa tahu filosofi secara luas dari apa yang sedang mereka kerjakan pada pekerjaanya.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Banyak orang yang bilang &ldquo;nggak penting jenis pekerjaannya itu apa, yang penting kerja, kerja dan kerja, terus dapat duit&rdquo;. Kalimat seperti ini sudah menjadi sebuah sugesti&nbsp;yang dianggap benar di kalangan masyarakat, dan seolah-olah hal tersebut adalah sebuah kepercayaan yang baik untuk generasi penerusnya. Namun, sebenarnya <em>mindset</em> seperti inilah yang menjadi&nbsp; salah satu faktor terbesar penyebab generasi muda sulit mengembangkan potensi dalam dirinya atau mungkin bisa dibilang bekerja tanpa <em>passion</em>.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Memang apa sih pentingnya ngerti filosofi pekerjaan?&nbsp;Bukanya memang tujuan bekerja adalah untuk mendapatkan uang!&nbsp;Bill Gates, Jack Ma, Mark Zuckerberg, Nadiem Makarim, Harlan Sanders adalah beberapa nama yang sudah tidak asing lagi disebut dan didengar sebagai orang yang berhasil dalam bidangnya. Lantas apa yang membuat mereka berada dipuncak kesuksesan?&nbsp;Apa bedanya cara bekerja mereka dengan kita?</span></p>\r\n\r\n<pre style="text-align: justify;">\r\n<span style="font-family:arial,helvetica,sans-serif;">Nah mari kita ulas. <em>Guys, we work as they do</em>, Namun pernahkan dibenak anda terbesit bahwa kita sama-sama bekerja namun hasilnya berbeda. Dimana letak perbedaan cara bekerja mereka dengan kita? Nah dari sini kita mulai berfikir dan belajar bahwa cara bekerja akan mempengaruhi efektifitas kehidupan. Tulisan ini dibuat tidak untuk membandingkan diri anda dengan siapapun didunia ini, karena saya yakin bahwa Tuhan menciptakan takdir yang berbeda disetiap ciptaanya untuk membuat keaneragaman dibumi. Setidaknya tulisan ini mampu memberi mindset baru bahwa cara bekerja yang unik (menyenangkan) akan memberikan kehidupan yang lebih baik untuk diri anda dimasa depan. </span></pre>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><em>&ldquo;Develop the winning edge. Small differences in your performance can lead to large differences in your results&rdquo;-Brian Tracy. </em></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Saya tertarik dengan tulisan Brian Tracy diatas yang bermakna &ldquo;Kembangkanlah sikap untuk selalu menjadi lebih baik. Membuat perbedaan yang kecil dalam tindakan (Pekerjaan) akan menghasilkan perbedaan yang besar dalam hasil yang diperoleh&rdquo;.&nbsp;&nbsp;</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Saya berfikir mungkin salah satu yang menjadi perbedaan terbesarnya adalah bahwa mereka selalu memperlakukan setiap pekerjaanya dengan tindakan yang sangat baik, dalam artian mereka bekerja sebagai panggilan hidup (<em>Work as a calling</em>), bukan bekerja sebagai upaya bertahan hidup (<em>Work as a job)</em>. Mereka tahu arti dan tujuan dari pekerjaanya. Tidak hanya sekedar bekerja, mereka paham betul tentang konsep <em>work is a calculation</em>. Mereka selalu berharap bahwa hasil dari pekerjaanya mampu menjadi inspirasi dan solusi terhadap permasalahan global dimasa depan.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><em>What kind of life do you want at work?</em>. Begitu banyak harapan yang mendorong kita dalam skenario kehidupan tertentu.&nbsp; Kadang manusia terlalu fokus pada pola kehidupan terhadap apa yang diinginkan dalam pekerjaanya, bukan pada ingin menjadi siapa kita dalam pekerjaan. Jangan kau tukar siapa dirimu dengan apa yang menurutmu dibutuhkan dunia, karena dunia membutuhkanmu untuk menjadi dirimu sendiri.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Percayalah setelah anda mengerti makna dari sebuah pekerjaan, anda tidak akan sekedar bekerja untuk materi, anda akan lebih mengerjar bagaimana caranya membuat jiwa menjadi bahagia saat bekerja dan anda akan lebih memikirkan bagaimana caranya, apa yang anda hasilkan dari pekerjaan itu bermanfaat untuk orang lain. Lantas, bagaimana cara menemukan filosofi dalam pekerjaan?&nbsp;Ada 5 (lima) tips yang mungkin bisa anda coba sebagai upaya atau membantu dalam menemukan apa arti pekerjaan (pekerjaan yang sedang anda miliki sekarang ini) dalam hidup anda.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">&nbsp;1. Apapun pekerjaan anda, cintailah. Jangan risau apapun pekerjaan yang anda miliki sekarang, walaupun itu tidak membuatmu kaya, setidaknya ia membuatmu hidup.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">2. Bekerjalah dengan hati yang gembira. Dengan perasaan yang positif, anda akan mampu menikmati proses dari sebuah pekerjaan.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">3.&nbsp; Miliki rasa penerimaan yang besar terhadap pekerjaan. Dengan hal itu anda akan belajar bersyukur disetiap momen pekerjaan.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">4.&nbsp; Berpetualanglah dalam pekerjaan. Lakukan hal-hal baru bersama teman-teman kerja anda, perbanyak relasi dan buatlah dunia kerja anda semenarik mungkin.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">5. Anggaplah pekerjaan anda sebagai media untuk berbagi dan hal yang dapat mendekatkan diri kepada Tuhan.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Jangan sampai anda mengorbankan pencarian arti hidup hanya mengejar slip gaji,&nbsp; menyerah terhadap impian, tercemar oleh keraguan dan benar-benar terjebak dalam rutinitas. Berbicara tentang kesuksesan dalam pekerjaan, semestinya tidak harus dinilai dari seberapa banyak materi yang berhasil didapat, tapi seberapa bahagia jiwa dalam menyelesaikan tupoksinya.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;">Saya yakin anda pasti memiliki gairah, anda memiliki kejeniusan dalam diri dan memiliki potensi. <em>Come back stronger, work as a calling</em>. Bekerjalan dengan bahagia bersama&nbsp; <em>passion</em> yang anda sukai. Apapun pekerjaan anda sekarang ini, nikmati dan bersenang-senanglah dengan pekerjaan anda, karena itu adalah anugerah dari Tuhan untuk mu. (Dhanaviya_Enero, PUT_Sekper)</span></p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	0	0	2020-01-07 11:47:17	5e1409e2-4aec-4fc4-b9f3-2080e3e14fb4-Foto_web.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/work-as-calling
39	B	PTPN X Tanam Lahan Agroforestry di Desa Jelu Bojonegoro	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan penanaman tebu di lahan Agroforestry Desa Jelu, Kecamatan Ngasem, Kabupaten Bojonegoro seluas 50,643 Ha, Jumat (15/11). Program ini bekerjasama dengan Kesatuan Pengelolaan Hutan (KPH) Perum Perhutani Bojonegoro. Lahan tersebut akan ditanami varietas NX 01 dengan potensi rendemen 9,9% dan produktivitas 124 Ton/Ha.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, lahan agroforestry tebu yang telah tertanam seluas 223,63 Ha tersebar di KPH Mojokerto, KPH Bojonegoro, dan KPH Jombang. Tahun 2019, ada penambahan penanaman seluas 40 Ha di KPH Jombang di bulan Oktober lalu dan 50 Ha di KPH Bojonegoro. Kali ini, penanaman akan direncanakan seluas 50,643 Ha, terdiri dari 4 (empat) petak yang terbagi di Desa Jelu, RPH Prajegan 2 (dua) petak seluas 26,178 Ha dan di Desa Dukuh Kidul BKPH Sendang Serong 2 (dua) petak seluas 24,465 Ha kecamatan Ngasem, Kabupaten Bojonegoro. Nantinya, tebu-tebu tersebut akan di kelola langsung oleh PG Djombang Baru untuk menjaga keajegan pasok BBT pada Musim Giling 2020.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kerjasama ini merupakan sinergi BUMN dengan Perum Perhutani dan merupakan tugas Negara berdasarkan SKB 4 Menteri sebagai wujud BUMN Hadir Untuk Negeri, karena kegiatan Agroforestry tebu memberikan peluang lapangan pekerjaan bagi masyarakat sekitar untuk bersama-sama membangun, melindungi, dan memanfaatkan sumberdaya hutan sebagai penggerak ekonomi di pedesaan,&rdquo; ujar Aris Toharisman, Direktur Operasional PTPN X dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Tanam perdana ini merupakan tindak lanjut dari kerjasama antara PTPN X dengan Perum Perhutani Divisi Regional Jawa Timur untuk melakukan pemanfaatan kawasan hutan berupa kegiatan budidaya tanaman tebu guna mendukung ketahanan pangan. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-15 18:32:04	WhatsApp_Image_2019-11-15_at_11.16.39.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tanam-lahan-agroforestry-di-desa-jelu-bojonegoro
40	B	PTPN X Hadiri HUT Memorandum	<p style="text-align: justify;">Dalam rangka meningkatkan hubungan baik dengan media, PT Perkebunan Nusantara (PTPN) X turut hadir dalam acara perayaan HUT ke-50 Surat Kabar Harian (SKH) Memorandum. Acara ini diselenggarakan di Kantor Redaksi Memorandum, Jalan Ketintang Baru 3/91, Surabaya pada (11/11).</p>\r\n\r\n<p style="text-align: justify;">Suryanto selaku Sekper &amp; PKBL PTPN X berkesempatan hadir secara langsung pada acara ini sebagai bentuk dukungan kepada SKH Memorandum.</p>\r\n\r\n<p style="text-align: justify;">Memorandum merupakan surat kabar&nbsp;pagi yang terbit di&nbsp;Kota Surabaya,&nbsp;Jawa Timur. Pada perayaan HUT ke-50 ini juga dihadiri oleh Wakil Gubenur Jawa Timur, Emil Elestianto Dardak dan Sahat Tua Simanjuntak, selaku Wakil Ketua DPRD Jawa Timur.</p>\r\n\r\n<p style="text-align: justify;">Di usia emas koran Memorandum dan 1 tahun <em>memorandum.co.id</em> diharapkan dapat menjadi media penyaji berita aktual masa kini khususnya bagi masyarakat Surabaya dan sekitarnya. Selain itu, adanya SKH Memorandum dapat mendukung pemberitaan terkini mengenai PTPN X atau industri gula di tanah air. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-13 00:20:24	WhatsApp_Image_2019-11-12_at_17.03.36.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-hadiri-hut-memorandum
41	B	Berbagi Ilmu, Mahasiswa UNIDHA Kunjungi PTPN X	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X mendapat kunjungan dari mahasiswa Fakultas Ekonomi &amp; Bisnis, Universitas Wisnuwardhana Malang di Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya (11/11). Kunjungan ini merupakan <em>sharing session</em> mengenai dunia bisnis PTPN X terhadap generasi muda, khususnya mahasiswa tingkat akhir yang akan masuk dalam dunia kerja.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan diikuti oleh 28 mahasiswa yang mayoritas berasal dari NTT dan 2 dosen pembimbing. Beberapa materi yang disampaikan langsung oleh Direktur Operasional PTPN X, Aris Toharisman antara lain proses produksi gula di PTPN X, kondisi VUCA dan Strategi menghadapi kondisi VUCA, serta revolusi industry 4.0.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Hal terpenting dalam menghadapi era VUCA adalah melakukan eksekusi akan setiap permasalahan. Untuk mengurangi resiko kegagalan, perlu adanya studi-studi kelayakan,&rdquo; terang Aris.</p>\r\n\r\n<p style="text-align: justify;">Acara di mulai dengan pemutaran video company profile PTPN X, di sambung penyampaian terima kasih oleh Bapak Mohammad Rosyidi selaku dosen pembimbing dan di tutup dengan pemaparan kuliah teori Pengambilan Keputusan oleh Direktur Operasional PTPN X. (Valen_UWM, CIN_Sekper).</p>\r\n	0	0	2019-11-12 23:11:15	WhatsApp_Image_2019-11-12_at_15.36.56.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/berbagi-ilmu-mahasiswa-unidha-kunjungi-ptpn-x
42	B	PTPN X Raih Dua Penghargaan IBA 2019	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X meraih dua penghargaan dalam ajang Indonesia BusinessAward 2019. Penghargaan yang di terima langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo meliputi The Best CEO in Agro Industry 2019 dan The Best Corporate Performance in Agro Industry 2019. Ajang yang mengambil tema &lsquo;<em>Business Transformation for Excellence Performance&rsquo; </em>ini diselenggarakan di Gedung BPPT, Jakarta (11/6).</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X selalu memperbaiki kinerjanya setiap tahun. Penghargaan yang telah diraih ini merupakan sumbangsih dari seluruh karyawan PTPN X. Penghargaan ini tentunya juga didapatkan atas dukungan seluruh <em>stakeholder</em>,&rdquo; terang Dwi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Sebagai salah satu anak perusahaan dari PTPN III (Persero) dan juga sebagai&nbsp;<em>leading company</em>&nbsp;dalam industri gula di Indonesia, PTPN X selalu berupaya berkontribusi maksimal dalam meningkatkan kinerja perusahaan dan menjaga kesejahteraan <em>stakeholder</em>, khususnya petani tebu. Melalui beberapa program yang telah dilakukan antara lain: e-Farming, Pelatihan petani tebu milenial, pemberian bantuan pupuk dan bibit, hingga pemberian Kartu Tani Sehat kepada 6000 orang petani binaan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X akan terus bekerja dengan menjunjung nilai Sinergi, Integritas, dan Profesional sehingga target-target perusahaan dapat tercapai. Tentunya, diimbangi dengan kegiatan tanggung jawab sosial kepada masyarakat,&rdquo; tambah Dwi. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-07 20:02:51	WhatsApp_Image_2019-11-07_at_12.59.03.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-raih-dua-penghargaan-iba-2019
3	A	Smart People Millennial	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Ada yang akan menjadi orang tersisihkan jika tidak siap menghadapi perubahan&rdquo;</em>, itulah yang terbesit di generasi teknologi millennial saat ini. Dimana masa generasi ini di sebut-sebut sebagai generasi perubahan. Pada era ini, semua berkembang seolah-olah menjadi fenomena yang&nbsp;<em style="box-sizing: border-box;">absurd.</em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial diyakini akan sangat berpengaruh dalam kemajuan peradapan teknologi masa depan, karena mereka memegang kendali dan memainkan peran penting dalam perkembangan dunia digitalisasi. Generasi ini lahir di tengah-tengah peradapan teknologi yang canggih dan&nbsp;<em style="box-sizing: border-box;">modern</em>. Hal ini membuat generasi ini sangat dekat dengan teknologi, sehingga berhasil menyulap globalisasi yang mempunyai interaksi tanpa batas dibelahan dunia.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial merupakan generasi pertama yang tumbuh subur dengan perangkat elektronik dan jaringan akses internet. Pada masa ini, setiap orang sangat fasih terhadap penggunaan teknologi. Kemajuan sains teknologi ini mendorong generasi millennial untuk melakukan aktivitas lebih banyak dari pada generasi sebelumnya.&nbsp; Selain itu mereka lebih mudah untuk mempelajari&nbsp;<em style="box-sizing: border-box;">platform digital</em>&nbsp;dengan cepat dan menggabungkan kedalam seni kehidupan mereka.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Akan tetapi semua fenomena kecanggihan itu membawa dampak yang sangat mengerikan. Mobilitas antar negara semakin tinggi, peradapan dunia semakin kejam dan penuh dengan tantangan baru dari segala aspek. Belum lagi tingginya grafik inflasi yang terus naik membuat kebutuhan sulit di jangkau.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Anda sebagai generasi millennial harus manjadi pribadi yang kental akan inovatif, aktif dan kreatif agar mampu mengisi&nbsp;<em style="box-sizing: border-box;">millennial times&nbsp;</em>dengan baik.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Kemajuan tidaklah mungkin tanpa perubahan, dan orang yang tidak mengubah pikirannya takkan mampu mengubah apapun&rdquo;,&nbsp;</em>(Sepositif). Bagi anda yang sekarang berada di generasi muda millennial, anda harus menjadi pribadi yang profokatif dalam banyak hal (positif), karena sejatinya perubahan membutuhkan pengendalian&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;yang bagus. Nah, bagian yang bingung mau ngapain di generasi millennial ini, ada tips yang saya tulis sebagai inspirasi, agar anda menjadi&nbsp;<em style="box-sizing: border-box;">smart people millennial.&nbsp;</em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">A2 (<em style="box-sizing: border-box;">Active Action)</em></span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial bisa menjadi generasi emas dalam sejarah. Dalam konteks generasi ini merupakan generasi peralihan dalam peradaban teknologi. Millennial lebih dominan menjadi &lsquo;generasi pengubah&rsquo;, bukan berkarakter sebagai &lsquo;generasi penerus&rsquo;. Untuk mengisi peradapan millennial ini, anda sebagai energi jiwa muda di era ini harus memiliki&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;A2&nbsp;<em style="box-sizing: border-box;">(Active Action)</em>, yakni aktif aksi dalam membuat revolusi perubahan, karena energi muda millennial identik dengan ide-ide segar dan pemikiran baru. A2 bisa diwujudkan dengan aktifitas sebagai berikut:</p>\r\n<ol style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam penggunaan teknologi untuk penyebaran kegiatan yang positif.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam berinovasi dan membuat gagasan kreatif yang sangat bermanfaat bagi kelangsungan teknologi dan mekanisasi pertanian.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam membangun ide dan gagasan baru di tempat kerja.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam merubah pola dan gaya hidup</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam kegiatan sosialisme dan memodernisasi informasi secara cepat, tepat, akurat dan kekinian.</li>\r\n</ol>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">Internet&nbsp;<em style="box-sizing: border-box;">Positive Of Thinks</em></span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Teknologi tumbuh sangat baik di generasi millennial. Media digitalisasi berkembang dengan cepat membuat interaksi sosial tanpa batas memungkinkan semua dilakukan dengan mudah. Pada konteks komunikasi sosial media berhasil menyulap dan melampaui harapan penggunanya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dilansir dari situs kompas.com, bahwa media sosial dan perkembangan teknologi digital ternyata menyimpan lubang gelap, meski pada titik yang sama menghadirkan kesempatan untuk mempermudah manusia. Pengguna internet di Indonesia adalah terbesar ke-4 di Asia. Dari riset internet&nbsp;<em style="box-sizing: border-box;">World Stats</em>&nbsp;pada 2016, pengakses teknologi internet di negeri ini berjumlah sekitar 78 juta. Adapun penetrasi atau rasio pengguna internet di Indonesia ditaksir sekitar 30,5 persen. Di kawasan Asia, pengguna internet terbesar yakni Cina (674 juta/49,5 persen populasi), India (375 juta/30 persen), Jepang (115 juta/90,6 persen), dan kemudian Indonesia.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Dari fenomena tersebut, apabila tidak ada pengendalian dan kebijakan diri yang baik, tentu hal ini akan memicu timbulnya dampak yang negatif seperti pendirian situs pornografi, membangun komunitas radikalisme, atau penyebaran hoaks.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Perubahan&nbsp;<em style="box-sizing: border-box;">platform</em>&nbsp;teknologi mempengaruhi interaksi manusia di peradapan manusia yang selanjutnya. Nah, sebagai generasi millennial yang cerdas, kita harus menjadi &lsquo;<em style="box-sizing: border-box;">internet positive of thinks&rsquo;&nbsp;</em>artinya, menggunakan internet dengan sehat dan untuk hal yang positif.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;"><span style="box-sizing: border-box; font-weight: bold;">Make Future Projects</span></em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Di peradapan global di masa sekarang sangat tidak cukup bermodalkan pandai beropini. Untuk mengisi generasi millennial dengan cerdas, anda harus membuat dunia menjadi tempat yang lebih baik dari sebelumnya. Anda adalah arsitek dari seni kehidupan anda sendiri, buatlah desain yang menarik untuk gagas revolusi perubahan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial adalah generasi jeniusme. Generasi dimana waktu dan tempatnya dapat di gali berbagai hal-hal baru.Sebagai generasi millennial anda harus mempunyai stabilitas diri yang baik. Bukan hanya sekedar tentang&nbsp;<em style="box-sizing: border-box;">to-do-list&nbsp;</em>tapi lebih&nbsp;<em style="box-sizing: border-box;">focus</em>&nbsp;menuju &shy;<em style="box-sizing: border-box;">to-be-list</em>. Memang bagus berfikir tentang apa, tapi akan terlihat lebih hebat apabila anda lebih berfikir ingin menjadi apa untuk membuat apa.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">95% dari hidup kita berasal dari progam kehidupan.&nbsp;<em style="box-sizing: border-box;">Make Future Projects,&nbsp;</em>mulailah membuat hal kecil setelah membaca artikel ini. Karena generasi di masa depan bisa saja berubah dan berevolusi menjadi lebih baik dari apa yang kita ciptakan hari ini.</p>	48	2	2019-09-25 10:07:09	pict_web.jpg	admin@ptpn10.co.id	muh.rizal@ptpn10.co.id	published	\N
54	A	6 Tips Menjadi Karyawan Berprestasi Di Perusahaan	<p style="text-align: justify;">Sukses merupakan impian semua orang didunia ini. Sejatinya sukses berawal dari sebuah perubahan diri karena tujuan yang besar. Setiap orang pada dasarnya adalah pemenang kehidupan. Tergantung dari mana anda memulai langkah untuk mewujudkannya. Hidup adalah sebuah perjuangan, sehingga memerlukan modernisasi teori kehidupan agar anda menjadi <em>human renewable.</em>&nbsp; &nbsp;</p>\r\n\r\n<p style="text-align: justify;">Ada sejuta cara untuk menjadi pribadi yang sukses, salah satunya adalah menjadi karyawan berprestasi di perusahaan. Tidaklah mudah menjadi <em>user achievement </em>dalam perusahaan. Anda harus benar-benar mempunyai potensi yang besar untuk <em>survive </em>dalam kurva kompetensi sumber daya manusia perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Ada beberapa tips untuk diri anda, sebagai inspirasi untuk menjadi <em>user achievement </em>diperusahaan:</p>\r\n\r\n<p style="text-align: justify;">1. Maksimalkan <em>Passion </em>yang anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><em>Passion </em>adalah kualitas diri. Hal ini yang akan membuat diri anda berbeda dengan orang lain. Temukan <em>passion </em>terbaik dalam diri anda, karena dengan <em>passion </em>yang hebat akan membuat diri anda lebih berkarakter. &nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;">2. Miliki jiwa yang penuh dengan impian</p>\r\n\r\n<p style="text-align: justify;">Sukses adalah milik seseorang yang mempunyai impian besar dimasa depan. Miliki sejuta impian ditempat perusahaan anda bekerja, hal itu akan membawa pada tujuan terbesar dalam hidup anda.</p>\r\n\r\n<p style="text-align: justify;">3. Bekerjalah dengan penuh keyakinan</p>\r\n\r\n<p style="text-align: justify;">Keyakinan adalah hal paling dasar dalam tingkat emosional. Dengan keyakinan yang kuat anda akan membuat keajaiban dan perubahan yang besar.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">4. Jadilah pribadi yang menginspirasi</p>\r\n\r\n<p style="text-align: justify;">Segala sesuatu dalam hidup terjadi sesuai waktu anda dan segalanya terjadi sesuai dengan kecepatan masing-masing. &ldquo;Tidak semua yang diperhitungkan dapat dihitung, dan tidak semua yang bisa dihitung bisa diperhitungkan&rdquo; (Einstein). Anda harus menciptakan hidup yang bermakna, bertujuan dan memberikan inspirasi kebahagiaan bagi semua rekan kerja anda, dan belajarlah cara menggunakannya untuk memberikan pengaruh dan perbedaan buat hidup orang lain, itulah sukses yang sejati.</p>\r\n\r\n<p style="text-align: justify;">5. Tunjukkan kepribadian yang menarik</p>\r\n\r\n<p style="text-align: justify;">Jadilah pribadi yang menyenangkan terhadap rekan kerja anda. Saling memberi motivasi, <em>respect </em>dan saling tolong-menolong. Mempunyai kepribadian yang menarik akan membuat rekan kerja anda nyaman bekerja bersama anda. Secara tidak langsung hal itu akan membuat pekerjaan anda lebih mudah.</p>\r\n\r\n<p style="text-align: justify;">6. Berbagilah cerita tentang pengalaman hidup anda</p>\r\n\r\n<p style="text-align: justify;">Berbagilah cerita tentang perjalanan hidup anda, karena terkadang hanya sekedar dari sebuah cerita, seseorang akan termotivasi untuk melakukan suatu hal baru yang sebelumnya belum mereka coba. Jadilah motivator untuk rekan kerja anda, karena kesuksesan yang besar akan anda dapatkan ketika orang disekeliling anda terinspirasi oleh <em>mindset </em>anda. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: dailysocial.id</p>\r\n	0	0	2018-08-27 18:10:51	5b83799f-d464-4401-9da9-10b0e3e14fb4-kary_berprestasi.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/6-tips-menjadi-karyawan-berprestasi-di-perusahaan
55	A	Seni Profesionalisme Dalam Pekerjaan	<p style="text-align: justify;">Profesionalisme dalam pekerjaan merupakan salah satu seni dalam bekerja. Semua orang bisa melakukan pekerjaan, namun tidak semua orang mampu bekerja secara profesional. Profesionalisme merupakan&nbsp;<em>mindset</em>&nbsp;untuk melakukan sesuatu dengan pemahaman yang luas, teknik <em>modern </em>serta&nbsp;<em>passion</em>&nbsp;terbaik untuk menyelesaikan pekerjaan.</p>\r\n\r\n<p style="text-align: justify;">Dalam dunia kerja, tentunya kompetensi terjadi begitu ketat dan keras. Kompetensi internal sampai tingkat kompetensi individu dalam perusahaan akan&nbsp;profesionalisme menjadi satu hal mutlak yang harus anda miliki jika ingin menjadi yang terbaik ditempat anda bekerja.</p>\r\n\r\n<p style="text-align: justify;">Ada lima prinsip profesionalisme yang mungkin bisa menjadi inspirasi untuk anda dalam pengembangan karir anda diperusahaan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki sains khusus yang menjadikan diri anda berbeda dengan yang lain.</strong></p>\r\n\r\n<p style="text-align: justify;">Jadilah pribadi yang unik,&nbsp;buatlah diri anda mempunyai karakter yang berbeda dengan orang lain. Anda harus lebih aktif menonjolkan bakat yang anda miliki, tunjukkan bahwa diri anda bisa menjadi yang terbaik untuk perusahaan. Yang paling penting adalah buat semua orang mengenal anda melalui bakat yang anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki seni kompetensi yang baru</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam perkembangan dunia kerja di sebuah perusahaan, anda tidak akan terlepas dari aktivitas kompetensi. Buatlah seni kompetensi yang ideal dan proporsional. Bagaimana caranya? Pertama, anda harus mempunyai jiwa inovatif dan kreatif untuk mengendalikan irama kompetensi yang sedang berlangsung. Pandai membaca peluang serta cerdas dalam memberi solusi. Kedua, anda harus mempunyai satu langkah lebih cepat dari rekan kerja anda dalam pengembangan kinerja perusahaan dengan lebih cermat dalam pemilihan gagasan.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki tujuan yang luas</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam bekerja, miliki tujuan yang luas. Disamping memikirkan target perusahaan, anda harus mempunyai tujuan untuk diri sendiri. &nbsp;Bangunlah sebuah tujuan yang besar untuk mimpi anda di masa depan. Jangan sampai impian dan tujuan hidup anda tergadaikan karena terlalu sibuk membangun mimpi perusahaan orang lain.</p>\r\n\r\n<p style="text-align: justify;"><strong>Berikan sesuatu yang menarik untuk</strong>&nbsp;<em><strong>stakeholder</strong></em></p>\r\n\r\n<p style="text-align: justify;">Adakalanya hidup perlu berbagi, namun berbagi tidak harus dengan nilai materi. Berbagi bisa dilakukan dengan sebuah hasil kinerja yang baik dan karya mampu membuat perusahaan tempat anda bekerja lebih dikenal publik karena sebuah karya atau produk yang menginspirasi.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki</strong>&nbsp;<em><strong>mindset</strong></em>&nbsp;<strong>untuk ikhlas dalam segala aspek kehidupan.</strong></p>\r\n\r\n<p style="text-align: justify;">Ikhlas merupakan&nbsp;<em>power of feeling</em>&nbsp;dalam segala aspek kehidupan. Anda akan mendapatkan segala apa yang anda inginkan apabila anda memiliki rasa penerimaan yang lebih dalam hidup. Lakukan pekerjaan anda dengan penuh rasa keikhlasan, karena sesuatu yang besar berawal dari sebuah ketulusan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: kreativa.co.id</p>\r\n	0	0	2018-08-27 17:54:14	5b8374be-6178-4523-a08d-0f38e3e14fb4-seni.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/seni-profesionalisme-dalam-pekerjaan
56	A	Menjadi Pribadi Inspirasi	<p style="text-align: justify;">Menjadi pribadi inspirasi merupakan konsep revolusi <em>mindset</em> bagaimana menciptakan seorang pemimpin yang ideal dalam suatu perusahaan. Pada dasarnya yang menjadi <em>key of changes </em>dalam perusahaan adalah seni kepemimpinan.</p>\r\n\r\n<p style="text-align: justify;">Dalam manajemen organisasi, peran pemimpin memiliki <em>value </em>yang besar dalam mencapai titik puncak visi dan misi perusahaan. Profesionalisme pemimpin adalah dasar revolusi perubahan.</p>\r\n\r\n<p style="text-align: justify;"><em>The leader&rsquo;s revolution </em>merupakan konsep dasar untuk membentuk karakter pribadi yang menginspirasi jika anda adalah seorang pemimpin di perusahaan, dan apabila anda bukan terlahir sebagai &ldquo;<em>Natural born leader&rdquo;, </em>maka konsep ini bisa dijadikan tips untuk membangun jiwa kepemimpinan dalam diri anda.</p>\r\n\r\n<p style="text-align: justify;"><strong>Personal Respect</strong></p>\r\n\r\n<p style="text-align: justify;"><em>First, Personal respect </em>merupakan hal yang paling dasar dalam <em>leader revolution.</em> Sebelum anda melangkah lebih jauh menjadi seorang pemimpin., anda harus mempunyai pemahaman yang baik tentang <em>personal respect.</em> Dibalik <em>personal respect </em>ada 3 kunci yang harus anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><em>Good manners </em></p>\r\n\r\n<p style="text-align: justify;">Akhlak memang secara umum merupakan hal yang mudah dan terlihat lebih sederhana, namun justru sebaliknya akhlak merupakan awal dari sebuah perubahan yang besar. Jika anda menjadi seorang pemimpin jadilah pribadi yang berakhlak baik. Jadilah pribadi yang <em>respect</em> terhadap <em>user </em>yang bekerja dibawah anda. Hargai kinerja dan hasil keringat karya mereka walau di mata anda itu buruk atau tidak bernilai. Beri dukungan, saran dan kritik yang mendukung. Sebagai pemimpin yang baik, anda harus menjadi orang pertama yang mampu menjadi sumber semangat dan motivasi untuk mereka. &nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>Strong of Feelings </em></p>\r\n\r\n<p style="text-align: justify;">Salah satu membangun <em>good work relationship </em>adalah dengan menjalin hubungan yang baik terhadap semua <em>user</em> yang ada dalam perusahaan. Sebagai pemimpin anda harus mempunyai ikatan perasaan yang kuat terhadap semua rekan kerja anda. Jadilah seorang atasan kerja yang baik dengan selalu memberi <em>attention</em>, <em>feeling support, </em>dan menjadi <em>source of inspiration change.</em></p>\r\n\r\n<p style="text-align: justify;"><em>Emotional</em></p>\r\n\r\n<p style="text-align: justify;">Mencapai impian perusahaan yang besar tidak cukup dengan duduk manis dengan sejuta harapan. Anda harus mempunyai tingkat emosional yang kuat agar mampu merasakan dan memahami arah <em>mindset</em> <em>user </em>dibawah anda. Dengan tingkat emosional yang baik, anda akan memiliki perasaan yang kuat dan hal itu akan membuat seni kepemimpinan anda lebih berkarakter. Salah satu kunci<em>&nbsp;</em>dalam membangun kerjasama dan tingkat kepercayaan tim yang baik adalah keseimbangan pengendalian perasaan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Passion for Change</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Second,</em> selanjutnya adalah <em>passion for Change </em>atau semangat yang tinggi untuk berubah. Hakikatnya tanpa semangat, maka jiwa akan terasa mati. Semboyang Dalam bisnis adalah &ldquo;inovasi harga mati&rdquo;. Sebagai pemimpin, anda harus <em>smart and response in new terms. </em>Berilah inspirasi dan tanamkan jiwa semangat pada seluruh bawahan anda. Anda akan lebih bisa menikmati jatidiri sebagai pemimpin jika semangat tumbuh kembang dalam perusahaan.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>The Soul of a Hero</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Third, </em>jiwa pahlawan harus menjadi karakter seorang pemimpin. Semangat kepahlawanan secara tidak langsung akan menjadi sumber inspirasi untuk semua karyawan yang bekerja dibawah anda. Jiwa pahlawan akan membentuk ketahanan emosional dalam menghadapi beragam permasalahan. Konsep <em>the soul of a hero </em>harus tumbuh dalam jiwa seorang pemimpin. Dengan demikian semua karyawan akan merasa damai, nyaman dan tentram tanpa dihantui perasaan akan kehilangan pekerjaan, dengan begitu keseimbangan alam bawah sadar karyawan akan terbentuk dan hal itu nantinya akan menggali potensi dalam diri mereka. &nbsp;</p>\r\n\r\n<p style="text-align: justify;"><strong>Understanding Feelings</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Fourth, </em>dan yang terakhir adalah <em>understanding feelings </em>atau dikenal dengan istilah pemahaman perasaan. Tingkat kesuksesan seni kepemimpinan anda berada pada kurva <em>point </em>ini. <em>Understanding feelings</em> merupakan <em>value </em>paling tinggi dalam konsep ini. Jika anda tidak memiliki hal ini, bisa jadi anda adalah seorang pemimpin yang gagal. Karena dalam hal ini menentukan suka atau tidak suka seorang bawahan terhadap anda. Pada dasarnya hasil semua pekerjaan tidak ada yang sempurna. Anda sebagai seorang pemimpin harus mempunyai pemahaman perasaan yang lebih terhadap hasil kinerja dari bawahan anda. Mempunyai jiwa <em>perfectionist </em>itu boleh saja, tapi jangan menilai <em>just one eye</em> hasil kinerja tim anda, karena itu akan menghambat mereka &nbsp;untuk berkembang. &ldquo;<em>Jadilah pribadi yang menginspirasi tanpa menggurui&rdquo;. </em>Hakikatnya kesempurnaan pekerjaan berada digaris kerjasama tim yang baik. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: cdn.yourarticlelibrary.com</p>\r\n	0	0	2018-07-19 21:37:15	pribadi_menginspirasi.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/menjadi-pribadi-inspirasi
57	A	Filosofi Kerja	<p style="text-align: justify;">Istilah kerja sudah tak asing lagi bagi kita. Apalagi jaman sekarang, begitu banyak pemuda sukses bermunculan. Tapi jangan salah, tentunya mereka mempunyai cara kerja yang berbeda pada umumnya.</p>\r\n\r\n<p style="text-align: justify;">Kerja sudah menjadi separuh kehidupan bagi manusia. Beragam aktivitas dilakukan untuk melakukan sebuah pekerjaan. Meski begitu, tidak semua orang tahu apa sebenarnya hakikat dari sebuah pekerjaan. Beberapa orang menilai sebuah pekerjaan hanya dari segi gaji atau jabatan, sedangkan sebagian persen lainya menilai sebuah pekerjaan dari segi kepuasan hati.</p>\r\n\r\n<p style="text-align: justify;">Sebenarnya ada filosofi besar dibalik kata &lsquo;kerja&rsquo;. Kerja bukan hanya sekedar insting untuk mencari materi. Namun pekerjaan bisa menjadi sumber kebahagiaan yang besar jika kita mampu mengendalikannya.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya melihat orang yang bekerja kantoran tapi tidak sesuai dengan minat mereka itu seperti seekor ubur-ubur lembur. Lemah, lunglai hanya hidup mengikuti arus. Lembur sampai malam, tapi tidak bahagia. Tidak menemukan sesuatu yang membuat hidup mereka punya arti&rdquo; (Raditya Dika). Dari kutipan karya Raditya Dika tersebut, itu merupakan sebuah fenomena&nbsp;<em>pathetic</em>&nbsp;yang banyak terjadi sekarang ini. Sebagai manusia yang mempunyai jatidiri sebagai makhluk yang sempurna, seharusnya bisa melakukan pekerjaan dengan nilai lebih. Lantas apa filosofi kerja itu? Sebenarnya filosofi kerja itu hanya sebatas bagaimana cara kita bekerja, namun selain kita mendapatkan materi, kita juga bisa merasa bahagia. Kebahagiaan inilah yang menjadi&nbsp;<em>point</em>&nbsp;besar dalam filosofi kerja.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>First, working on the field</em>. Jika ingin lebih bisa menikmati sebuah pekerjaan. Bekerjalah sesuai bidang yang anda sukai. Karena rasa suka adalah bagian dari cinta, dan cinta adalah komponen utama dalam meraih kebahagiaan.</p>\r\n\r\n<p style="text-align: justify;"><em>Second, Work to achieve your dream</em>. Jangan hanya sekedar bekerja. Bekerja di perusahaan orang lain itu tidak jadi masalah. Yang jadi masalah adalah ketika kita terlalu sibuk membangun mimpi orang lain dan melupakan mimpi kita sendiri.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><em>Third, Work smart.</em>&nbsp;Bekerjalah dengan cerdas. Pandai bergaul dengan rekan kerja, inovatif dan kreatif. Jangan membiasakan bekerja dengan cara yang sama setiap hari, tapi ciptakan metode dan teknik baru, agar apa yang kita hasilkan bisa menginspirasi banyak orang.</p>\r\n\r\n<p style="text-align: justify;"><em>Fourth,</em>&nbsp;<em>work with a sincere heart</em>. Apapun pekerjaan Anda, lakukan dengan tulus dan penuh penerimaan hati yang ikhlas. Karena dari ketulusan, apa yang kita hasilkan dari pekerjaan akan membuat sebuah perubahan baru.</p>\r\n\r\n<p style="text-align: justify;">Itulah 4 konsep makna filosofi kerja yang mungkin belum Anda ketahui selama ini. Terkadang kita perlu pemahaman yang lebih untuk melakukan pekerjaan yang baik. Membangun sebuah rasa pendalaman untuk menyatu dengan pekerjaan. Karena pada dasarnya, pekerjaan yang besar hanya mampu dilakukan oleh orang yang tahu apa makna dari sebuah pekerjaan.&nbsp;(Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar : entrepreneurshiplife.com</p>\r\n	0	0	2018-06-20 15:03:18	filosofi_kerja.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/filosofi-kerja
58	A	Pupuk Hayati Cair 	<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Pupuk cair hayati atau disebut dengan<em> biofertilizer</em> merupakan pupuk yang mengandung mikroorganisme fungsional (bakteri, fungi, dan actomycetes). Apapun namanya pupuk hayati bisa diartikan sebagai pupuk yang hidup. Pupuk hayati selain mengandung mikroba dapat juga unsur&nbsp;nitrogen (N), fosfor (P) dan kalium (K) serta unsur mikro lainnya. Kandungan pupuk hayati adalah mikroorganisme yang memiliki peranan positif bagi tanaman. Kelompok mikroba yang sering digunakan adalah mikroba-mikroba yang menambat N dari udara, mikroba yang melarutkan hara (terutama P dan K), mikroba-mikroba yang merangsang pertumbuhan tanaman.</span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Istilah pupuk hayati digunakan sebagai nama kolektif untuk semua kelompok fungsional mikroba tanah yang dapat berfungsi sebagai penyedia hara dalam tanah, sehingga dapat tersedia bagi tanaman. Pemakaian istilah ini relatif baru dibandingkan dengan saat penggunaan salah satu jenis pupuk hayati komersial pertama di dunia yaitu inokulan<em> Rhizobium</em> yang sudah lebih dari 100 tahun yang lalu.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Pupuk hayati dapat didefinisikan sebagai inokulan berbahan aktif organisme hidup yang berfungsi untuk menambat hara tertentu atau memfasilitasi tersedianya hara dalam tanah bagi tanaman. Memfasilitasi tersedianya hara ini dapat berlangsung melalui peningkatan akses tanaman terhadap hara misalnya oleh cendawan mikoriza arbuskuler, pelarutan oleh mikroba pelarut fosfat, maupun perombakan oleh fungi, aktinomiset atau cacing tanah. Penyediaan hara ini berlangsung melalui hubungan simbiotis atau nonsimbiotis.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color: rgb(255, 255, 255);">Permentan No.70 tahun 2011, menggolongkan pupuk hayati kedalam pupuk organik. Dalam pengertiannya pupuk hayati berfungsi meningkatkan efisiensi pemupukan, kesuburan dan kesehatan tanah. Formulasi pupuk hayati adalah komposisi mikroba dan bahan pembawa penyusun pupuk hayati. Untuk menjadi pupuk hayati yang terdaftar resmi perlu diuji kandungannya dan efektifitas dilahan.</span><span style="background-color:#FFFFFF;"></span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Beradasarkan peraturan tersebut, kualitas pupuk hayati bisa dilihat dari parameter berikut:</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">1) Jumlah populasi mikroorganisme, jumlah mikroorganisme hidup yang terdapat dalam pupuk harus terukur.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">2)&nbsp;</span></span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Efektivitas mikroorganisme, tidak semua mikroorganisme memberikan pengaruh positif pada tanaman. Fungsi pupuk hayati sebagai &nbsp;penambat N, pelarut P, Penghasil fitur hormone dan perombak bahan organik.</span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">3) Bahan pembawa, fungsinya sebagai media tempat mikroorganisme tersebut hidup.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">4) Masa kadaluarsa, sebagai mana mahluk hidup lainnya mikroorganisme tersebut memiliki siklus hidup.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">5) Patogenitas negatif, kontaminan dan logam berat nihil</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Pupuk hayati cair mempunyai banyak manfaat untuk memperbaiki struktur tanah dan membantu perkembangan tanaman. Ada beberapa fungsi pupuk hayati cair, sebagai berikut:</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">1) Sebagai dekomposer atau meningkatkan kesuburan tanaman</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">2) Memperbaiki dan meningkatkan kualitas kandungan organik di dalam tanah.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">3) Menjaga ketersediaan unsur hara di dalam tanah.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">4) Memperbaiki PH dan membantu penambatan nitrogen pada tanah.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Jadi dari segi spesifikasi serta perbedaan pupuk cair hayati dan jenis pupuk lainnya terletak pada kandungan mikroorganisme didalamnya. Mikroorganisme inilah yang datang membawa berbagai manfaat positif untuk perbaikan struktur pada tanah</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">PT Energi Agro Nusantara menghasilkan pupuk hayati cair berbahan baku vinase hasil samping produksi pabrik bioethanol. Pupuk ini terdaftar dengan nama dagang pupuk enero. Didalamnya mengandung mikroba fungsional yang berguna untuk tanaman dan tanah. Selama ini telah banyak petani yang merasakan manfaat pupuk ini. Pupuk ini telah diaplikasikan diberbagai jenis tanaman seperti tanaman tebu, nanas, hortikultura, palawija dan tanaman keras. (Dhanaviya_Enero, CIN_Sekper)</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">(Sumber:&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">alamtani.com ;&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Permentan No 70 ;&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif; font-size: 10.5pt;">andhinitirtaagro.com)</span></p>\r\n	0	0	2018-06-11 16:34:51	phc.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pupuk-hayati-cair
59	A	Ethanol 99.5% dari Tetes Tebu	<p style="text-align: justify;">Ethanol merupakan jenis utama dari alkohol yang mempunyai&nbsp; struktur CH<sub>3</sub>CH<sub>2</sub>OH atau sering disingkat C<sub>2</sub>H<sub>5</sub>OH atau C<sub>2</sub>H<sub>6</sub>O. Ada beberapa senyawa alam yang mampu diolah untuk menghasilkan&nbsp;<em>ethanol</em>.&nbsp;Salah satunya&nbsp;dari&nbsp;<em>molasses,</em>&nbsp;yakni sisa pengolahan industri gula.</p>\r\n\r\n<p style="text-align: justify;">PT Energi Agro Nusantara (Enero) merupakan perusahaan energi terbarukan yang mengolah molasses (tetes tebu) menjadi&nbsp;<em>ethanol</em>&nbsp;dengan tingkat kemurnian 99.5%.&nbsp; Pabrik ini dirancang khusus untuk memproduksi&nbsp;<em>ethanol fuel grade</em>&nbsp;dengan kapasitas produksi 100 kl/hari. Pembuatan&nbsp;<em>ethanol</em>&nbsp;di PT Enero melalui tahap propagasi, fermentasi, evaporasi, distilasi dan dehidrasi.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>Propagasi</strong>, merupakan proses awal dalam pembuatan&nbsp;<em>ethanol</em>. Dalam tahap propagasi ini, molasses akan&nbsp;melalui proses dilusi serta penambahan Urea dan NPK sebagai nutisi. Kemudian dilakukan&nbsp;<em>inokulasi yeast</em>&nbsp;(ragi) &nbsp;<em>Saccharomyces Cerevisiae.&nbsp;</em></p>\r\n\r\n<p style="text-align: justify;"><strong>Fermentasi</strong>, dalam tahap ini membutuhkan waktu beberapa jam untuk proses respirasi anaerobik.&nbsp; Gula yang terkandung akan diproses menjadi&nbsp;<em>ethanol</em>, karbondioksida dan komponen kimia lainnya.</p>\r\n\r\n<p style="text-align: justify;"><strong>Evaporasi</strong>, setelah proses fermentasi selesai cairan akan dialirkan ke evaporator dengan 4 stage (tahap). Pada evaporator tersebut senyawa&nbsp;<em>ethanol</em>&nbsp;akan menguap dan dialirkan ke kolom distilasi.</p>\r\n\r\n<p style="text-align: justify;"><strong>Distilasi</strong>, Proses distilasi dilakukan untuk memisahkan ethanol dari komponen kimia lainnya yang menjadi&nbsp;<em>impurities</em>&nbsp;(pengotor) berdasarkan titik didihnya, sampai kadar&nbsp;<em>ethanol&nbsp;</em>mencapai 90-92%.</p>\r\n\r\n<p style="text-align: justify;"><strong>Dehidrasi</strong>, setelah kadar mencapai 90-92%, akan dilakukan proses akhir dengan menghilangkan kadar air atau disebut dengan dehidrasi hingga kadar ethanol mencapai 99.5%.</p>\r\n\r\n<p style="text-align: justify;">Ethanol merupakan zat yang mengandung banyak manfaat untuk kehidupan. Untuk penggunaan terbesar saat ini,&nbsp;<em>ethanol</em>&nbsp;dijadikan sebagai&nbsp; energi bahan bakar, kebutuhan medis, serta untuk kebutuhan industri.</p>\r\n\r\n<p style="text-align: justify;">PT Enero akan terus mengembangkan produk&nbsp;<em>bioethanol</em>&nbsp;dalam negeri, mengingat persediaan bahan bakar fosil yang semakin menipis.&nbsp;<em>Bioethanol</em>&nbsp;sendiri merupakan bahan bakar energi terbarukan yang ramah lingkungan,&nbsp;dimana&nbsp;<em>ethanol</em>&nbsp;ini akan menjadikan ketahanan energi yang baik dimasa depan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n	0	0	2018-06-08 16:40:47	LT_4.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ethanol-995-dari-tetes-tebu
60	A	Eksistensi PTPN X di bidang on Farm melalui Teknologi Foto Udara	<p style="text-align: justify;">Jika kita mempelajari pada peta (<em>google maps</em>) begitu luasnya sebaran areal PTPN X. Sebanyak <u>+</u> 70.000 Ha lahan perkebunan tebu milik petani binaan 10 Pabrik Gula, yang tersebar di 19 Kabupaten, 240 Kecamatan, dan 2.175 Desa.</p>\r\n\r\n<p style="text-align: justify;">Beberapa adopsi teknologi sudah di lakukan PTPN X melalui aplikasi <em>e-farming</em> berbasis GIS yang dapat diakses melalui <em>web</em> maupun <em>mobile</em>. Teknologi ini terus dilakukan pembaruan sampai dengan saat ini. Beberapa fitur pada aplikasi tersebut sudah cukup membantu petugas untuk memverifikasi pendaftaran areal.</p>\r\n\r\n<p style="text-align: justify;">Ada beberapa temuan, salah satunya adalah kondisi sosial ekonomi petani mempengaruhi minat menanam tebu. Jika pendapatan petani meningkat, muncul lahan &ndash; lahan baru yang ditanami tebu dimana sebelumnya merupakan tanaman padi dan palawija. Sebaliknya, jika pendapatan petani menurun, lahan yang semula ditanami tebu beralih komoditi menjadi tanaman lain atau bahkan beralih fungsi menjadi bangunan.</p>\r\n\r\n<p style="text-align: justify;">Melihat realita di atas, tentunya tidak mudah untuk mengelola data lahan secara <em>real</em> dikarenakan sering terjadi perubahan fungsi lahan secara dinamis. Oleh karena itu, dibutuhkan teknologi tepat guna untuk mengetahui kondisi lahan terkini, khususnya berkaitan dengan perubahan tata guna lahan maupun produktivitas tanaman. Teknologi yang saat ini digunakan adalah pengolahan data citra dari hasil foto udara dengan <em>drone</em>.</p>\r\n\r\n<p style="text-align: justify;">Saat ini penggunaan <em>drone</em> sudah banyak dimanfaatkan di kalangan pertanian di Indonesia, termasuk di pabrik gula PTPN X guna membantu dalam hal <em>monitoring</em> lahan, mengingat keterbatasan jangkauan indera penglihatan manusia yang tidak mungkin mencakup kondisi lahan yang sebarannya sangat luas.</p>\r\n\r\n<p style="text-align: justify;">Dengan memanfaatkan<em> drone</em>, satu kali pengamatan/terbang mampu meng-<em>cover</em> areal rata-rata seluas (500 x 500 m) atau 25 Ha secara utuh. Sejauh ini, hasil dari foto udara kemudian diolah dan dianalisis secara <em>tematik</em> apakah ada petak yang beralih komoditi/ beralih fungsi lahan serta untuk melihat homogenitas pertumbuhan tanaman yang digunakan sebagai dasar perkiraan potensi produksi.</p>\r\n\r\n<p><strong><em>Alur pembuatan peta tematik dari data foto udara :</em></strong></p>\r\n\r\n<p></p>\r\n\r\n<p><strong><em>Analisis tata guna lahan :</em></strong></p>\r\n\r\n<p></p>\r\n\r\n<p><strong><em>Analisis homogenitas pertumbuhan tanaman :</em></strong></p>\r\n\r\n<p><strong><em></em></strong></p>\r\n\r\n<p>Sedangkan negara-negara dengan pertanian yang maju seperti Australia telah memanfaatkan teknologi tersebut untuk berbagai hal antara lain pemantauan kesehatan tanaman, penyebaran pias, pemantauan pekerjaan lahan &amp; irigasi, identifikasi gulma dan kesuburan tanah. Hal semacam ini bukan tidak mungkin dapat terealisasi di PTPN X ke depan dengan secara konsisten melakukan <em>update</em> informasi dan inovasi teknologi. (Isda_PG Tjoekir, CIN_Sekper)</p>\r\n	0	0	2018-03-26 18:00:20	drone_1.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/eksistensi-ptpn-x-di-bidang-on-farm-melalui-teknologi-foto-udara
61	A	Joss Berkat Kompos	<h2></h2>\r\n\r\n<p>Kompos merupakan hasil penguraian parsial dari campuran bahan-bahan organik yang dapat dipercepat secara buatan oleh beragam mikroba dalam kondisi lingkungan yang hangat dan lembab. Organisme pengurai atau dekomposer dapat berupa mikroorganisme atau makroorganisme. Sedangkan pengomposan adalah proses dimana bahan organik mengalami penguraian secara biologis, khususnya oleh mikroba-mikroba yang memanfaatkan bahan organik sebagai sumber energi.</p>\r\n\r\n<p>Menurut Kepala Sie Kesuburan Tanah dan Laboratorium Penelitian Tembakau Jember Subagio, kompos berfungsi untuk memperbaiki struktur tanah, mendongkrak kemampuan tanah untuk mempertahankan kandungan air (tanah tidak mudah kering), sumber hara tanaman, media tumbuh untuk tanaman serta memacu pertumbuhan dan perkembangan tanaman.</p>\r\n\r\n<p>&ldquo;Kompos dapat diproses dengan metode aerob (dengan udara) dan anaerob (tanpa udara). Kedua metode tersebut menghasilkan kompos dengan kualitas yang sama, hanya saja bentuk fisiknya sedikit berbeda,&rdquo; ujar penggemar olahraga menembak ini.</p>\r\n\r\n<p>Dalam kaitannya dengan limbah organ tembakau di lahan, lanjut Bagio, semuanya berpeluang dijadikan sebagai bahan baku kompos. Namun yang perlu diingat, kandungan senyawa kimia, ketersediaan bahan, kecepatan diurai oleh dekomposer, serta harga produksi yang terbentuk harus menjadi pertimbangan dan parameter karena akan mempengaruhi kualitas, harga, dan daya saing kompos limbah tembakau yang dihasilkan.</p>\r\n\r\n<p>&ldquo;Silahkan diuji coba, dianalisis., dan dibandingkan. Mana yang akan menjadi primadona: kompos kuncup tembakau, kompos daun tembakau, kompos batang tembakau, atau bahkan kompos akar tembakau?&rdquo; pungkas Bagio. (OPI_Penelitian Tembakau Jember, FIR_Sekper)</p>\r\n	0	0	2018-03-19 21:02:34	kompos.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/joss-berkat-kompos
62	A	BBN Masih Jalan di Tempat	<p></p>\r\n\r\n<p>Realisasi Bahan Bakar Nabati (BBN) untuk tahun ini masih jalan di tempat. Rencana pemasaran, PT Energi Agro Nusantara selaku produsen <em>ethanol</em> untuk BBN masih didominasi kebutuhan <em>raw ethanol</em> untuk industri. Hal ini diungkapkan Dimas Eko Prasetyo, Direktur PT Energi Agro Nusantara kemarin (7/6) pada saat ditemui di Main Office PT Energi Agro Nusantara, Mojokerto.</p>\r\n\r\n<p>&ldquo;Rencana produksi kami lebih diarahkan pada <em>raw ethanol</em> untuk pasar industri, sementara permintaan ethanol untuk BBN masih nihil&rdquo; ujar Dimas</p>\r\n\r\n<p>Hal ini sangat disayangkan karena konsumsi BBN sudah menjadi mandatori dari Pemerintah. Sebagaimana tercantum dalam kebijakan pemerintah yaitu UU No. 30 Tahun 2007 tentang Energi dimana Badan Usaha diwajibkan untuk menggunakan BBN sebagai energi baru terbarukan. Selain itu aturan turunan lainnya sudah ada seperti PP, Kepres sampai Permen.</p>\r\n\r\n<p>Terakhir kali <em>ethanol</em> untuk BBN digunakan pada tahun lalu oleh Pertamina namun porsinya sangat kecil sekitar 8.000 liter untuk Pertamax Racing. Sedangkan kapasitas produksi dari PT Energi Agro Nusantara saja mencapai 100 Kl per hari atau 100.000 liter <em>ethanol</em> per hari.</p>\r\n\r\n<p>Perkembangan terakhir, aplikasi BBN terkendala pada fasilitas <em>blending</em> (pencampuran) <em>ethanol</em> dengan Bahan Bakar Minyak (BBM) untuk dijadikan BBN. Fasilitas tersebut sudah dipenuhi oleh PT Pertamina di Surabaya, Ujung Berung dan Balongan. Sedangkan badan usaha lainnya masih dalam tahap pembangunan sarana fasilitas<em> blending</em>.</p>\r\n\r\n<p>Selama ini badan usaha pembeli BBN memang masih mencampur <em>bioethanol </em>secara bersama dalam tangki <em>comingle system</em> atau tangki dengan beberapa kepemilikan. Kondisi seperti ini tidak dipersyaratkan oleh pemerintah, sehingga tiap badan usaha diminta membangun fasilitas blending sendiri-sendiri.</p>\r\n\r\n<p>Melihat kondisi aktual tersebut, PT Energi Agro Nusantara saat ini masih menunggu pengadaan bioethanol untuk BBN yang direncanakan Pertamina bulan Mei lalu dan pengadaan ethanol dari badan usaha lainnya. Berdasarkan rapat implementasi mandatori bioethanol Februari lalu, Kebutuhan ethanol untuk BBN sebesar 2% dengan rincian PT Pertamina (Persero) sekitar 47.567 Kl/tahun, PT Shell indonesia 9.500 Kl/tahun, PT Total Oil Indonesia sekitar 700 Kl/tahun dan PT NEPI sekitar 120 Kl/tahun dan PT AKR 1000 Kl/tahun.</p>\r\n\r\n<p>&ldquo;Jika program mandatori tetap terealisasi maka ini menjadi kabar baik baik bagi kami, namun demikian kami tetap mencari peluang pasar lainnya untuk keberlangsungan perusahaan&rdquo; lanjut Dimas</p>\r\n\r\n<p>Pada tahun ini, PT Energi Agro Nusantara menargetkan produksi <em>ethanol</em> sebesar 13.350 Kl dengan waktu produksi dimulai bulan Juni lalu sampai Desember. Selain PT Energi Agro Nusantara, produsen <em>ethanol</em> lainnya yang masih eksis antara lain Molindo Raya, Indo Acidatama, Indonesia Ethanol Industry, Ethanol Ceria Abadi dan PT Madubaru. Total kapasitas produsen ethanol tersebut mampu menyuplai 212.200 Kl per tahun. Sedangkan kebutuhan BBN 1% saja dari total BBM telah mencapai 300.000 KL. Sehingga usaha ini masih prospektif karena suplai ethanol untuk BBN masih kurang dari kebutuhan BBN nasional.</p>\r\n\r\n<p>Seperti kita ketahui bersama BBN dari <em>ethanol</em> yang dicampur dengan BBM adalah program pemerintah terkait energi terbarukan yang sangat diharapkan untuk mengurangi ketergantungan konsumsi BBM murni. Di negara-negara sekitar seperti Thailand dan Filipina, sudah menggunakan BBN sebagai kebutuhan bahan bakar kendaraan mereka. Perhatian terhadap penggunaan BBN semakin meningkat dari tahun ke tahun. Dari tahun 2015 sampai 2016 saja, kebutuhan BBN di regional asia dan Oceania meningkat 12% dan diprediksi terus meningkat dari tahun ke tahun seiring dengan pemahaman pentingnya BBN untuk kelangsungan energi jangka panjang &nbsp;(ARH_Enero, FIR_Sekper).</p>\r\n	0	0	2017-07-17 16:33:10	enero_pabrik_1.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/bbn-masih-jalan-di-tempat
63	A	Pemanfaatan Vinasse sebagai Pupuk Hayati Cair	<p></p>\r\n\r\n<p>Vinasse, biasa juga disebut sebagai <em>stillage</em> merupakan hasil samping akhir dari proses pengolahan ethanol. Sebelum dihasilkan vinasse hasil samping lainnya dapat dimanfaatkan sebagai diversifikasi proses ethanol seperti <em>yeast</em> <em>mud</em>, biogas, CO<sub>2</sub> dll. Penampakan <em>vinasse</em> berupa cairan kecoklatan dengan massa jenis lebih besar daripada air atau sekitar 1,042 g/cm<sup>3</sup><strong>. </strong>Menurut Meeyer (2013), di beberapa negara, vinasse mengandung nutrisi tinggi terutama potasium dan baik digunakan sebagai pupuk.&nbsp;</p>\r\n\r\n<p>Komposisi Vinasse</p>\r\n\r\n<p>Komposisi vinasse bergantung pada bahan baku proses ethanol, model pengolahan ethanol bahkan pemanfaatan hasil samping lainnya. Namun, sebagian besar vinasse bersifat organik karena bahan baku dan pembantunya juga berasal dari bahan organik. Kandungan vinasse (berbahan baku molasses), sebagai contoh studi di Brazil yaitu unsur-unsur makro dan mikro N, P, K, Ca Mg dan S yang nilainya berkisar dari 0,04-6,5 g/L, serta pH kisaran 4-5. Sedangkan kandungan vinasse di Kolombia berupa N, P, K, Ca Mg dan S berkisar dari 0,01-3,52 g/L, serta pH sekitar 5. Sedangkan karakteristik vinasse dari pengolahan ethanol di PT Energi Agro Nusantara, kandungan unsur-unsur makro sudah berkurang dikarenakan telah terpakai dalam proses biomethanasi yang merubah material organik menjadi energi dalam bentuk biogas. Walaupun demikian vinasse masih menjadi media yang baik karena sifatnya yang organik dan pH-nya yang netral.</p>\r\n\r\n<p><strong>Pemanfaatan Vinasse sebagai Pupuk Hayati Cair</strong></p>\r\n\r\n<p>Dikarenakan sifatnya yang organik, vinasse baik diaplikasikan di tanah. Di negara-negara maju seperti Brazil, vinasse dimanfaatkan langsung sebagai irigasi tanaman. Vinasse berfungsi sebagai pengganti air dan pembenah tanah. Melalui saluran air sepanjang 25 km, vinasse dialirkan ke lahan-lahan tebu. Alternatif lainnya diaplikasikan melalui truk tangki. Sedangkan di PT Energi Agro Nusantara, vinasse diolah terlebih dahulu dengan mikroba fungsional dalam bentuk konsorsium untuk menambah kemanfaatannya. Hasil akhirnya berupa pupuk hayati cair. Aplikasi yang saat ini dilakukan dengan pengisian pupuk hayati cair ke truk tangki dengan kapasitas 5.000-40.000 liter. Dosis bervariasi bergantung pada jenis tanaman, tanah dan keperuntukannya. Biasanya berkisar dari 15.000 liter-200.000 liter per ha. Aplikasi baik dilakukan pada tanaman tebu dan tanaman sejenis, dikarenakan karakteristiknya yang membutuhkan asupan air dalam jumlah besar. Sedangkan bagi tanah, akan membantu membenah unsur-unsur dalam tanah.</p>\r\n\r\n<p>Spesifikasi vinasse sebagai pupuk hayati cair pada intinya sebagai pembenah tanah. Kandungan mikroba pada pupuk akan bekerja sebagai penambat N dan pelarut P dalam tanah. Ragam mikroba antara lain <em>Azospirilum</em> sp., <em>Azetobacter</em> sp., <em>Bacillus</em> sp., <em>Pseudomonas</em> sp. dll.</p>\r\n\r\n<p>Dalam proses penambatan unsur N, tumbuhan tidak dapat memanfaatkan unsur N secara bebas sehingga perlu diubah terlebih dahulu melalui bantuan mikroba fungsional menjadi senyawa organik yang dibutuhkan tumbuhan. Sebagai contoh pada tanaman kacang-kacangan (Leguminosae), mikroba akan membentuk benjolan pada akar dan dibantu enzim nitrogenase yang akan menambat N langsung dari udara. Selanjutnya N dirubah menjadi N organik seperti polipepida dan asam amino.</p>\r\n\r\n<p>Dalam proses pelarutan unsur P, tanaman dibantu mikroba pelarut P. Dalam tanah, P masih terikat dengan unsur lainnya, sehingga perlu dilepaskan mikroba supaya dapat dikonsumsi oleh tanaman.</p>\r\n\r\n<p><strong>Dampak Pupuk Hayati Cair berbahan baku Vinasse bagi Tanah </strong></p>\r\n\r\n<p>Berdasarkan penelitian Penatti (2005), aplikasi vinasse tanpa perlakuan apapun saja dapat meningkatkan konsentrasi K di dalam tanah. Beberapa unsur makro lain juga meningkat seperti N, P Ca, Mg dan S serta unsur-unsur mikro lainnya. Karena sifatyna yang organik, maka akan membantu meningkatkan senyawa organik dalam tanah dan membantu memperbaiki struktur tanah, peningkatan kapasitas tukar kation serta memberi ketahanan terhadap air. Sedangkan dampaknya bagi tanaman, vinasse akan membantu perbaikan akar tanaman.</p>\r\n\r\n<p>Pada demplot yang dilakukan di lahan tebu HGU PG Pesantren Baru dan lahan TS PG Gempolkrep, aplikasi pupuk hayati berbahan baku vinasse menunjukkan hasil yang positif. Sebagai contoh pada kebun HGU, formula pupuk hayati cair sebanyak 50.000 liter/ha dan pupuk anorganik 100% akan meningkatkan jumlah batang per juring 108a cm dan tinggi batang 278a cm dibanding hanya menggunakan pupuk organik dimana jumlah batang per juring hanya mencapai &nbsp;76a cm dan tinggi batang 249a cm. Adapun untuk diameter tidak berbeda secara signifikan. Hasil eksperimen lainnya, pencampuran pupuk hayati dengan pupuk anorganik menunjukkan hasil lebih baik dibanding jika hanya dipupuk anorganik saja.</p>\r\n\r\n<p>Berdasarkan pada penjelasan diatas, secara umum dapat disimpulkan aplikasi pupuk hayati cair direkomendasikan bagi tanaman tebu. Kondisi tanah diharapkan kembali subur secara bertahap, dengan penambahan mikroba fungsional di dalam tanah yang akan membantu mengembalikan unsur-unsur makro dan mikro yang dibutuhkan tanah. Dalam jangka panjang. (Ariel Hidayat_Enero, FIR_Sekper)</p>\r\n\r\n<p><strong>Sumber: </strong></p>\r\n\r\n<p>Penatti CP., De Araujo JV., Donzelli JL, De Souza SAV., Forti JA., and Ribeiro R., 2005: <em>Vinasse &ndash; a liquid fertilizer. </em>Proc. Int. Soc. Sugar Cane Technol.</p>\r\n\r\n<p>Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens KG</p>\r\n	0	0	2017-06-12 16:31:30	vinasse_ariel.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pemanfaatan-vinasse-sebagai-pupuk-hayati-cair
64	A	Pengembangan dan Energy Balance Ethanol di Brazil	<p></p>\r\n\r\n<p>Perkembangan bioethanol di Brazil menjadi tolok ukur kesuksesan industri ethanol&nbsp;dunia. Sebagai <em>role model,</em> informasi pengembangan ethanol di Brazil perlu diketahui bersama terlebih fungsinya untuk campuran bahan bakar konvensional atau fosil. Selain itu, perlu diketahui juga keefektifan pemanfaatan ethanol dari <em>energy balance</em>-nya.</p>\r\n\r\n<p><strong>Perkembangan Industri Gula di Brazil</strong></p>\r\n\r\n<p>Sumber biomassa terbesar di Brazil adalah tanaman tebu dan residu hasil hutan. Industri gula di Brazil sudah ada sejak negara tersebut dibentuk. Berawal dari produksi secara tradisional dan berkembang sejak tahun 1930, ketika Get&uacute;lio Vargas, presiden Brazil saat itu, membentuk The Sugar and Alcohol Institute (IAA). Namun, perubahan drastis terjadi ketika Pemerintah Brazil menetapkan Pro&aacute;lcool (Program Alkohol Nasional) pada tahun 1970-an dan selanjutnya industri gula disana berkembang secara masif.</p>\r\n\r\n<p>Saat ini, Brazil adalah produsen tebu terbesar di dunia yang menyuplai 25% produksi tebu dunia, 13,5% produksi gula dunia dan 55% produksi ethanol dunia. Penanaman tebu mencapai 5 juta ha. Produksi tebu mencapai 340 juta, 25&nbsp; juta gula dan lebih dari 14 miliar liter ethanol. Sedangkan, industri ethanol sendiri telah menyediakan Bahan Bakar Nabati (BBN) untuk 4 juta kendaraan. Industri gula dan ethanol telah menghasilkan 12 miliar dollar atau setara 156 triliun rupiah dan menciptakan 600.000 jenis aktivitas pekerjaan yang terkait. Hampir seluruh penanaman tebu disana didedikasikan untuk produksi ethanol.</p>\r\n\r\n<p><strong>Ethanol sebagai Bahan Bakar </strong></p>\r\n\r\n<p>Khusus untuk ethanol, sebagai bahan bakar kendaraan, kualitasnya jauh lebih baik dari bahan bakar konvensional atau fosil. Ethanol memiliki <em>oxygen</em> <em>content</em> tinggi, tingkat pembakaran sempurna, meningkatkan performa mesin dan mengurangi emisi karbon.&nbsp; Berdasar pada Brazilian <em>Development Bank&nbsp;and Centre for Strategic Studies and Management Science, Technology and Innovation</em> (BNDES), penggunaan bioethanol di Brazil dimulai sejak 1931. Dengan tujuan mengurangi konsumsi BBM dengan pemanfaatan diversifikasi produk gula.</p>\r\n\r\n<p>Dimulai dari pencampuran ethanol 5% pada bahan bakar fosil, selanjutnya Pro&aacute;lcool menetapkan konsumsi untuk 3 miliar liter bioethanol dan memberikan insentif untuk pengembangan produksi dan konsumsi bioethanol di Brazil. Sebagai suatu program, melalui Pro&aacute;lcool Pemerintah Brazil mengambil kebijakan:</p>\r\n\r\n<ol>\r\n\t<li>Tiap tahunnya penggunaan ethanol pada BBM harus meningkat secara bertahap</li>\r\n\t<li>Penetapan harga terjangkau bagi konsumen dan bersaing dengan harga bahan bakar fosil</li>\r\n\t<li>Penjaminan harga kompetitif bagi produsen ethanol dalam bentuk subsidi</li>\r\n\t<li>Penyediaan kredit dengan berbagai tingkatan untuk pabrik gula dengan tujuan&nbsp; meningkatkan kapasitas produksi</li>\r\n\t<li>Pengurangan pajak kendaraan berbahan bakar ethanol, mewajibkan ketersediaan ethanol di tiap-tiap POM Bensin, memonitoring stok ethanol untuk memastikan suplai ethanol selalu terpenuhi</li>\r\n</ol>\r\n\r\n<p>Perkembangan program yang baik diikuti pula beberapa inovasi seperti kehadiran <em>flex</em> <em>vehicles</em> (kendaraan berbahan bakar campuran ethanol dan atau bahan bakar fosil). Teknologi ini diterima sangat luar biasa oleh masyarakat di Brazil dan menstimulasi <em>industri</em> <em>fuel</em> <em>ethanol</em> untuk berkembang pesat. Puncak perkembangan terlihat pada tahun 2009 saja, dimana industri gula di Brazil berhasil memproduksi 25 juta m<sup>3</sup> ethanol.</p>\r\n\r\n<p><strong>Energy Balance</strong></p>\r\n\r\n<p>Sedangkan dilihat dari efisiensinya, perlu diperhatikan <em>Energy</em> <em>Balance</em> dari penggunaan ethanol. Energy Balance atau kesetimbangan energi, biasanya dipresentasikan oleh <em>Net Energy Ratio</em> (NER), dimana hasil dari energi terbarukan dari biofuel dan produk sampingnya dibagi dengan input dari energi konvensional (fosil) dalam seluruh rangkaian rantai produksi. NER memberikan indikasi yang baik atas kapasitas dari biofuel dalam mengurangi ketergantungan energi fosil. Kesetimbangan energi ethanol di Brazil sudah dianalisa sejak tahun 1980-an dan di-<em>update </em>pada tahun 2006 dengan hasil sebagai berikut:</p>\r\n\r\n<ul>\r\n\t<li>Produksi dan transportasi tebu: 210,2 MJ/ton tebu</li>\r\n\t<li>Pengolahan menjadi ethanol: 23,6 MJ/ton tebu</li>\r\n\t<li>Input energi fosil atas poin a dan b: 233,8 MJ/ton tebu</li>\r\n\t<li>Energi terbarukan yang dihasilkan atas poin a dan b: 2185,2 MJ/ton tebu</li>\r\n\t<li>Energi dari ethanol yang dihasilkan: 1.926,4 MJ/ton tebu</li>\r\n\t<li>Surplus ampas tebu: 176 MJ/ton tebu</li>\r\n\t<li>Surplus listrik: 82,8 MJ/ ton tebu</li>\r\n\t<li>NER (<em>Renewable</em> <em>output</em>: ethanol + ampas tebu)/input energi fosil 9 MJ/ton tebu</li>\r\n\t<li>NER (<em>Renewable</em> <em>output</em>: ethanol + ampas tebu + listrik)/input energi fosil 9,3 MJ/ton tebu</li>\r\n</ul>\r\n\r\n<p>Dapat diartikan rasio nilai energi dari ethanol dan surplus ampas tebu adalah 9 kali lebih besar dari input energi fosil, apabila ethanol, surplus ampas tebu ditambahkan dengan surplus listrik maka nilai energi dari pengolahan ethanol dan produk samping adalah 9,3 kali lebih besar dari yang dihasilkan oleh input energi fosil.</p>\r\n\r\n<p>Bahkan menurut Peter Zuuber dalam buku <em>Sugarcane Ethanol, contributions to climate change mitigation and environment</em>, pengembangan industri ethanol secara konsisten, akan memberikan energi rasio 12 kali lebih baik daripada energi fosil. Selain lebih baik, ethanol juga ramah lingkungan, seperti dilansir dari penelitian BNDES, ethanol mengurangi 90% emisi atas efek rumah kaca, berkontribusi dalam mitigasi perubahan iklim dan setiap m<sup>3</sup> ethanol yang dicampur dengan BBM akan mengurangi 1,9 mn t CO2 yang merusak atmosfer.</p>\r\n\r\n<p>Dari bahasan di atas, Indonesia sudah selayaknya berkaca pada Brazil atas pengembangan ethanol. Jika sumber, sarana prasarana, kebijakan sudah tersedia, hanyalah konsistensi yang dibutuhkan saat ini. (ARH_Enero, FIR_Sekper)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sumber: </strong></p>\r\n\r\n<p>Zuuber P., van de Vooren J., 2008: <em>Sugarcane Ethanol, contributions to climate change mitigation and environment, </em>Wageningen Academic Publishers</p>\r\n\r\n<p>Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens KG</p>\r\n	0	0	2017-04-19 15:53:40	bioethanol_brazil.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pengembangan-dan-energy-balance-ethanol-di-brazil
65	A	Cara Mudah Menjadi Penulis Artikel Dan Berita Dengan Kecerdasan Buatan	<p></p>\r\n\r\n<p>Di modernisasi global saat ini, dimana teknologi informasi semakin maju khususnya dipengelolaan konten <em>website</em> perusahaan. Disamping didukung oleh desain dan tema web yang <em>elegant</em>, harus didukung pula dengan <em>konten</em> <em>writer</em> handal yang mempunyai jiwa kreatif dan inovatif. Pada dasarnya nyawa kehidupan dari sebuah konten <em>website</em> adalah artikel dan berita yang menarik pembaca. <em>Konten writer</em> sebagai salah satu strategi yang paling efisien sebagai sarana pemasaran produk-produk perusahaan dan sebagai <em>public relation. </em>Disinilah sebenarnya yang menjadi <em>key success</em> dari beranda sistem manajemen pemasaran.</p>\r\n\r\n<p>Tentunya perlu sedikit biaya yang mahal bila perusahaan menggunakan jasa <em>content writer.</em> Disini saya akan memberikan tips bagaimana cara mudah menjadi seorang <em>konten writer </em>profesional, sehingga semua staf perusahaan mempunyai keinginan bisa menjadi <em>konten writer</em> yang nantinya bisa memberikan kontribusi maksimal untuk menuangkan idenya berupa tulisan-tulisan (artikel dan berita) menarik untuk mengisi konten <em>website</em> diperusahaan. Dengan <em>konten writer </em>yang handal, sebuah perusahaan akan lebih memiliki nilai seni dan citra filosofi.</p>\r\n\r\n<p>Begitu banyak orang yang ingin menjadi penulis namun akhirnya memutuskan aktifitas menulisnya dengan alasan tidak ada inspirasi. Bagaimana caranya menjadi penulis <em>konten writer </em>yang disukai banyak orang?. Sebetulnya menjadi seorang penulis itu tidaklah rumit dan saya yakin bahwa semua orang bisa menulis. Asal ada pemahaman niat yang baik atas apa yang anda tuliskan. Seni menulis itu soal <em>passion. </em>Jika ingin memutuskan untuk menjadi seorang penulis, maka menulislah tanpa ada rasa bosan. Sesibuk apapun aktifitas yang anda kerjakan, sempatkanlah menulis walau hanya sebatas catatan kecil. Teruslah melangkah mencari tempat-tempat sebagai sumber inspirasi.</p>\r\n\r\n<p></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ada beberapa cara yang harus anda lakukan agar bisa menjadi seorang penulis <em>konten writer</em>, dalam artian sebagai cara mudah menulis artikel dan berita yang baik dengan kecerdasan buatan. Kecerdasan buatan adalah sebuah rekayasa perasaan yang sengaja saya kembangkan dalam diri seseorang dengan tujuan membuat seseorang menjadi lebih pintar, memahami apa itu kecerdasan dan membuat pemikiran lebih hidup dalam kejeniusan. Berikut adalah teknik kecerdasan buatan yang saya buat sebagai media untuk merekayasa pemikiran dan perasaaan untuk memudahkan seseorang menemukan <em>passion </em>menulis menuju <em>konten writer </em>professional diperusahaan. Dimana nanti seseorang akan mudah dalam melakukan aktifitas menulis artikel dan berita secara kreatif.</p>\r\n\r\n<p><em>1. Power of feeling </em></p>\r\n\r\n<p>Tidak dapat dipungkiri bahwa semua sumber kekuatan untuk menulis adalah dari kekuatan perasaan. Semua penulis harus mempunyai ketenangan jiwa yang dalam untuk menulis sebuah tulisan menarik. Maka dari itu asah kemampuan kuatnya perasaan anda dengan cara lebih banyak membuka diri untuk bersahabat dan menerima cerita keluh kesah dari orang lain (mudah berbagi). Tanpa sadar anda akan memiliki kekuatan perasaan yang kuat. Inilah yang nantinya akan menjadi <em>power of positive feeling.</em></p>\r\n\r\n<p><em>2. Do a long trip</em></p>\r\n\r\n<p>Setiap tempat sejatinya memiliki sebuah cerita tersendiri. Kunjungilah tempat-tempat yang jauh dan bersejarah dikehidupan anda, disitulah nanti anda akan menemukan inspirasi yang baik untuk membantu menyelsaikan <em>project</em> tulisan-tulisan anda dengan mudah. Jangan menutup diri dari dunia jika ingin menjadi seorang penulis.</p>\r\n\r\n<p>Hakikatnya inspirasi hanya milik alam semesta dan mengalir melalui emosional. Suasana alam yang tenang dan damai akan mengantarkanmu ke dalam dunia menulis. Percayalah, semakin banyak anda mengunjungi suatu tempat maka anda akan cinderung mempunyai kebiasaan yang kuat untuk mengabadikan kenangan itu dalam cerita catatan kecil. Inilah awal bahwa anda akan terbiasa menulis.</p>\r\n\r\n<p><em>3. Along with people</em></p>\r\n\r\n<p>Kunjungilah tempat dimana banyak orang yang mempunyai hobi seni menulis. Lakukan pendekatan emosional yang nantinya mereka akan berbagi pengalaman hidup. Disinilah yang menjadi <em>point &nbsp;</em>penting, karena anda akan mendapatkan sumber-sumber inspirasi yang hebat untuk merangsang keinginan aktifitas menulis. Jika anda berteman dengan seorang penulis, anda akan menerima dorongan yang positif. Mereka cenderung mengajak anda ke dalam aktifitas yang mereka sukai. Secara tidak langsung perasaan pola fikir anda akan terbawa kedalam dunia mereka. Tanpa disadari perlahan anda akan menjadi seorang penulis.</p>\r\n\r\n<p><em>4. Cultivate a sense of love to read</em></p>\r\n\r\n<p>Membaca adalah <em>window of the world.</em> Perbanyaklah membaca karena itu adalah langkah awal untuk menyatu dengan dunia ini. Kanvas alam akan memberikan cerita yang menarik untuk anda tulis. Maka membacalah sebanyak mungkin karena dengan itu anda akan lebih memiliki kosa kata yang luas untuk membentuk tulisan-tulisan yang ideal. Dengan banyak membaca maka fikiran dan perasaan seseorang akan bergejolak. Ia &nbsp;merasa terhipnoterapi dan terangsang untuk meniru atas apa yang dibaca. Rangsangan inilah yang nantinya menumbuhkan <em>passion</em> menulis dalam jiwa seseorang.</p>\r\n\r\n<p><em>5. Deepen the side and around the information technology</em></p>\r\n\r\n<p>Hidup dijaman sekarang tidak lepas dari teknologi informasi. Sebelum anda memulai menulis, pastikan dulu anda sudah mengetahui apa saja atau hal-hal yang menjadi <em>trending topic </em>ter-<em>update </em>didunia informasi. Nantinya itu bisa membantu mempermudah dalam menyajikan tulisan yang ingin anda tulis. <em>Enter and live in the world of information</em>. Bila punya lebih waktu luang, tidak ada salahnya nongkronglah didunia <em>online</em> sedikit lebih lama. Banyak sekali kisah-kisah inspiratif yang akan membantu anda melangkah untuk perubahan. Dunia seakan ada dalam genggaman. Disitulah nanti seseorang akan menemukan rahasia jati diri untuk memulai goresan pena dalam kanvas seni menulis. &nbsp;Dalam konsep ini, akan ada sesuatu yang berbeda dalam diri seseorang, ia akan lebih mempunyai keinginan yang kuat menulis untuk dunia.</p>\r\n\r\n<p>Itulah lima tips yang perlu anda coba dan lakukan bila ingin menjadi seorang c<em>ontent writer.</em> &nbsp;Konsep itu akan membantu anda untuk menemukan <em>passion</em> bagaimana cara menulis artikel dan berita dengan mudah. Menulis hanya mampu dilakukan oleh seseorang yang mempunyai jiwa yang baik dan mepunyai kekuatan perasaan yang kuat. Maka metode kecerdasan buatan yang saya tulis ini diharapkan mampu merekayasa perasaan untuk menciptakan <em>power of feeling</em> &nbsp;dan membuat revolusi cara menulis. (M. Dhanavia_Enero, FIR_Sekper)</p>\r\n\r\n<p align="right"><em>Dengan menulis</em>, <em>dunia akan mengenalmu lebih baik (dhanavia)</em></p>\r\n	0	0	2017-03-22 17:19:35	konten_writer_2.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/cara-mudah-menjadi-penulis-artikel-dan-berita-dengan-kecerdasan-buatan
66	A	The Power of Positive Feeling: Hati Yang Ikhlas, Untuk Dunia Tanpa Batas	<p align="center">&nbsp;</p>\r\n\r\n<p align="center"></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Mungkin di luar sana banyak orang yang menganggap bahwa kekuatan perasaan dalam hati itu hanya sesuatu yang <em>non-primary issue</em>. Percaya atau tidak, jangan meremehkan tentang hal ini, karena pada dasarnya kekuatan perasaan dalam hati itu kekuatanya 5.000 kali kekuatan pikiran.</span></pre>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>The power of positive feeling</em>, salah satunya adalah ikhlas. Ada apa dengan ikhlas? Dunia ini adalah tempat kesedihan sehingga Tuhan menciptkan ikhlas dalam hati manusia yang bertujuan untuk mengkalibrasi emosional di kala kehidupan sedang terpuruk. Perasaan dalam hati merupakan sebuah indikator penting bagaimana keadaan emosional dalam diri kita, apakah positif atau negatif. Dengan <em>the power of positive feeling </em>otomatis <em>positive thinking</em> akan mengikuti. Dan apabila keduanya bersinergi hasilnya akan sangat luar biasa. Perasaan dalam hati akan didominasi oleh kebaikan tanpa batas.</span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Kenapa hidup itu perlu yang namanya ikhlas? Dunia ini sangatlah luas. Hamparan samudera, langit, dan dataran itulah sebuah penciptaan mahakarya Tuhan yang luar biasa. Di balik keindahan itu semua, Tuhan juga menciptakan kegelisahan, kesedihan dan hal yang buruk lainya. Semuanya itu terkonsep dalam satuan yang dinamakan takdir. Disinilah ikhlas akan bekerja maksimal bagi seseorang yang berfikir.</span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>Bahwa hidup harus menerima, penerimaan yang indah. Bahwa hidup harus dimengerti, pengertian yang benar. Bahwa hidup harus memahami pemahaman yang tulus. Lihatlah daun yang jatuh tak pernah membenci angin. Dia membiarkan dirinya jatuh begitu saja. Tak melawan. Mengikhlaskan semuanya (Tere Liye).</em></span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Apa hubungannya ikhlas dengan dunia tanpa batas? Dari contoh konsep <em>positive feeling </em>yang dibuat oleh Tere Liye tersebut, kunci pemahaman dalam konteks dunia yang tanpa batas ini adalah sejauh mana diri ini mengenal apa itu keikhlasan hidup. Yang artinya, bila seseorang hatinya sudah menguasai rasa ikhlas, maka dialah orang yang termasuk dari golongan yang beruntung. Hanya orang yang ikhlas saja yang mampu menterjemahkan apa saja yang ada di dunia ini. Disamping itu bahwa orang yang hatinya sudah tertanam rasa ikhlas, ia akan mampu menggenggam dunia beserta isinya ini dalam pandangan mata dan lingkupan kedua tangannya.</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Ada suatu keindahan yang didapatkan oleh seseorang yang berhasil menanamkan rasa ikhlas di dalam dirinya. Hal itu dirangkum dalam <em>four advantage in the world.</em></span></pre>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>1. Get to know the world more</em> (Bisa mengenal dunia lebih jauh)</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">2.&nbsp;<em>Know the meaning of real success</em> (Bisa mengetahui arti sukses yang sejati)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">3.&nbsp;<em>Get to know what the true meaning of happiness (</em>Bisa mengenal apa arti kebahagiaan yang sesungguhnya)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">4.&nbsp;<em>Accept</em><em>ing</em><em> destiny</em><em> easily</em> (Mudah menerima takdir)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Hidup ini adalah tentang belajar. Sejauh mana hati bisa memaknai ketulusan, disitulah keindahan hidup akan kita rasakan. Sejauh mana mata memandang, disitulah awal dunia yang baru. Dan sejauh mana kita mengenal keikhlasan, disitulah Tuhan akan memberi kenikmatan yang besar. (Moh Dhanavia_Enero, FIR_Sekper)</span></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Sumber:</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;"><em>The power of positive feeling:</em> Presentasi pada sharing session oleh Dimaz Anandito</span></pre>\r\n	0	0	2017-03-08 16:42:34	ikhlas.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/the-power-of-positive-feeling-hati-yang-ikhlas-untuk-dunia-tanpa-batas
67	A	Leadership Adalah Tentang Persetujuan Dari Yang Dipimpin	<p></p>\r\n\r\n<p>Leadership membutuhkan persetujuan dari bawahan sebagai sosok yang dipimpin. Mengapa demikian?&nbsp; Tanpa adanya persetujuan dari yang dipimpin, maka seorang pemimpin akan mendapatkan kesulitan dalam mengarahkan bawahannya. Sehingga mengakibatkan program yang sudah dicanangkan tidak dapat berjalan dengan baik.</p>\r\n\r\n<p>Karena itu seorang pemimpin harus dapat menunjukkan ke bawahannya, bahwa mereka adalah sosok yang pantas untuk memimpin dan memberi arahan untuk menuju arah yang lebih baik lagi.</p>\r\n\r\n<p>Seorang bawahan membutuhkan <em>role model</em> yang tepat dalam menjalankan pekerjaannya. Dan itu harus mereka dapatkan dari sosok pemimpinnya. Jika seorang pemimpin tidak dapat menjadi <em>role model </em>yang baik, bisa dipastikan bawahannya tidak akan patuh 100%. Mereka akan memiliki anggapan, &quot;<em>lha wong</em> pimpinanku aja seperti itu, maka normal saja saya juga tidak akan bekerja dengan baik&quot; atau &quot;untuk apa menuruti perintah pimpinan yang integritasnya juga tidak ada, capek sendiri&quot;.</p>\r\n\r\n<p>Nah, sebagai seorang pemimpin, bagaimana cara yang terbaik untuk memimpin? Menurut seorang pakar kepemimpinan, rahasia termudah untuk menjadi pemimpin yang baik adalah dengan <strong>Get Trust dan Ask.</strong></p>\r\n\r\n<p><strong>Get Trust</strong></p>\r\n\r\n<p>Sebelum memulai melaksanakan tugas sebagai seorang pemimpin, mereka harus menceritakan terlebih dahulu siapa mereka, bagaimana cara mereka memimpin dan apa harapan mereka kepada bawahannya.</p>\r\n\r\n<p>Ketika seorang pemimpin melakukannya, maka bawahan mereka akan menganggap pemimpinnya adalah orang yang open mind atau terbuka. Dampaknya adalah mereka akan menjadi lebih terbuka dalam menyuarakan ide dan aspirasinya</p>\r\n\r\n<p>Dalam kondisi tersebut suasana bekerja di dalam sebuah Perusahaan akan menjadi semakin kondusif. Hal ini diharapkan dapat meningkatkan produktivitas di dalam pekerjaan. Bukankah salah satu peran dari seorang pemimpin adalah untuk meningkatkan produktivitas kerja dari bawahannya.</p>\r\n\r\n<p><strong>Ask</strong></p>\r\n\r\n<p>Seorang pemimpin perlu menanyakan kepada bawahannya tentang apa yang dapat membuat mereka bisa bekerja dengan optimal.</p>\r\n\r\n<p>Tentu maksud dari pertanyaan ini bukanlah untuk membuat seorang bawahan dapat menyampaikan permintaannya melebihi dari peraturan yang sudah ditetapkan oleh perusahaan. Selalu ada batas yang sudah ditetapkan dan digarisbawahi dari peraturan yang sudah dikeluarkan oleh Perusahaan.</p>\r\n\r\n<p>Tetapi maksud dari pertanyaan ini adalah supaya setiap karyawan dapat bekerja dengan nyaman dan optimal dengan tujuan akhir adalah mencapai target yang sudah dicanangkan oleh perusahaan.</p>\r\n\r\n<p>Berikut adalah beberapa contoh pertanyaan yang bisa dikemukakan kepada bawahan:</p>\r\n\r\n<ol>\r\n\t<li>Apa yang harus kami lakukan yang belum kami lakukan saat ini, yang dapat meningkatkan performa Anda dalam bekerja?</li>\r\n\t<li>&nbsp;Apa yang harus kami hentikan yang sudah kami lakukan saat ini, yang dapat menghambat Anda mencapai performa maksimal dalam bekerja?</li>\r\n\t<li>Apa yang harus tetap kami lakukan dalam memimpin Anda, supaya Anda dan divisi Anda dapat mencapai performa terbaik?</li>\r\n</ol>\r\n\r\n<p>Selain kedua cara di atas <strong>ask &amp; get trust, </strong>ada metode yang dapat meningkatkan persetujuan dari seorang bawahan untuk dipimpin oleh pemimpinnya. Yaitu dengan <strong>membuat daftar hitam dan putih</strong>.</p>\r\n\r\n<p>Buatlah sebuah daftar yang berisikan hal-hal yang kita sukai dari pemimpin kita dan lakukan kepada bawahan kita. Kemudian buatlah daftar lainnya yang berisikan hal-hal yang tidak kita sukai dari pemimpin kita dan hindari melakukannya kepada bawahan kita.</p>\r\n\r\n<p>Setiap dari kita tentu pernah berinteraksi dengan seorang pemimpin. Dan harus diakui ada hal-hal yang kita sukai dan tidak. Daftar yang kita buat di atas sangat bermanfaat saat kita menjadi seorang pemimpin. Apakah kita akan melakukan hal yang kita sendiri tidak menyukainya saat menjadi seorang bawahan?</p>\r\n\r\n<p>Semoga setiap pemimpin semakin memahami bahwa untuk memimpin seseorang membutuhkan persetujuan dari yang dipimpin. Dan mendapatkan kepercayaan dari bawahan merupakan langkah awal untuk memimpin dan mengarahkan mereka sejalan dengan target yang telah ditetapkan oleh Perusahaan. (Rehandy Prismawan</p>\r\n\r\n<p>_ENERO)</p>\r\n\r\n<p>Sumber Penulisan:</p>\r\n\r\n<p>Internal training karyawan,&nbsp; &quot;Mindset Building For Organizational Development&quot;.</p>\r\n	0	0	2017-01-18 19:23:18	gaya-kepemimpinan-dalam-organisasi1.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/leadership-adalah-tentang-persetujuan-dari-yang-dipimpin
68	A	Pentingnya Menggali Value Karyawan	<p></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Value</em> adalah nilai diri yang menjadi tolok ukur karyawan di dalam perusahaan. <em>Value</em> harus digali supaya setiap karyawan sadar akan perannya terhadap keberlangsungan operasional perusahaan. Untuk menggali <em>self-awareness</em> dari setiap karyawan bisa dimulai dengan bertanya, &ldquo;Siapakah Anda bagi perusahaan ini?&rdquo;.&nbsp;</p>\r\n\r\n<p>Ketika diberikan pertanyaan tersebut, jawaban yang muncul akan beragam. Namun sesungguhnya jawaban terbaik adalah saya merupakan bagian dari perusahaan ini.</p>\r\n\r\n<p>Jawaban itu menandakan bahwa karyawan tersebut sudah sadar bahwa perusahaan memiliki peran yang sangat penting bagi kehidupannya dan dia memiliki bagian dari perjalanan dari perusahaan untuk mencapai visi misi yang telah dicanangkan.</p>\r\n\r\n<p><strong>Mengapa menggali value setiap karyawan ini menjadi penting?</strong></p>\r\n\r\n<p><strong>Yang pertama</strong> adalah untuk menumbuhkan <em>sense of belonging </em>terhadap Perusahaan. <em>Sense of belonging </em>adalah kesadaran atau rasa memiliki terhadap Perusahaan. <em>Sense of belonging </em>ini akan membuat karyawan &quot;merelakan&quot; visi misinya melebur menjadi satu dengan visi misi perusahaan.</p>\r\n\r\n<p><strong>Yang kedua</strong> adalah untuk menumbuhkan <em>self awareness </em>terhadap dirinya sendiri. Setiap karyawan akan menjadi &quot;sadar&quot; akan posisi mereka di dalam perusahaan. Akibatnya adalah mereka bisa memberikan nilai ukur terhadap hal-hal yang diharapkan perusahaan kepada dirinya. Apakah performa yang selama ini ditunjukkan sudah sesuai dengan harapan perusahaan?</p>\r\n\r\n<p>Dua hal tersebut merupakan pondasi dasar dalam bekerja.</p>\r\n\r\n<p>Sedangkan jika dilihat dari sudut pandang karyawan, usaha perusahaan untuk&nbsp;menggali value mereka&nbsp;akan membuat mereka merasa diperlakukan dengan baik. Bahwa perusahaan selalu memiliki harapan untuk setiap karyawan dapat berkembang lebih baik, <em>hardskill</em> maupun <em>softskill</em>. Dengan mendapatkan perhatian yang baik dari perusahaan, mereka akan menjadi loyal.</p>\r\n\r\n<p>Di dalam sebuah survey yang dilakukan oleh Saylor Foundation, penyebab terjadinya <em>turn over</em> atau hengkangnya seorang karyawan ke perusahaan lain adalah karena tidak diperlakukan dan diperhatikan dengan baik.</p>\r\n\r\n<p>Dengan Perusahaan menggali value ini, dapat dikatakan bahwa perusahaan sedang melakukan strategi <em>retention </em>untuk mencegah terjadinya <em>turn over </em>yang tinggi. Perusahaan menyadari bahwa ketika terjadi <em>turn over</em>, Perusahaan akan mengalami kerugian. Baik itu dari sisi <em>recruitment cost </em>sampai dengan <em>time gap </em>supaya karyawan baru dapat memberikan performa seperti yang diharapkan.</p>\r\n\r\n<p>Karena itu, jika perusahaan belum melakukan usaha menggali <em>value </em>setiap karyawan, agar segera dilakukan. Demi kemajuan bersama, perusahaan dan karyawannya. (Rehandy Prismawan_ENERO)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber Penulisan:</p>\r\n\r\n<p>Internal training PT Energi Agro Nusantara, &quot;Mindset Building For Organizational Development&quot;</p>\r\n	0	0	2017-01-18 19:07:13	ValueCustomer.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pentingnya-menggali-value-karyawan
26	B	Pacu Transformasi Bisnis, PTPN X Rombak Jajaran Komisaris PT Dasaplast Nusantara dan Enero	<p style="text-align: justify;">Guna memacu performa anak perusahaannya, PTPN X melakukan perombakan di jajaran komisaris. Tantangan dan dinamika bisnis yang sangat dinamis, menuntut perusahaan untuk bekerja lebih inovatif dan produktif agar mampu bertahan menjadi yang terbaik.</p>\r\n\r\n<p style="text-align: justify;">&rdquo;Kepada Dewan Komisaris yang baru dilantik saya ucapkan selamat bertugas. Saya harapkan ke depannya bisa menghadirkan semangat dan ide-ide baru untuk terobosan dan inovasi perusahaan. Mengantarkan anak perusahaan PT Dasaplast Nusantara dan PT Energi Agro Nusantara (Enero) menjadi <em>leader</em> di masing-masing bidang bisnisnya,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi ini menurutnya sebagai langkah awal menghadapi tantangan di tahun 2020. Proyek PMN yang ditargetkan selesai di tahun 2020 diharapkan bisa menjadi langkah-langkah inisiasi untuk kelancaran PT Enero.&nbsp; Sehingga PT Enero dapat menjadi <em>leader </em>dan <em>pioneer </em>untuk perusahaan Energi Baru Terbarukan.</p>\r\n\r\n<p style="text-align: justify;">Untuk PT Dasaplast Nusantara sendiri, Dwi melihat banyak sekali pangsa pasar yang luas, dan belum dijajaki. Harapannya, PT Dasaplast Nusantara bersama jajaran komisaris yang baru mampu mengambil kesempatan tersebut dengan membentuk tim <em>marketing</em> yang handal dan merajai pangsa pasar yang terbuka.</p>\r\n\r\n<p style="text-align: justify;">Dalam kesempatan tersebut Direktur Utama PTPN X juga kembali mengingatkan tentang budaya kerja Sinergi, Integritas, dan Profesional (SIPro), dimana kita harus terus menerapkan nilai-nilai semangat tersebut, dan akhlak yang baik sehingga membawa PTPN Group ini selaras dengan dinamika bekerja sehari-hari.</p>\r\n\r\n<p style="text-align: justify;">Berikut nama-nama dewan komisaris anak perusahaan PTPN X yang dilantik:</p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;">Suryanto sebagai&nbsp;Komisaris Utama PT Dasaplast Nusantara</li>\r\n\t<li style="text-align: justify;">Arif Suhariadi sebagai&nbsp;Komisaris PT Dasaplast Nusantara</li>\r\n\t<li style="text-align: justify;">Wakhyu Priyadi Siswosumarto&nbsp;sebagai Komisaris Utama PT Enero</li>\r\n\t<li style="text-align: justify;">Agus Minhandoko sebagai Komisaris PT Enero</li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">(PUT_Sekper, CIN_Sekper)</p>\r\n	1	0	2019-12-02 23:14:45	web_sertijab_komisaris_anper.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pacu-transformasi-bisnis-ptpn-x-rombak-jajaran-komisaris-pt-dasaplast-nusantara-dan-enero
78	B	Gelar Reuni, Pensiunan Doakan Kejayaan PTPN X	<p style="text-align: justify;">Ratusan pensiunan PT Perkebunan Nusantara (PTPN) XXI - XXII (Persero) dan PTPN X menggelar doa untuk kejayaan PTPN X dalam acara Reuni/Silaturahim Melebur Dosa yang digelar di Graha Djombang Baru, Sabtu (21/12). Ajang reuni merupakan kegiatan yang selalu dinanti oleh para pensiunan karena mereka bisa kembali bertemu dan bercanda dengan teman seperjuangan dalam membangun perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Ketua P3GI, Jumairi mengatakan pihaknya sangat berterimakasih kepada pabrik gula yang telah memberikan bantuan berupa uang tunai untuk terselenggaranya kegiatan ini.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kami juga berterima kasih kepada PT Nusantara Medika Utama yang tidak hanya memberikan bantuan berupa pemeriksaan kesehatan gratis tetapi juga memberi bantuan berupa uang tunai,&quot; kata Jumairi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Selain dari iuran seluruh anggota, sambung Jumairi, panitia juga menyebarkan proposal permohonan bantuan dana untuk acara ini. Sehingga terkumpul dana sebesar Rp 52.350.000 dan untuk pembiayaan kegiatan hari ini menghabiskan dana sebesar Rp 51.600.000.</p>\r\n\r\n<p style="text-align: justify;">Jumairi menambahkan dari dana yang terkumpul tersebut juga akan diberikan penghargaan kepada 10 pensiunan dengan kriteria umur yang panjang, sehat dan semangat. Para penerima penghargaan tersebut rata-rata berusia 80 tahun lebih bahkan ada yang mencapai usia 94 tahun.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kepada Dirut PTPN X, kami para pensiunan berharap dan berdoa agar kedepan tidak ada lagi pabrik gula yang ditutup,&quot; imbuhnya.</p>\r\n\r\n<p style="text-align: justify;">Di tempat yang sama, Direktur Utama PTPN X, Dwi Satriyo Annurogo menyampaikan di tahun 2019 ini, banyak penghargaan yang diperoleh PTPN X. Bahkan, PTPN X pun telah didapuk sebagai kordinator PTPN Gula oleh Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero).</p>\r\n\r\n<p style="text-align: justify;">&quot;Apa yang kami peroleh saat ini merupakan buah rintisan dan pondasi yang telah bapak ibu bangun,&quot; kata Dwi.</p>\r\n\r\n<p style="text-align: justify;">Dwi menambahkan pihaknya akan terus membangun dan meningkatkan kejayaan PTPN X. (Red3, PUT_Sekper)</p>\r\n	0	0	2019-12-23 08:15:47	IMG_8519.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/gelar-reuni-pensiunan-doakan-kejayaan-ptpn-x
75	B	Sambut Tahun Baru, PTPN X Luncurkan Berbagai Inovasi Baru	<pre style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">\r\nMemasuki tahun baru 2020, Perkebunan Nusantara (PTPN) X yang merupakan anak perusahaan dari Holding Perkebunan PT Perkebunan Nusantara III (Persero) menggelar perayaan Tahun Baru pada (2/1). Bertempat di Ruang Pandu, Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya.&nbsp;Acara yang dihadiri Direksi PTPN X, Ketua dan Pengurus APTRI, Perwakilan Petani, Ketua dan Pengurus Serikat Pekerja PTPN X, Pimpinan Perbankan,&nbsp;Anak Perusahaan dan seluruh karyawan PTPN X. \r\n\r\nDirektur Utama PTPN X, Dwi Satriyo Annurogo mengatakan bahwa tahun 2020 merupakan tahun yang penuh tantangan, maka dari itu pihaknya telah menetapkan tahun 2020 sebagai tahun inovasi, dimana setiap karyawan dituntut untuk bisa melahirkan inovasi terbaru yang merupakan solusi bagi permasalahan-permasalahan di masa datang.\r\n\r\n&quot;Pada kesempatan kali ini saya ingin berterima kasih kepada semua karyawan atas kinerja perusahaan di tahun 2019, yang berhasil mempertahankan prestasi PTPN X sebagai leader industri gula dan mampu meraih laba, dan saya optimis bahwa target tahun 2020 akan tercapai. Ditunjang dengan perbaikan di sisi SDM yang selalu berpedoman pada corporate value SIPro (Sinergi, Integritas, dan Profesional), &quot; ungkapnya.\r\n\r\nTerlebih PTPN X telah menyusun sasaran kerja, sehingga kontribusi dan kinerja masing-masing karyawan dapat terukur. Hal tersebut juga ditunjang dengan kompetensi unggul dari masing-masing karyawan.\r\n\r\nDalam acara tersebut juga di launching, beberapa inovasi terbaru dari PTPN X yakni Digimagz PTPN X dan Office Automation guna kelancaran administrasi dan informasi serta melakukan program paperless juga launching Cerutu Golden Boy produksi dari PTPN X.\r\n\r\nCerutu Golden Boy sendiri merupakan Cerutu High Class Premium, produk Unit Tembakau Jember yang bercita rasa Internasional. Cerutu ini dibuat dengan bahan-bahan pilihan yaitu tembakau dekblad kualitas premium dan dikerjakan oleh tenaga ahli dibidang cerutu. Sementara itu pasar yang dituju adalah kelas menengah ke atas dan pasar luar negeri. (Red2, PUT_Sekper).</pre>\r\n	2	0	2020-01-02 13:34:27	IMG_9166.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sambut-tahun-baru-ptpn-x-luncurkan-berbagai-inovasi-baru
\.


--
-- Data for Name: news_cover; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_cover ("ID_COVERSTORY", "ID_NEWS") FROM stdin;
4	17
4	18
\.


--
-- Data for Name: news_share; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_share ("ID", "EMAIL", "ID_NEWS") FROM stdin;
3	reyhan@ptpn10.co.id	3
4	reyhan@ptpn10.co.id	3
\.


--
-- Data for Name: news_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_tags ("ID_TAGS", "ID_NEWS") FROM stdin;
5	3
5	74
5	21
5	22
5	75
5	77
5	78
5	79
5	80
5	23
5	24
5	25
5	17
17	17
18	17
17	18
5	18
18	18
5	26
5	27
5	28
5	29
5	30
5	31
5	32
5	33
5	34
5	35
5	36
5	37
5	38
5	39
5	40
5	41
5	42
5	43
5	44
5	45
5	46
5	47
5	48
5	49
5	50
5	51
5	52
5	53
5	54
5	55
5	56
5	57
5	58
5	59
5	60
5	61
5	62
5	63
5	64
5	65
5	66
5	67
5	68
5	81
\.


--
-- Data for Name: news_view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_view ("ID", "EMAIL", "ID_NEWS") FROM stdin;
58	firnasreyhan@gmail.com	18
3	reyhan@ptpn10.co.id	3
4	reyhan@ptpn10.co.id	3
7	firnasreyhan@gmail.com	3
8	firnasreyhan@gmail.com	3
9	firnasreyhan@gmail.com	3
10	firnasreyhan@gmail.com	3
11	firnasreyhan@gmail.com	3
12	firnasreyhan@gmail.com	3
156	digimagz5@gmail.com	75
16	firnasreyhan@gmail.com	3
17	firnasreyhan@gmail.com	3
18	firnasreyhan@gmail.com	3
19	firnasreyhan@gmail.com	3
20	firnasreyhan@gmail.com	3
22	firnasreyhan@gmail.com	3
23	firnasreyhan@gmail.com	3
24	firnasreyhan@gmail.com	3
25	firnasreyhan@gmail.com	3
28	firnasreyhan@gmail.com	3
29	firnasreyhan@gmail.com	3
30	firnasreyhan@gmail.com	3
35	firnas@ptpn10.co.id	3
36	firnas@ptpn10.co.id	3
37	firnas@ptpn10.co.id	3
39	firnas@ptpn10.co.id	3
42	firnas@ptpn10.co.id	3
43	firnas@ptpn10.co.id	3
45	firnas@ptpn10.co.id	18
59	bimasaishoku@gmail.com	3
77	andika.vernanda@gmail.com	23
78	andika.vernanda@gmail.com	26
79	andika.vernanda@gmail.com	28
80	andika.vernanda@gmail.com	28
81	andika.vernanda@gmail.com	36
83	andika.vernanda@gmail.com	47
129	firnasreyhan@gmail.com	3
131	firnasreyhan@gmail.com	3
134	digimagz5@gmail.com	3
135	digimagz5@gmail.com	3
136	firnasreyhan@gmail.com	3
137	firnasreyhan@gmail.com	3
140	firnasreyhan@gmail.com	3
141	firnasreyhan@gmail.com	3
142	firnasreyhan@gmail.com	3
143	firnasreyhan@gmail.com	3
144	firnasreyhan@gmail.com	3
145	firnasreyhan@gmail.com	3
146	firnasreyhan@gmail.com	3
147	firnasreyhan@gmail.com	3
148	firnasreyhan@gmail.com	3
149	firnasreyhan@gmail.com	3
150	firnasreyhan@gmail.com	3
151	firnasreyhan@gmail.com	3
152	firnasreyhan@gmail.com	3
153	firnasreyhan@gmail.com	3
154	firnasreyhan@gmail.com	3
155	digimagz5@gmail.com	75
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags ("ID_TAGS", "TAGS", "DATE_CREATED") FROM stdin;
5	PTPN X	2019-12-07 19:04:07
6	ptpn	2019-12-07 19:04:11
7	oke	2019-12-07 19:04:15
10	nyoba	2019-12-07 19:04:23
11	sejarah	2019-12-07 19:04:27
12	galeri	2019-12-07 19:04:31
13	berita galeri	2019-12-07 19:04:35
14	embedded	2019-12-07 19:04:39
15	media	2019-12-07 19:04:42
16	gambar	2019-12-07 19:04:46
17	agroforestry	2019-12-07 19:04:49
18	perhutani	2019-12-07 19:04:51
19	coba tag	2019-12-19 15:36:31
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" ("EMAIL", "USER_NAME", "PROFILEPIC_URL", "LAST_LOGIN", "DATE_BIRTH", "GENDER", "USER_TYPE") FROM stdin;
ragnarokstamina1@gmail.com	Ragnarok	\N	2019-12-21 09:14:09	2019-12-09	L	External
andika.vernanda@gmail.com	Andika Vernanda	\N	2019-10-11 01:29:51	1986-11-27	L	External
daudana.dp@gmail.com	Daudana Purina	\N	2019-10-31 04:09:20	2019-12-24	L	External
shellafadwa18@gmail.com	Shella Anisa Fadwa	\N	2019-10-09 07:36:37	2000-08-06	P	External
firnasadani@ptpn10.co.id	Firnas Adani	\N	2019-12-10 08:57:10	1998-08-03	L	Internal
reyhan@ptpn10.co.id	Reyhan	\N	2019-12-10 08:42:34	2019-08-01	L	Internal
shellaanisafadwa@gmail.com	Shella Anisa Fadwa	\N	2019-10-09 09:42:04	\N	\N	External
shellafadwa18	Shella Anisa\n\n\n\n	\N	2019-10-11 16:09:15	\N	\N	External
nanasenchi@gmail.com	Nanas	\N	2019-10-23 07:44:04	\N	\N	External
voidels.rey01@gmail.com	Voidels Rey	\N	2019-10-23 07:45:54	\N	\N	External
voidels.rey02@gmail.com	Voidels Rey	\N	2019-10-23 07:47:29	\N	\N	External
voidels.rey03@gmail.com	Voidels Rey	\N	2019-10-23 07:55:24	\N	\N	External
firnas@ptpn10.co.id	Firnas	\N	2019-12-10 08:54:45	2019-12-10	L	Internal
firnasreyhan@gmail.com	Adani Firnas	http://digimon.kristomoyo.com/images/users/cropped-194057953.jpg	2019-10-07 10:07:30	2012-12-12	L	External
digimagz5@gmail.com	Digimagz5	http://digimon.kristomoyo.com/images/users/image_picker_9A345725-58E2-42E7-B2C2-E7033906EFEE-601-000000AFB6532B3F.jpg	2019-12-28 23:42:13	1992-12-29	L	External
voidels.rey05@gmail.com	Voidels Rey	\N	2019-10-23 07:58:35	\N	\N	External
dhitamawardani@gmail.com	Dhita Mawardani	\N	2019-10-31 05:54:22	\N	\N	External
irfanalfiansyah10@gmail.com	Irfan Alfiansyahhh	\N	2019-10-23 08:46:43	\N	\N	External
171111079@mhs.stiki.ac.id	171111079 MUHAMMAD REYHAN FIRNAS ADANI	\N	2019-10-09 05:19:21	\N	\N	External
jirencore7@gmail.com	Jiren Core	\N	2019-12-04 00:56:27	\N	\N	External
kristomoyo@gmail.com	Bagus Kristomoyo Kristanto	\N	2019-12-04 00:57:57	\N	\N	External
sanade2034@gmail.com	sans 123	\N	2019-12-04 01:03:44	\N	\N	External
kr.kristomoyo@gmail.com	kristanto kristomoyo	\N	2019-12-04 01:05:44	\N	\N	External
bagus.kristanto@stiki.ac.id	Bagus Kristomoyo Kristanto	\N	2019-12-04 01:17:06	\N	\N	External
mreyhanfirnasa@gmail.com	Reyhan Firnas	\N	2019-12-04 01:20:26	\N	\N	External
reyhan.adani@stiki.ac.id	MUHAMMAD REYHAN FIRNAS	\N	2019-12-04 01:36:41	\N	\N	External
panjidia995@gmail.com	panji saja	\N	2019-12-04 01:37:49	\N	\N	External
soetono.effendi@gmail.com	Soetono Effendi	\N	2019-12-04 01:32:49	\N	\N	External
andika@ptpn10.co.id	Andika Veranda	\N	2019-12-09 20:03:07	1995-06-09	L	Internal
reyhanfirnas@ptpn10.co.id	Reyhan Firnas	\N	2019-12-10 08:55:55	\N	\N	Internal
adani@ptpn10.co.id	Adani	\N	2019-12-10 08:51:17	2019-12-10	L	Internal
monica@ptpn10.co.id	Monica	\N	2019-12-10 15:45:22	1999-11-10	P	Internal
bimasaishoku@gmail.com	Bima Mahendra	\N	2019-12-04 01:13:19	1999-02-16	L	External
yohanesdl9@gmail.com	Yohanes DL	\N	2019-09-25 17:13:37	1997-05-09	L	External
faridanolawangi@gmail.com	Baiq Farida Nolawangi	\N	2019-10-07 10:01:59	1996-11-14	P	External
nanda@stiki.ac.id	Nanda Bima Mahendra	\N	2019-12-04 01:24:32	1999-02-16	L	External
monicatifany99@gmail.com	Monica Tifani Zahara	\N	2019-11-08 06:16:18	\N	\N	External
voidels.rey04@gmail.com	Voidels Rey	\N	2019-10-23 07:57:59	\N	\N	External
digimagz4@gmail.com	Digimagz4	\N	2019-12-28 23:19:47	\N	\N	External
\.


--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video ("ID_VIDEO", "TITLE", "DESCRIPTION", "DATE_PUBLISHED", "URL_DEFAULT_THUMBNAIL", "URL_MEDIUM_THUMBNAIL", "URL_HIGH_THUMBNAIL", "STATUS_PUBLISHED") FROM stdin;
4weq-mOs83E	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (2)	Karya (2) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:22:28	https://i.ytimg.com/vi/4weq-mOs83E/default.jpg	https://i.ytimg.com/vi/4weq-mOs83E/mqdefault.jpg	https://i.ytimg.com/vi/4weq-mOs83E/hqdefault.jpg	t
8W3J8VHn6ys	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (1)	Karya (1) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:19:18	https://i.ytimg.com/vi/8W3J8VHn6ys/default.jpg	https://i.ytimg.com/vi/8W3J8VHn6ys/mqdefault.jpg	https://i.ytimg.com/vi/8W3J8VHn6ys/hqdefault.jpg	t
XEdQdr8xrjo	#JingleSIPro Perkebunan Nusantara Marshal  Pattiasina	Karya : Marshal Pattiasina Bagian Pengolahan - PT Perkebunan Nusantara X.	2019-11-08 05:45:58	https://i.ytimg.com/vi/XEdQdr8xrjo/default.jpg	https://i.ytimg.com/vi/XEdQdr8xrjo/mqdefault.jpg	https://i.ytimg.com/vi/XEdQdr8xrjo/hqdefault.jpg	t
tBb4Hqmr4gE	#JingleSIPro Perkebunan Nusantara Suryanto	Karya : Suryanto Sekper & PKBL - PT Perkebunan Nusantara X.	2019-11-07 09:33:47	https://i.ytimg.com/vi/tBb4Hqmr4gE/default.jpg	https://i.ytimg.com/vi/tBb4Hqmr4gE/mqdefault.jpg	https://i.ytimg.com/vi/tBb4Hqmr4gE/hqdefault.jpg	t
jFdkND1IF5Y	#JingleSIPro Perkebunan Nusantara Meritjan Voice	Karya : Meritjan Voice PG Meritjan - PT Perkebunan Nusantara X.	2019-11-07 09:30:05	https://i.ytimg.com/vi/jFdkND1IF5Y/default.jpg	https://i.ytimg.com/vi/jFdkND1IF5Y/mqdefault.jpg	https://i.ytimg.com/vi/jFdkND1IF5Y/hqdefault.jpg	t
8jECXq1ATUg	#JingleSIPro Perkebunan Nusantara Andhika P. Kresnandito	Song & Lyric by : Andhika P. Kresnandito Bagian SDM - PT Perkebunan Nusantara X.	2019-11-07 07:40:12	https://i.ytimg.com/vi/8jECXq1ATUg/default.jpg	https://i.ytimg.com/vi/8jECXq1ATUg/mqdefault.jpg	https://i.ytimg.com/vi/8jECXq1ATUg/hqdefault.jpg	t
Q9wPjmqwA5U	#JingleSIPro Perkebunan Nusantara F Angga Y. A.	Karya : F Angga Y. A. RS HVA Toeloengredjo - PT NMU - PT Perkebunan Nusantara X.	2019-11-07 05:49:38	https://i.ytimg.com/vi/Q9wPjmqwA5U/default.jpg	https://i.ytimg.com/vi/Q9wPjmqwA5U/mqdefault.jpg	https://i.ytimg.com/vi/Q9wPjmqwA5U/hqdefault.jpg	t
8EUqZQorFlU	Ucapan Idul Fitri 1440 H - Syaifullah Yusuf Komisaris Utama		2019-06-13 00:58:52	https://i.ytimg.com/vi/8EUqZQorFlU/default.jpg	https://i.ytimg.com/vi/8EUqZQorFlU/mqdefault.jpg	https://i.ytimg.com/vi/8EUqZQorFlU/hqdefault.jpg	t
_LGUNmgg0Lg	Company Profile PTPN X 2019		2019-04-02 06:25:46	https://i.ytimg.com/vi/_LGUNmgg0Lg/default.jpg	https://i.ytimg.com/vi/_LGUNmgg0Lg/mqdefault.jpg	https://i.ytimg.com/vi/_LGUNmgg0Lg/hqdefault.jpg	t
rZqY7U1Rxck	Ucapan Selamat Tahun Baru 2019	Ucapan Selamat Tahun Baru 2019 yang disampaikan oleh Direktur Utama PTPN X, Ir. Dwi Satriyo Annurogo, MT.	2019-01-02 06:02:12	https://i.ytimg.com/vi/rZqY7U1Rxck/default.jpg	https://i.ytimg.com/vi/rZqY7U1Rxck/mqdefault.jpg	https://i.ytimg.com/vi/rZqY7U1Rxck/hqdefault.jpg	t
OynO0l9a5Q0	Peringatan HUT RI ke 73		2018-09-18 07:25:53	https://i.ytimg.com/vi/OynO0l9a5Q0/default.jpg	https://i.ytimg.com/vi/OynO0l9a5Q0/mqdefault.jpg	https://i.ytimg.com/vi/OynO0l9a5Q0/hqdefault.jpg	t
MgujD18vi2k	Mudik Bareng PTPN Group		2018-07-25 07:01:34	https://i.ytimg.com/vi/MgujD18vi2k/default.jpg	https://i.ytimg.com/vi/MgujD18vi2k/mqdefault.jpg	https://i.ytimg.com/vi/MgujD18vi2k/hqdefault.jpg	t
KOxzkQFDTbQ	Selamat Hari Raya Idul Fitri 1439 H	PT Perkebunan Nusantara X mengucapkan Selamat Hari Raya Idul Fitri 1439 H.	2018-06-13 01:49:07	https://i.ytimg.com/vi/KOxzkQFDTbQ/default.jpg	https://i.ytimg.com/vi/KOxzkQFDTbQ/mqdefault.jpg	https://i.ytimg.com/vi/KOxzkQFDTbQ/hqdefault.jpg	t
VgqeISP3bOs	Tingkatkan Pelayanan Pada Petani, PTPN X Terapkan e-Farming	Tingkatkan Pelayanan Pada Petani, PTPN X Terapkan e-Farming Sejak 2016, PTPN X berhasil mengimplementasikan e-Farming yang merupakan sistem ...	2017-10-24 06:41:44	https://i.ytimg.com/vi/VgqeISP3bOs/default.jpg	https://i.ytimg.com/vi/VgqeISP3bOs/mqdefault.jpg	https://i.ytimg.com/vi/VgqeISP3bOs/hqdefault.jpg	t
gjYC0wLn_Vc	PTPN X Kembangkan Pellet dari Ampas Tebu	PTPN X Kembangkan Pellet dari Ampas Tebu Keberhasilan pabrik gula PTPN X dalam menjaga efisiensi energi selama musim giling, membuat ampas yang ...	2017-10-24 06:25:00	https://i.ytimg.com/vi/gjYC0wLn_Vc/default.jpg	https://i.ytimg.com/vi/gjYC0wLn_Vc/mqdefault.jpg	https://i.ytimg.com/vi/gjYC0wLn_Vc/hqdefault.jpg	t
KOvM3bXesZ8	Bioetanol : Dari PTPN X Untuk Negeri	Pasar bioetanol dalam negeri masih sangat besar. Peluang tersebut dimanfaatkan oleh PT Perkebunan Nusantara (PTPN) X melalui anak usahanya, PT Energi ...	2017-09-13 08:46:56	https://i.ytimg.com/vi/KOvM3bXesZ8/default.jpg	https://i.ytimg.com/vi/KOvM3bXesZ8/mqdefault.jpg	https://i.ytimg.com/vi/KOvM3bXesZ8/hqdefault.jpg	t
d7BLcXdbwac	Inovasi Pengolahan Pabrik Gula PTPN X	Senantiasa berkomitmen untuk menghasilkan produk berdaya saing tinggi dan berwawasan lingkungan, PTPN X tak henti berinovasi pada proses pengolahan ...	2017-09-05 04:53:49	https://i.ytimg.com/vi/d7BLcXdbwac/default.jpg	https://i.ytimg.com/vi/d7BLcXdbwac/mqdefault.jpg	https://i.ytimg.com/vi/d7BLcXdbwac/hqdefault.jpg	t
eslpENcAbIg	Testimoni HUT RI 72 PTPNX	Segenap keluarga besar PTPN X, mengucapkan Dirgahayu Republik Indonesia ke - 72. Indonesia Jaya!!! PTPN X Bangkit !!! Share, Subscribe, Like, and leave ...	2017-08-15 03:11:09	https://i.ytimg.com/vi/eslpENcAbIg/default.jpg	https://i.ytimg.com/vi/eslpENcAbIg/mqdefault.jpg	https://i.ytimg.com/vi/eslpENcAbIg/hqdefault.jpg	t
rQVN0pm1KEQ	Core Sampler PTPN X	Core sampler merupakan alat penilaian kualitas tebu individu. Alat ini digunakan di 3 PG milik PTPN X. Sedangkan penerapan mobile core sampler untuk ...	2017-08-14 08:21:26	https://i.ytimg.com/vi/rQVN0pm1KEQ/default.jpg	https://i.ytimg.com/vi/rQVN0pm1KEQ/mqdefault.jpg	https://i.ytimg.com/vi/rQVN0pm1KEQ/hqdefault.jpg	t
z04HJNrOwsk	Flexible Packaging   PT Dasaplast Nusantara	Flexible Packaging adalah salah unit usaha PT Dasaplast Nusantara, anak perusahaan PTPN X. Alamat: Desa Tulangan, Kec. Tulangan, Sidoarjo PO Box 107 ...	2017-08-11 06:47:22	https://i.ytimg.com/vi/z04HJNrOwsk/default.jpg	https://i.ytimg.com/vi/z04HJNrOwsk/mqdefault.jpg	https://i.ytimg.com/vi/z04HJNrOwsk/hqdefault.jpg	t
dymWsZKJFpQ	RS Gatoel	Unit Hemodialisa merupakan salah satu layanan unggulan yang ditawarkan oleh RS Gatoel milik PT Nusantara Media Utama, anak perusahaan PTPN X.	2017-08-03 03:51:45	https://i.ytimg.com/vi/dymWsZKJFpQ/default.jpg	https://i.ytimg.com/vi/dymWsZKJFpQ/mqdefault.jpg	https://i.ytimg.com/vi/dymWsZKJFpQ/hqdefault.jpg	t
UP-SO9R_TZs	Pekan Pancasila 2017 PTPN X #PekanPancasila	Pekan Pancasila 2017 PTPN X.	2017-06-06 21:05:02	https://i.ytimg.com/vi/UP-SO9R_TZs/default.jpg	https://i.ytimg.com/vi/UP-SO9R_TZs/mqdefault.jpg	https://i.ytimg.com/vi/UP-SO9R_TZs/hqdefault.jpg	t
0Vzg9tOVQgA	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (3)	Karya (3) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:22:43	https://i.ytimg.com/vi/0Vzg9tOVQgA/default.jpg	https://i.ytimg.com/vi/0Vzg9tOVQgA/mqdefault.jpg	https://i.ytimg.com/vi/0Vzg9tOVQgA/hqdefault.jpg	t
NSKcT_BRfks	PTPN X Corporate Culture Film "Keluarga Besar"	"Apa yang kita cari di hidup ini ?" Ada jawaban beragam, alasan-alasan sederhana hingga penjelasan yang cukup kompleks. Film "Keluarga Besar" hadir untuk ...	2019-11-07 14:55:09	https://i.ytimg.com/vi/NSKcT_BRfks/default.jpg	https://i.ytimg.com/vi/NSKcT_BRfks/mqdefault.jpg	https://i.ytimg.com/vi/NSKcT_BRfks/hqdefault.jpg	t
5FZ-0AZ9bvo	Jejak Si Gundul - Trans 7: Pia Edamame dari Jember	Edamame, salah satu produk andalan PT Mitratani Dua Tujuh diliput dalam acara Jejak Si Gundul Trans 7. Info lebih lanjut: www.mitratani27.co.id Sumber ...	2017-07-31 00:58:16	https://i.ytimg.com/vi/5FZ-0AZ9bvo/default.jpg	https://i.ytimg.com/vi/5FZ-0AZ9bvo/mqdefault.jpg	https://i.ytimg.com/vi/5FZ-0AZ9bvo/hqdefault.jpg	t
qBvTZWUmOdE	Senam Bersama	Senam Bersama secara rutin digelar satu kali dalam satu bulan. Acara ini diikuti oleh seluruh karyawan Kantor Pusat PTPN X, mulai dari Jajaran Direksi hingga ...	2017-07-28 05:54:08	https://i.ytimg.com/vi/qBvTZWUmOdE/default.jpg	https://i.ytimg.com/vi/qBvTZWUmOdE/mqdefault.jpg	https://i.ytimg.com/vi/qBvTZWUmOdE/hqdefault.jpg	t
ix8krb1EA_Q	BAGI BINGKISAN RAMADAN   PTPN X	BINGKISAN RAMADAN.	2017-07-27 03:21:27	https://i.ytimg.com/vi/ix8krb1EA_Q/default.jpg	https://i.ytimg.com/vi/ix8krb1EA_Q/mqdefault.jpg	https://i.ytimg.com/vi/ix8krb1EA_Q/hqdefault.jpg	t
8qY-osQ0xlo	Ramadhan Greeting	Ramadhan Greeting 2017.	2017-06-08 09:41:02	https://i.ytimg.com/vi/8qY-osQ0xlo/default.jpg	https://i.ytimg.com/vi/8qY-osQ0xlo/mqdefault.jpg	https://i.ytimg.com/vi/8qY-osQ0xlo/hqdefault.jpg	t
DqGz9tfnDnA	Si Ladyfinger Asal Jember yang di Gemari Jepang		2017-06-08 09:35:20	https://i.ytimg.com/vi/DqGz9tfnDnA/default.jpg	https://i.ytimg.com/vi/DqGz9tfnDnA/mqdefault.jpg	https://i.ytimg.com/vi/DqGz9tfnDnA/hqdefault.jpg	t
LaTvfcUigEI	Sayur Okra Untuk Diabetes di Jember	sayur okra.	2017-06-08 09:32:36	https://i.ytimg.com/vi/LaTvfcUigEI/default.jpg	https://i.ytimg.com/vi/LaTvfcUigEI/mqdefault.jpg	https://i.ytimg.com/vi/LaTvfcUigEI/hqdefault.jpg	t
\.


--
-- Name: captcha_ID_CAPTCHA_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."captcha_ID_CAPTCHA_seq"', 190, true);


--
-- Name: comments_ID_COMMENT_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."comments_ID_COMMENT_seq"', 38, true);


--
-- Name: cover_story_ID_COVERSTORY_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."cover_story_ID_COVERSTORY_seq"', 5, true);


--
-- Name: emagz_ID_EMAGZ_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."emagz_ID_EMAGZ_seq"', 9, true);


--
-- Name: likes_ID_LIKES_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."likes_ID_LIKES_seq"', 129, true);


--
-- Name: news_ID_NEWS_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."news_ID_NEWS_seq"', 3, true);


--
-- Name: tag_ID_TAG_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tag_ID_TAG_seq"', 6, true);


--
-- Name: backend_user backend_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backend_user
    ADD CONSTRAINT backend_user_pkey PRIMARY KEY ("USERNAME");


--
-- Name: banner banner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY ("ID_BANNER");


--
-- Name: captcha captcha_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captcha
    ADD CONSTRAINT captcha_pkey PRIMARY KEY ("ID_CAPTCHA");


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY ("ID_CATEGORY");


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY ("ID_COMMENT");


--
-- Name: cover_story cover_story_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cover_story
    ADD CONSTRAINT cover_story_pkey PRIMARY KEY ("ID_COVERSTORY");


--
-- Name: emagz emagz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emagz
    ADD CONSTRAINT emagz_pkey PRIMARY KEY ("ID_EMAGZ");


--
-- Name: firebase_token firebase_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firebase_token
    ADD CONSTRAINT firebase_token_pkey PRIMARY KEY ("TOKEN");


--
-- Name: galeri galeri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT galeri_pkey PRIMARY KEY ("IMAGE_FILE");


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY ("ID_LIKES");


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY ("ID_NEWS");


--
-- Name: news_share news_view_copy1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_share
    ADD CONSTRAINT news_view_copy1_pkey PRIMARY KEY ("ID");


--
-- Name: news_view news_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_view
    ADD CONSTRAINT news_view_pkey PRIMARY KEY ("ID");


--
-- Name: tags tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tag_pkey PRIMARY KEY ("ID_TAGS");


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY ("EMAIL");


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY ("ID_VIDEO");


--
-- Name: view_likes _RETURN; Type: RULE; Schema: public; Owner: postgres
--

CREATE OR REPLACE VIEW public.view_likes AS
 SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    count(likes."ID_LIKES") AS "LIKES"
   FROM (public.news
     LEFT JOIN public.likes ON ((likes."ID_NEWS" = news."ID_NEWS")))
  GROUP BY news."ID_NEWS", news."ID_CATEGORY";


--
-- Name: view_comments _RETURN; Type: RULE; Schema: public; Owner: postgres
--

CREATE OR REPLACE VIEW public.view_comments AS
 SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    count(comments."ID_COMMENT") AS "COMMENTS"
   FROM (public.news
     LEFT JOIN public.comments ON ((comments."ID_NEWS" = news."ID_NEWS")))
  WHERE (comments."IS_APPROVED" = true)
  GROUP BY news."ID_NEWS", news."ID_CATEGORY";


--
-- Name: banner FK_banner; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banner
    ADD CONSTRAINT "FK_banner" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: news_tags FK_detail_news_tags_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT "FK_detail_news_tags_1" FOREIGN KEY ("ID_TAGS") REFERENCES public.tags("ID_TAGS") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: news_tags FK_detail_news_tags_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT "FK_detail_news_tags_2" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: galeri FK_galeri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT "FK_galeri" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: news FK_news_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT "FK_news_category" FOREIGN KEY ("ID_CATEGORY") REFERENCES public.category("ID_CATEGORY") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: comments FK_news_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "FK_news_comment" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: news_cover FK_news_cover_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_cover
    ADD CONSTRAINT "FK_news_cover_1" FOREIGN KEY ("ID_COVERSTORY") REFERENCES public.cover_story("ID_COVERSTORY") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: news_cover FK_news_cover_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_cover
    ADD CONSTRAINT "FK_news_cover_2" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: likes FK_news_likes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "FK_news_likes" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: comments FK_user_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "FK_user_comment" FOREIGN KEY ("EMAIL") REFERENCES public."user"("EMAIL") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: news FK_user_editor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT "FK_user_editor" FOREIGN KEY ("USER_EDITOR") REFERENCES public.backend_user("USERNAME") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: likes FK_user_likes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "FK_user_likes" FOREIGN KEY ("EMAIL") REFERENCES public."user"("EMAIL") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: news FK_user_verificator; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT "FK_user_verificator" FOREIGN KEY ("USER_VERIFICATOR") REFERENCES public.backend_user("USERNAME") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

