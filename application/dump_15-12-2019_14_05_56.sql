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
    "USER_TYPE" character varying(10),
    "PASSWORD" character varying(255)
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
37	1576112946	::1	kjRk
38	1576232182	158.140.187.254	iNdO
39	1576232182	158.140.187.254	Gne4
40	1576320710	202.67.46.25	h72s
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
12	10	yohanesdl9@gmail.com	Tes 3	f	\N	2019-09-27 08:30:35	\N
13	10	yohanesdl9@gmail.com	Tes 4	f	\N	2019-09-27 08:31:02	\N
16	10	yohanesdl9@gmail.com	Tes 5	f	\N	2019-09-27 08:59:05	\N
8	10	yohanesdl9@gmail.com	Tes	f	\N	2019-09-27 07:22:26	\N
11	10	yohanesdl9@gmail.com	Tes 2	t	2019-09-28 16:44:14	2019-09-27 08:29:51	\N
21	10	yohanesdl9@gmail.com	Tes From Mobile	t	2019-09-28 09:53:34	2019-09-27 10:03:36	\N
20	10	yohanesdl9@gmail.com	tes tes	t	2019-09-28 09:53:38	2019-09-27 10:02:47	\N
25	10	yohanesdl9@gmail.com	Tes	f	\N	2019-09-30 02:34:51	\N
28	10	yohanesdl9@gmail.com	Tes	f	\N	2019-09-30 08:46:52	\N
34	10	yohanesdl9@gmail.com	Tes	f	\N	2019-09-30 08:56:33	\N
35	10	yohanesdl9@gmail.com	Tes Baru Lagi	f	\N	2019-09-30 08:57:18	\N
37	10	yohanesdl9@gmail.com		f	\N	2019-09-30 09:50:17	\N
38	10	yohanesdl9@gmail.com		f	\N	2019-10-01 10:13:46	\N
39	10	yohanesdl9@gmail.com		f	\N	2019-10-01 10:14:52	\N
40	10	yohanesdl9@gmail.com		f	\N	2019-10-01 10:15:35	\N
36	10	yohanesdl9@gmail.com	Tes baru	t	2019-10-01 10:28:03	2019-09-30 09:49:06	\N
41	10	yohanesdl9@gmail.com		f	\N	2019-10-01 10:55:33	\N
42	8	yohanesdl9@gmail.com		f	\N	2019-10-01 11:00:58	\N
49	3	firnasreyhan@gmail.com	tes komentar dari mobile	t	2019-11-03 14:28:36	2019-11-03 14:28:21	\N
46	10	shellaanisafadwa@gmail.com		t	2019-12-03 09:51:25	2019-10-09 13:35:37	\N
43	10	yohanesdl9@gmail.com		t	2019-12-03 09:51:36	2019-10-02 14:58:08	\N
52	18	bagus.kristanto@stiki.ac.id	testing	t	2019-12-04 01:38:46	2019-12-04 01:21:35	\N
50	17	irfanalfiansyah10@gmail.com	tes komentar iOS	t	2019-12-04 01:38:51	2019-11-11 03:45:26	\N
53	18	reyhan.adani@stiki.ac.id	Tes komen dari mobile	t	2019-12-04 01:39:23	2019-12-04 01:38:01	\N
51	3	bagus.kristanto@stiki.ac.id	halo smart people	t	2019-12-04 02:23:56	2019-12-04 01:17:34	\N
54	8	nanda@stiki.ac.id	halo	t	2019-12-04 02:28:12	2019-12-04 02:27:51	\N
55	8	bimasaishoku@gmail.com	hai	t	2019-12-04 02:29:42	2019-12-04 02:29:29	\N
44	13	yohanesdl9@gmail.com		t	2019-12-04 03:49:18	2019-10-03 00:51:45	\N
2	16	mreyhanfirnasa@gmail.com		f	\N	2019-12-05 11:21:24	\N
3	10	yohanesdl9@gmail.com	Test komentar melalui Postman	f	\N	2019-12-06 01:41:53	\N
47	3	firnasreyhan@gmail.com		t	2019-11-03 14:23:15	2019-11-03 14:22:13	\N
48	3	firnasreyhan@gmail.com	tes komentar	t	2019-11-03 14:26:33	2019-11-03 14:26:09	<p>tes balasan komentar oleh admin</p>
4	3	firnasreyhan@gmail.com	Tes	f	\N	2019-12-14 09:59:02	\N
5	3	firnasreyhan@gmail.com	tes lagi	f	\N	2019-12-14 09:59:22	\N
6	3	firnasreyhan@gmail.com		f	\N	2019-12-14 10:00:26	\N
7	3	firnasreyhan@gmail.com		f	\N	2019-12-14 10:00:37	\N
9	3	firnasreyhan@gmail.com		f	\N	2019-12-14 10:09:03	\N
10	3	firnasreyhan@gmail.com	tes lagi cok	t	2019-12-14 03:10:00	2019-12-14 10:09:17	\N
14	3	firnasreyhan@gmail.com	Tes tes	f	\N	2019-12-14 17:56:29	\N
15	3	firnasreyhan@gmail.com	tes	f	\N	2019-12-14 17:56:47	\N
17	3	firnasreyhan@gmail.com	yoi gan	f	\N	2019-12-14 18:01:57	\N
18	3	firnasreyhan@gmail.com	oyi gan	f	\N	2019-12-14 18:03:50	\N
19	3	firnasreyhan@gmail.com	hshshsh	f	\N	2019-12-14 18:04:05	\N
22	3	firnasreyhan@gmail.com	tes tes	f	\N	2019-12-14 19:20:45	\N
23	3	firnasreyhan@gmail.com	tes tes	f	\N	2019-12-14 19:22:38	\N
24	3	firnasreyhan@gmail.com	tes	f	\N	2019-12-14 19:25:36	\N
\.


--
-- Data for Name: cover_story; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cover_story ("ID_COVERSTORY", "TITLE_COVERSTORY", "SUMMARY", "IMAGE_COVERSTORY", "DATE_COVERSTORY") FROM stdin;
3	Contoh Coverstory	<p>Contoh coverstory dari Digimagz</p>	4987.jpg	2019-10-02 03:33:26
4	Agroforestry	<p>PTPN X bekerjasama dengan Perhutani untuk penyediaan lahan tebu yang nantinya dapat menjadi bahan baku PTPN X</p>	Lahan_Pandean.jpeg	2019-10-22 07:16:31
5	Contoh Coverstory UAT	<p>Contoh Coverstory UAT Digimagz</p>	ozone.png	2019-12-07 19:22:36
\.


--
-- Data for Name: emagz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emagz ("ID_EMAGZ", "THUMBNAIL", "FILE", "DATE_UPLOADED", "NAME") FROM stdin;
3	WhatsApp_Image_2019-10-23_at_10_14_14.jpeg	laporan-pengiriman-pdf1.pdf	2019-12-07 06:51:21	Contoh E-Magazine PTPN X
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
\.


--
-- Data for Name: galeri; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galeri ("IMAGE_FILE", "ID_NEWS") FROM stdin;
64201912040554521199360-IMG_7233.JPG	70
64201912040554521199361-IMG_7253.JPG	70
64201912040554521199362-IMG_7266.JPG	70
64201912040554521199363-IMG_7312.JPG	70
63201912030259172056850-DSC01033.JPG	71
63201912030259172056851-DSC01044.JPG	71
63201912030259172056852-DSC01058.JPG	71
63201912030259172056853-DSC01079.JPG	71
62201912020250496657170-IMG_7037.JPG	72
62201912020250496657171-IMG_7053.JPG	72
62201912020250496657172-IMG_7087.JPG	72
62201912020250496657173-IMG_7126.JPG	72
61201912020247219513120-IMG_6829.JPG	73
61201912020247219513121-IMG_6845.JPG	73
61201912020247219513122-IMG_6933.JPG	73
61201912020247219513123-IMG_7023.JPG	73
60201912020246339890550-WhatsApp Image 2019-11-27 at 7.51.32 PM.jpg	74
60201912020246339890551-WhatsApp Image 2019-11-27 at 7.51.34 PM.jpg	74
60201912020246339890552-WhatsApp Image 2019-11-27 at 8.13.32 PM.jpg	74
60201912020246339890553-WhatsApp Image 2019-11-27 at 8.17.10 PM.jpg	74
55201911260821445448590-DSC00705.JPG	75
55201911260821445448591-DSC00720.JPG	75
55201911260821445448592-DSC00777.JPG	75
55201911260821445448593-DSC00823.JPG	75
54201911180653502220700-2DIROP~1.JPG	76
54201911180653502220701-3.DirOps PTPN X,Aris Toharisman bersama Administratur KPH Bojonegoro dan GM PG Djombang Baru melakukan kegiatan tanam tebu Agroforestry di Kebun Jelu Bojonegoro.jpg	76
54201911180653502220702-1.Sambutan DirOps PTPN X,Aris Toharisman di acara tanam agroforestry tebu di kebun Jelu PG Djombang Baru KPH.Bojonegoro.jpg	76
54201911180653502220703-6.DirOps PTPN X,Aris Toharisman bersama Administratur KPH Bojonegoro dan GM PG Djombang Baru melakukan kegiatan tanam tebu Agroforestry di Kebun Jelu Bojonegoro.jpg	76
53201911110831509244580-1.Dirut PTPN X,Dwi Satriyo Annurogo menyapa karyawan di kegiatan corporate value perkebunan nusantara X di kantor pusat PTPN X.jpg	77
53201911110831509244581-6.Dirut PTPN X,Dwi Satriyo Annurogo bersama karyawan di kegiatan corporate value perkebunan nusantara X di kantor pusat PTPN X.jpg	77
53201911110831509244582-5.Agent of change karyawan PTPN X di kegiatan corporate value perkebunan nusantara X.jpg	77
53201911110831509244583-3.Dirut PTPN X,Dwi Satriyo Annurogo bersama karyawan di kegiatan corporate value perkebunan nusantara X di kantor pusat PTPN X.jpg	77
52201911110829008931980-6.Dirut PTPN X,Dwi Satriyo Annurogo menerima penghargaan di acara Indonesia Business News Award 2019.jpg	78
52201911110829008931981-4.Dirut PTPN X,Dwi Satriyo Annurogo menerima penghargaan di acara Indonesia Business News Award 2019.jpg	78
52201911110829008931982-3.Dirut PTPN X,Dwi Satriyo Annurogo menerima penghargaan di acara Indonesia Business News Award 2019.jpg	78
52201911110829008931983-2.Dirut PTPN X,Dwi Satriyo Annurogo menerima penghargaan di acara Indonesia Business News Award 2019.jpg	78
51201910310752094859420-Ngujung Barat.jpg	79
51201910310752094859421-WhatsApp Image 2019-10-31 at 1.35.30 PM (2).jpg	79
51201910310752094859422-WhatsApp Image 2019-10-31 at 1.35.31 PM (1).jpg	79
51201910310752094859423-WhatsApp Image 2019-10-31 at 12.32.33 PM (1).jpg	79
48201910310745337439000-CSR - Jember.JPG	80
48201910310745337439001-DSC00152.JPG	80
48201910310745337439002-DSC00160.JPG	80
48201910310745337439003-DSC00162.JPG	80
46201910240036484973180-2.Sambutan Dirut PTPN X,Dwi Satriyo Annurogo di acara Pelatihan Petani Tebu Rakyat guna meningkatkan sinergi antara petani dengan PTPN X.jpg	81
46201910240036484973181-4.Dirut PTPN X,Dwi Satriyo Annurogo bersama APTR Jawa Timur dan Jiwasraya (Persero) bersinergi di acara Pelatihan Petani Tebu Rakyat PTPN X.jpg	81
46201910240036484973182-3.Dirut PTPN X,Dwi Satriyo Annurogo bersama direksi dan APTR Jawa Timur di acara Pelatihan Petani Tebu Rakyat guna meningkatkan sinergi antara petani dengan PTPN X.jpg	81
46201910240036484973183-5.Dirut PTPN X,Dwi Satriyo Annurogo bersama direksi,APTR Jawa Timur,Jiwasraya (Persero) dan perserta pelatihan bersinergi di acara Pelatihan Petani Tebu Rakyat PTPN X.jpg	81
45201910180129214453030-1.Dirut PTPN X,Dwi Satriyo Annurogo bersama Dirut  PT Sientratek Energi Indonesia,Iskandar di acara penandatanganan nota kesepahaman terkait pengembangan PLTS.jpg	82
45201910180129214453031-3DIRUT~1.JPG	82
45201910180129214453032-5PEMBE~1.JPG	82
45201910180129214453033-6.Direksi PTPN X  bersama jajaran PT Sientratek Energi Indonesia berfoto usai melakukan penandatanganan nota kesepahaman terkait pengembangan PLTS (Pembangkit Listrik Tenaga Surya).jpg	82
41201910180109353191540-3PENGG~1.JPG	83
41201910180109353191541-2.Penandatanganan prasasti diresmikannya boiler kapasitas 2X10 jam per-ton oleh Direktur Utama PT Enero,Izmirta Rachman dengan Dirut PTPN X Dwi Satriyo Annurogo.jpg	83
41201910180109353191542-9DIRUT~1.JPG	83
41201910180109353191543-8.Direksi PTPN X dan Direksi PT Enero usai peresmian boiler kapasitas 2X10 jam per-ton.jpg	83
40201908050631036024280-9.Dirkom PTPN X,Slamet Djumantoro menerima berkas serah terima HGU Ngusri dari PT.Blitar Putra.jpg	84
40201908050631036024281-10.Dirkom PTPN X,Slamet Djumantoro usai menerima berkas serah terima HGU Ngusri dari PT.Blitar Putra.jpg	84
40201908050631036024282-13.Prosesi peresmian serah terima HGU Ngusri dari PT.Blitar Putra kepada PTPN X.jpg	84
40201908050631036024283-14.Direksi PTPN X usai peresmian serah terima HGU Ngusri dari PT.Blitar Putra.jpg	84
39201908050629094452810-4.Dirkom PTPN X,Slamet Djumantoro menyerahkan cinderamata kepada Bupati Blitar,Rijanto MM.jpg	85
39201908050629094452811-2.Kunjungan Dirkom PTPN X,Slamet Djumantoro bersama Direksi ke Pemkab Blitar.jpg	85
39201908050629094452812-3.Kunjungan Dirkom PTPN X,Slamet Djumantoro bersama Direksi ke Pemkab Blitar.jpg	85
39201908050629094452813-6.Direksi PTPN X bersama jajaran Pemkab Blitar.jpg	85
38201908050624526287190-3.Pembukaan rangkaian peringatan HUT RI 74 oleh direksi dan Dirut PTPN X,Dwi Satriyo Annurogo.jpg.jpg	86
38201908050624526287191-7.PTPN X mengadakan kegiatan pertandingan tenis meja dalam rangka peringatan HUT RI 74.jpg	86
38201908050624526287192-4.Dirut dan direksi PTPN X di acara pembukaan peringatan HUT RI 74.jpg.jpg	86
38201908050624526287193-11.PTPN X mengadakan kegiatan pertandingan bulutangkis dalam rangka peringatan HUT RI 74.jpg	86
37201907080838328853910-hut-mt27-24-01.jpg	87
37201907080838328853911-hut-mt27-24-02.jpg	87
37201907080838328853912-hut-mt27-24-03.jpg	87
37201907080838328853913-hut-mt27-24-04.jpg	87
36201907080832495967280-kunjungan-ke-rs01.jpg	88
36201907080832495967281-kunjungan-ke-rs02.jpg	88
36201907080832495967282-kunjungan-ke-rs03.jpg	88
36201907080832495967283-kunjungan-ke-rs04.jpg	88
32201907080444468523570-1.Direksi PTPN X bersama karyawan dan tokoh masyarakat menunjukkan hasil panen perdana tembakau di Kebun Kertosari Jember.jpg	89
32201907080444468523571-15.Direksi PTPN X bersama karyawan dan petani tembakau Kebun Ajung Gayasan Jember.jpg.jpg	89
32201907080444468523572-9.Penyerahan potongan tumpeng oleh Dirkom PTPN X kepada karyawan di acara syukuran panen perdana tembakau Kebun Kertosari Jember.jpg	89
32201907080444468523573-13.Dirut PTPN X,Dwi Satriyo Annurogo melihat hasil panen tembakau Kebun Ajung Gayasan Jember.jpg	89
28201906240706115340200-2.Dirut PTPN X,Dwi Satriyo Annurogo.jpg	90
28201906240706115340201-1.Dirut PT NMU,dr Ary Sylviaty di acara launching Kartu Tani Sehat.jpg	90
28201906240706115340202-8.Dirut PTPN X,Dwi Satriyo Annurogo menyerahkan Kartu Tani Sehat kepada perwakilan petani,H Mubin didampingi Dirut PT NMU,Ary Sylviati dan Ketua APTR,Arum Sabil.jpg	90
28201906240706115340203-5.Direksi PTPN X,Direksi PT NMU menyerahkan Kartu Tani Sehat kepada perwakilan petani.jpg	90
27201906240656544796270-4.Tanam perdana kerjasama budidaya tebu antara ptpn x dan ptpn xii di kebun ngrangkah pawon kediri.jpg	91
27201906240656544796271-9.Dirops ptpn x,aris toharisman mengawali kegiatan tanam perdana kerjasama budidaya tebu antara ptpn x dan ptpn xii di kebun ngrangkah pawon kediri.jpg	91
27201906240656544796272-7.Kegiatan tanam perdana kerjasama budidaya tebu antara ptpn x dan ptpn xii di kebun ngrangkah pawon kediri.jpg	91
27201906240656544796273-1.Tanam perdana kerjasama budidaya tebu antara ptpn x dan ptpn xii di kebun ngrangkah pawon kediri.jpg	91
26201906130155356117160-2.Dirut ptpn x,dwi satriyo annurogo.jpg	92
26201906130155356117161-4.Dirut ptpn x,dwi satriyo annurogo memberikan cinderamata kepada dewan komisaris ptpn x,sukardi rinakit.jpg	92
26201906130155356117162-3.dewan komisaris ptpn x,sukardi rinakit.jpg	92
26201906130155356117163-16.suasana halal bihalal di kantor pusat ptpn x.jpg	92
25201905290511319492210-1.Direksi PTPN X,XI dan XII melepas keberangkatan peserta mudik gratis 2019.jpg	93
25201905290511319492211-4.DirKom PTPN X,Slamet Djumantoro menyerahkan bingkisan kepada peserta mudik gratis 2019.jpg	93
25201905290511319492212-2.Direksi PTPN X,XI dan XII melepas keberangkatan peserta mudik gratis 2019.jpg	93
25201905290511319492213-Mudik Bareng3.jpg	93
24201905290503069262940-4.dirops ptpn x,aris toharisman bersama gm kebun kertosari,gm ajung gayasan dan divisi tembakau bersama melakukan tanam perdana tembakau.jpg	94
24201905290503069262941-3.dirops ptpn x,aris toharisman bersama gm kebun kertosari,laurentius tumanggor bersama melakukan tanam perdana tembakau.jpg	94
24201905290503069262942-7.selain santunan,dirops ptpn x,aris toharisman memberikan bantuan sembako ke masyarakat sekitar kebun kertosari.jpg	94
24201905290503069262943-8.gm kebun kertosari,menyerahkan sembako ke masyarakat sekitar kebun kertosari.jpg	94
23201905210655167059320-1.Dirut PTPN X,Dwi Satriyo Annurogo di acara safari ramadhan BUMN hadir untuk negeri di Klaten.jpg	95
23201905210655167059321-3.Dirut PTPN X,Dwi Satriyo Annurogo menyerahkan Al-Quran di acara safari ramadhan BUMN hadir untuk negeri di Kebun Tembakau Klaten.jpg	95
23201905210655167059322-6DIRUT~1.JPG	95
23201905210655167059323-2.Dirut PTPN X,Dwi Satriyo Annurogo menyerahkan Al-Quran di acara safari ramadhan BUMN hadir untuk negeri di Kebun Tembakau Klaten.jpg	95
22201905130836058795230-1.Kunjungan deputi kementerian BUMN bidang usaha agro dan farmasi,Wahyu Kuncoro ke pabrik gula retail bersama dirut dan dirops ptpn x.jpg	96
22201905130836058795232-17.Direktur usaha kecil dan jaringan BankBNI,Catur Budi Harto dan Direksi PTPN X di PG Ngadiredjo.jpg	96
22201905130836058795233-20.Deputi kementerian BUMN bidang usaha agro dan farmasi,Wahyu Kuncoro bersama Direktur usaha kecil dan jaringan BankBNI,Catur Budi Harto dan Direksi PTPN X di HGU Kebun Sumber Lumbu.jpg	96
21201905130831316500040-1.Arahan Dirops PTPN X,Aris Toharisman di acara tanam perdana tembakau Kebun Ajung Gayasan Jember.jpg	97
21201905130831316500041-3.Dirops PTPN X,Aris Toharisman bersama karyawan di acara tanam perdana tembakau Kebun Ajung Gayasan Jember.jpg	97
21201905130831316500042-13.Dirops PTPN X,Aris Toharisman melihat proses pembibitan tembakau di beberapa wilayah Kebun Ajung Gayasan.jpg	97
21201905130831316500043-14.Dirops PTPN X,Aris Toharisman melihat proses pembibitan tembakau di beberapa wilayah Kebun Ajung Gayasan.jpg	97
19201904291454197662030-gempolbukagiling.jpg	98
19201904291454197662031-gempolbukagiling2.jpg	98
19201904291454197662032-gempolbukagiling3.jpg	98
19201904291454197662033-gempolbukagiling4.jpg	98
18201904291449333640220-bg-depan.jpg	99
18201904291449333640221-gal1.jpg	99
18201904291449333640222-gal2.jpg	99
18201904291449333640223-gal3.jpg	99
17201904110802085069940-8.Kunjungan Wantannas ke PT.Enero membahas peluang kebijakan mandatori bioetanol bersama PT.Pertamina.jpg	100
17201904110802085069941-6.Dirut PT Enero,Izmirta Rachman bersama Setjen Wantannas,Indra Miza saat melihat pabrik PT.Enero bersama PT.Pertamina.jpg	100
17201904110802085069942-4.Kunjungan Wantannas ke PT.Enero membahas peluang kebijakan mandatori bioetanol bersama PT.Pertamina.jpg	100
17201904110802085069943-1.Kunjungan Wantannas ke PT.Enero membahas peluang kebijakan mandatori bioetanol bersama PT.Pertamina.jpg	100
16201904110800037805010-2.Dirut PTPN X,Dwi Satriyo Annurogo memberikan sembako kepada masyarakat Desa Ngadirenggo Trenggalek di acara HUT 21 Kementerian BUMN.jpg	101
16201904110800037805011-3.Dirut PTPN X,Dwi Satriyo Annurogo bersama direksi PTPN X,XI dan XII usai memberikan sembako kepada masyarakat Desa Ngadirenggo Trenggalek di acara HUT 21 Kementerian BUMN.jpg	101
16201904110800037805012-8.Dirut PTPN X,Dwi Satriyo Annurogo didampingi Dirkom PTPN X,Slamet Djumatoro bersama masyarakat membantu pembuatan tanggul di Kecamatan Pogalan Trenggalek.jpg	101
16201904110800037805013-7.Dirut PTPN X,Dwi Satriyo Annurogo didampingi Dirkom PTPN X,Slamet Djumatoro bersama masyarakat membantu pembuatan tanggul di Kecamatan Pogalan Trenggalek.jpg	101
15201903040303344275500-1.Direktur Komersil PTPN X,Slamet Djumantoro membuka kegiatan Istighosah menyambut musim giling tebu dan musim tanam tembakau 2019.jpg	102
15201903040303344275501-5, Dirut PTPN X,Dwi Satriyo Annurogo bersama H.Mubin dan Slamet Djumantoro memberikan santunan kepada anak yatim.jpg	102
15201903040303344275502-10.Istighosah PTPN X yang diikuti karyawan dan anak yatim berlangsung khidmat.jpg	102
15201903040303344275503-7.Direksi PTPN X bersama anak yatim di acara Istighosah PTPN X.jpg	102
14201902260751079799370-7.PTPN X menjalin MOU dengan PT.Kutai Timber Indonesia terkait penanaman sengon di lahan milik PTPN X di Jember.jpg	103
14201902260751079799371-6.PTPN X menjalin MOU dengan PT.Kutai Timber Indonesia terkait penanaman sengon di lahan milik PTPN X di Jember.jpg	103
14201902260751079799372-4.Penanaman bibit pohon sengon oleh Dirut PTPN X  dengan PT.Kutai Timber Indonesia terkait penanaman sengon di lahan milik PTPN X di desa Banjarsengon Jember.jpg	103
14201902260751079799373-5.Dirut PTPN X bersama karyawan usai penanaman sengon di lahan milik PTPN X di desa Banjarsengon Jember.jpg	103
10201902200150567556560-2.Direktur Operasioanal PTPN X,Aris Toharisman mengharapkan subsidi bibit tebu akan membantu dan meningkatkan ketahanan pangan untuk petani tebu di wilayah Lamongan dan Bojonegoro.jpg	104
10201902200150567556561-3.Direktur Operasioanal PTPN X,Aris Toharisman menyerahkan bantuan subsidi bibit tebu ke perwakilan APTR Lamongan dan Bojonegoro.jpg	104
10201902200150567556562-4.Penyerahan bantuan subsidi tebu dari GM.PG Djombang Baru,Edwin Risananto kepada petani tebu wilayah Lamongan dan Bojonegoro.jpg	104
10201902200150567556563-5.Dir Ops PTPN X, GM.PG Djombang Baru dan jajaran Muspika bersama APTR Lamongan dan Bojonegoro.jpg	104
9201902120235412980680-2.Dirut PTPN X,Dwi Satriyo Annurogo menerima penghargaan INMA 2019.jpg	105
9201902120235412980681-3.Dirut PTPN X,Dwi Satriyo Annurogo menerima penghargaan INMA 2019.jpg	105
9201902120235412980682-5.Awarding Night SPS dan Satu Dekade IPMA di Gedung Siola.jpg	105
9201902120235412980683-6.Menkominfo,Rudiantara hadiri acara Awarding Night SPS dan Satu Dekade IPMA di Gedung Siola.jpg	105
8201902120234255752300-1.Sambutan Dirut PTPN X,Dwi Satriyo Annurogo di acara pisah sambut Direktur Operasional PTPN X.jpg	106
8201902120234255752301-2.Direktur Operasioanal PTPN X yang lama,Mustaqim.jpg	106
8201902120234255752302-3.Direktur Operasioanal PTPN X yang baru,Aris Toharisman.jpg	106
8201902120234255752303-7.Dirut PTPN X bersama Direktur Operasioanal PTPN X.jpg	106
7201902120231382145150-5.Dirut PT.Enero,Izmirta Rachman bersama Dirut PTPN X,Dwi Satriyo Annurogo saat mendampingi Komisaris Utama PTPN X,Banun Hartini ke PT.Enero.jpg	107
7201902120231382145151-6.Dirut PT.Enero,Izmirta Rachman bersama Dirut PTPN X,Dwi Satriyo Annurogo saat mendampingi Komisaris Utama PTPN X,Banun Hartini ke PT.Enero.jpg	107
7201902120231382145152-8.Direksi PT Enero,PTPN X dan APTR bersama Komisaris Utama PTPN X,Banun Hartini.jpg	107
7201902120231382145153-10.Kunjungan Komisaris Utama PTPN X,Banun Hartini ke PG.Gempokrep.jpg	107
2201901240358411854600-01PTPN-X-Pangdam-V-Brawijaya.jpg	108
2201901240358411854601-02PTPN-X-Pangdam-V-Brawijaya.jpg	108
2201901240358411854602-03PTPN-X-Pangdam-V-Brawijaya.jpg	108
2201901240358411854603-04PTPN-X-Pangdam-V-Brawijaya.jpg	108
1201901240357353214410-01tahunbaru2019.jpg	109
1201901240357353214411-02tahunbaru2019.jpg	109
1201901240357353214412-03tahunbaru2019.jpg	109
1201901240357353214413-04tahunbaru2019.jpg	109
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes ("ID_LIKES", "EMAIL", "ID_NEWS") FROM stdin;
71	shellafadwa18@gmail.com	13
72	voidels.rey05@gmail.com	18
74	voidels.rey05@gmail.com	16
76	daudana.dp@gmail.com	3
77	dhitamawardani@gmail.com	16
78	dhitamawardani@gmail.com	8
81	monicatifany99@gmail.com	3
82	monicatifany99@gmail.com	8
83	monicatifany99@gmail.com	3
84	monicatifany99@gmail.com	17
28	yohanesdl9@gmail.com	13
29	yohanesdl9@gmail.com	13
34	yohanesdl9@gmail.com	10
98	irfanalfiansyah10@gmail.com	3
100	irfanalfiansyah10@gmail.com	8
41	firnasreyhan@gmail.com	3
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
118	panjidia995@gmail.com	8
2	yohanesdl9@gmail.com	3
3	shellafadwa18@gmail.com	109
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news ("ID_NEWS", "ID_CATEGORY", "TITLE_NEWS", "CONTENT_NEWS", "VIEWS_COUNT", "SHARES_COUNT", "DATE_NEWS", "NEWS_IMAGE", "USER_EDITOR", "USER_VERIFICATOR", "STATUS", "URL") FROM stdin;
10	B	Contoh	<p>abcdefghijkl</p>	0	0	2019-09-26 11:21:42	Screenshot_3.png	admin@ptpn10.co.id	\N	draft	\N
13	B	Sejarah PTPN X	<p>Sejarah PTPN X</p>	0	0	2019-10-01 14:53:27	terus-merugi-ptpn-x-tutup-pabrik-gula-meraka-moqgVeuRfv.jpg	admin@ptpn10.co.id	\N	draft	\N
24	B	Lakukan Restrukturisasi, PTPN X Lakukan Sertijab Pejabat Puncak	<p style="text-align: justify;">Sebagai langkah restrukturisasi, PT Perkebunan Nusantara (PTPN) X melakukan serah terima jabatan pada beberapa posisi pejabat puncak. Restrukturisasi organisasi diharapkan akan memberikan penyegaran dalam atmosfer kerja di PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&rdquo;Kepada pejabat yang baru dilantik saya ucapkan selamat bertugas. Saya harapkan pejabat yang hari ini dilantik bisa bertugas secara professional dan memberikan kontribusi terhadap perusahaan,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-12-02_at_11.19.28.jpeg" style="width: 350px; height: 233px; float: right;" />Adanya restrukturisasi ini menurutnya akan memberikan penyegaran dalam atmoser kerja di PTPN X. Tidak hanya penyegaran semata, restrukturisasi organisasi juga akan memicu penciptaan inovasi-inovasi strategis untuk perkembangan korporat ke depan.</p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi organisasi ini berdampak pada jumlah pejabat puncak yang sebelumnya 16 posisi menjadi 13 posisi. &rdquo;Berkurangnya jumlah ini tentunya akan membuat korporasi menjadi lebih lincah dan sinergi lebih kuat dalam upaya pencapaian target perusahaan,&rdquo; ujarnya.</p>\r\n\r\n<p style="text-align: justify;">Dalam kesempatan tersebut Direktur Utama PTPN X juga menyampaikan ucapan terima kasih dan apresiasi kepada dua pejabat puncak yang sudah memasuki masa bebas tugas yaitu Alan Purwandiarto dan Benny Basuki Suryo.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Berikut nama-nama 13 pejabat puncak di Kantor Pusat yang dilantik:</p>\r\n\r\n<ul>\r\n\t<li>Moh.&nbsp;Afif Fauzi sebagai&nbsp;Plt. Kepala Satuan Pengawasan Intern</li>\r\n\t<li>Arif Suhariadi sebagai&nbsp;Kepala Bagian Keuangan dan Akuntansi</li>\r\n\t<li>Herman sebagai&nbsp;Kepala Bagian SDM dan Umum</li>\r\n\t<li>Tri Ari Sulistyawan sebagai&nbsp;Kepala Bagian Hukum dan Pengembangan Aset</li>\r\n\t<li>Wakhyu Priyadi Siswosumarto sebagai&nbsp;Kepala Bagian Perencanaan Strategis</li>\r\n\t<li>Edwin Risananto sebagai&nbsp;Kepala Bagian Pengadaan Barang dan Jasa</li>\r\n\t<li>Ramlan Silvester Sinaga sebagai&nbsp;Pjs. Kepala Bagian Teknik dan Pengolahan</li>\r\n\t<li>Arisson Sianipar sebagai&nbsp;Pjs. General Manager PG Kremboong</li>\r\n\t<li>Agus Mihandoko sebagai&nbsp;General Manager PG Gempolkrep</li>\r\n\t<li>Erwin Budianto sebagai&nbsp;Pjs. General Manager PG Djombang Baru</li>\r\n\t<li>Marshal Gerard Pattiasina&nbsp;sebagai&nbsp;General Manager PG Lestari</li>\r\n\t<li>Bambang Hari Nugroho sebagai&nbsp;General Manager PG Pesantren Baru</li>\r\n\t<li>Miftakhul Munir sebagai&nbsp;General Manager PG Modjopanggoong.</li>\r\n</ul>\r\n\r\n<p><span style="text-align: justify;">(Red1, CIN_Sekper)</span></p>\r\n	0	0	2019-12-02 18:48:24	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/lakukan-restrukturisasi-ptpn-x-lakukan-sertijab-pejabat-puncak
25	B	2020, Holding Perkebunan Targetkan PTPN Gula Sumbang Laba Rp 53 Milliar	<p style="text-align: justify;">Di penghujung tahun 2019, Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero) telah melakukan evaluasi kinerja seluruh PTPN gula. Banyak hal yang harus diperbaiki agar kinerja di musim giling tahun 2020 mendatang lebih baik dari kinerja tahun 2019, bahkan Holding Perkebunan Nusantara menargetkan PTPN Gula bisa menyumbang laba sebesar Rp 53 Milliar.</p>\r\n\r\n<p style="text-align: justify;">Direktur Produksi dan Pengembangan Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero), Mahmudi mengungkapkan optimisme di industri gula harus tetap terjaga apapun yang terjadi. Banyak aspek yang mempengaruhi kinerja industri gula bahkan aspek politis pun turut memberi warna. Namun, apapun aspek yang menghadang, industri gula harus terus maju dan berkembang.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kenyataan, kinerja keuangan industri gula dari tahun ke tahun tidak pernah berkontribusi positif,&quot; kata Mahmudi pada acara Evaluasi Giling Tahun 2019 dan Strategi Giling Tahun 2020 yang dihadiri seluruh direksi dan general manager pabrik gula PTPN Grup dan PT RNI di Kantor Pusat PTPN X, Sabtu (30/11).</p>\r\n\r\n<p style="text-align: justify;">Mahmudi mengungkapkan setiap tahun, Holding Perkebunan Nusantara merencanakan dan menargetkan industri gula profit tapi kenyataannya sejak tahun 2016 hingga 2019 ini masih merugi.</p>\r\n\r\n<p style="text-align: justify;">&quot;Untuk musik giling 2020, Holding Perkebunan Nusantara merencanakan PTPN Gula bisa profit sebesar Rp 53 Milliar,&quot; sebutnya.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/rapat_eval_giling_2019.jpeg" style="float: right; width: 300px; height: 225px;" /></p>\r\n\r\n<p style="text-align: justify;">Apa yang harus dilakukan agar profit, sambung Mahmudi, perencanaan di masing-masing PTPN harus terus di kawal, khususnya di aspek operasional.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Terobosan-terobosan operasional diharapkan akan ada untuk menjawab tantangan menjamur nya pabrik gula swasta dan menurunnya areal tebu,&quot; paparnya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Ditempat yang sama, Plt. Deputi Usaha Industri Agro dan Farmasi Kementerian BUMN, Imam Paryanto mengharapkan agar di musim giling Tahun 2020 mendatang, PTPN Gula dan PT RNI bisa menyumbang laba. Gempuran pabrik gula swasta tidak bisa dihindarkan mengingat jumlah produksi di dalam negeri belum memenuhi kebutuhan yang ada.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sebelum berakhir, seluruh direksi PTPN Gula dan PT RNI melakukan Penandatanganan komitmen pencapaian kinerja tahun 2020. (Red3, CIN_Sekper)</p>\r\n	0	0	2019-12-02 15:28:28	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/2020-holding-perkebunan-targetkan-ptpn-gula-sumbang-laba-rp-53-milliar
26	B	PTPN X Salurkan CSR untuk Warga di Sekitar Kebun Klaten	<div dir="auto" style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: justify;">\r\n<p>PT Perkebunan Nusantara (PTPN) X bersama tiga BUMN lain yaitu PT Angkasa Pura (Persero), PT Kawasan Industri Wijayakusuma (Persero) dan PTPN IX menyalurkan Cuntuk warga di sekitar Kebun Klaten. Melalui bantuan yang diberikan diharapkan terjadi peningkatan kualitas sumber daya manusia di lingkungan tersebut.&nbsp;Bantuan yang diberikan berupa elektrifikasi, pembangunan sarana MCK (Mandi, Cuci, Kakus), beasiswa, bedah rumah, pembangunan sarana air bersih dan pasar murah.&nbsp;</p>\r\n\r\n<p><img alt="" src="/uploads/IMG_6678.JPG" style="width: 300px; height: 200px; float: right;" />Direktur Utama PTPN X, Dwi Satriyo Annurogo mengatakan <em>Corporate Social Responsibility</em> (CSR) disalurkan untuk membantu masyarakat yang membutuhkan. &quot;Bagaimana masyarakat bisa lebih sehat agar dalam aktivitasnya sehari-hari tidak terkendala rumah bocor, MCK tidak sehat dan lain-lain,&quot; ujar Dwi saat memberikan sambutan pada acara penyerahan bantuan di Klaten, Jumat (29/11).</p>\r\n\r\n<p>Dengan individu yang sehat, akan terbentuk keluarga dan lingkungan yang sehat pula. Dan pada gilirannya akan menjadikan bangsa ini kuat.&nbsp;</p>\r\n\r\n<p>&quot;Ini adalah wujud bagaimana BUMN memberikan manfaat bagi masyarakat,&quot; sambung Dwi.&nbsp;</p>\r\n\r\n<p>Elektrifikasi diberikan ke 30 unit rumah mulai dari Desa Ngemplak, Birin, Balang, Ketitang dan lain-lain. Untuk bantuan MCK juga diberikan ke 30 unit rumah yang tersebar di beberapa desa, yaitu Karangasem, Ngriman, Jetak, Birit, dan lain-lain.&nbsp;</p>\r\n\r\n<p>Kegiatan CSR ini juga meliputi pemberian bantuan sarana air bersih di Desa Pandes. Untuk bantuan perbaikan rumah diberikan kepada 5 (lima) rumah, yang berada di Desa Bareng, Metuk lor, Kembang, dan Jetak.&nbsp;</p>\r\n\r\n<p>Yang terakhir, pemberian bantuan beasiswa diserahkan kepada 15 orang siswa baik SD, SMP, mapun SMK. Selain itu pada pekan sebelumnya juga diadakan pasar murah yang menyediakan 1.500 paket sembako untuk masyarakat. (Red1, CIN_Sekper)</p>\r\n</div>\r\n	0	0	2019-12-01 00:59:46	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-salurkan-csr-untuk-warga-di-sekitar-kebun-klaten
91	G	Tanam Perdana TS Spawon Kediri	\N	0	0	2019-12-10 13:08:20	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
16	B	Contoh Embedded Media dan Gambar	<p>Contoh berita yang menggunakan embedded media berupa video YouTube dan gambar</p>\r\n<p><img src="https://drive.tiny.cloud/1/i8b1vm1qkrytw968a78y2mz1mdfk51re4smkal9m11h4012x/85418d39-b279-454f-a4e9-62d172a60f94" alt="" width="100%" height="auto" /></p>\r\n<p>Video YouTube :</p>\r\n<p><iframe src="https://www.youtube.com/embed/Ux-H-x7GmSA?t=33s" width="100%" height="auto" allowfullscreen="allowfullscreen"></iframe></p>	0	0	2019-10-17 14:23:50	WhatsApp_Image_2019-10-16_at_08_35_01.jpeg	admin@ptpn10.co.id	muh.rizal@ptpn10.co.id	published	\N
92	G	Halal Bihalal 1440 H	\N	0	0	2019-12-10 13:08:21	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
8	B	Contoh Kedua	<p>Sebagai salah satu anak perusahaan dari PTPN III (Persero) dan juga sebagai&nbsp;<em>leading company</em>&nbsp;dalam industri gula di Indonesia, PTPN X mendedikasikan diri untuk menjadi perusahaan yang mengutamakan pelayanan pada&nbsp;<em>stakeholder</em>. PTPN X juga meraih penghargaan&nbsp;<em>Silver Winner</em>&nbsp;kategori Indonesia Melayani berkat upaya dalam mengutamakan pelayanan&nbsp;<em>stakeholder</em>&nbsp;dan masyarakat dilingkungan sekitar melalui program<em>; E-farming</em>, Pemberian Kredit, dan Kartu Tani Sehat. (Valen_UWM, CIN_Sekper)</p>	0	0	2019-09-25 15:12:50	applogo.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
93	G	Mudik Bareng PTPN Group	\N	0	0	2019-12-10 13:08:24	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
94	G	Tanam Perdana Kebun Tembakau Kertosari	\N	0	0	2019-12-10 13:08:27	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
18	B	Dirut PTPN X Tinjau Langsung Lahan Agroforestry	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo melakukan kunjungan ke beberapa lahan tebu milik PG Lestari, Rabu (18/9).&nbsp; Kunjungan ini bertujuan untuk meninjau secara langsung program agroforestry yang dilakukan antara PTPN X dengan Perum Perhutani KPH Jombang. Kunjungan dilakukan di lahan Ngujung, Pandean,&nbsp;dan Ngasem.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Penyediaan pengairan dan saprodi untuk lahan tersebut juga telah disediakan guna mendukung pengelolaan&nbsp;<em style="box-sizing: border-box;">on farmn</em>-nya. Dwi menghimbau untuk segera melakukan pekerjaan persiapan pembuatan sumber air guna pengairan, sehingga dapat segera melaksanakan kegiatan pemupukan. Kualitas dan mutu pekerjaan juga harus menjadi perhatian.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kebutuhan biaya pengerjaan segera disusun dan diajukan, sehingga pengairan dan saprodi segera tersedia dan dapat dilanjutkan dengan kegiatan pupuk,&rdquo; terang Dwi lebih lanjut.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya, lahan-lahan ini akan ditanami tebu dengan varietas Cening dan Bululawang. Lahan Ngasem sendiri telah tanam di bulan Mei 2019 dan lahan Ngujung telah tanam di bulan Agustus 2019. Sedangkan untuk lahan Pandean dijadwalkan tanam pada bulan Oktober 2019. (CIN_Sekper, BSA_Sekper)</p>	0	0	2019-10-22 07:22:28	agro2.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
17	B	Dirut PTPN X Kunjungi Lahan Agroforestry Tebu di Bojonegoro	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">BOJONEGORO</span>&nbsp;&ndash; Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo, lakukan kunjungan ke Lahan Perum Perhutani BKPH Celangap, KPH Bojonegoro pada Kamis (3/10). Kunjungan ini menindaklanjuti adanya kerjasama penggunaan dan pemanfaatan kawasan hutan untuk kegiatan budidaya tanaman tebu dengan Perum Perhutani yang telah berlangsung sejak Oktober 2017.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Kerjasama yang bertujuan untuk mendukung ketahanan pangan ini terkait di antaranya pengerjaan lahan Perum Perhutani untuk kegiatan penanaman Agroforestry tebu seluas 5.661,5 Ha yang mana telah mendapat persetujuan Kementerian Lingkungan Hidup dan Kehutanan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Seluas 52,3 Ha lahan Perhutani di kawasan KPH Bojonegoro akan ditanami tebu dan dikelola langsung oleh Pabrik Gula (PG) Djombang Baru. Lahan ini nantinya akan ditanami varietas unggul baru, dengan potensi produksi 80 Ton/ Ha dan rendemen 9%.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kerjasama terkait pengerjaan lahan Agroforestry tebu ini sebagai upaya dari PTPN X untuk memastikan keajegan pasok BBT ke pabrik gula pada masa giling tahun 2020,&rdquo;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya di tahun 2019 ini akan ada pengerjaan seluas 423 Ha. Sebelumnya, lahan yang telah dikerjakan berada di kawasan KPH Jombang seluas 108 Ha yang dikelola oleh PG Lestari. Selanjutnya, akan ada pengerjaan lahan di kawasan KPH Mojokerto seluas 253 Ha yang akan dikelola oleh PG Gempolkrep. (Ella_Unair, CIN_Sekper)</p>	0	0	2019-10-22 07:20:41	agrofore1.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
21	B	PTPN X Bekerjasama dengan PT PP (Persero) Tbk. Gelar Pelatihan Petani Tebu Rakyat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X bekerjasama dengan PT Pembangunan Perumahan (Persero) Tbk. mengadakan pelatihan untuk para petani tebu milenial di Klub Bunga Butik Resort, Batu (5/12).</p>\r\n\r\n<p style="text-align: justify;">Dibuka langsung oleh Direktur Komersil PTPN X, Slamet Djumantoro, pelatihan ini diikuti oleh 35 orang petani muda tebu rakyat binaan pabrik gula PG Modjopanggoong. Menurut Slamet, industri gula membutuhkan sentuhan dan perhatian para generasi muda. Karena di tangan generasi mudalah perkembangan industri tebu ke depan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Anda semua merupakan pahlawan bagi Ketahanan Pangan Indonesia ke depan. Untuk itu diharapkan dengan pelatihan ini akan mampu menggerakkan minat generasi muda untuk lebih proaktif lagi sehingga dapat meningkatkan daya saing yang dimiliki, &quot; jelasnya.</p>\r\n\r\n<p style="text-align: justify;">Dijelaskan, bahwa masih banyak potensi yang belum digali dari industri tebu. Diharapkan dengan keterlibatan generasi muda yang mempunyai kreativitas semua potensi industri tebu dapat dimanfaatkan.</p>\r\n\r\n<p style="text-align: justify;">Di samping itu, Panji Decca Dunianto, Manajer Unit Program Kemitraan dan Bina Lingkungan (PKBL) PT PP (Persero) Tbk mengatakan bahwa&nbsp;bantuan yang diberikan merupakan bentuk kepedulian perusahaan terhadap lingkungan sekitar dan kali ini diperuntukkan untuk pelatihan bagi para petani milenial.</p>\r\n\r\n<p style="text-align: justify;">&quot;Diharapkan dengan adanya pelatihan ini sinergi antara PT PP dan PTPN X ini maka dapat meningkatkan kinerja dari kedua belah pihak dan dapat menjadi motor penggerak bagi para petani milenial untuk dapat meningkatkan daya saing yang ada &quot; jelas Panji.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/5de87d25-d9c8-4477-af12-1718e3e14fb4-web.JPG" style="width: 300px; height: 200px; float: left;" /></p>\r\n\r\n<p style="text-align: justify;">Dalam pelatihan ini, beberapa materi pun diberikan antara lain motivasi dan spirit usaha, budidaya dan aplikasi, mekanisasi tanaman tebu, <em>core sampler</em>, <em>e-farming,</em> dan rendemen. (Red2, PUT_Sekper)</p>\r\n	0	0	2019-12-05 17:57:58	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-bekerjasama-dengan-pt-pp-persero-tbk-gelar-pelatihan-petani-tebu-rakyat
22	B	PTPN X Resmikan Hunian Bedah Rumah 	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menunjukkan kepeduliannya kepada masyarakat dengan menyalurkan&nbsp;<em>Corporate Social Responsibility</em>&nbsp;(CSR) melalui program bedah rumah. Acara kali ini merupakan penyerahan secara simbolis rumah yang telah selesai di renovasi kepada pemiliknya, Nursi&rsquo;ah pada Rabu, (4/12). <img alt="" src="/uploads/IMG_7253.JPG" style="width: 350px; height: 233px; float: left;" />Sebelumnya, PTPN X telah secara resmi memulai proses bedah rumah tersebut yang berada di Desa Kawangrejo, Kecamatan Mumbulsari, Jember pada 30 November lalu.</p>\r\n\r\n<p style="text-align: justify;">Penyerahan kali ini dihadiri oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo didampingi oleh Pejabat Puncak PTPN X dan GM Kebun Ajong Gayasan, Dwi Aprilia Sandi. Kehadiran Direktur Utama PTPN X ini untuk memastikan bahwa kegiatan CSR dalam pengerjaan rumah berjalan sesuai dengan ketentuan yang telah dibuat.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapannya, program bedah rumah dapat memberikan manfaat bagi pemilik rumah. Kehadiran PTPN X dalam acara bedah rumah ini sebagai wujud dari tanggungjawab dan kepedulian terhadap kesejahteraan masyarakat wilayah kerja Kebun Ajong Gayasan,&rdquo; ujar Dwi. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-12-04 20:00:22	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-resmikan-hunian-bedah-rumah
23	B	Pacu Transformasi Bisnis, PTPN X Rombak Jajaran Komisaris PT Dasaplast Nusantara dan Enero	<p style="text-align: justify;">Guna memacu performa anak perusahaannya, PTPN X melakukan perombakan di jajaran komisaris. Tantangan dan dinamika bisnis yang sangat dinamis, menuntut perusahaan untuk bekerja lebih inovatif dan produktif agar mampu bertahan menjadi yang terbaik.</p>\r\n\r\n<p style="text-align: justify;">&rdquo;Kepada Dewan Komisaris yang baru dilantik saya ucapkan selamat bertugas. Saya harapkan ke depannya bisa menghadirkan semangat dan ide-ide baru untuk terobosan dan inovasi perusahaan. Mengantarkan anak perusahaan PT Dasaplast Nusantara dan PT Energi Agro Nusantara (Enero) menjadi <em>leader</em> di masing-masing bidang bisnisnya,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/web_sertijab_komisaris_anper.JPG" style="width: 300px; height: 200px; float: left;" /></p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi ini menurutnya sebagai langkah awal menghadapi tantangan di tahun 2020. Proyek PMN yang ditargetkan selesai di tahun 2020 diharapkan bisa menjadi langkah-langkah inisiasi untuk kelancaran PT Enero.&nbsp; Sehingga PT Enero dapat menjadi <em>leader </em>dan <em>pioneer </em>untuk perusahaan Energi Baru Terbarukan.</p>\r\n\r\n<p style="text-align: justify;">Untuk PT Dasaplast Nusantara sendiri, Dwi melihat banyak sekali pangsa pasar yang luas, dan belum dijajaki. Harapannya, PT Dasaplast Nusantara bersama jajaran komisaris yang baru mampu mengambil kesempatan tersebut dengan membentuk tim <em>marketing</em> yang handal dan merajai pangsa pasar yang terbuka.</p>\r\n\r\n<p style="text-align: justify;">Dalam kesempatan tersebut Direktur Utama PTPN X juga kembali mengingatkan tentang budaya kerja Sinergi, Integritas, dan Profesional (SIPro), dimana kita harus terus menerapkan nilai-nilai semangat tersebut, dan akhlak yang baik sehingga membawa PTPN Group ini selaras dengan dinamika bekerja sehari-hari.</p>\r\n\r\n<p style="text-align: justify;">Berikut nama-nama dewan komisaris anak perusahaan PTPN X yang dilantik:</p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;">Suryanto sebagai&nbsp;Komisaris Utama PT Dasaplast Nusantara</li>\r\n\t<li style="text-align: justify;">Arif Suhariadi sebagai&nbsp;Komisaris PT Dasaplast Nusantara</li>\r\n\t<li style="text-align: justify;">Wakhyu Priyadi Siswosumarto&nbsp;sebagai Komisaris Utama PT Enero</li>\r\n\t<li style="text-align: justify;">Agus Minhandoko sebagai Komisaris PT Enero</li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">(PUT_Sekper, CIN_Sekper)</p>\r\n	0	0	2019-12-02 23:14:45	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pacu-transformasi-bisnis-ptpn-x-rombak-jajaran-komisaris-pt-dasaplast-nusantara-dan-enero
2	B	UAT Testing 2	<p>Contoh testing UAT 2</p>	1	1	2019-12-05 11:17:00	status_pengiriman.PNG	admin@ptpn10.co.id	\N	draft	\N
20	B	UAT Testing5	<p>Contoh Tes UAT 4 Desember 2019 testing 1 cobaaa</p>	0	0	2019-12-04 03:12:21	beeimgtmp-20191202-085116.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
27	B	Ada yang Spesial di Safety Riding Enero	<p style="text-align: justify;"><strong>Mojokerto </strong>&ndash; Safety Riding yang sedang menjadi program PT Energi Agro Nusantara (Enero), ditindaklanjuti aktivitas yang spesial beberapa waktu lalu. Jika biasanya Safety Riding disosialisasikan secara rutin di dalam perusahaan, kali ini dalam bentuk touring dan sosialisasi kemanfaatan Biofertlizer (pupuk hayati) di berikan kepada kalangan petani bawang daun serta diikuti oleh Enero Motoriders Club dan karyawan Enero lainnya. Acara tersebut diselenggarakan di Desa Kemiri, Kecamatan Pacet, Sabtu (16/11).</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/foto_web.jpg" style="width: 350px; height: 197px; float: left;" />Acara dimulai dengan <em>briefing</em> terkait keamanan dan keselamatan selama berkendara sekaligus cek kondisi kendaraan. Setelah berkendara selama kurang lebih satu jam, agenda dilanjutkan dengan sosialisasi kemanfaatan biofertilizer pada petani bawang daun. Termasuk didalamnya dilakukan aplikasi percobaan biofertilizer skala kecil, yang membandingkan aplikasi biofertilizer dan aplikasi normal (full menggunakan pupuk anorganik). Nantinya, hasil aplikasi akan ditinjau perkembangannya sampai panen.</p>\r\n\r\n<p style="text-align: justify;">Petani menyambut baik inisiatif dari Enero ini. Harapan mereka, penggunaan pupuk anorganik dapat berkurang dan struktur serta kandungan tanah mengalami perbaikan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kami merasa senang dengan percobaan ini, semoga dampak biofertilizer bisa dirasakan pada tanah dan tanaman,&quot; tutur Nurul Huda, salah satu petani yang ikut sosialisasi.</p>\r\n\r\n<p style="text-align: justify;">Rangkaian aktivitas ditutup dengan wisata menikmati keindahan alam di area Pacet. Kedepannya, aktivitas safety riding akan di buat lebih menarik, dengan kunjungan industri ke unit dan anak perusahaan di lingkungan PTPN X atau <em>stakeholder</em> terkait lainnya.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Tidak hanya pengembangan wawasan berkendara bagi karyawan, aktivitas safety riding banyak manfaatnya seperti sarana edukasi dan sosialisasi produk perusahaan serta membangun relasi sosial dengan masyarakat dan pihak-pihak lain,&rdquo; ujar Direktur PT Enero, Dimas Eko Prasetyo. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n	0	0	2019-11-28 18:34:55	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ada-yang-spesial-di-safety-riding-enero
28	B	Terus Ukir Prestasi, PTPN X Kembali Raih Tiga Penghargaan	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X kembali meraih penghargaan. Kali ini, PTPN X menyabet tiga penghargaan sekaligus dalam ajang TOP Digital Award 2019. Penghargaan diterima langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Direktur Operasional PTPN X, Aris Toharisman, di Jakarta (27/11). Tiga penghargaan yakni Top Leader on Digital Implementation 2019, Top Digital Implementation on Agriculture Sector 2019 Level Star 4, dan Top Digital on Agriculture &ndash; <em>e-Farming</em> &amp; Investani.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X selalu memperbaiki kinerjanya setiap tahun. Penghargaan ini merupakan hasil kerja keras dan usaha dari seluruh karyawan PTPN X dan juga dukungan dari seluruh&nbsp;<em>stakeholder</em>. Kami mengucapkan terima kasih atas apresiasi dan kepercayaan yang diberikan kepada PTPN X,&rdquo; terang Dwi.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-27_at_8.17.10_PM.jpeg" style="width: 300px; height: 188px; float: left;" /></p>\r\n\r\n<p style="text-align: justify;">Berhasilnya PTPN X dalam menyabet Top Digital on Agriculture &ndash; e-Farming dan Investani, merupakan salah satu bukti bahwa PTPN X selalu berusaha memberikan kemudahan pelayanan kepada <em>stakeholder</em> khususnya petani. Melalui beberapa program unggulan antara lain e-Farming dan Investani. e-Farming adalah aplikasi pendaftaran lahan dan<em>&nbsp;monitoring</em> kemajuan pekerjaan kebun melalui website dan&nbsp;<em>mobile application</em>&nbsp;(android) yang didukung dengan teknologi GIS dan satelit.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, PTPN X juga memiliki program terbaru yakni Investani. Investani merupakan program investasi dalam bentuk lahan perkebunan wilayah kerja PTPN X. Para investornya adalah karyawan internal dan anggota koperasi karyawan PTPN X, serta Holding Perkebunan Nusantara. Program Investani dan e-Farming ini menjadi langkah awal PTPN X untuk memasuki era industry 4.0.</p>\r\n\r\n<p style="text-align: justify;">&quot;PTPN X senantiasa fokus pada pada perkembangan teknologi informasi sebagai bentuk peningkatan SDM dan komitmen kami untuk mewujudkan SDM yang unggul dan Indonesia yang lebih maju,&quot; tambah Dwi.</p>\r\n	0	0	2019-11-28 17:10:02	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/terus-ukir-prestasi-ptpn-x-kembali-raih-tiga-penghargaan
29	B	Kuliah Tamu Enero, Akademisi Polinema Perdalam Proses Bioethanol	<p style="text-align: justify;">PT&nbsp;Energi Agro Nusantara (Enero) kembali menunjukkan komitmennya pada dunia pendidikan Indonesia. Jumat lalu (22/11), Enero mendapatkan kehormatan memberikan kuliah tamu di Politeknik Negeri Malang (Polinema), Malang dengan&nbsp;Sam Alfian Yusuf Helmi (Manajer Proses dan Project) dan Mochammad Dimas Khoirul Umam&nbsp;(Supervisor Proses) sebagai pembicara.</p>\r\n\r\n<p style="text-align: justify;">Kuliah yang bertajuk &ldquo;Proses Fermentasi dan Distilasi Produksi Bioethanol pada Skala Industri&rdquo; ini dihadiri para akademisi di Jurusan Teknik Kimia. Acara ini sendiri bertujuan memperdalam pengetahuan proses produksi bioethanol pada skala industri. Kuliah tamu dibuka dengan sambutan dari Kepala Jurusan Teknik Kimia Polinema, Eko Naryono, yang mengungkapkan harapan kerjasama antar kedua belah pihak.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kami mengharapkan, kerjasama dengan dunia industri semakin terjalin dan kedepannya bisa menjadikan Polinema sebagai <em>teaching factory</em> dan menghasilkan lulusan-lulusan yang siap pakai di dunia industri&rdquo; ujar Eko.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/Kuliah_Tamu_Enero.jpg" style="width: 300px; height: 150px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;">Acara dilanjutkan dengan penyampaian materi kuliah oleh Sam Alfian, tentang proses produksi bioethanol, standar spesifikasi produk sesuai Standar Nasional Indonesia (SNI) dan diskusi terkait skema pengolahan hasil samping produksi bioethanol. Setelah kuliah tamu, diikuti kunjungan laboratorium praktikum untuk melihat kelengkapan alat-alat <em>pilot plant</em>.</p>\r\n\r\n<p style="text-align: justify;">Sebagai bentuk keseriusan Polinema akan energi terbarukan, saat ini mereka memiliki <em>pilot plant</em> biodiesel, sebagai alat ajar para mahasiswa. <em>Plant </em>dilengkapi dengan peralatan yang lengkap dan diharapkan juga bisa menjadi <em>pilot plant</em> bioethanol di masa datang. (Ariel_Enero, CIN_Sekper)</p>\r\n	0	0	2019-11-28 15:34:15	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kuliah-tamu-enero-akademisi-polinema-perdalam-proses-bioethanol
30	B	PG Kremboong, Salurkan CSR melalui Program Bedah Rumah	<div style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: justify;">\r\n<p>Pabrik Gula (PG) Kremboong, unit usaha dari PT Perkebunan Nusantara (PTPN) X menunjukkan kepeduliannya kepada masyarakat kurang mampu dengan menyalurkan <em>Corporate Social Responsibility</em> (CSR) melalui program bedah rumah. Kegiatan ini diperuntukan guna membantu masyarakat sekitar yang memang memerlukan dan untuk meningkatkan kualitas hidup dengan menciptakan lingkungan yang asri dan nyaman.</p>\r\n\r\n<p><img alt="" src="/uploads/WhatsApp_Image_2019-11-27_at_15.41.29.jpeg" style="width: 350px; height: 263px; float: left;" />Direktur Komersil PTPN X, Slamet Djumantoro yang hadir dalam kesempatan tersebut mengatakan bahwa bedah rumah ini diberikan semata-mata sebagai perwujudan kepedulian perusahaan sebagai Badan Usaha Milik Negara (BUMN) kepada warga masyarakat sekitar.</p>\r\n\r\n<p>&quot;Perusahaan juga memiliki tanggungjawab untuk membantu meningkatkan kesejahteraan warga desa yang ada di sekitar perusahaan. Untuk itu bedah rumah ini diharapkan mampu dapat menolong mereka terutama bagi yang membutuhkan,&quot; jelas Slamet.</p>\r\n\r\n<p>Sementara itu, General Manager PG Kremboong, Agus Minhandoko mengungkapkan bahwa bantuan kali ini diterima langsung oleh Ibu Ponisah dari Desa Kremboong.</p>\r\n\r\n<p>&quot;Semoga dengan bedah rumah ini bisa bermanfaat untuk Keluarga Ibu Ponisah. Karena ibu Ponisah ini sudah tua renta, janda dan tidak berpenghasilan. Untuk itu diharapkan melalui CSR ini dapat meringankan beban beliau,&quot; tandasnya.</p>\r\n\r\n<p>Dijelaskan Agus, bedah rumah dengan lebar enam meter dan panjang enam meter ini dilaksanakan selama satu bulan.</p>\r\n\r\n<p>&quot;Semua dibangun total dari program CSR dari PKBL dan dibantu secara gotong royong oleh karyawan,&quot; pungkasnya.</p>\r\n\r\n<p>Sementara itu, Ibu Ponisah, pemilik rumah yang dibangun sangat berterima kasih pada PTPN X yang telah membangun rumahnya. Sebelumnya rumahnya memang tidak layak huni.</p>\r\n\r\n<p>&ldquo;Alhamdulillah senang sekali, saya berterima kasih pada PG Kremboong. Dulu kalau hujan rumah saya banjir tidur saja di lantai. Sekali lagi terima kasih,&rdquo; pungkasnya. (Red2, CIN_Sekper)</p>\r\n</div>\r\n	0	0	2019-11-27 22:52:35	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-kremboong-salurkan-csr-melalui-program-bedah-rumah
56	A	Menjadi Pribadi Inspirasi	<p style="text-align: justify;">Menjadi pribadi inspirasi merupakan konsep revolusi <em>mindset</em> bagaimana menciptakan seorang pemimpin yang ideal dalam suatu perusahaan. Pada dasarnya yang menjadi <em>key of changes </em>dalam perusahaan adalah seni kepemimpinan.</p>\r\n\r\n<p style="text-align: justify;">Dalam manajemen organisasi, peran pemimpin memiliki <em>value </em>yang besar dalam mencapai titik puncak visi dan misi perusahaan. Profesionalisme pemimpin adalah dasar revolusi perubahan.</p>\r\n\r\n<p style="text-align: justify;"><em>The leader&rsquo;s revolution </em>merupakan konsep dasar untuk membentuk karakter pribadi yang menginspirasi jika anda adalah seorang pemimpin di perusahaan, dan apabila anda bukan terlahir sebagai &ldquo;<em>Natural born leader&rdquo;, </em>maka konsep ini bisa dijadikan tips untuk membangun jiwa kepemimpinan dalam diri anda.</p>\r\n\r\n<p style="text-align: justify;"><strong>Personal Respect</strong></p>\r\n\r\n<p style="text-align: justify;"><em>First, Personal respect </em>merupakan hal yang paling dasar dalam <em>leader revolution.</em> Sebelum anda melangkah lebih jauh menjadi seorang pemimpin., anda harus mempunyai pemahaman yang baik tentang <em>personal respect.</em> Dibalik <em>personal respect </em>ada 3 kunci yang harus anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><em>Good manners </em></p>\r\n\r\n<p style="text-align: justify;">Akhlak memang secara umum merupakan hal yang mudah dan terlihat lebih sederhana, namun justru sebaliknya akhlak merupakan awal dari sebuah perubahan yang besar. Jika anda menjadi seorang pemimpin jadilah pribadi yang berakhlak baik. Jadilah pribadi yang <em>respect</em> terhadap <em>user </em>yang bekerja dibawah anda. Hargai kinerja dan hasil keringat karya mereka walau di mata anda itu buruk atau tidak bernilai. Beri dukungan, saran dan kritik yang mendukung. Sebagai pemimpin yang baik, anda harus menjadi orang pertama yang mampu menjadi sumber semangat dan motivasi untuk mereka. &nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>Strong of Feelings </em></p>\r\n\r\n<p style="text-align: justify;">Salah satu membangun <em>good work relationship </em>adalah dengan menjalin hubungan yang baik terhadap semua <em>user</em> yang ada dalam perusahaan. Sebagai pemimpin anda harus mempunyai ikatan perasaan yang kuat terhadap semua rekan kerja anda. Jadilah seorang atasan kerja yang baik dengan selalu memberi <em>attention</em>, <em>feeling support, </em>dan menjadi <em>source of inspiration change.</em></p>\r\n\r\n<p style="text-align: justify;"><em>Emotional</em></p>\r\n\r\n<p style="text-align: justify;">Mencapai impian perusahaan yang besar tidak cukup dengan duduk manis dengan sejuta harapan. Anda harus mempunyai tingkat emosional yang kuat agar mampu merasakan dan memahami arah <em>mindset</em> <em>user </em>dibawah anda. Dengan tingkat emosional yang baik, anda akan memiliki perasaan yang kuat dan hal itu akan membuat seni kepemimpinan anda lebih berkarakter. Salah satu kunci<em>&nbsp;</em>dalam membangun kerjasama dan tingkat kepercayaan tim yang baik adalah keseimbangan pengendalian perasaan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Passion for Change</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Second,</em> selanjutnya adalah <em>passion for Change </em>atau semangat yang tinggi untuk berubah. Hakikatnya tanpa semangat, maka jiwa akan terasa mati. Semboyang Dalam bisnis adalah &ldquo;inovasi harga mati&rdquo;. Sebagai pemimpin, anda harus <em>smart and response in new terms. </em>Berilah inspirasi dan tanamkan jiwa semangat pada seluruh bawahan anda. Anda akan lebih bisa menikmati jatidiri sebagai pemimpin jika semangat tumbuh kembang dalam perusahaan.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/pribadi_menginspirasi.jpg" style="width: 300px; height: 186px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;"><strong>The Soul of a Hero</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Third, </em>jiwa pahlawan harus menjadi karakter seorang pemimpin. Semangat kepahlawanan secara tidak langsung akan menjadi sumber inspirasi untuk semua karyawan yang bekerja dibawah anda. Jiwa pahlawan akan membentuk ketahanan emosional dalam menghadapi beragam permasalahan. Konsep <em>the soul of a hero </em>harus tumbuh dalam jiwa seorang pemimpin. Dengan demikian semua karyawan akan merasa damai, nyaman dan tentram tanpa dihantui perasaan akan kehilangan pekerjaan, dengan begitu keseimbangan alam bawah sadar karyawan akan terbentuk dan hal itu nantinya akan menggali potensi dalam diri mereka. &nbsp;</p>\r\n\r\n<p style="text-align: justify;"><strong>Understanding Feelings</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Fourth, </em>dan yang terakhir adalah <em>understanding feelings </em>atau dikenal dengan istilah pemahaman perasaan. Tingkat kesuksesan seni kepemimpinan anda berada pada kurva <em>point </em>ini. <em>Understanding feelings</em> merupakan <em>value </em>paling tinggi dalam konsep ini. Jika anda tidak memiliki hal ini, bisa jadi anda adalah seorang pemimpin yang gagal. Karena dalam hal ini menentukan suka atau tidak suka seorang bawahan terhadap anda. Pada dasarnya hasil semua pekerjaan tidak ada yang sempurna. Anda sebagai seorang pemimpin harus mempunyai pemahaman perasaan yang lebih terhadap hasil kinerja dari bawahan anda. Mempunyai jiwa <em>perfectionist </em>itu boleh saja, tapi jangan menilai <em>just one eye</em> hasil kinerja tim anda, karena itu akan menghambat mereka &nbsp;untuk berkembang. &ldquo;<em>Jadilah pribadi yang menginspirasi tanpa menggurui&rdquo;. </em>Hakikatnya kesempurnaan pekerjaan berada digaris kerjasama tim yang baik. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: cdn.yourarticlelibrary.com</p>\r\n	0	0	2018-07-19 21:37:15	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/menjadi-pribadi-inspirasi
57	A	Filosofi Kerja	<p style="text-align: justify;">Istilah kerja sudah tak asing lagi bagi kita. Apalagi jaman sekarang, begitu banyak pemuda sukses bermunculan. Tapi jangan salah, tentunya mereka mempunyai cara kerja yang berbeda pada umumnya.</p>\r\n\r\n<p style="text-align: justify;">Kerja sudah menjadi separuh kehidupan bagi manusia. Beragam aktivitas dilakukan untuk melakukan sebuah pekerjaan. Meski begitu, tidak semua orang tahu apa sebenarnya hakikat dari sebuah pekerjaan. Beberapa orang menilai sebuah pekerjaan hanya dari segi gaji atau jabatan, sedangkan sebagian persen lainya menilai sebuah pekerjaan dari segi kepuasan hati.</p>\r\n\r\n<p style="text-align: justify;">Sebenarnya ada filosofi besar dibalik kata &lsquo;kerja&rsquo;. Kerja bukan hanya sekedar insting untuk mencari materi. Namun pekerjaan bisa menjadi sumber kebahagiaan yang besar jika kita mampu mengendalikannya.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya melihat orang yang bekerja kantoran tapi tidak sesuai dengan minat mereka itu seperti seekor ubur-ubur lembur. Lemah, lunglai hanya hidup mengikuti arus. Lembur sampai malam, tapi tidak bahagia. Tidak menemukan sesuatu yang membuat hidup mereka punya arti&rdquo; (Raditya Dika). Dari kutipan karya Raditya Dika tersebut, itu merupakan sebuah fenomena&nbsp;<em>pathetic</em>&nbsp;yang banyak terjadi sekarang ini. Sebagai manusia yang mempunyai jatidiri sebagai makhluk yang sempurna, seharusnya bisa melakukan pekerjaan dengan nilai lebih. Lantas apa filosofi kerja itu? Sebenarnya filosofi kerja itu hanya sebatas bagaimana cara kita bekerja, namun selain kita mendapatkan materi, kita juga bisa merasa bahagia. Kebahagiaan inilah yang menjadi&nbsp;<em>point</em>&nbsp;besar dalam filosofi kerja.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>First, working on the field</em>. Jika ingin lebih bisa menikmati sebuah pekerjaan. Bekerjalah sesuai bidang yang anda sukai. Karena rasa suka adalah bagian dari cinta, dan cinta adalah komponen utama dalam meraih kebahagiaan.</p>\r\n\r\n<p style="text-align: justify;"><em>Second, Work to achieve your dream</em>. Jangan hanya sekedar bekerja. Bekerja di perusahaan orang lain itu tidak jadi masalah. Yang jadi masalah adalah ketika kita terlalu sibuk membangun mimpi orang lain dan melupakan mimpi kita sendiri.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/filosofi_kerja.jpg" style="width: 300px; height: 176px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;"><em>Third, Work smart.</em>&nbsp;Bekerjalah dengan cerdas. Pandai bergaul dengan rekan kerja, inovatif dan kreatif. Jangan membiasakan bekerja dengan cara yang sama setiap hari, tapi ciptakan metode dan teknik baru, agar apa yang kita hasilkan bisa menginspirasi banyak orang.</p>\r\n\r\n<p style="text-align: justify;"><em>Fourth,</em>&nbsp;<em>work with a sincere heart</em>. Apapun pekerjaan Anda, lakukan dengan tulus dan penuh penerimaan hati yang ikhlas. Karena dari ketulusan, apa yang kita hasilkan dari pekerjaan akan membuat sebuah perubahan baru.</p>\r\n\r\n<p style="text-align: justify;">Itulah 4 konsep makna filosofi kerja yang mungkin belum Anda ketahui selama ini. Terkadang kita perlu pemahaman yang lebih untuk melakukan pekerjaan yang baik. Membangun sebuah rasa pendalaman untuk menyatu dengan pekerjaan. Karena pada dasarnya, pekerjaan yang besar hanya mampu dilakukan oleh orang yang tahu apa makna dari sebuah pekerjaan.&nbsp;(Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar : entrepreneurshiplife.com</p>\r\n	0	0	2018-06-20 15:03:18	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/filosofi-kerja
58	A	Pupuk Hayati Cair 	<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Pupuk cair hayati atau disebut dengan<em> biofertilizer</em> merupakan pupuk yang mengandung mikroorganisme fungsional (bakteri, fungi, dan actomycetes). Apapun namanya pupuk hayati bisa diartikan sebagai pupuk yang hidup. Pupuk hayati selain mengandung mikroba dapat juga unsur&nbsp;nitrogen (N), fosfor (P) dan kalium (K) serta unsur mikro lainnya. Kandungan pupuk hayati adalah mikroorganisme yang memiliki peranan positif bagi tanaman. Kelompok mikroba yang sering digunakan adalah mikroba-mikroba yang menambat N dari udara, mikroba yang melarutkan hara (terutama P dan K), mikroba-mikroba yang merangsang pertumbuhan tanaman.</span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Istilah pupuk hayati digunakan sebagai nama kolektif untuk semua kelompok fungsional mikroba tanah yang dapat berfungsi sebagai penyedia hara dalam tanah, sehingga dapat tersedia bagi tanaman. Pemakaian istilah ini relatif baru dibandingkan dengan saat penggunaan salah satu jenis pupuk hayati komersial pertama di dunia yaitu inokulan<em> Rhizobium</em> yang sudah lebih dari 100 tahun yang lalu.</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Pupuk hayati dapat didefinisikan sebagai inokulan berbahan aktif organisme hidup yang berfungsi untuk menambat hara tertentu atau memfasilitasi tersedianya hara dalam tanah bagi tanaman. Memfasilitasi tersedianya hara ini dapat berlangsung melalui peningkatan akses tanaman terhadap hara misalnya oleh cendawan mikoriza arbuskuler, pelarutan oleh mikroba pelarut fosfat, maupun perombakan oleh fungi, aktinomiset atau cacing tanah. Penyediaan hara ini berlangsung melalui hubungan simbiotis atau nonsimbiotis.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color: rgb(255, 255, 255);">Permentan No.70 tahun 2011, menggolongkan pupuk hayati kedalam pupuk organik. Dalam pengertiannya pupuk hayati berfungsi meningkatkan efisiensi pemupukan, kesuburan dan kesehatan tanah. Formulasi pupuk hayati adalah komposisi mikroba dan bahan pembawa penyusun pupuk hayati. Untuk menjadi pupuk hayati yang terdaftar resmi perlu diuji kandungannya dan efektifitas dilahan.</span><span style="background-color:#FFFFFF;"><img alt="" src="/uploads/phc.jpg" style="width: 300px; height: 200px; float: left;" /></span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Beradasarkan peraturan tersebut, kualitas pupuk hayati bisa dilihat dari parameter berikut:</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">1) Jumlah populasi mikroorganisme, jumlah mikroorganisme hidup yang terdapat dalam pupuk harus terukur.</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">2)&nbsp;</span></span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Efektivitas mikroorganisme, tidak semua mikroorganisme memberikan pengaruh positif pada tanaman. Fungsi pupuk hayati sebagai &nbsp;penambat N, pelarut P, Penghasil fitur hormone dan perombak bahan organik.</span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">3) Bahan pembawa, fungsinya sebagai media tempat mikroorganisme tersebut hidup.</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">4) Masa kadaluarsa, sebagai mana mahluk hidup lainnya mikroorganisme tersebut memiliki siklus hidup.</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">5) Patogenitas negatif, kontaminan dan logam berat nihil</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Pupuk hayati cair mempunyai banyak manfaat untuk memperbaiki struktur tanah dan membantu perkembangan tanaman. Ada beberapa fungsi pupuk hayati cair, sebagai berikut:</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">1) Sebagai dekomposer atau meningkatkan kesuburan tanaman</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">2) Memperbaiki dan meningkatkan kualitas kandungan organik di dalam tanah.</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">3) Menjaga ketersediaan unsur hara di dalam tanah.</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">4) Memperbaiki PH dan membantu penambatan nitrogen pada tanah.</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Jadi dari segi spesifikasi serta perbedaan pupuk cair hayati dan jenis pupuk lainnya terletak pada kandungan mikroorganisme didalamnya. Mikroorganisme inilah yang datang membawa berbagai manfaat positif untuk perbaikan struktur pada tanah</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">PT Energi Agro Nusantara menghasilkan pupuk hayati cair berbahan baku vinase hasil samping produksi pabrik bioethanol. Pupuk ini terdaftar dengan nama dagang pupuk enero. Didalamnya mengandung mikroba fungsional yang berguna untuk tanaman dan tanah. Selama ini telah banyak petani yang merasakan manfaat pupuk ini. Pupuk ini telah diaplikasikan diberbagai jenis tanaman seperti tanaman tebu, nanas, hortikultura, palawija dan tanaman keras. (Dhanaviya_Enero, CIN_Sekper)</span><o:p></o:p></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">(Sumber:&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">alamtani.com ;&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Permentan No 70 ;&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif; font-size: 10.5pt;">andhinitirtaagro.com)</span></p>\r\n	0	0	2018-06-11 16:34:51	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pupuk-hayati-cair
95	G	Safari Ramadhan BUMN Hadir Untuk Negeri - Klaten	\N	0	0	2019-12-10 13:08:30	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
96	G	Kunjungan Deputi Kementerian BUMN ke PG Pesantren Baru dan Ngadiredjo	\N	0	0	2019-12-10 13:08:32	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
97	G	Tanam Perdana Tembakau Tahun 2019	\N	0	0	2019-12-10 13:08:33	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
31	B	Komisaris Holding Perkebunan Nusantara Tinjau Kebun Tembakau dan Anak Perusahaan PTPN X di Jember	<p style="text-align: justify;">Setelah sebelumnya mengunjungi Pabrik Gula (PG) Gempolkrep dan PT Enero, Dewan Komisari Holding Perkebunan Nusantara meninjau gudang pengolah tembakau di Ajong Gayasan, Selasa (26/11). Kunjungan ke Ajong Gayasan ini untuk melihat proses sortasi daun tembakau hingga pengemasan.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/DSC00734.JPG" style="width: 250px; height: 280px; float: right;" />Kunjungan dilanjutkan ke Industri Bobbin untuk melihat proses pemotongan atau <em>cutting</em> daun tembakau dan pembuatan cigarillos. Kunjungan didampingi langsung oleh Direktur Operasional PTPN X Aris Toharisman dan Kepala Bagian Tembakau Aris Handoyo.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Hasil diskusi dalam kunjungan ini supaya menjadi masukan untuk mempersiapkan tantangan di 2020, sehingga dapat memastikan ketercapaian target produksi PTPN X baik di sektor tebu maupun tembakau,&rdquo; terang Muhammad Syakir, Komisaris Holding Perkebunan Nusantara.</p>\r\n\r\n<p style="text-align: justify;">Sebagai penutup kunjungannya, rombongan meninjau PT Mitratani Dua Tujuh mulai dari lokasi tanam hingga pabrik pengolahan edamame di daerah Mangli, Jember. (PUT_Sekper, CIN_Sekper)</p>\r\n	0	0	2019-11-26 21:24:10	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisaris-holding-perkebunan-nusantara-tinjau-kebun-tembakau-dan-anak-perusahaan-ptpn-x-di-jember
32	B	Komisaris Holding Perkebunan Nusantara Kunjungi PG Gempolkrep dan PT Enero	<p style="text-align: justify;">Komisaris Holding Perkebunan Nusantara, Muhamad Syakir melakukan kunjungan kerja ke Pabrik Gula (PG) Gempolkrep pada (25/11). Kunjungan pertamanya sebagai Dekom Holding Perkebunan Nusantara yang baru ini dalam rangka memastikan target produksi di PTPN X dan pendapatan yang diterima perusahaan dari tebu dan tembakau.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/DSC00669.JPG" style="width: 344px; height: 230px; float: left;" />Kunjungan didampingi oleh Direktur Operasional PTPN X, Aris Toharisman, Tim Komite Audit PG Gempolkrep, dan Jajaran Pejabat Puncak PTPN X. Lawatannya ini memberikan semangat baru bagi PTPN X, pasalnya Muhamad Syakir mengatakan bahwa PTPN X secara komoditas masih masuk dalam 6 besar pemberi keuntungan, yaitu 102% dari RKAP.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas penerimaan yang baik dari PT Perkebunan Nusantara (PTPN) X. Harapan saya dalam musim giling mendatang PTPN X bisa mencapai target atau bahkan melampaui RKAP yang sudah disepakati. Saya yakin dengan kemampuan pasok BBT yang baik di dukung dengan SDM yang kompeten dan berakhlak baik pula, sukses giling tahun 2020 ada di depan mata,&rdquo; terang Syakir.</p>\r\n\r\n<p style="text-align: justify;">Disela-sela kunjungan ini, rombongan menyempatkan untuk meninjau Proyek PMN. Sakir berpesan agar Proyek PMN ini terus dimonitor sehingga <em>timeline project</em> bisa berjalan seluruhnya. Selain itu, rombongan juga meninjau langsung PT Enero yang yang terintegrasi dengan PG Gempolkrep. (PUT_Sekper, CIN_Sekper)</p>\r\n	0	0	2019-11-26 20:47:34	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisaris-holding-perkebunan-nusantara-kunjungi-pg-gempolkrep-dan-pt-enero
33	B	Ciptakan Destinasi Wisata di Tulangan, Komisi D dan Dispora Sidoarjo Datangi PTPN X	<p style="text-align: justify;">Pemerintah Kabupaten Sidoarjo melihat potensi destinasi baru di daerah Tulangan, apalagi aset Pabrik Gula (PG) Toelangan milik PT Perkebunan Nusantara (PTPN) X sangat luas dan belum dimanfaatkan dengan maksimal. Untuk itu, Komisi D DPRD Sidoarjo dan Dinas Pemuda, Olahraga, Kebudayaan dan Pariwisata Kabupaten Sidoarjo berkunjung ke Kantor Pusat PTPN X untuk membahas&nbsp;rencana pengembangan PG Toelangan untuk dijadikan destinasi wisata baru di Kabupaten Sidoarjo.</p>\r\n\r\n<p style="text-align: justify;">Ketua Komisi D DPRD kabupaten Sidoarjo, Moch Dhamroni Chudlori&nbsp; mengatakan Pemerintah Kabupaten Sidoarjo melihat PG Toelangan sudah tidak lagi beroperasi lagi sejak tahun 2016.&nbsp;Namun hingga saat ini, banyak aset yang berpotensi tetapi belum dimanfaatkan secara maksimal.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Di Sidoarjo ini, destinasi wisata masih minim. Kami melihat potensi itu ada di PG Toelangan, untuk itu kami ingin berkonsultasi dan kordinasi dengan PTPN X untuk mengembangkan destinasi wisata baru di eks PG Toelangan,&quot; kata Dhamroni pada acara Rapat Konsultasi terkait Rencana Pengembangan PG Toelangan untuk dijadikan destinasi wisata di ruang Kresna Kantor Pusat PTPN X,&nbsp;Jalan Jembatan Merah, Surabaya, Selasa (26/11).</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-26_at_12.49.46.jpeg" style="width: 345px; height: 230px; float: left;" />Dhamroni menambahkan bila memang PTPN X sudah ada perencanaan untuk pengembangan PG Toelangan maka ini akan menjadi gayung bersambut karena Komisi D juga akan berkonsultasi ke Kementerian BUMN terkait rencana ini.</p>\r\n\r\n<p style="text-align: justify;">Kepala Bidang Umum dan Pengembangan Aset PTPN X, Wahyu P Siswosumarto menjelaskan pihaknya sangat berterima kasih atas kehadiran Pemerintah Kabupaten Sidoarjo , mengingat Sidoarjo dulu pernah menjadi lumbung <em>revenue</em> PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&quot;Untuk pengembangan aset di PG Toelangan memang sudah direncanakan&nbsp; dan ada beberapa yang sudah dilakukan,&quot; kata Wahyu.</p>\r\n\r\n<p style="text-align: justify;">Yang sudah dilaksanakan adalah pembangunan convention hall yang bernama Graha Toelangan,yang memiliki kapasitas hingga 750 orang. Selama ini Gedung Pertemuan milik PG Toelangan banyak dipergunakan masyarakat Sidoarjo untuk berbagai kegiatan mulai dari pernikahan maupun kegiatan lainnya.</p>\r\n\r\n<p style="text-align: justify;">&quot;Rencana pembangunan<em> heritage</em> PG Toelangan, PTPN X pernah mengandeng pihak ketiga untuk menghitung dan membuat <em>feasibility stud</em>y ,&quot; ungkapnya.</p>\r\n\r\n<p style="text-align: justify;">Dari hasil studi kelayakan tersebut, jelas Wahyu, jajaran Direksi PTPN X menilai masih banyak hal yang perlu dipertajam. Namun PTPN X terus mempromosikan dan mencari pihak ketiga yang bersedia untuk bekerjasama membangun PG Toelangan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Hingga saat ini belum ada, kami sangat membutuhkan dukungan dari Pemerintah Kabupaten Sidoarjo untuk bisa mengembangkan destinasi wisata baru di PG Toelangan ini,&quot; imbuhnya.</p>\r\n\r\n<p style="text-align: justify;">Kepala Dinas Pemuda, Olahraga Kebudayaan dan Pariwisata Kabupaten Sidoarjo,Joko Supriadi menjelaskan saat ini, Pemerintah Kabupaten Sidoarjo tengah gencar membangun dan mempromosikan destinasi wisata baru yang terintegrasi. Bahkan Pemerintah Kabupaten Sidoarjo sudah melibatkan <em>travel agent</em> untuk bisa menjual destinasi wisata di Sidoarjo.</p>\r\n\r\n<p style="text-align: justify;">&quot;PG Toelangan ini letaknya cukup strategis dan banyak destinasi yang bisa diintegrasikan dengan PG Toelangan, mulai dari wisata religi situs Medalam dan Candi Pari yang letaknya hanya 4 KM-an,&quot; kata Joko.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, sambung Joko, hanya 1 KM dari PG Toelangan ada Wisata Religi Makam Mbah Jaelani dan ada Kampung Belimbing, dan di Daerah Sudimoro tempat produksi Krupuk Rambak. (Red3, CIN_Sekper)</p>\r\n	0	0	2019-11-26 20:10:24	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ciptakan-destinasi-wisata-di-tulangan-komisi-d-dan-dispora-sidoarjo-datangi-ptpn-x
34	B	Smart Riders Community Touring ke Lahan HGU Ngusri	<p style="text-align: justify;">Jumat-Sabtu (22-23/11) karyawan Kantor Pusat PTPN X yang tergabung dalam Smart Riders Community (SRC) melakukan kegiatan <em>touring</em> ke Kebun HGU Ngusri Blitar. <em>Touring </em>ini diikuti oleh 45 orang karyawan dengan Suprobo dari Bagian Keuangan selaku koordinator. Pemilihan Kebun HGU Ngusri Blitar sebagai tujuan <em>touring</em> supaya karyawan mengetahui potensi lahan HGU baru milik PTPN X tersebut.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-25_at_10.28.24.jpeg" style="width: 300px; height: 209px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;">Selama kegiatan berlangsung, karyawan berkeliling lahan Ngusri sambil melihat keindahan pemandangan yang ditawarkan. Anggota SRC juga berkesempatan bermalam di rumah dinas yang berada di sekitar lahan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kegiatan touring ini rutin dilakukan dan memberikan pengalaman baru kepada seluruh anggota SRC. Untuk touring kali ini, kami bisa mengetahui tentang potensi lahan HGU baru milik PTPN X,&rdquo; terang Aldino Ary, karyawan Bagian Pemasaran. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2019-11-25 17:37:32	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/smart-riders-community-touring-ke-lahan-hgu-ngusri
35	B	PTPN X Kunjungi PT Semen Indonesia 	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan kunjungan ke Pabrik Tuban, PT Semen Indonesia yang terletak di Desa Sumberarum, Kecamatan Kerek, Kabupaten Tuban, Jawa Timur pada (21/11). Kunjungan ini dalam rangka studi banding mengenai Sistem Manajemen dan Teknologi Persediaan Hasil Produksi PT Semen Indonesia.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-22_at_14.38.21.jpeg" style="width: 350px; height: 233px; float: right;" />Kunjungan diikuti oleh 13 orang perwakilan bagian dari PTPN X dan manajemen PT Semen Indonesia. Adanya studi banding tersebut diharapkan dapat menambah wawasan baru bagi karyawan PTPN X untuk lebih lagi meningkatkan kinerja hasil produksi dan teknik-teknik manajemen terbaru. Sehingga dapat diimplementasi di lingkup PTPN X khususnya Pabrik Gula.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas penerimaan yang baik dari PT Semen Indonesia. Harapan kami studi banding ini dapat menjadi jembatan baru kerjasama antara PTPN X dan PT Semen Indonesia, dan juga saling memberikan <em>benefit </em>antar kedua belah pihak,&rdquo; terang Andika Dhyta Vernanda, Kepala Urusan TI PTPN X.</p>\r\n\r\n<p style="text-align: justify;">Kegiatan ini diawali dengan pemutaran video <em>company profile</em> PT Semen Indonesia, dilanjutkan dengan sambutan dari perwakilan perusahaan. Sesi dimulai dengan pemaparan presentasi dari perwakilan PT Semen Indonesia mengenai proses pengemasan barang hingga proses barang keluar dari pabrik lalu dan ditutup dengan <em>plant tour</em>. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-22 21:41:06	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-kunjungi-pt-semen-indonesia
71	G	Sertijab Komisaris Anak Perusahaan PTPN X	\N	0	0	2019-12-10 13:07:30	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
72	G	Sertijab Pejabat Puncak PTPN X	\N	0	0	2019-12-10 13:07:31	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
73	G	Rapat Evaluasi Kinerja 2019	\N	0	0	2019-12-10 13:07:33	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
74	G	TOP Digital Award 2019	\N	0	0	2019-12-10 13:07:37	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
75	G	Kunjungan Komisaris Holding Perkebunan Nusantara ke Unit Usaha dan Anak Perusahaan PTPN X	\N	0	0	2019-12-10 13:07:39	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
76	G	Tanam Perdana Lahan Agroforestry Jelu - Bojonegoro	\N	0	0	2019-12-10 13:07:41	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
77	G	Internalisasi Corporate Value SIPro 	\N	0	0	2019-12-10 13:07:43	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
36	B	PTPN X Tanam Lahan Agroforestry di Desa Jelu Bojonegoro	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan penanaman tebu di lahan Agroforestry Desa Jelu, Kecamatan Ngasem, Kabupaten Bojonegoro seluas 50,643 Ha, Jumat (15/11). Program ini bekerjasama dengan Kesatuan Pengelolaan Hutan (KPH) Perum Perhutani Bojonegoro. Lahan tersebut akan ditanami varietas NX 01 dengan potensi rendemen 9,9% dan produktivitas 124 Ton/Ha.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-15_at_11.16.39.jpeg" style="width: 350px; height: 227px; float: left;" />Sebelumnya, lahan agroforestry tebu yang telah tertanam seluas 223,63 Ha tersebar di KPH Mojokerto, KPH Bojonegoro, dan KPH Jombang. Tahun 2019, ada penambahan penanaman seluas 40 Ha di KPH Jombang di bulan Oktober lalu dan 50 Ha di KPH Bojonegoro. Kali ini, penanaman akan direncanakan seluas 50,643 Ha, terdiri dari 4 (empat) petak yang terbagi di Desa Jelu, RPH Prajegan 2 (dua) petak seluas 26,178 Ha dan di Desa Dukuh Kidul BKPH Sendang Serong 2 (dua) petak seluas 24,465 Ha kecamatan Ngasem, Kabupaten Bojonegoro. Nantinya, tebu-tebu tersebut akan di kelola langsung oleh PG Djombang Baru untuk menjaga keajegan pasok BBT pada Musim Giling 2020.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kerjasama ini merupakan sinergi BUMN dengan Perum Perhutani dan merupakan tugas Negara berdasarkan SKB 4 Menteri sebagai wujud BUMN Hadir Untuk Negeri, karena kegiatan Agroforestry tebu memberikan peluang lapangan pekerjaan bagi masyarakat sekitar untuk bersama-sama membangun, melindungi, dan memanfaatkan sumberdaya hutan sebagai penggerak ekonomi di pedesaan,&rdquo; ujar Aris Toharisman, Direktur Operasional PTPN X dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Tanam perdana ini merupakan tindak lanjut dari kerjasama antara PTPN X dengan Perum Perhutani Divisi Regional Jawa Timur untuk melakukan pemanfaatan kawasan hutan berupa kegiatan budidaya tanaman tebu guna mendukung ketahanan pangan. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-15 18:32:04	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tanam-lahan-agroforestry-di-desa-jelu-bojonegoro
37	B	PTPN X Hadiri HUT Memorandum	<p style="text-align: justify;">Dalam rangka meningkatkan hubungan baik dengan media, PT Perkebunan Nusantara (PTPN) X turut hadir dalam acara perayaan HUT ke-50 Surat Kabar Harian (SKH) Memorandum. Acara ini diselenggarakan di Kantor Redaksi Memorandum, Jalan Ketintang Baru 3/91, Surabaya pada (11/11).</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-12_at_17.03.36.jpeg" style="width: 350px; height: 213px; float: left;" />Suryanto selaku Sekper &amp; PKBL PTPN X berkesempatan hadir secara langsung pada acara ini sebagai bentuk dukungan kepada SKH Memorandum.</p>\r\n\r\n<p style="text-align: justify;">Memorandum merupakan surat kabar&nbsp;pagi yang terbit di&nbsp;Kota Surabaya,&nbsp;Jawa Timur. Pada perayaan HUT ke-50 ini juga dihadiri oleh Wakil Gubenur Jawa Timur, Emil Elestianto Dardak dan Sahat Tua Simanjuntak, selaku Wakil Ketua DPRD Jawa Timur.</p>\r\n\r\n<p style="text-align: justify;">Di usia emas koran Memorandum dan 1 tahun <em>memorandum.co.id</em> diharapkan dapat menjadi media penyaji berita aktual masa kini khususnya bagi masyarakat Surabaya dan sekitarnya. Selain itu, adanya SKH Memorandum dapat mendukung pemberitaan terkini mengenai PTPN X atau industri gula di tanah air. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-13 00:20:24	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-hadiri-hut-memorandum
38	B	Berbagi Ilmu, Mahasiswa UNIDHA Kunjungi PTPN X	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X mendapat kunjungan dari mahasiswa Fakultas Ekonomi &amp; Bisnis, Universitas Wisnuwardhana Malang di Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya (11/11). Kunjungan ini merupakan <em>sharing session</em> mengenai dunia bisnis PTPN X terhadap generasi muda, khususnya mahasiswa tingkat akhir yang akan masuk dalam dunia kerja.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-12_at_15.36.56.jpeg" style="width: 350px; height: 234px; float: right;" />Kunjungan diikuti oleh 28 mahasiswa yang mayoritas berasal dari NTT dan 2 dosen pembimbing. Beberapa materi yang disampaikan langsung oleh Direktur Operasional PTPN X, Aris Toharisman antara lain proses produksi gula di PTPN X, kondisi VUCA dan Strategi menghadapi kondisi VUCA, serta revolusi industry 4.0.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Hal terpenting dalam menghadapi era VUCA adalah melakukan eksekusi akan setiap permasalahan. Untuk mengurangi resiko kegagalan, perlu adanya studi-studi kelayakan,&rdquo; terang Aris.</p>\r\n\r\n<p style="text-align: justify;">Acara di mulai dengan pemutaran video company profile PTPN X, di sambung penyampaian terima kasih oleh Bapak Mohammad Rosyidi selaku dosen pembimbing dan di tutup dengan pemaparan kuliah teori Pengambilan Keputusan oleh Direktur Operasional PTPN X. (Valen_UWM, CIN_Sekper).</p>\r\n	0	0	2019-11-12 23:11:15	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/berbagi-ilmu-mahasiswa-unidha-kunjungi-ptpn-x
39	B	PTPN X Raih Dua Penghargaan IBA 2019	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X meraih dua penghargaan dalam ajang Indonesia BusinessAward 2019. Penghargaan yang di terima langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo meliputi The Best CEO in Agro Industry 2019 dan The Best Corporate Performance in Agro Industry 2019. Ajang yang mengambil tema &lsquo;<em>Business Transformation for Excellence Performance&rsquo; </em>ini diselenggarakan di Gedung BPPT, Jakarta (11/6).</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-07_at_12.59.03.jpeg" style="width: 350px; height: 234px; float: left;" />&ldquo;PTPN X selalu memperbaiki kinerjanya setiap tahun. Penghargaan yang telah diraih ini merupakan sumbangsih dari seluruh karyawan PTPN X. Penghargaan ini tentunya juga didapatkan atas dukungan seluruh <em>stakeholder</em>,&rdquo; terang Dwi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Sebagai salah satu anak perusahaan dari PTPN III (Persero) dan juga sebagai&nbsp;<em>leading company</em>&nbsp;dalam industri gula di Indonesia, PTPN X selalu berupaya berkontribusi maksimal dalam meningkatkan kinerja perusahaan dan menjaga kesejahteraan <em>stakeholder</em>, khususnya petani tebu. Melalui beberapa program yang telah dilakukan antara lain: e-Farming, Pelatihan petani tebu milenial, pemberian bantuan pupuk dan bibit, hingga pemberian Kartu Tani Sehat kepada 6000 orang petani binaan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X akan terus bekerja dengan menjunjung nilai Sinergi, Integritas, dan Profesional sehingga target-target perusahaan dapat tercapai. Tentunya, diimbangi dengan kegiatan tanggung jawab sosial kepada masyarakat,&rdquo; tambah Dwi. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-07 20:02:51	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-raih-dua-penghargaan-iba-2019
78	G	Penghargaan IBA 2019	\N	0	0	2019-12-10 13:07:47	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
79	G	Tanam Perdana Lahan Agroforestry Nganjuk	\N	0	0	2019-12-10 13:07:49	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
80	G	CSR Bedah Rumah dan Pembangunan Sarana MCK 	\N	0	0	2019-12-10 13:07:51	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
81	G	Pelatihan Petani Tebu Rakyat 	\N	0	0	2019-12-10 13:07:54	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
82	G	MOU dengan PT SEI	\N	0	0	2019-12-10 13:07:57	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
83	G	Peresmian Boiler PT Enero 	\N	0	0	2019-12-10 13:07:58	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
84	G	Serah Terima Lahan HGU Ngusri Blitar 	\N	0	0	2019-12-10 13:08:00	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
85	G	Kunjungan ke Pemkab Blitar	\N	0	0	2019-12-10 13:08:02	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
40	B	PTPN X Tanam Perdana Lahan Agroforestry di Ngunjung Barat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan penanaman tebu di lahan Agroforestry Ngunjung Barat, Nganjuk pada Kamis (31/10). Lahan tersebut akan ditanami varietas unggul baru, dengan potensi produksi 80 Ton/ Ha dan rendemen 9%. Program Agroforestry kali ini merupakan bekerjasama dengan Kesatuan Pengelolaan Hutan (KPH) Jombang dalam melakukan pemanfaatan kawasan hutan untuk kegiatan budidaya tanaman tebu guna mendukung ketahanan pangan.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-11-01_at_07.05.53.jpeg" style="width: 350px; height: 237px; float: right;" />Kali ini rencananya akan dilakukan penanaman lahan seluas 40,275 Ha, yang terdiri dari tiga petak yang tersebar di RPH Ngujung, BKPH Ngujung Barat, dan KPH Jombang, Kebun Sanggrahan, Ds. Sanggrahan, Kec. Gondang, Kab. Nganjuk. Nantinya hasil dari program Agroforestry di Nganjuk ini akan dikelola langsung ke PG Lestari pada musim giling tahun 2020.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Dengan adanya program Agroforestry ini diharapkan mampu memberdayakan masyarakat sekitar, untuk bersama-sama membangun, melindungi, dan memanfaatkan sumberdaya hutan sebagai penggerak ekonomi di pedesaan,&rdquo; ujar Aris Toharisman, Direktur Operasional PTPN X dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Berdasarkan hasil evaluasi pelaksanaan BUMN Sinergi Agroforestry Tebu musim giling 2019, PG Lestari telah menorehkan cacatan dengan hasil produksi sebesar 72,2 Ton/ Ha dengan Rendemen 8,64%. Diharapkan hasil lahan ini mampu meningkatkan produktivitas tebu PG Lestari pada musim giling mendatang. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-10-31 21:47:37	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tanam-perdana-lahan-agroforestry-di-ngujung-barat
41	B	PTPN X Resmikan Masjid AL-Fitrah Jember	<p style="text-align: justify;">Rabu (30/10), PT Perkebunan Nusantara (PTPN) X meresmikan masjid Al Fitrah yang berada di wilayah kerja Kebun Ajong Gayasan, Jember. Acara dihadiri langsung oleh Direktur Utama PTPN X,&nbsp;Dwi Satriyo Annurogo, Direktur Komersil PTPN X, Slamet Djumantoro, dan beberapa pejabat puncak PTPN X.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/foto_web.jpeg" style="width: 290px; height: 298px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;">Sebagai anak perusahaan dari PTPN III (Persero), PTPN X senantiasa memberikan manfaat kepada masyarakat sekitar sebagai wujud BUMN Hadir Untuk Negeri. Masjid Al-Fitrah ini dibangun kurang lebih sekitar satu tahun dimana dananya berasal dari PKBL PTPN X dan sumbangan dari para donatur.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya berharap keberadaan masjid Al-Fitrah dapat meningkatkan kegiatan keagamaan dan ketaqwaan karyawan serta masyarakat sekitar,&rdquo; terang Dwi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, program CSR juga telah dilakukan oleh PTPN X khususnya di sekitar wilayah kerja, baik di pabrik gula maupun kebun tembakau. Contohnya, pengiriman tim tanggap bencana, pembangunan irigasi, pemberian bantuan pengobatan, dan pelatihan kepada petani. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2019-10-30 22:34:53	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-resmikan-masjid-al-fitrah-jember
42	B	PTPN X Bedah Rumah dan Bangun Sarana MCK 	<p style="text-align: justify;">Sebagai anak perusahaan PT Perkebunan Nusantara (PTPN) III (Persero), PTPN&nbsp;X menyelenggarakan acara Bedah Rumah Tidak Layak Huni (RTLH) dan pembangunan sarana MCK di Jember (30/10). Acara yang dihadiri langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Direktur Komersil, Slamet Djumantoro ini merupakan wujud kepedulian PTPN X terhadap masyarakat sekitar terutama yang berada di wilayah lingkungan unit kerja PTPN X. Program kali ini dilakukan di wilayah kerja kebun Ajong Gayasan tepatnya di Desa Kawangrejo dan Desa Lengkong, Kecamatan Mumbulsari.&nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/WhatsApp_Image_2019-10-30_at_10.20.52.jpeg" style="width: 300px; height: 200px; float: left;" />Program CSR berfokus pada bedah rumah tidak layak huni dan pembangunan sarana MCK. Sejumlah satu unit rumah yang berada di wilayah Penataran Dawuhan, Desa Kawangrejo akan diperbaiki, sehingga menjadi layak huni bagi keluarga yang menempatinya. Sedangkan pembangunan sarana Mandi, Cuci, Kakus (MCK) dilakukan pada 11 titik yang berada di wilayah Desa Lengkong.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapan saya, melalui program bedah rumah dan pembangunan sarana MCK dapat memberikan manfaat bagi semua pihak, khususnya dalam hal peningkatan kesejahteraan masyarakat. Saya mewakili manajemen PTPN X mengucapkan terimakasih kepada seluruh masyarakat sekitar wilayah kerja Kebun Ajong Gayasan atas dukungannya selama ini.&rdquo; ujar Dwi Satriyo Annurogo, Direktur Utama PTPN X dalam sambutannya. (Valen_UWM, CIN_Sekper)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n	0	0	2019-10-30 17:25:55	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-bedah-rumah-dan-bangun-sarana-mck
43	B	PTPN X Jadi Tuan Rumah Pelatihan IPS	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menjadi tuan rumah dalam Pelatihan <em>Intregrated Procurement System</em> (IPS) yang diadakan oleh PTPN III (Persero) selaku Holding Perkebunan Nusantara (24-25/10). Pelatihan yang diselenggarakan di Kantor Pusat PTPN X ini diikuti oleh seluruh perwakilan dari PTPN VII sampai PTPN XIV. Acara dibuka secara langsung oleh Direktur Operasional PTPN X, Aris Toharisman dengan didampingi Kasubdiv IT Operasional PTPN III (Persero), Budi Irawan.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/webpanel.JPG" style="width: 300px; height: 200px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;">Pelatihan IPS diselenggarakan guna menyamakan sistem pengadaan yang berlaku di seluruh PTPN Group, mencakup beberapa aspek mulai dari <em>cataloging material</em>, <em>monitoring </em>progres pekerjaan vendor, hingga proses <em>invoice. </em>Pada pelatihan ini, peserta diberi materi perihal aplikasi sistem manajemen material, service master, dan manajemen harga. Materi tersebut disampaikan oleh Konsultan PT Sinergi Informatika Semen Indonesia (SISI), M. Heru Firmansyah.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Diharapkan dengan adanya aplikasi dari Holding terkait <em>procurement material</em> barang dan jasa ke depannya akan membuat pekerjaan PTPN Group lebih sistematis dan terkontrol dengan baik,&rdquo; Ujar Aris Toharisman dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Ke depannya diharapkan adanya IPS mampu mengintegrasikan seluruh sistem pengadaan di PTPN Group serta mewujudkan pengadaan barang dan jasa yang efektif, efisien, dan transparan. Sehingga, antar PTPN dapat saling bersinergi satu sama lain. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-10-25 21:41:42	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-jadi-tuan-rumah-pelatihan-ips
86	G	Pembukaan Rangkaian Peringatan HUT Ke 74 RI	\N	0	0	2019-12-10 13:08:06	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
87	G	HUT PT Mitratani Dua Tujuh ke-24	\N	0	0	2019-12-10 13:08:09	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
88	G	Kunjungan Direktur Utama ke RS Perkebunan	\N	0	0	2019-12-10 13:08:10	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
89	G	Panen Perdana Kebun Kertosari	\N	0	0	2019-12-10 13:08:13	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
90	G	Launching Kartu Tani Sehat 	\N	0	0	2019-12-10 13:08:17	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
44	B	Gandeng PT Asuransi Jiwasraya (Persero), PTPN X Beri Pelatihan ke Petani Tebu Rakyat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X bersama PT Asuransi Jiwasraya (Persero) menggelar pelatihan untuk petani tebu rakyat di Batu, Malang (22-23/10). Acara kali ini bertujuan untuk memperkuat sinergi antara PTPN X dengan para petani guna meningkatkan daya saing.&nbsp; Pelatihan yang berlangsung dua hari ini diikuti oleh 50 petani dari sembilan pabrik gula PTPN X. Pelatihan dibuka secara resmi oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Kepala Unit CSR &amp; PKBL PT Asuransi Jiwasraya (Persero), Dhanny Bachtazar.</p>\r\n\r\n<p style="text-align: justify;">Dwi mengatakan, adanya sinergi antara PTPN X dengan PT Asuransi Jiwasraya (Persero) merupakan wujud BUMN Hadir Untuk Negeri, dimana kehadirannya harus dapat memberikan manfaat dan dirasakan oleh masyarakat.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X dan petani tebu memiliki tugas untuk memberikan kontribusi terhadap ketersediaan Gula Kristal Putih (GKP) Nasional, sehingga perlu ada penguatan sinergi antara petani dan PTPN X,&rdquo; tambah Dwi.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/web_pelatihan_petani_tebu.JPG" style="width: 300px; height: 200px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;">Dalam kesempatan yang sama, Mubin dan Santoso selaku Ketua APTRI mengatakan bahwa antara petani dan PTPN X harus bersama-sama mengawal produktivitas dan juga kebijakan-kebjakan giling tahun 2020.</p>\r\n\r\n<p style="text-align: justify;">Melalui pelatihan ini, petani diberi motivasi dan spirit usaha dan juga dibekali dengan beberapa materi terkait budidaya tebu. Materi-materi tersebut meliputi peluang bisnis tebu, perkembangan potensi tebu, aplikasi mekanisasi tanaman tebu, hingga penerapan <em>core sampler</em> dan e-Farming. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2019-10-22 16:25:16	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/gandeng-pt-asuransi-jiwasraya-persero-ptpn-x-beri-pelatihan-ke-petani-tebu-rakyat
45	B	Komisi Bisnis Perdagangan Perancis Kunjungi PTPN X	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X mendapat kunjungan dari Komisi Bisnis Perdagangan Perancis di Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya (18/10). Kunjungan ini merupakan agenda rapat pembahasan mengenai industri gula di Indonesia serta ketertarikan perusahaan Perancis terhadap aktivitas dan proyek yang dilakukan oleh PTPN X, sebagai salah satu perusahaan gula milik negara terkemuka di Indonesia.</p>\r\n\r\n<p style="text-align: justify;">Acara hari ini dihadiri oleh Direktur Operasional PTPN X, Aris Toharisman beserta jajaran, Direktur Negara Komisi Bisnis Perdagangan Perancis - Kedutaan Perancis di Indonesia, Rachid Boulaouine, dan sepuluh perwakilan perusahaan Perancis. Adanya kunjungan ini diharapkan akan ada kerjasama yang baik antar dua negara. Mengingat teknologi yang dikembangkan di Perancis sudah sangat maju dan dapat dikembangkan pula di Indonesia.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas kunjungannya ke PTPN X. Saya berharap dengan adanya acara hari ini dapat membawa ilmu baru dari kedua belah pihak dan peluang kerjasama nantinya untuk kemajuan industri gula dunia,&rdquo; ujar Aris dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/kunjungan_perancis.jpeg" style="width: 300px; height: 225px; float: left;" /></p>\r\n\r\n<p style="text-align: justify;">Acara diisi dengan diskusi lebih mendalam antara 3 kelompok <em>(group agro, group process and group maintenance)</em>. &nbsp;Sesi diskusi ini dilakukan guna berbagi pengalaman mengenai perkembangan industri gula. Kunjungan ditutup dengan pemberian cinderamata. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-10-18 20:13:26	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisi-bisnis-perdagangan-perancis-kunjungi-ptpn-x
46	A	Kombinasi Bioethanol dan Biogas Industri Gula sebagai Energi	<p style="text-align: justify;">Kebutuhan energi dunia terus meningkat seiring dengan pertumbuhan populasi. Terutama untuk sektor transportasi, 58% bergantung sepenuhnya pada energi fosil. Selain menipisnya ketersediaan energi fosil, isu lingkungan akibat penggunaan energi fosil menjadi masalah. Energi terbarukan menjadi terobosan dalam menangani masalah ini. Energi terbarukan sumbernya beragam: sumber langsung (panas, <em>photochemical</em>, <em>photoelectric</em>) dan sumber tidak langsung (angin, <em>hydropower</em>, <em>fotosintesa</em> dan biomassa, <em>geothermal</em>). Khusus untuk biomassa, perannya berkontribusi 9-13% dari total energi dunia. Biomassa berasal dari degradasi hasil alam dan industri terkait. Untuk menghasilkan energi, biomassa diproses dengan degradasi <em>thermochemical </em>dan <em>biochemical</em> <em>process</em>.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/foto1.jpg" style="width: 300px; height: 170px; float: right;" />Pada industri gula, molases merupakan biomassa yang dapat diolah menjadi bioethanol sebagai energi melalui proses fermentasi dan selanjutnya hasil samping bioethanol, <em>vinasse</em> dapat diolah menjadi biogas melalui proses <em>anaerobic</em>. Kombinasi bioethanol dan biogas memiliki prospek yang cerah untuk dikembangkan. Bioethanol sendiri saat ini menjadi sumber subsitusi BBM (Bahan Bakar Minyak) paling berkembang di dunia. Kebaikan bioethanol sebagai energi antara lain:</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Bioethanol mampu mengurangi 90% emisi atas efek rumah kaca yang berkontribusi dalam mitigasi perubahan iklim,</li>\r\n\t<li style="text-align: justify;">Pembakaran yang bersih akan meningkatkan performa mesin dan mengurangi polusi udara,</li>\r\n\t<li style="text-align: justify;">Rasio nilai energi ethanol 9 kali lebih besar dari energi fosil,</li>\r\n\t<li style="text-align: justify;">Bisa langsung dicampurkan pada BBM tanpa perantara sekitar kandungan 10% bioethanol.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Brazil sebagai barometer penggunaan ethanol, menjadi contoh sukses penggunaan bioethanol ini. Saat ini, Brazil berhasil menurunkan impor minyak sekaligus memanfaatkan ethanol pada saat harga gula dunia turun. Hampir 88% kendaraan di Brazil telah berjenis <em>Flex Fuel Vehicle&rsquo;s</em> (FFV) yang mempunyai fleksibilitas dalam penggunaan BBM dan bioethanol atau kombinasi keduanya. Pada tahun 2012, penggunaan BBM sebagai sumber energi murni terus menurun dari kisaran 50% dan digantikan oleh pemanfaatan bioethanol dan <em>Flex</em> <em>Fuel</em> (kombinasi BBM dan bioethanol) dengan target penggunaan BBM murni hanya 20% saja pada tahun 2030.</p>\r\n\r\n<p style="text-align: justify;">Tidak berhenti disitu, <em>vinasse </em>hasil samping bioethanol baik juga dikonversi sebagai biogas sebagai sumber energi. Sekitar 18% energi masih tersimpan pada <em>vinasse</em> dari sisa proses produksi bioethanol. Melalui serangkaian proses <em>hydrolisis</em> sampai <em>methanogenesis, </em>akan dihasilkan gas <em>methane</em> (CH4) yang dapat dimanfaatkan energi panasnya secara langsung atau dikonversi menjadi listrik bahkan sebagai bahan bakar kendaraan.</p>\r\n\r\n<p style="text-align: justify;">Sebagai contoh, produksi umum biogas di Brazil sekitar 175 Nm<sup>3</sup>/m<sup>3</sup> ethanol. Energi ini ekuivalen dengan 3,74 MJ/L ethanol. Sama halnya dengan bioethanol, biogas merupakan energi ramah lingkungan dibanding <em>natural</em> <em>gas</em>. Kombinasi bioethanol dan biogas diharapkan memiliki prospek cerah untuk terus dikembangkan. Terlebih Indonesia memiliki banyak pabrik gula yang dapat dikembangkan industri hilirnya sebagai bioethanol dan biogas. Kombinasinya mampu mengurangi emisi 89% tertinggi dibanding industri biomassa lain seperti: jagung, gandum, singkong, dll.&nbsp;<span style="font-family: open_sansregular, sans-serif; font-size: 14px; text-align: justify;">(Ariel_Enero, CIN_Sekper)</span></p>\r\n\r\n<p style="text-align: justify;"><strong>Sumber:</strong></p>\r\n\r\n<p style="text-align: justify;">Zuuber P., van de Vooren J., 2008: <em>Sugarcane Ethanol: Contributions to Climate Change Mitigation and Environment, </em>Wageningen Academic Publishers</p>\r\n\r\n<p style="text-align: justify;">Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens</p>\r\n\r\n<p style="text-align: justify;">KG Cesaro A and Belgiorno V., 2015: <em>Combined Biogas and Bioethanol Production: Opportunities and Challenges for Industrial Application,energies journal:&nbsp; </em><a href="http://www.mdpi.com/journal/energies">www.mdpi.com/journal/energies</a></p>\r\n\r\n<p style="text-align: justify;">Belincata J., Alchorne J. A., Teixeira da Silva M., 2016: <em>The Brazilian Experience with Ethanol Fuel: Aspects of Production, Use, Quality and Distribution Logistics</em>,&nbsp; Brazilian Journal of Chemical Engineering: www.scielo.br/scielo.php?script=sci_arttext&amp;pid=S0104-66322016000401091</p>\r\n	0	0	2019-10-23 15:26:35	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kombinasi-bioethanol-dan-biogas-industri-gula-sebagai-energi
47	A	3 Piramida, Cara Sukses Lebih Cepat Untuk Karyawan	<p style="text-align: justify;">Tentu setiap diri karyawan di perusahaan menginginkan jenjang karir yang baik untuk masa depannya. Apakah anda pernah bertanya, dimanakah titik tertinggi sebuah kesuksesan seorang karyawan?. Pada dasarnya, setiap orang mempunyai pencapaian titik kesuksesan. Sukses bisa diraih oleh semua orang dengan titik yang berbeda, tergantung penerimaan <em>mindset </em>sukses itu sendiri seperti apa.&nbsp;<img alt="" src="/uploads/artikel.jpg" style="width: 300px; height: 260px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;"><em>Time is life</em>, kesuksesan tersusun dari jutaan proses, dan anda harus melaluinya. Sebagai karyawan anda harus cerdas manajemen diri, terlebih soal waktu. Karena penguasaan waktu mempengaruhi tingkat kesuksesan.</p>\r\n\r\n<p style="text-align: justify;">Ada banyak cara dalam membangun perjalanan menuju kesuksesan yang anda inginkan dalam pekerjaan saat ini. Namun, untuk mencapai itu semuanya, dibutuhkan upaya kerja keras dan usaha yang maksimal.</p>\r\n\r\n<p style="text-align: justify;">Berikut gagasan <em>three pyramids</em> yang saya tulis, yang bisa menjadi inspirasi dan menjadi cara untuk membantu anda menjadi seorang karyawan yang sukses lebih cepat:</p>\r\n\r\n<p style="text-align: justify;"><strong>Frugal Time </strong></p>\r\n\r\n<p style="text-align: justify;">Hemat waktu merupakan sebuah <em>mindset</em> untuk lebih efisien terhadap penggunaan waktu.&nbsp; Untuk mencapai target pencapaian yang bagus, karyawan harus pandai dalam manajemen waktu. Lantas bagaimana cara menghemat waktu yang tepat?</p>\r\n\r\n<p style="text-align: justify;"><em>Frugal Time,</em> tentang sebuah kelas waktu untuk menjadikan potensi diri menjadi komoditi yang bernilai tinggi.&nbsp; Setiap waktu berjalan dengan&nbsp; kecepatan yang sama, namun setiap diri karyawan memiliki titik faktor kesuksesan yang berbeda.</p>\r\n\r\n<p style="text-align: justify;">Sebagai karyawan, anda harus menerapkan prinsip bahwa setiap detik waktu adalah impian, dan detik selanjutnya adalah usaha pencapaian.&ldquo;Sasaran itu impian yang memiliki tenggat waktu.&rdquo; &ndash; Diana Scharf.</p>\r\n\r\n<p style="text-align: justify;">Seperti yang dikatakan oleh Diana Scharf, bahwa impian itu memiliki tenggat waktu. Jadi, anda sebagai karyawan harus mempunyai&nbsp; <em>new idea instincts how to quickly pursue dreams.</em></p>\r\n\r\n<p style="text-align: justify;">Ada beberapa tips untuk anda sebagai karyawan untuk menghemat waktu.</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Jangan menunda pekerjaan, selesaikan secepatnya. Jika memang pekerjaan tidak bisa diselsaikan hari ini, maka buat agenda penyelesaian untuk hari esok</li>\r\n\t<li style="text-align: justify;">Jika ada waktu luang saat bekerja, maksimalkan dengan mempelajari hal baru</li>\r\n\t<li style="text-align: justify;">Berikan waktu terbaikmu untuk perusahaan dengan bekerja <em>professional</em>, inovatif dan kreatif</li>\r\n\t<li style="text-align: justify;">Buatlah metode-metode baru dalam penyelsaian pekerjaan anda, agar pekerjaan lebih mudah dan cepat selesai</li>\r\n\t<li style="text-align: justify;">Buat peran yang jelas pada tim anda, karena dengan peran yang tepat maka pekerjaan anda akan lebih cepat selesai dengan akurasi yang baik.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Setiap detik waktu adalah kehidupan. Waktu anda terbatas, jadi jangan sia-siakan. Berhematlah dengan waktu dan berbagilah banyak hal positif untuk orang lain, karena sesuatu yang tidak dapat ditarik adalah pengaruh yang kita berikan kepada orang lain, dan itu bisa menjadi investasi yang baik dimasa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Wasting Time</strong></p>\r\n\r\n<p style="text-align: justify;">Waktu adalah salah satu hal penting yang perlu diperhatikan, karena sedetik pun waktu tidak akan pernah bisa diulangi atau diputar kembali. Waktu adalah kesempatan. Banyak orang tanpa sadar membuang banyak waktunya untuk momen yang kurang tepat. Buatlah prioritas, agar efektivitas kerja dapat memberikan <em>value</em> yang baik. Jadilah <em>smart employee</em> yang mempunyai standar <em>mindset</em>, <em>that time</em> <em>cannot be played back, do many great things. </em></p>\r\n\r\n<p style="text-align: justify;">Sebagai karyawan anda harus lebih aktif, lakukan banyak hal dan jangan pasif. Sukses adalah tentang sebuah proses. Ada harga mahal yang harus anda bayar untuk kesuksesan lebih cepat dari biasanya.</p>\r\n\r\n<p style="text-align: justify;">Seperti yang dikatakan Bruce Lee, &ldquo;Menggunakan waktu adalah memanfaatkannya sesuai dengan apa yang telah ditentukan sebelumnya. Menghamburkan waktu adalah menyia-nyiakanya tanpa rencana dan sembarangan&rdquo;.</p>\r\n\r\n<p style="text-align: justify;">Nah sekarang anda sebagai karyawan perusahaan, maksimalkan waktu bekerja sebaik mungkin dengan membuat rancangan atau agenda kerja yang terstruktur. Mengerjakan sesuatu tanpa perencanaan hanya akan membuat anda bekerja tidak efektif. Hanya akan membuat Anda membuang energi tanpa hasil. Nah dengan membuat <em>to-do list,</em> kedepannya semua waktu kerja anda akan tergunakan secara maksimal dan anda akan tampil lebih produktif.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><strong>Give yourself motivation</strong></p>\r\n\r\n<p style="text-align: justify;">Era globalisasi saat ini berkembang sangat <em>absurd</em>,&nbsp; mau tidak mau keadaan akan menuntut anda untuk selalu melakukan pekerjaan dengan cepat dan tepat. Sehingga <em>mood</em> yang baik sangat diperlukan, karena jika kita tidak dalam mood yang baik, akan mempengaruhi kualitas kinerja anda.</p>\r\n\r\n<p style="text-align: justify;">Dengan berbagai jenis tantangan pekerjaan, seringkali <em>work mood</em> anda akan mengalami naik turun. Nah, situasi seperti ini harus anda waspadai. Untuk segala keadaan, anda sebagai karyawan harus mampu menunjukkan performa yang baik. Untuk terbang lebih tinggi, anda harus tampil menginspirasi dan selalu mampu membuat serta menunjukkan <em>Fresh Idea</em> anda.</p>\r\n\r\n<p style="text-align: justify;"><em>Give yourself motivation</em>, anda harus mampu memberi semangat dan memotivasi diri sendiri.&nbsp; buat diri karismatik dengan passion terbaik anda. Karena sejatinya, hidup tanpa semangat maka akan terasa mati.</p>\r\n\r\n<p style="text-align: justify;">Salvador Dali mengatakan bahwa &ldquo;Kecerdasan tanpa ambisi adalah seperti burung tanpa sayap&rdquo;. Begitu juga dengan pekerjaan, bekerja juga membutuhkan ambisi sebagai daya untuk mencapai target. Lantas bagaimana cara mudah untuk memotivasi diri?. Berikut ada beberapa tips yang mungkin bisa anda coba sebagai inspirasi untuk memotivasi diri.</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Buatlah sebuah tujuan di <em>ending work</em> anda.</li>\r\n\t<li style="text-align: justify;"><em>Reward yourself</em>, Berjanjilah pada diri anda, bahwa jika mencapai target, maka anda akan memberi sebuah penghargaan pada diri anda sendiri.</li>\r\n\t<li style="text-align: justify;">Buatlah <em>mindset,</em> bahwa hari ini adalah hari terkahir anda bekerja. Maka anda akan bersungguh-sungguh dalam bekerja.</li>\r\n\t<li style="text-align: justify;">Berusahalah menciptakan keajaiban baru dengan prestasi kerja anda, maka dunia akan mengenalmu lebih baik.</li>\r\n\t<li style="text-align: justify;">Temuilah lebih banyak orang, untuk belajar tentang filosofi motivasi kerja. Dengan banyak relasi, lebih banyak pula pengalaman baru yang akan anda dapatkan. (Dhanaviya_Enero, CIN_Sekper)</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Sumber gambar beritagar.id</p>\r\n	0	0	2019-07-17 22:00:41	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/3-piramida-cara-sukses-lebih-cepat-untuk-karyawan
48	A	Invisible Work	<p style="text-align: justify;">Di belahan dunia bahwa sebagian besar seseorang mempunyai pekerjaan dalam kehidupannya. Mereka semua bekerja dengan kemampuan, gaya dan kecepatan masing-masing. Namun beberapa orang menghabiskan lebih dari separuh kehidupan mereka. Semua itu bukanlah cara bekerja yang benar, ada yang salah dengan cara bekerja mereka. Sebenarnya ada sisi bagian dari sebuah pekerjaan yang tidak terlihat oleh mereka. Ada tiga hal yang menarik untuk dilakukan oleh seorang pemimpin perusahaan sebagai inspirasi karyawan dalam menemukan <em>invisible work</em> (sisi bagian pekerjaan yang tidak terlihat) untuk cara bekerja yang lebih baik.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/invisible_work.jpg" style="width: 300px; height: 199px; float: left;" /></p>\r\n\r\n<p style="text-align: justify;"><strong>Melihat semua keindahan dalam pekerjaan.</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam sebuah pekerjaan pasti ada satu titik dimana seseorang akan mengalami depresi, kejenuhan dan rasa putus asa. Semua itu akan membuat mereka meninggalkan pekerjaan mereka. Bahwasannya ada hal yang lebih mendasar di balik semua itu, yakni mereka banyak melewatkan keindahan dalam pekerjaan mereka. Sebagai seorang pemimpin, beritahu kepada karyawan yang bekerja untuk Anda bahwa pekerjaan itu adalah sesuatu aktivitas yang menyenangkan. Bantulah mereka untuk menemukan jati diri mereka dalam pekerjaanya dan inspirasi mereka agar mempunyai waktu, energi, dan kejernihan untuk fokus pada pemurnian diri sebagai navigasi baru dalam bekerja.</p>\r\n\r\n<p style="text-align: justify;"><strong>Kepedulian Pemimpin</strong></p>\r\n\r\n<p style="text-align: justify;">Seni kepemimpinan sangatlah berpengaruh dalam perkembangan <em>mindset</em> karyawan. Banyak karyawan yang mempunyai <em>passion </em>yang bagus namun akhirnya mereka tidak produktif bahkan kehilangan pekerjaan mereka. Hampir 70% gaya kepemiminan akan mempengaruhi baiknya kinerja karyawan dalam pekerjaan. <em>Global Studies </em>mengungkapkan bahwa 79% orang keluar dari pekerjaan karena kurangnya apresiasi sebagai alasan mereka untuk meninggalkan perusahaan. Dari penelitian itu dapat disimpulkan bahwa sangat pentingnya perhatian dan <em>respect</em> pemimpin kepada karyawan yang bekerja dibawahnya.</p>\r\n\r\n<p style="text-align: justify;">Ada delapan hal dimana bisa dijadikan sebagai bentuk inspirasi perhatian dan bentuk kepedulian yang menurut Jay Shetty akan merubah pola kerja karyawan untuk menjadi <em>smart people.</em></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Jadwalkan pertemuan dengan setiap pegawai,</li>\r\n\t<li style="text-align: justify;">Tanyakan tentang kebahagiaan mereka,</li>\r\n\t<li style="text-align: justify;">Tanyalah apakah pekerjaan mereka berarti,</li>\r\n\t<li style="text-align: justify;">Tanyakan bagaimana mereka pola pikir budaya bisa ditingkatkan,</li>\r\n\t<li style="text-align: justify;">Tanya mereka tentang keseimbangan kehidupan kerja mereka dan bagaimana itu bisa lebih baik,</li>\r\n\t<li style="text-align: justify;">Tanya apakah mereka merasa dihargai di tempat kerja,</li>\r\n\t<li style="text-align: justify;">Tanya mereka apa yang dapat membantu mereka mencintai pekerjaan mereka dan perusahaan Anda,</li>\r\n\t<li style="text-align: justify;">Dan yang terakhir, bersiaplah untuk mendengar kebenaran dan kenyataannya. Jika Anda siap mendengarnya, mereka akan siap untuk mendengar balik.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><strong>Kekuatan Kepercayaan</strong></p>\r\n\r\n<p style="text-align: justify;">Milikilah keberanian untuk mengikuti hati dan intuisi Anda sebagai pemimpin di perusahaan. Banyak pemimpin yang kurang percaya terhadap kemampuan karyawan yang bekerja untuknya. Sehingga membuat <em>mindset</em> karyawan berpikir bahwa mereka dipandang sebelah mata. Hal seperti ini tentu tidak baik untuk perkembangan performa dan <em>passion</em> karyawan dalam jangka panjang.&nbsp; Sebagai pemimpin, milikilah kekuatan rasa memiliki dan kepercayaan lebih atas semua yang ada dalam diri karyawan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p>Sumber Gambar: https://blog.clarifai.com</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n	0	0	2019-05-03 20:34:35	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/invisible-work
49	A	Kecerdasan Buatan (AI), Inspirasi Menjadi Karyawan Versi Terbaik	<p>Metode Kecerdasan Buatan (AI) merupakan sebuah metode baru yang dikembangkan untuk menggali potensi karyawan disebuah perusahaan. Metode ini adalah hasil dari sebuah rekayasa <em>mindset </em>untuk memadukan kekuatan pikiran (Rasional) dan Hati nurani (Metafisika).</p>\r\n\r\n<p>Setiap diri karyawan pasti memiliki kelebihan dan kekurangan. Tidak ada manusia yang diciptakan tanpa <em>power knowledge</em>. Menggali potensi karyawan dengan metode kecerdasan buatan (AI) merupakan teknik terbarukan yang dikembangkan untuk menemukan jati diri karyawan dalam bekerja. Mereka akan dipandu dalam tiga konspirasi, yakni <em>&ldquo;siapa anda?, apa tujuan bekerja?, </em>dan <em>apa arti dari sebuah pekerjaan?&rdquo;</em>.</p>\r\n\r\n<p><img alt="" src="/uploads/artikel_menjadi_karyawan_terbaik.jpg" style="width: 300px; height: 200px; float: left;" />Kecerdasan buatan (AI) memiliki banyak kelebihan dibandingkan dengan metode lain. AI memfokuskan pada titik emosional untuk membangkitkan kekuatan perasaan dalam diri seseorang. Karena bakat terpendam akan bisa bekerja dengan diberi rangsangan melalui sebuah peristiwa yang disusun oleh konsep yang matang.</p>\r\n\r\n<p>Begitu banyak orang yang bekerja hanya sekedar bekerja, tidak memperhitungkan waktu, kesempatan, dan kemampuan. Mereka hanya melakukan aktifitas yang sama setiap harinya, bahkan ada sebagian orang yang datang bekerja tanpa tujuan. Inilah yang menjadi faktor terbesar penyebab perusahaan tidak berkembang.</p>\r\n\r\n<p>Target Metode Kecerdasan Buatan (AI) adalah menjadikan karyawan yang produktif dengan teknik komunikasi <em>feeling</em> untuk membentuk karakter karyawan yang mampu menghasilkan karya, bukan penikmat karya sehingga karyawan mampu menjadi versi terbaik dari dalam dirinya.</p>\r\n\r\n<p>Dalam Kecerdasan Buatan (AI) disusun oleh &nbsp;<em>three feeling thoughts </em>yang harus diciptakan oleh seorang pemimpin untuk meregenerasi<em> the strength of employee feelings. &nbsp;</em></p>\r\n\r\n<p><strong><em>1. Method of opening the brain</em></strong><strong>.</strong></p>\r\n\r\n<p style="margin-left:35.45pt;"><em>Method of opening the brain </em>merupakan sebuah metode membuka kecerdasan otak dengan sebuah rekayasa <em>mindset</em>. Hal ini dilakukan dengan media memberi kesempatan pada karyawan untuk menyalurkan ide dan gagasan dalam <em>event</em> progam pengembangan perusahaan. Tidak hanya sebatas itu, tapi karyawan mengaplikasikan secara langsung konsep mereka di lapangan. Dalam hal ini, karyawan tersebut akan merasa bahwa keberadaanya diperusahaan diakui dan memacu <em>mindset</em> untuk menunjukkan bahwa dirinya mampu untuk melakukannya. Dari sini, karyawan akan belajar banyak kesulitan dan pengendalian diri untuk proses perubahan menjadi versi terbaik dari dalam dirinya.</p>\r\n\r\n<p style="margin-left:35.45pt;">Masih dalam <em>line mindset, </em>sebagian besar pemimpin memberikan motivasi yang salah terhadap karyawan perusahaan. Salah satunya adalah &ldquo;membandingkan kesuksesan perusahaan lain menjadi tolak ukur nilai prestasi yang mereka capai&rdquo;. Seolah-olah <em>mindset</em> tersebut benar, namun kenyataannya justru akan melemahkan <em>mindset </em>kepercayaan diri dan mematahkan performa atau <em>passion </em>mereka.</p>\r\n\r\n<p style="margin-left:35.45pt;">Setiap sebuah tim mempunyai seni bekerja dan kapasitas yang berbeda. Rasa kepercayaan antar satu tim adalah kunci dari pencapaian target yang gemilang. Seharusnya yang harus ditanam dalam <em>mindset </em>karyawan adalah &ldquo;Sebesar apapun target yang dicapai, haruslah tetap berdiri optimis dan mempunyai rasa penerimaan yang besar&rdquo;.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan:</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Tanamkan <em>mindset</em> pada karyawan bahwa kecerdasan saja tidaklah cukup untuk membangun perusahaan yang besar. Ada yang lebih besar dari pada itu, ia adalah kekuatan perasaan. Perasaan yang lebih untuk memahami tujuan <em>end working</em>, perasaan yang lebih untuk mencintai pekerjaan dan perasaan yang lebih untuk melakukan penerimaan yang besar ketika diri kecewa karena gagal mencapai target. Tidak semua hal harus diakui diatas kertas putih. Setiap hal punya gaya dan percepatan masing-masing, serta berkembang sesuai waktunya. Jangan biarkan perasaan karyawan larut dalam rasa terburu-buru karena perbedaan titik kesuksesan.</p>\r\n\r\n<p><strong>2. Emotional approach method</strong></p>\r\n\r\n<p style="margin-left:35.45pt;"><em>Emotional approach method</em> adalah konsep pendekatan emosional, untuk menciptakan rasa suka dan bahagia dalam bekerja. Konsep pendekatan emosional ini untuk meningkatkan frekuensi cara berfikir positif serta meremajakan energi.</p>\r\n\r\n<p style="margin-left:35.45pt;">Berfikir positif merupakan salah satu faktor terbesar yang mempengaruhi performa kinerja karyawan.&nbsp; <em>Emotional approach method</em> dilakukan dengan cara menciptakan komunikasi yang baik. Sebenarnya banyak hal yang mampu diciptakan dari sebuah komunikasi. Salah satunya adalah &nbsp;menjalin <em>feelings communication</em> &nbsp;atau dikenal dengan istilah komunikasi perasaan.</p>\r\n\r\n<p style="margin-left:35.45pt;">Dalam riset yang saya lakukan, kebanyakan seorang pemimpin gagal dalam menjalin komunikasi perasaan terhadap karyawan, sehingga menyebabkan buruknya hubungan kerja sama tim. Hal ini tentu tidak menguntungkan bagi perusahaan, karena dapat merusak performa karyawan yang memiliki <em>passion</em> dan potensi yang baik.</p>\r\n\r\n<p style="margin-left:35.45pt;">Selama ini, sebagian besar seorang pemimpin fokus dalam pengembangan dari segi teknis dan mengabaikan <em>development feelings communication</em>. Ini tidaklah buruk sebenarnya, namun hal ini hanya akan memberikan dampak hanya 50% terhadap pengembangan diri karyawan.</p>\r\n\r\n<p style="margin-left:35.45pt;">Perasaan bukan soal fakta, angka maupun buku teori, melainkan tentang sebuah <em>instinct, </em>sebuah pemikiran baru untuk sebuah dorongan dari dalam diri, untuk menjadi sesuatu yang berbeda dari sebelumnya. Berbeda dalam artian sebuah perubahan baru menjadi versi yang lebih baik dari sebelumnya.</p>\r\n\r\n<p style="margin-left:35.45pt;">&ldquo;Makna kehidupan adalah untuk menemukan bakatmu dan tujuan hidup adalah untuk memberikannya&rdquo; Pablo piccaso.</p>\r\n\r\n<p style="margin-left:35.45pt;">Seperti apa yang dikatakan Pablo piccaso, bahwa kehidupan akan menjadi lebih baik ketika diri menemukan bakat dan tujuan. Seperti halnya bekerja, ada tujuan berarti ada alasan untuk merubah pola fikir bagaimana cara bekerja yang baik.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan:</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Seorang pemimpin harus menjadi pribadi <em>open mind, </em>dan menjadi pribadi lebih perhatian dengan menjadi karakter yang lebih sadar untuk mengamati realitas dari pada menjadi penonton. Dalam konteks ini, ada hal yang menjadi garis besar bahwa ada yang menjadi pembatas kesuksesan, ia adalah komunikasi yang buruk. Pemimpin harus menciptakan komunikasi yang baik dari level karyawan paling kecil dengan cara menjadi pendengar yang baik dan menjadi <em>the</em> <em>good respect for employee ideas.</em></p>\r\n\r\n<p><strong><em>3. Find a way to be a winner</em></strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Tidak mudah menjadi pribadi yang menginspirasi diperusahaan, pribadi yang mampu menjadi promotor perubahan. <em>Find a way to be a winner</em>,&nbsp; tentang sebuah perjalanan menuju pribadi pemenang.</p>\r\n\r\n<p style="margin-left:35.45pt;">Terkadang karyawan bekerja dengan <em>mindset </em>yang salah. Mereka hanya berfikir bagaimana caranya mendapatkan uang saja dan mengabaikan rasa produktifitas.</p>\r\n\r\n<p style="margin-left:35.45pt;">Banyak karyawan bekerja dengan <em>mindset</em> yang merelakan mimpinya, memilih untuk bekerja rata-rata, dan cara bekerja yang gampang. Itulah salah satu menjadi faktor terbesar yang membuat perusahaan tidak berkembang. Salah satu hal yang akan membuat perubahan yang besar adalah merevolusi sudut pandang karyawan dalam etika bekerja.</p>\r\n\r\n<p style="margin-left:35.45pt;">Seperti yang dikatakan Wayne Dyer, terkadang perlu mengubah cara pandang terhadap sesuatu, maka sesuatu yang kita lihat akan berubah.</p>\r\n\r\n<p style="margin-left:35.45pt;">AI bekerja dari segi perasaan untuk mendorong melahirkan potensi yang baru. Ada tiga hal yang akan merubah sudut pandang karyawan dalam pekerjaannya yakni waktu, alasan dan selamanya.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Waktu</strong>, seberapa jauh diri untuk menjelajah dan menemukan tingkat kepercayaan, harga diri, dan kesadaran&nbsp; yang baru. C.S Lewis berkata, &ldquo; Dirimu tidak mempunyai jiwa, tapi dirimu lah jiwa itu sendiri dan jiwa dirimulah yang memiliki tubuh&rdquo; . Ketika <em>mindset </em>perasaan kita bekerja untuk menyadari bahwa diri ini abadi, kekal, penuh pengetahuan, penuh kebahagiaan dan hidup dari ruang dimana kita mampu menerangi seluruh dunia, saat itulah diri ini menjadi seorang pemenang.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Alasan</strong>, sekuat apapun tantangan pekerjaan yang anda lalui, pasti anda akan menemukan satu titik alasan untuk bertahan, bahkan memicu diri untuk berevolusi menjadi sesuatu yang besar meski mengorbankan segalanya, dan mungkin alasannya adalah orang-orang yang anda cintai.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Selamanya</strong>, tidak akan ada kata akhir dalam sebuah pekerjaan. Seorang karyawan sejati akan terus berkarya meski diri mereka terbuang. Mereka akan hanya memikirkan bagaimana caranya menciptakan karya di perusahaan. &nbsp;</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Dalam target pencapaian perusahaan terkadang banyak sekali hal-hal yang tidak tercapai. Seorang pemimpin harus mengajarkan pada karyawan bahwa tidak semua pencapaian harus ditentukan oleh angka, karena dalam kegagalan, akan menemukan kekuatan terbesar dalam diri. Sukses tidak dibangun diatas kesuksesan. Sukses dibangun diatas kegagalan, atas rasa frustasi, dan atas ketakutan yang harus dikalahkan. Tanamkan <em>mindset</em> rasa kepercayaan diri yang tangguh pada karyawan, bahwa saat gagal bukan berarti semua telah berakhir namun disitulah diri sedang diarahkan ke dalam sesuatu yang lebih baik. (Dhanavya_Enero,Okta_UMM)</p>\r\n\r\n<p style="margin-left:35.45pt;">&nbsp;</p>\r\n\r\n<p style="margin-left:18.0pt;">Sumber gambar : www.techno.id</p>\r\n\r\n<p style="margin-left:18.0pt;">Situs youtube jay shetty</p>\r\n	0	0	2019-03-29 16:39:53	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kecerdasan-buatan-ai-inspirasi-menjadi-karyawan-versi-terbaik
50	A	Ethanol Fuel Grade, Alternatif Baik Solusi Global Warming	<p style="text-align: justify;">Kebutuhan konsumsi Energi Baru Terbarukan (EBT) di Indonesia terus mengalami kenaikan seiring dengan berkurangnya cadangan bahan bakar fosil. Pada tahun 2025, kebutuhan akan EBT ditargetkan mencapai 23% dari total energi yang dibutuhkan (KESDM, 2015). Disisi lain kebutuhan energi di Indonesia khususnya bahan bakar minyak (BBM) terus mengalami kenaikan dari tahun ke tahun. Tingkat konsumsi rata-rata meningkat 6% setiap tahunnya, sementara cadangan dan produksi BBM mengalami penurunan 10%, setiap tahunnya (Kuncahyo dkk., 2013).</p>\r\n\r\n<p style="text-align: justify;">Salah satu dampak terbesar dari selalu digunakannya bahan bakar fosil adalah <em>global warming</em>. Pada tahun 2010 ada lebih dari 1 miliar kendaraan bermotor diseluruh dunia dan diproyeksikan akan terus mengalami peningkatan. Hal ini tentunya meningkatkan kadar emisi CO<sub>2</sub>&nbsp;dipermukaan bumi.</p>\r\n\r\n<p style="text-align: justify;">Karbondioksida di atmosfer mencapai level tertinggi tahun 2016. Kondisi ini membuat suhu bumi semakin panas dan berbahaya buat generasi mendatang.&nbsp;Hal ini disampaikan badan World Meteorological Organization (WMO). Menurut laporan tersebut, kadar&nbsp;karbondioksida mencapai rekor tertinggi dengan konsentrasi CO<sub>2</sub>&nbsp;di angka 403,3 bagian per juta (ppm) pada tahun&nbsp;2016, naik dari angka 400 bagian per juta (ppm) di tahun 2015. &ldquo;Tanpa upaya mengurangi kadar CO<sub>2</sub>&nbsp;dan emisi gas rumah kaca, kita akan berada di kondisi membahayakan akhir abad ini, melebihi target yang juga kita ingin capai dari kesepakatan Paris,&rdquo; ungkap Petteri Taalas, Sekjen WMO dalam pernyataan resminya seperti dilansir dari&nbsp;CNBC.</p>\r\n\r\n<p style="text-align: justify;"><em>Global warming</em> bisa menjadi salah satu penyebab masalah global yang kompleks apabila tidak ada langkah yang positif dan cara penanggulangan yang tepat. Dampak yang paling berbahaya dari <em>global warming </em>adalah lapisan ozon mulai menipis dimana fungsi utamanya menyelimuti bumi. Oleh karena itu pemerintah menyusun berbagai opsi pemanfaatan EBT, salah satunya adalah dengan memanfaatkan Bahan Bakar Nabati (BNN). Salah satu jenis BBN berbasis&nbsp;<em>biofuel</em>&nbsp;yang sudah diterapkan pemerintah sampai saat ini adalah bieotanol (BPPT, 2015).</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/gambar_artikel_etanol.jpg" style="width: 300px; height: 165px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;">Ethanol merupakan terobosan bioteknologi yang bisa menjadi alternatif bahan bakar energi terbarukan yang ramah lingkungan. Ethanol dikembangkan dengan teknologi modern, salah satunya ethanol dari pengolahan bahan dasar molasses (tetes tebu) hingga tingkat kemurnian mencapai 99.5%.</p>\r\n\r\n<p style="text-align: justify;">Ethanol fuel grade 99.5% merupakan bio-energi yang mampu menjadi pengganti bahan bakar fosil. Salah satu keunggulan bahan bakar etanol yang paling jelas adalah</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Bahan bakar etanol merupakan sumber energi terbarukan, yang berarti bahwa bahan bakar etanol tidak terbatas seperti bahan bakar fosil.</li>\r\n\t<li style="text-align: justify;">Pembakaran etanol lebih bersih daripada bahan bakar fosil yang berarti mengurangi emisi gas rumah kaca. Hal ini merupakan keuntungan etanol yang paling signifikan bagi lingkungan dibandingkan dengan bahan bakar fosil.</li>\r\n\t<li style="text-align: justify;">Bioethanol memiliki nilai oktan yang lebih tinggi dengan nilai (110)</li>\r\n\t<li style="text-align: justify;">Bioethanol memiliki kadar emisi yang rendah, penurunan emisi NO sebanyak 25%-32%, penurunan emisi VOC sebanyak 20%, dan penurunan emisi CO 12%-24%. Emisi CO2 juga lebih rendah, karena setiap mol bioethanol hanya menghasilkan 2 mol CO2. Berbeda dengan bensin yang dapat menghasilkan hingga 8 mol CO2.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Di era globalisasi sekarang sudah ada beberapa jalan keluar untuk hal ini, yang kita butuhkan sekarang adalah kemauan politik global dan respons akan kondisi darurat dan genting saat ini. Faktanya bahwa <em>bio-fuel grad</em>e ethanol mampu mengurangi kadar CO2 dipermukaan bumi apabila digunakan secara maksimal dalam segi bahan bakar, sehingga ethanol bisa menjadi salah satu alternatif yang baik untuk menjadi solusi mengatasi permasalahan isu global warming.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Referensi:</p>\r\n\r\n<p style="text-align: justify;">Rahman Indra.<strong>&rdquo;</strong>&nbsp;Kadar Karbon Dioksida di Atmosfer Capai Level Tertinggi&rdquo;.www.cnnindonesia.com. 31 November 2017.&nbsp;19 Desember 2018.https://www.cnnindonesia.com/gaya-hidup/20171031142925-255-252425/kadar-karbon-dioksida-di-atmosfer-capai-level-tertinggi</p>\r\n\r\n<p style="text-align: justify;">https://en.wikipedia.org/wiki/Alcohol_fuel</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: www.maxmanroe.com</p>\r\n\r\n<p>&nbsp;</p>\r\n	0	0	2019-02-07 16:58:53	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ethanol-fuel-grade-alternatif-baik-solusi-global-warming
51	A	9-Box Model Untuk Pengembangan Potensi dan Kinerja Karyawan	<p style="text-align: justify;">Terkadang hasil asesmen karyawan tidak sesuai dengan kinerja yang diinginkan perusahaan. Karyawan yang memiliki hasil asesmen baik, dalam beberapa kasus melaksanakan tanggung jawabnya kurang efektif ataupun sebaliknya. Sehingga menjadi pertanyaan apakah proses asesmen kurang memberikan gambaran karyawan yang sesuai?</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/pengembangan_potensi.png" style="float: right; width: 300px; height: 207px;" /></p>\r\n\r\n<p style="text-align: justify;">Pada dasarnya asesmen memang tidak mengukur kinerja, melainkan potensi karyawan. Namun asesmen memang diperlukan untuk mencari karyawan yang sesuai dengan kemampuannya, sehingga diharapkan menjadi <em>good</em> <em>performer</em> di perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Sebagai upaya untuk menjembatani hasil asesmen dengan kinerja, maka diperlukan alat atau metode untuk menilai kinerja karyawan serta mengembangkan potensinya untuk perusahaan. Salah satunya dengan <em>9-box matrix</em>. Metode ini dikembangkan pertama kali oleh McKinsey pada tahun 1960-an untuk membantu menilai potensi individu dalam bisnis milik GE.</p>\r\n\r\n<p style="text-align: justify;">Matriks ini bertujuan mengevaluasi kinerja dan merencanakan karyawan untuk &nbsp;menempati jabatan dan peran-peran strategis di perusahaan sesuai potensinya. Sehingga dimensi 9-box ada 2 (dua) yaitu performa karyawan pada masa lalu dan potensi karyawan di masa mendatang. Performa diwakili oleh sumbu X, sedangkan potensi diwakili oleh sumbu Y. Kombinasi dari sumbu X dan Y akan menentukan posisi suatu individu dan menempatkan individu pada kuadran yang berbeda-beda. Pada kuadaran kanan atas, kecenderungan nilai X dan Y akan tinggi, maka individu diidentifikasikan sebagai kandidat yang berpotensi tinggi dalam rencana suksesi perusahaan atau <em>succession</em> <em>planning</em> <em>candidate</em>.</p>\r\n\r\n<p style="text-align: justify;">Dalam penggunaannya, terdapat beberapa tahapan yang harus dilakukan antara lain:</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Pelajari terlebih dahulu&nbsp; pengunaan metode 9-box dengan bantuan HR, independen konsultan dan pimpinan yang bertanggung jawab dalam <em>sucession</em> <em>planning</em></li>\r\n\t<li style="text-align: justify;">Rapat awal untuk memastikan kesamaan persepsi penggunaan 9-box sehingga masing-masing penilai memiliki pandangan yang sama</li>\r\n\t<li style="text-align: justify;">Dapatkan informasi-informasi tambahan terkait dengan individu yang dinilai, diluar penilaian formal</li>\r\n\t<li style="text-align: justify;">Gunakan <em>benchmark</em> untuk membandingkan hasil penilaian anda dengan hasil penilaian yang sudah ada dari perusahaan lain yang menerapkan 9-box</li>\r\n\t<li style="text-align: justify;">Diskusikan secara inten kandidat berdasar hasil penilaiannya dan coba tempatkan kandidat pada kuadran yang berbeda untuk mengetahui peluang lainnya</li>\r\n\t<li style="text-align: justify;">Diskusikan apa saja kebutuhan untuk pengembangan perusahaan dan tindak lanjut bagi karyawan yang dinilai</li>\r\n\t<li style="text-align: justify;">Evaluasi hasil penilaian secara berkala untuk mengetahui tingkat perkembangan karyawan</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Dalam <em>talent</em> <em>management</em>, peran 9-box&nbsp; membantu perusahaan untuk memfokuskan kepada siapa fokus pengembangan individu diberikan. Penggunaan 9 box juga mengurangi penilaian secara subyektif membantu penerapan kriteria karyawan dan <em>low</em> <em>cost</em>. (Ariel_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber:</p>\r\n\r\n<p style="text-align: justify;">McCarthy, D, 2018,Thebalancecareers.com: The Nine-Box Matrix for Succession Planning and Developmnet</p>\r\n\r\n<p style="text-align: justify;">Kusnadi, M, 2015, SWA: Does Talent Assesment Matter?</p>\r\n\r\n<p>&nbsp;</p>\r\n	0	0	2018-09-10 16:45:20	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/9-box-model-untuk-pengembangan-potensi-dan-kinerja-karyawan
52	A	Sinergi Enero-Mitra Tani 27: Aplikasi Pupuk Hayati Enero untuk Peningkatan Produksi Edamame (Model RAK)	<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="CA" style="font-family: Arial, sans-serif;">Kedelai Edamame merupakan produk unggulan dan berkualitas dari PT Mitra Tani Dua Tujuh (Mitra Tani 27) yang pangsa pasarnya tidak hanya untuk konsumsi domestik melainkan ekspor. Untuk mencapai kualitas yang baik maka perlu diperhatikan sistem budidaya sampai proses produksi dan pengolahannya. Terutama untuk aspek budidaya, selama ini Mitra Tani 27 masih menggunakan <i>full</i> pupuk anorganik dalam sistem budidayanya. Hal ini baik dalam meningkatkan produktivitas tanaman jangka pendek, namun menurunkan kualitas tanah dalam jangka panjang. Berdasarkan hal ini, diperlukan upaya pembenahan tanah sekaligus pengurangan pupuk anorganik dengan pemanfaatan pupuk hayati dalam sistem budidaya untuk mencapai hasil yang optimal.</span></span><span lang="CA" style="font-family: Arial, sans-serif;"><o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span style="font-family: Arial, sans-serif;">Di sisi lain, PT Energi Agro Nusantara (Enero) sebagai pabrik bioethanol memiliki hasil samping </span><i style="color: black; font-family: Arial, sans-serif;">vinasse</i><span style="font-family: Arial, sans-serif;"> yang diolah menjadi pupuk hayati cair. Dalam rangka mengetahui efektivitas pupuk hayati tersebut maka diperlukan kerjasama penelitian antara Mitra Tani 27 dan Enero sebagai bentuk sinergi anak perusahaan dibawah PT Perkebunan Nusantara X (PTPN X). Selanjutnya penelitian dilaksanakan untuk mengetahui efektivitas pemupukan Pupuk Hayati enero (PHE) terhadap produksi kedelai edamame.</span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span style="font-family: Arial, sans-serif;"><img alt="" src="/uploads/PHE.jpg" style="float: right; width: 300px; height: 200px;" /></span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="CA" style="font-family: Arial, sans-serif;">Penelitian dilaksanakan di lahan </span><span lang="CA" style="font-family: Arial, sans-serif;">sewa Mitra Tani 27 pada musim tanam 2018 dengan tanaman kedelai edamame dengan varietas EO54. Aplikasi telah dilaksanakan pada bulan Januari &ndash; April 2018, dengan durasi &plusmn; 70 hari.&nbsp; Luas total plot percobaan </span><span lang="CA" style="font-family: &quot;Times New Roman&quot;, serif;">&plusmn;</span><span lang="CA" style="font-family: Arial, sans-serif;"> 0,1 ha. Model penelitian dalam bentuk Rancangan Acak Kelompok (RAK), dimana dicoba berbagai perlakuan antara lain: (1) pupuk terpadu, enero + pupuk anorganik 80% (P1), (2) pupuk terpadu, enero + pupuk anorganik 75% (P2) dan pupuk terpadu, (3) enero up + pupuk anorganik 75% (P3), serta kontrol (perlakuan eksisting). Perlakuan dilakukan dengan 30 ulangan dengan jarak tanam 10 cm x 20 cm dan luas bedengan 10 m x 1 m. Proses pemupukan pada perlakuan dengan cara aplikasi pengocoran dengan dosis 16 liter per bedeng, sedangkan kontrol dengan cara pemupukan pada umumnya dengan ditabur diatas tanah.</span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">Dari hasil penelitian vegetatif dan generatif didapatkan hasil secara umum, pupuk terpadu enero mampu meningkatkan produksi tanaman. Untuk analisa vegetatif, didapatkan hasil yang tidak berbeda nyata antara beragam perlakuan dan kontrol. Sedangkan untuk analisa generatif dan produksi, pupuk terpadu enero + anorganik memberikan rerata produksi sebesar 12.040 kg dibanding pupuk kontrol 10.880 kg. Dengan kata lain produksi meningkat 10,66%. Sedangkan untuk permintaan ekspor, produksi edamame dengan perlakuan pupuk enero + anorganik mencapai 7.108 kg, sedangkan kontrol hanya 5.655 kg. Dengan kata lain produksi ekspor meningkat 25,69%.</span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">Ditinjau dari analisa biaya usaha taninya, terdapat selisih yang signifikan antara perlakuan dan kontrolnya. Pupuk terpadu, enero + anorganik (P3) memiliki analisa biaya produksi per unit kg paling rendah sebesar Rp. 8.267/kg, sedangkan kontrol Rp. 9.702/kg. Terdapat penurunan biaya produksi sebesar 17,36%. Dari hasil tersebut, pemupukan terpadu dengan pupuk enero dan pengurangan dosis pemupukan anorganik dapat dikatakan memberikan dampak yang lebih baik. Untuk tindak lanjut, diperlukan penelitian dalam skala lebih luas yaitu demplot untuk mengetahui perbedaan yang signifikan. (Ariel_Enero, CIN_Sekper)</span></p>\r\n\r\n<p class="MsoNormal" style="margin: 6pt 0cm 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="AF" style="font-size:10.0pt;line-height:115%;font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-ansi-language:AF">Sumber:</span></span><span lang="AF" style="font-size:10.0pt;line-height:115%;font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-ansi-language:AF"><o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="AF" style="font-size:9.0pt;line-height:115%;mso-ansi-language:\r\nAF;mso-fareast-language:IN">Mitra Tani 27, 2018, Jember, Laporan Research &amp; Development, Laporan Penelitian &amp; Pengembangan Bidang: Budidaya: Aplikasi Pupuk enero untuk Meningkatkan Pertumbuhan dan Produksi Edamame</span></span></p>\r\n	0	0	2018-08-27 21:14:20	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sinergi-enero-mitra-tani-27-aplikasi-pupuk-hayati-enero-untuk-peningkatan-produksi-edamame-model-rak
53	A	5 Bagian Waktu, Mindset Membangun Mimpi	<p style="text-align: justify;">Setiap orang pasti menginginkan dirinya untuk menjadi orang sukses dalam hidupnya. Dan untuk menjadi sukses sendiri, membutuhkan kerja keras, modal yang tidak sedikit dan tentunya sistem manajemen waktu yang baik.</p>\r\n\r\n<p style="text-align: justify;">Salah satu hal yang tidak bisa diulang kembali didunia ini adalah waktu. Sehingga anda butuh sistem manajemen waktu yang baik untuk semua agenda harian. Waktu merupakan elemen penting dalam mengakses sebuah impian besar dalam hidup. Jadi anda harus mempunyai sistem manajemen waktu yang professional bila anda ingin benar-benar ingin menjadi orang sukses dimasa depan.</p>\r\n\r\n<p style="text-align: justify;">Gunakan waktu untuk 5 hal, sebagai inspirasi anda untuk membangun sebuah kesuksesan di masa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>1. Take your time to make a small note about your dreams.</strong></p>\r\n\r\n<p style="text-align: justify;">Impian yang besar butuh persiapan yang matang. Anda perlu lebih awal untuk membuat perancangan sistem tentang tujuan anda dimasa yang akan datang. Dengan membuat catatan kecil, berarti anda sudah mempunanyai garis&nbsp;<em>start</em>&nbsp;untuk menuju kesuksesan. Sejatinya pecapaian sukses yang besar berawal dari sebuah mimpi.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/5b837a5b-6984-4b42-add0-10b0e3e14fb4-dream.jpg" style="float: right; width: 300px; height: 175px;" /></p>\r\n\r\n<p style="text-align: justify;"><strong>2.&nbsp;Take your time to visit new places.</strong></p>\r\n\r\n<p style="text-align: justify;">Setiap tempat mempunyai&nbsp;<em>history</em>&nbsp;dan keindahan yang berbeda. Keesotikan sebuah tempat adalah sumber inspirasi yang baik. &nbsp;Dengan mengunjungi banyak tempat, secara perlahan alam akan mengubah arah&nbsp;<em>mindset</em>&nbsp;yang anda miliki. Tentunya ini sangatlah baik untuk perkembangan emosional. Karena emosional yang baik akan mempengaruhi tingkat&nbsp;<em>respect social</em>&nbsp;terhadap hidup anda. Dizaman globalisasi sekarang,&nbsp;<em>respect social</em>&nbsp;menjadi salah satu kunci yang dominan untuk memperoleh kehidupan yang baik. Jika hal itu sudah sudah didapatkan, maka akan mudah membangun akses untuk impian anda dimasa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>3.&nbsp;Take your time to get to know more people.</strong></p>\r\n\r\n<p style="text-align: justify;">Dengan mengenal banyak orang, anda akan mempunyai jaringan yang luas untuk&nbsp;<em>exploring</em>&nbsp;banyak hal. Anda akan lebih mudah untuk mengakses informasi yang anda inginkan. Modal yang besar saja tidak akan cukup bila ingin menciptakan sesuatu yang besar. Anda memerlukan jangakauan informasi yang akurat untuk membangun strategi. Disisih lain, dengan mengenal lebih banyak orang, maka anda akan mempunyai banyak cerita baru untuk menambah semangat membangun mimpi.</p>\r\n\r\n<p style="text-align: justify;"><strong>4.Take your time to write.</strong></p>\r\n\r\n<p style="text-align: justify;">Buatlah tulisan yang menginspirasi banyak orang. Dengan menulis, maka dunia akan mengenalmu lebih baik.</p>\r\n\r\n<p style="text-align: justify;"><strong>5.&nbsp;Take time for your hobby</strong>.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;&rdquo;Pilihlah pekerjaan yang Anda sukai,&nbsp;dan Anda tidak akan perlu&nbsp;bekerja seumur&nbsp;hidup Anda.&rdquo;&nbsp;Kebanyakan dari kita melakukan pekerjaan yang tidak kita sukai. Akibatnya kita terus merasa tertekan dengan pekerjaan dan merasa bahwa pekerjaan kita semakin hari semakin sulit. Jika Anda tidak menginginkan keadaan terjebak pada pilihan yang salah, Anda sebaiknya mulai berjuang untuk pekerjaan yang Anda cintai, bukan pekerjaan yang mau menerima Anda apa adanya. Karena dengan bekerja pada hal yang Anda cintai, Anda tidak akan merasa tertekan. Bahkan Anda seolah merasa dibayar untuk melakukan hobi&rdquo;. Dari kutipan karya&nbsp;&nbsp;<em>Conficius</em>&nbsp;tersebut, maka luangkanlah waktu untuk hobi anda. Bisa jadi hobi anda adalah awal dari impian besar untuk kesuksesan yang sejati. (dnv)</p>\r\n	0	0	2018-08-27 18:13:51	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/5-bagian-waktu-mindset-membangun-mimpi
54	A	6 Tips Menjadi Karyawan Berprestasi Di Perusahaan	<p style="text-align: justify;">Sukses merupakan impian semua orang didunia ini. Sejatinya sukses berawal dari sebuah perubahan diri karena tujuan yang besar. Setiap orang pada dasarnya adalah pemenang kehidupan. Tergantung dari mana anda memulai langkah untuk mewujudkannya. Hidup adalah sebuah perjuangan, sehingga memerlukan modernisasi teori kehidupan agar anda menjadi <em>human renewable.</em>&nbsp; &nbsp;</p>\r\n\r\n<p style="text-align: justify;">Ada sejuta cara untuk menjadi pribadi yang sukses, salah satunya adalah menjadi karyawan berprestasi di perusahaan. Tidaklah mudah menjadi <em>user achievement </em>dalam perusahaan. Anda harus benar-benar mempunyai potensi yang besar untuk <em>survive </em>dalam kurva kompetensi sumber daya manusia perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Ada beberapa tips untuk diri anda, sebagai inspirasi untuk menjadi <em>user achievement </em>diperusahaan:</p>\r\n\r\n<p style="text-align: justify;">1. Maksimalkan <em>Passion </em>yang anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><em>Passion </em>adalah kualitas diri. Hal ini yang akan membuat diri anda berbeda dengan orang lain. Temukan <em>passion </em>terbaik dalam diri anda, karena dengan <em>passion </em>yang hebat akan membuat diri anda lebih berkarakter. &nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;">2. Miliki jiwa yang penuh dengan impian</p>\r\n\r\n<p style="text-align: justify;">Sukses adalah milik seseorang yang mempunyai impian besar dimasa depan. Miliki sejuta impian ditempat perusahaan anda bekerja, hal itu akan membawa pada tujuan terbesar dalam hidup anda.</p>\r\n\r\n<p style="text-align: justify;">3. Bekerjalah dengan penuh keyakinan</p>\r\n\r\n<p style="text-align: justify;">Keyakinan adalah hal paling dasar dalam tingkat emosional. Dengan keyakinan yang kuat anda akan membuat keajaiban dan perubahan yang besar.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/5b83799f-d464-4401-9da9-10b0e3e14fb4-kary_berprestasi.jpg" style="float: right; width: 300px; height: 204px;" /></p>\r\n\r\n<p style="text-align: justify;">4. Jadilah pribadi yang menginspirasi</p>\r\n\r\n<p style="text-align: justify;">Segala sesuatu dalam hidup terjadi sesuai waktu anda dan segalanya terjadi sesuai dengan kecepatan masing-masing. &ldquo;Tidak semua yang diperhitungkan dapat dihitung, dan tidak semua yang bisa dihitung bisa diperhitungkan&rdquo; (Einstein). Anda harus menciptakan hidup yang bermakna, bertujuan dan memberikan inspirasi kebahagiaan bagi semua rekan kerja anda, dan belajarlah cara menggunakannya untuk memberikan pengaruh dan perbedaan buat hidup orang lain, itulah sukses yang sejati.</p>\r\n\r\n<p style="text-align: justify;">5. Tunjukkan kepribadian yang menarik</p>\r\n\r\n<p style="text-align: justify;">Jadilah pribadi yang menyenangkan terhadap rekan kerja anda. Saling memberi motivasi, <em>respect </em>dan saling tolong-menolong. Mempunyai kepribadian yang menarik akan membuat rekan kerja anda nyaman bekerja bersama anda. Secara tidak langsung hal itu akan membuat pekerjaan anda lebih mudah.</p>\r\n\r\n<p style="text-align: justify;">6. Berbagilah cerita tentang pengalaman hidup anda</p>\r\n\r\n<p style="text-align: justify;">Berbagilah cerita tentang perjalanan hidup anda, karena terkadang hanya sekedar dari sebuah cerita, seseorang akan termotivasi untuk melakukan suatu hal baru yang sebelumnya belum mereka coba. Jadilah motivator untuk rekan kerja anda, karena kesuksesan yang besar akan anda dapatkan ketika orang disekeliling anda terinspirasi oleh <em>mindset </em>anda. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: dailysocial.id</p>\r\n	0	0	2018-08-27 18:10:51	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/6-tips-menjadi-karyawan-berprestasi-di-perusahaan
55	A	Seni Profesionalisme Dalam Pekerjaan	<p style="text-align: justify;">Profesionalisme dalam pekerjaan merupakan salah satu seni dalam bekerja. Semua orang bisa melakukan pekerjaan, namun tidak semua orang mampu bekerja secara profesional. Profesionalisme merupakan&nbsp;<em>mindset</em>&nbsp;untuk melakukan sesuatu dengan pemahaman yang luas, teknik <em>modern </em>serta&nbsp;<em>passion</em>&nbsp;terbaik untuk menyelesaikan pekerjaan.</p>\r\n\r\n<p style="text-align: justify;">Dalam dunia kerja, tentunya kompetensi terjadi begitu ketat dan keras. Kompetensi internal sampai tingkat kompetensi individu dalam perusahaan akan&nbsp;profesionalisme menjadi satu hal mutlak yang harus anda miliki jika ingin menjadi yang terbaik ditempat anda bekerja.</p>\r\n\r\n<p style="text-align: justify;">Ada lima prinsip profesionalisme yang mungkin bisa menjadi inspirasi untuk anda dalam pengembangan karir anda diperusahaan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki sains khusus yang menjadikan diri anda berbeda dengan yang lain.</strong></p>\r\n\r\n<p style="text-align: justify;">Jadilah pribadi yang unik,&nbsp;buatlah diri anda mempunyai karakter yang berbeda dengan orang lain. Anda harus lebih aktif menonjolkan bakat yang anda miliki, tunjukkan bahwa diri anda bisa menjadi yang terbaik untuk perusahaan. Yang paling penting adalah buat semua orang mengenal anda melalui bakat yang anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki seni kompetensi yang baru</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam perkembangan dunia kerja di sebuah perusahaan, anda tidak akan terlepas dari aktivitas kompetensi. Buatlah seni kompetensi yang ideal dan proporsional. Bagaimana caranya? Pertama, anda harus mempunyai jiwa inovatif dan kreatif untuk mengendalikan irama kompetensi yang sedang berlangsung. Pandai membaca peluang serta cerdas dalam memberi solusi. Kedua, anda harus mempunyai satu langkah lebih cepat dari rekan kerja anda dalam pengembangan kinerja perusahaan dengan lebih cermat dalam pemilihan gagasan.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/5b8374be-6178-4523-a08d-0f38e3e14fb4-seni.jpg" style="width: 300px; height: 158px; float: right;" /></p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki tujuan yang luas</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam bekerja, miliki tujuan yang luas. Disamping memikirkan target perusahaan, anda harus mempunyai tujuan untuk diri sendiri. &nbsp;Bangunlah sebuah tujuan yang besar untuk mimpi anda di masa depan. Jangan sampai impian dan tujuan hidup anda tergadaikan karena terlalu sibuk membangun mimpi perusahaan orang lain.</p>\r\n\r\n<p style="text-align: justify;"><strong>Berikan sesuatu yang menarik untuk</strong>&nbsp;<em><strong>stakeholder</strong></em></p>\r\n\r\n<p style="text-align: justify;">Adakalanya hidup perlu berbagi, namun berbagi tidak harus dengan nilai materi. Berbagi bisa dilakukan dengan sebuah hasil kinerja yang baik dan karya mampu membuat perusahaan tempat anda bekerja lebih dikenal publik karena sebuah karya atau produk yang menginspirasi.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki</strong>&nbsp;<em><strong>mindset</strong></em>&nbsp;<strong>untuk ikhlas dalam segala aspek kehidupan.</strong></p>\r\n\r\n<p style="text-align: justify;">Ikhlas merupakan&nbsp;<em>power of feeling</em>&nbsp;dalam segala aspek kehidupan. Anda akan mendapatkan segala apa yang anda inginkan apabila anda memiliki rasa penerimaan yang lebih dalam hidup. Lakukan pekerjaan anda dengan penuh rasa keikhlasan, karena sesuatu yang besar berawal dari sebuah ketulusan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: kreativa.co.id</p>\r\n	0	0	2018-08-27 17:54:14	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/seni-profesionalisme-dalam-pekerjaan
59	A	Ethanol 99.5% dari Tetes Tebu	<p style="text-align: justify;">Ethanol merupakan jenis utama dari alkohol yang mempunyai&nbsp; struktur CH<sub>3</sub>CH<sub>2</sub>OH atau sering disingkat C<sub>2</sub>H<sub>5</sub>OH atau C<sub>2</sub>H<sub>6</sub>O. Ada beberapa senyawa alam yang mampu diolah untuk menghasilkan&nbsp;<em>ethanol</em>.&nbsp;Salah satunya&nbsp;dari&nbsp;<em>molasses,</em>&nbsp;yakni sisa pengolahan industri gula.</p>\r\n\r\n<p style="text-align: justify;">PT Energi Agro Nusantara (Enero) merupakan perusahaan energi terbarukan yang mengolah molasses (tetes tebu) menjadi&nbsp;<em>ethanol</em>&nbsp;dengan tingkat kemurnian 99.5%.&nbsp; Pabrik ini dirancang khusus untuk memproduksi&nbsp;<em>ethanol fuel grade</em>&nbsp;dengan kapasitas produksi 100 kl/hari. Pembuatan&nbsp;<em>ethanol</em>&nbsp;di PT Enero melalui tahap propagasi, fermentasi, evaporasi, distilasi dan dehidrasi.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/LT_4.JPG" style="float: right; width: 300px; height: 200px;" /></p>\r\n\r\n<p style="text-align: justify;"><strong>Propagasi</strong>, merupakan proses awal dalam pembuatan&nbsp;<em>ethanol</em>. Dalam tahap propagasi ini, molasses akan&nbsp;melalui proses dilusi serta penambahan Urea dan NPK sebagai nutisi. Kemudian dilakukan&nbsp;<em>inokulasi yeast</em>&nbsp;(ragi) &nbsp;<em>Saccharomyces Cerevisiae.&nbsp;</em></p>\r\n\r\n<p style="text-align: justify;"><strong>Fermentasi</strong>, dalam tahap ini membutuhkan waktu beberapa jam untuk proses respirasi anaerobik.&nbsp; Gula yang terkandung akan diproses menjadi&nbsp;<em>ethanol</em>, karbondioksida dan komponen kimia lainnya.</p>\r\n\r\n<p style="text-align: justify;"><strong>Evaporasi</strong>, setelah proses fermentasi selesai cairan akan dialirkan ke evaporator dengan 4 stage (tahap). Pada evaporator tersebut senyawa&nbsp;<em>ethanol</em>&nbsp;akan menguap dan dialirkan ke kolom distilasi.</p>\r\n\r\n<p style="text-align: justify;"><strong>Distilasi</strong>, Proses distilasi dilakukan untuk memisahkan ethanol dari komponen kimia lainnya yang menjadi&nbsp;<em>impurities</em>&nbsp;(pengotor) berdasarkan titik didihnya, sampai kadar&nbsp;<em>ethanol&nbsp;</em>mencapai 90-92%.</p>\r\n\r\n<p style="text-align: justify;"><strong>Dehidrasi</strong>, setelah kadar mencapai 90-92%, akan dilakukan proses akhir dengan menghilangkan kadar air atau disebut dengan dehidrasi hingga kadar ethanol mencapai 99.5%.</p>\r\n\r\n<p style="text-align: justify;">Ethanol merupakan zat yang mengandung banyak manfaat untuk kehidupan. Untuk penggunaan terbesar saat ini,&nbsp;<em>ethanol</em>&nbsp;dijadikan sebagai&nbsp; energi bahan bakar, kebutuhan medis, serta untuk kebutuhan industri.</p>\r\n\r\n<p style="text-align: justify;">PT Enero akan terus mengembangkan produk&nbsp;<em>bioethanol</em>&nbsp;dalam negeri, mengingat persediaan bahan bakar fosil yang semakin menipis.&nbsp;<em>Bioethanol</em>&nbsp;sendiri merupakan bahan bakar energi terbarukan yang ramah lingkungan,&nbsp;dimana&nbsp;<em>ethanol</em>&nbsp;ini akan menjadikan ketahanan energi yang baik dimasa depan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n	0	0	2018-06-08 16:40:47	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ethanol-995-dari-tetes-tebu
60	A	Eksistensi PTPN X di bidang on Farm melalui Teknologi Foto Udara	<p style="text-align: justify;">Jika kita mempelajari pada peta (<em>google maps</em>) begitu luasnya sebaran areal PTPN X. Sebanyak <u>+</u> 70.000 Ha lahan perkebunan tebu milik petani binaan 10 Pabrik Gula, yang tersebar di 19 Kabupaten, 240 Kecamatan, dan 2.175 Desa.</p>\r\n\r\n<p style="text-align: justify;">Beberapa adopsi teknologi sudah di lakukan PTPN X melalui aplikasi <em>e-farming</em> berbasis GIS yang dapat diakses melalui <em>web</em> maupun <em>mobile</em>. Teknologi ini terus dilakukan pembaruan sampai dengan saat ini. Beberapa fitur pada aplikasi tersebut sudah cukup membantu petugas untuk memverifikasi pendaftaran areal.</p>\r\n\r\n<p style="text-align: justify;">Ada beberapa temuan, salah satunya adalah kondisi sosial ekonomi petani mempengaruhi minat menanam tebu. Jika pendapatan petani meningkat, muncul lahan &ndash; lahan baru yang ditanami tebu dimana sebelumnya merupakan tanaman padi dan palawija. Sebaliknya, jika pendapatan petani menurun, lahan yang semula ditanami tebu beralih komoditi menjadi tanaman lain atau bahkan beralih fungsi menjadi bangunan.</p>\r\n\r\n<p style="text-align: justify;">Melihat realita di atas, tentunya tidak mudah untuk mengelola data lahan secara <em>real</em> dikarenakan sering terjadi perubahan fungsi lahan secara dinamis. Oleh karena itu, dibutuhkan teknologi tepat guna untuk mengetahui kondisi lahan terkini, khususnya berkaitan dengan perubahan tata guna lahan maupun produktivitas tanaman. Teknologi yang saat ini digunakan adalah pengolahan data citra dari hasil foto udara dengan <em>drone</em>.</p>\r\n\r\n<p style="text-align: justify;">Saat ini penggunaan <em>drone</em> sudah banyak dimanfaatkan di kalangan pertanian di Indonesia, termasuk di pabrik gula PTPN X guna membantu dalam hal <em>monitoring</em> lahan, mengingat keterbatasan jangkauan indera penglihatan manusia yang tidak mungkin mencakup kondisi lahan yang sebarannya sangat luas.</p>\r\n\r\n<p style="text-align: justify;">Dengan memanfaatkan<em> drone</em>, satu kali pengamatan/terbang mampu meng-<em>cover</em> areal rata-rata seluas (500 x 500 m) atau 25 Ha secara utuh. Sejauh ini, hasil dari foto udara kemudian diolah dan dianalisis secara <em>tematik</em> apakah ada petak yang beralih komoditi/ beralih fungsi lahan serta untuk melihat homogenitas pertumbuhan tanaman yang digunakan sebagai dasar perkiraan potensi produksi.</p>\r\n\r\n<p><strong><em>Alur pembuatan peta tematik dari data foto udara :</em></strong></p>\r\n\r\n<p><img alt="" src="/uploads/drone_1.JPG" style="width: 657px; height: 487px;" /></p>\r\n\r\n<p><strong><em>Analisis tata guna lahan :</em></strong></p>\r\n\r\n<p><img alt="" src="/uploads/drone_2.JPG" style="width: 624px; height: 298px;" /></p>\r\n\r\n<p><strong><em>Analisis homogenitas pertumbuhan tanaman :</em></strong></p>\r\n\r\n<p><strong><em><img alt="" src="/uploads/drone_3.JPG" style="width: 606px; height: 281px;" /></em></strong></p>\r\n\r\n<p>Sedangkan negara-negara dengan pertanian yang maju seperti Australia telah memanfaatkan teknologi tersebut untuk berbagai hal antara lain pemantauan kesehatan tanaman, penyebaran pias, pemantauan pekerjaan lahan &amp; irigasi, identifikasi gulma dan kesuburan tanah. Hal semacam ini bukan tidak mungkin dapat terealisasi di PTPN X ke depan dengan secara konsisten melakukan <em>update</em> informasi dan inovasi teknologi. (Isda_PG Tjoekir, CIN_Sekper)</p>\r\n	0	0	2018-03-26 18:00:20	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/eksistensi-ptpn-x-di-bidang-on-farm-melalui-teknologi-foto-udara
61	A	Joss Berkat Kompos	<h2><img alt="" src="/uploads/kompos.jpg" style="float: left; width: 300px; height: 187px;" /></h2>\r\n\r\n<p>Kompos merupakan hasil penguraian parsial dari campuran bahan-bahan organik yang dapat dipercepat secara buatan oleh beragam mikroba dalam kondisi lingkungan yang hangat dan lembab. Organisme pengurai atau dekomposer dapat berupa mikroorganisme atau makroorganisme. Sedangkan pengomposan adalah proses dimana bahan organik mengalami penguraian secara biologis, khususnya oleh mikroba-mikroba yang memanfaatkan bahan organik sebagai sumber energi.</p>\r\n\r\n<p>Menurut Kepala Sie Kesuburan Tanah dan Laboratorium Penelitian Tembakau Jember Subagio, kompos berfungsi untuk memperbaiki struktur tanah, mendongkrak kemampuan tanah untuk mempertahankan kandungan air (tanah tidak mudah kering), sumber hara tanaman, media tumbuh untuk tanaman serta memacu pertumbuhan dan perkembangan tanaman.</p>\r\n\r\n<p>&ldquo;Kompos dapat diproses dengan metode aerob (dengan udara) dan anaerob (tanpa udara). Kedua metode tersebut menghasilkan kompos dengan kualitas yang sama, hanya saja bentuk fisiknya sedikit berbeda,&rdquo; ujar penggemar olahraga menembak ini.</p>\r\n\r\n<p>Dalam kaitannya dengan limbah organ tembakau di lahan, lanjut Bagio, semuanya berpeluang dijadikan sebagai bahan baku kompos. Namun yang perlu diingat, kandungan senyawa kimia, ketersediaan bahan, kecepatan diurai oleh dekomposer, serta harga produksi yang terbentuk harus menjadi pertimbangan dan parameter karena akan mempengaruhi kualitas, harga, dan daya saing kompos limbah tembakau yang dihasilkan.</p>\r\n\r\n<p>&ldquo;Silahkan diuji coba, dianalisis., dan dibandingkan. Mana yang akan menjadi primadona: kompos kuncup tembakau, kompos daun tembakau, kompos batang tembakau, atau bahkan kompos akar tembakau?&rdquo; pungkas Bagio. (OPI_Penelitian Tembakau Jember, FIR_Sekper)</p>\r\n	0	0	2018-03-19 21:02:34	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/joss-berkat-kompos
62	A	BBN Masih Jalan di Tempat	<p><img alt="" src="/uploads/enero_pabrik_1.jpg" style="width: 300px; height: 186px;" /></p>\r\n\r\n<p>Realisasi Bahan Bakar Nabati (BBN) untuk tahun ini masih jalan di tempat. Rencana pemasaran, PT Energi Agro Nusantara selaku produsen <em>ethanol</em> untuk BBN masih didominasi kebutuhan <em>raw ethanol</em> untuk industri. Hal ini diungkapkan Dimas Eko Prasetyo, Direktur PT Energi Agro Nusantara kemarin (7/6) pada saat ditemui di Main Office PT Energi Agro Nusantara, Mojokerto.</p>\r\n\r\n<p>&ldquo;Rencana produksi kami lebih diarahkan pada <em>raw ethanol</em> untuk pasar industri, sementara permintaan ethanol untuk BBN masih nihil&rdquo; ujar Dimas</p>\r\n\r\n<p>Hal ini sangat disayangkan karena konsumsi BBN sudah menjadi mandatori dari Pemerintah. Sebagaimana tercantum dalam kebijakan pemerintah yaitu UU No. 30 Tahun 2007 tentang Energi dimana Badan Usaha diwajibkan untuk menggunakan BBN sebagai energi baru terbarukan. Selain itu aturan turunan lainnya sudah ada seperti PP, Kepres sampai Permen.</p>\r\n\r\n<p>Terakhir kali <em>ethanol</em> untuk BBN digunakan pada tahun lalu oleh Pertamina namun porsinya sangat kecil sekitar 8.000 liter untuk Pertamax Racing. Sedangkan kapasitas produksi dari PT Energi Agro Nusantara saja mencapai 100 Kl per hari atau 100.000 liter <em>ethanol</em> per hari.</p>\r\n\r\n<p>Perkembangan terakhir, aplikasi BBN terkendala pada fasilitas <em>blending</em> (pencampuran) <em>ethanol</em> dengan Bahan Bakar Minyak (BBM) untuk dijadikan BBN. Fasilitas tersebut sudah dipenuhi oleh PT Pertamina di Surabaya, Ujung Berung dan Balongan. Sedangkan badan usaha lainnya masih dalam tahap pembangunan sarana fasilitas<em> blending</em>.</p>\r\n\r\n<p>Selama ini badan usaha pembeli BBN memang masih mencampur <em>bioethanol </em>secara bersama dalam tangki <em>comingle system</em> atau tangki dengan beberapa kepemilikan. Kondisi seperti ini tidak dipersyaratkan oleh pemerintah, sehingga tiap badan usaha diminta membangun fasilitas blending sendiri-sendiri.</p>\r\n\r\n<p>Melihat kondisi aktual tersebut, PT Energi Agro Nusantara saat ini masih menunggu pengadaan bioethanol untuk BBN yang direncanakan Pertamina bulan Mei lalu dan pengadaan ethanol dari badan usaha lainnya. Berdasarkan rapat implementasi mandatori bioethanol Februari lalu, Kebutuhan ethanol untuk BBN sebesar 2% dengan rincian PT Pertamina (Persero) sekitar 47.567 Kl/tahun, PT Shell indonesia 9.500 Kl/tahun, PT Total Oil Indonesia sekitar 700 Kl/tahun dan PT NEPI sekitar 120 Kl/tahun dan PT AKR 1000 Kl/tahun.</p>\r\n\r\n<p>&ldquo;Jika program mandatori tetap terealisasi maka ini menjadi kabar baik baik bagi kami, namun demikian kami tetap mencari peluang pasar lainnya untuk keberlangsungan perusahaan&rdquo; lanjut Dimas</p>\r\n\r\n<p>Pada tahun ini, PT Energi Agro Nusantara menargetkan produksi <em>ethanol</em> sebesar 13.350 Kl dengan waktu produksi dimulai bulan Juni lalu sampai Desember. Selain PT Energi Agro Nusantara, produsen <em>ethanol</em> lainnya yang masih eksis antara lain Molindo Raya, Indo Acidatama, Indonesia Ethanol Industry, Ethanol Ceria Abadi dan PT Madubaru. Total kapasitas produsen ethanol tersebut mampu menyuplai 212.200 Kl per tahun. Sedangkan kebutuhan BBN 1% saja dari total BBM telah mencapai 300.000 KL. Sehingga usaha ini masih prospektif karena suplai ethanol untuk BBN masih kurang dari kebutuhan BBN nasional.</p>\r\n\r\n<p>Seperti kita ketahui bersama BBN dari <em>ethanol</em> yang dicampur dengan BBM adalah program pemerintah terkait energi terbarukan yang sangat diharapkan untuk mengurangi ketergantungan konsumsi BBM murni. Di negara-negara sekitar seperti Thailand dan Filipina, sudah menggunakan BBN sebagai kebutuhan bahan bakar kendaraan mereka. Perhatian terhadap penggunaan BBN semakin meningkat dari tahun ke tahun. Dari tahun 2015 sampai 2016 saja, kebutuhan BBN di regional asia dan Oceania meningkat 12% dan diprediksi terus meningkat dari tahun ke tahun seiring dengan pemahaman pentingnya BBN untuk kelangsungan energi jangka panjang &nbsp;(ARH_Enero, FIR_Sekper).</p>\r\n	0	0	2017-07-17 16:33:10	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/bbn-masih-jalan-di-tempat
63	A	Pemanfaatan Vinasse sebagai Pupuk Hayati Cair	<p><img alt="" src="/uploads/vinasse_ariel.jpg" style="float: left; width: 300px; height: 200px;" /></p>\r\n\r\n<p>Vinasse, biasa juga disebut sebagai <em>stillage</em> merupakan hasil samping akhir dari proses pengolahan ethanol. Sebelum dihasilkan vinasse hasil samping lainnya dapat dimanfaatkan sebagai diversifikasi proses ethanol seperti <em>yeast</em> <em>mud</em>, biogas, CO<sub>2</sub> dll. Penampakan <em>vinasse</em> berupa cairan kecoklatan dengan massa jenis lebih besar daripada air atau sekitar 1,042 g/cm<sup>3</sup><strong>. </strong>Menurut Meeyer (2013), di beberapa negara, vinasse mengandung nutrisi tinggi terutama potasium dan baik digunakan sebagai pupuk.&nbsp;</p>\r\n\r\n<p>Komposisi Vinasse</p>\r\n\r\n<p>Komposisi vinasse bergantung pada bahan baku proses ethanol, model pengolahan ethanol bahkan pemanfaatan hasil samping lainnya. Namun, sebagian besar vinasse bersifat organik karena bahan baku dan pembantunya juga berasal dari bahan organik. Kandungan vinasse (berbahan baku molasses), sebagai contoh studi di Brazil yaitu unsur-unsur makro dan mikro N, P, K, Ca Mg dan S yang nilainya berkisar dari 0,04-6,5 g/L, serta pH kisaran 4-5. Sedangkan kandungan vinasse di Kolombia berupa N, P, K, Ca Mg dan S berkisar dari 0,01-3,52 g/L, serta pH sekitar 5. Sedangkan karakteristik vinasse dari pengolahan ethanol di PT Energi Agro Nusantara, kandungan unsur-unsur makro sudah berkurang dikarenakan telah terpakai dalam proses biomethanasi yang merubah material organik menjadi energi dalam bentuk biogas. Walaupun demikian vinasse masih menjadi media yang baik karena sifatnya yang organik dan pH-nya yang netral.</p>\r\n\r\n<p><strong>Pemanfaatan Vinasse sebagai Pupuk Hayati Cair</strong></p>\r\n\r\n<p>Dikarenakan sifatnya yang organik, vinasse baik diaplikasikan di tanah. Di negara-negara maju seperti Brazil, vinasse dimanfaatkan langsung sebagai irigasi tanaman. Vinasse berfungsi sebagai pengganti air dan pembenah tanah. Melalui saluran air sepanjang 25 km, vinasse dialirkan ke lahan-lahan tebu. Alternatif lainnya diaplikasikan melalui truk tangki. Sedangkan di PT Energi Agro Nusantara, vinasse diolah terlebih dahulu dengan mikroba fungsional dalam bentuk konsorsium untuk menambah kemanfaatannya. Hasil akhirnya berupa pupuk hayati cair. Aplikasi yang saat ini dilakukan dengan pengisian pupuk hayati cair ke truk tangki dengan kapasitas 5.000-40.000 liter. Dosis bervariasi bergantung pada jenis tanaman, tanah dan keperuntukannya. Biasanya berkisar dari 15.000 liter-200.000 liter per ha. Aplikasi baik dilakukan pada tanaman tebu dan tanaman sejenis, dikarenakan karakteristiknya yang membutuhkan asupan air dalam jumlah besar. Sedangkan bagi tanah, akan membantu membenah unsur-unsur dalam tanah.</p>\r\n\r\n<p>Spesifikasi vinasse sebagai pupuk hayati cair pada intinya sebagai pembenah tanah. Kandungan mikroba pada pupuk akan bekerja sebagai penambat N dan pelarut P dalam tanah. Ragam mikroba antara lain <em>Azospirilum</em> sp., <em>Azetobacter</em> sp., <em>Bacillus</em> sp., <em>Pseudomonas</em> sp. dll.</p>\r\n\r\n<p>Dalam proses penambatan unsur N, tumbuhan tidak dapat memanfaatkan unsur N secara bebas sehingga perlu diubah terlebih dahulu melalui bantuan mikroba fungsional menjadi senyawa organik yang dibutuhkan tumbuhan. Sebagai contoh pada tanaman kacang-kacangan (Leguminosae), mikroba akan membentuk benjolan pada akar dan dibantu enzim nitrogenase yang akan menambat N langsung dari udara. Selanjutnya N dirubah menjadi N organik seperti polipepida dan asam amino.</p>\r\n\r\n<p>Dalam proses pelarutan unsur P, tanaman dibantu mikroba pelarut P. Dalam tanah, P masih terikat dengan unsur lainnya, sehingga perlu dilepaskan mikroba supaya dapat dikonsumsi oleh tanaman.</p>\r\n\r\n<p><strong>Dampak Pupuk Hayati Cair berbahan baku Vinasse bagi Tanah </strong></p>\r\n\r\n<p>Berdasarkan penelitian Penatti (2005), aplikasi vinasse tanpa perlakuan apapun saja dapat meningkatkan konsentrasi K di dalam tanah. Beberapa unsur makro lain juga meningkat seperti N, P Ca, Mg dan S serta unsur-unsur mikro lainnya. Karena sifatyna yang organik, maka akan membantu meningkatkan senyawa organik dalam tanah dan membantu memperbaiki struktur tanah, peningkatan kapasitas tukar kation serta memberi ketahanan terhadap air. Sedangkan dampaknya bagi tanaman, vinasse akan membantu perbaikan akar tanaman.</p>\r\n\r\n<p>Pada demplot yang dilakukan di lahan tebu HGU PG Pesantren Baru dan lahan TS PG Gempolkrep, aplikasi pupuk hayati berbahan baku vinasse menunjukkan hasil yang positif. Sebagai contoh pada kebun HGU, formula pupuk hayati cair sebanyak 50.000 liter/ha dan pupuk anorganik 100% akan meningkatkan jumlah batang per juring 108a cm dan tinggi batang 278a cm dibanding hanya menggunakan pupuk organik dimana jumlah batang per juring hanya mencapai &nbsp;76a cm dan tinggi batang 249a cm. Adapun untuk diameter tidak berbeda secara signifikan. Hasil eksperimen lainnya, pencampuran pupuk hayati dengan pupuk anorganik menunjukkan hasil lebih baik dibanding jika hanya dipupuk anorganik saja.</p>\r\n\r\n<p>Berdasarkan pada penjelasan diatas, secara umum dapat disimpulkan aplikasi pupuk hayati cair direkomendasikan bagi tanaman tebu. Kondisi tanah diharapkan kembali subur secara bertahap, dengan penambahan mikroba fungsional di dalam tanah yang akan membantu mengembalikan unsur-unsur makro dan mikro yang dibutuhkan tanah. Dalam jangka panjang. (Ariel Hidayat_Enero, FIR_Sekper)</p>\r\n\r\n<p><strong>Sumber: </strong></p>\r\n\r\n<p>Penatti CP., De Araujo JV., Donzelli JL, De Souza SAV., Forti JA., and Ribeiro R., 2005: <em>Vinasse &ndash; a liquid fertilizer. </em>Proc. Int. Soc. Sugar Cane Technol.</p>\r\n\r\n<p>Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens KG</p>\r\n	0	0	2017-06-12 16:31:30	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pemanfaatan-vinasse-sebagai-pupuk-hayati-cair
64	A	Pengembangan dan Energy Balance Ethanol di Brazil	<p><img alt="" src="/uploads/bioethanol_brazil.jpg" style="width: 300px; height: 200px;" /></p>\r\n\r\n<p>Perkembangan bioethanol di Brazil menjadi tolok ukur kesuksesan industri ethanol&nbsp;dunia. Sebagai <em>role model,</em> informasi pengembangan ethanol di Brazil perlu diketahui bersama terlebih fungsinya untuk campuran bahan bakar konvensional atau fosil. Selain itu, perlu diketahui juga keefektifan pemanfaatan ethanol dari <em>energy balance</em>-nya.</p>\r\n\r\n<p><strong>Perkembangan Industri Gula di Brazil</strong></p>\r\n\r\n<p>Sumber biomassa terbesar di Brazil adalah tanaman tebu dan residu hasil hutan. Industri gula di Brazil sudah ada sejak negara tersebut dibentuk. Berawal dari produksi secara tradisional dan berkembang sejak tahun 1930, ketika Get&uacute;lio Vargas, presiden Brazil saat itu, membentuk The Sugar and Alcohol Institute (IAA). Namun, perubahan drastis terjadi ketika Pemerintah Brazil menetapkan Pro&aacute;lcool (Program Alkohol Nasional) pada tahun 1970-an dan selanjutnya industri gula disana berkembang secara masif.</p>\r\n\r\n<p>Saat ini, Brazil adalah produsen tebu terbesar di dunia yang menyuplai 25% produksi tebu dunia, 13,5% produksi gula dunia dan 55% produksi ethanol dunia. Penanaman tebu mencapai 5 juta ha. Produksi tebu mencapai 340 juta, 25&nbsp; juta gula dan lebih dari 14 miliar liter ethanol. Sedangkan, industri ethanol sendiri telah menyediakan Bahan Bakar Nabati (BBN) untuk 4 juta kendaraan. Industri gula dan ethanol telah menghasilkan 12 miliar dollar atau setara 156 triliun rupiah dan menciptakan 600.000 jenis aktivitas pekerjaan yang terkait. Hampir seluruh penanaman tebu disana didedikasikan untuk produksi ethanol.</p>\r\n\r\n<p><strong>Ethanol sebagai Bahan Bakar </strong></p>\r\n\r\n<p>Khusus untuk ethanol, sebagai bahan bakar kendaraan, kualitasnya jauh lebih baik dari bahan bakar konvensional atau fosil. Ethanol memiliki <em>oxygen</em> <em>content</em> tinggi, tingkat pembakaran sempurna, meningkatkan performa mesin dan mengurangi emisi karbon.&nbsp; Berdasar pada Brazilian <em>Development Bank&nbsp;and Centre for Strategic Studies and Management Science, Technology and Innovation</em> (BNDES), penggunaan bioethanol di Brazil dimulai sejak 1931. Dengan tujuan mengurangi konsumsi BBM dengan pemanfaatan diversifikasi produk gula.</p>\r\n\r\n<p>Dimulai dari pencampuran ethanol 5% pada bahan bakar fosil, selanjutnya Pro&aacute;lcool menetapkan konsumsi untuk 3 miliar liter bioethanol dan memberikan insentif untuk pengembangan produksi dan konsumsi bioethanol di Brazil. Sebagai suatu program, melalui Pro&aacute;lcool Pemerintah Brazil mengambil kebijakan:</p>\r\n\r\n<ol>\r\n\t<li>Tiap tahunnya penggunaan ethanol pada BBM harus meningkat secara bertahap</li>\r\n\t<li>Penetapan harga terjangkau bagi konsumen dan bersaing dengan harga bahan bakar fosil</li>\r\n\t<li>Penjaminan harga kompetitif bagi produsen ethanol dalam bentuk subsidi</li>\r\n\t<li>Penyediaan kredit dengan berbagai tingkatan untuk pabrik gula dengan tujuan&nbsp; meningkatkan kapasitas produksi</li>\r\n\t<li>Pengurangan pajak kendaraan berbahan bakar ethanol, mewajibkan ketersediaan ethanol di tiap-tiap POM Bensin, memonitoring stok ethanol untuk memastikan suplai ethanol selalu terpenuhi</li>\r\n</ol>\r\n\r\n<p>Perkembangan program yang baik diikuti pula beberapa inovasi seperti kehadiran <em>flex</em> <em>vehicles</em> (kendaraan berbahan bakar campuran ethanol dan atau bahan bakar fosil). Teknologi ini diterima sangat luar biasa oleh masyarakat di Brazil dan menstimulasi <em>industri</em> <em>fuel</em> <em>ethanol</em> untuk berkembang pesat. Puncak perkembangan terlihat pada tahun 2009 saja, dimana industri gula di Brazil berhasil memproduksi 25 juta m<sup>3</sup> ethanol.</p>\r\n\r\n<p><strong>Energy Balance</strong></p>\r\n\r\n<p>Sedangkan dilihat dari efisiensinya, perlu diperhatikan <em>Energy</em> <em>Balance</em> dari penggunaan ethanol. Energy Balance atau kesetimbangan energi, biasanya dipresentasikan oleh <em>Net Energy Ratio</em> (NER), dimana hasil dari energi terbarukan dari biofuel dan produk sampingnya dibagi dengan input dari energi konvensional (fosil) dalam seluruh rangkaian rantai produksi. NER memberikan indikasi yang baik atas kapasitas dari biofuel dalam mengurangi ketergantungan energi fosil. Kesetimbangan energi ethanol di Brazil sudah dianalisa sejak tahun 1980-an dan di-<em>update </em>pada tahun 2006 dengan hasil sebagai berikut:</p>\r\n\r\n<ul>\r\n\t<li>Produksi dan transportasi tebu: 210,2 MJ/ton tebu</li>\r\n\t<li>Pengolahan menjadi ethanol: 23,6 MJ/ton tebu</li>\r\n\t<li>Input energi fosil atas poin a dan b: 233,8 MJ/ton tebu</li>\r\n\t<li>Energi terbarukan yang dihasilkan atas poin a dan b: 2185,2 MJ/ton tebu</li>\r\n\t<li>Energi dari ethanol yang dihasilkan: 1.926,4 MJ/ton tebu</li>\r\n\t<li>Surplus ampas tebu: 176 MJ/ton tebu</li>\r\n\t<li>Surplus listrik: 82,8 MJ/ ton tebu</li>\r\n\t<li>NER (<em>Renewable</em> <em>output</em>: ethanol + ampas tebu)/input energi fosil 9 MJ/ton tebu</li>\r\n\t<li>NER (<em>Renewable</em> <em>output</em>: ethanol + ampas tebu + listrik)/input energi fosil 9,3 MJ/ton tebu</li>\r\n</ul>\r\n\r\n<p>Dapat diartikan rasio nilai energi dari ethanol dan surplus ampas tebu adalah 9 kali lebih besar dari input energi fosil, apabila ethanol, surplus ampas tebu ditambahkan dengan surplus listrik maka nilai energi dari pengolahan ethanol dan produk samping adalah 9,3 kali lebih besar dari yang dihasilkan oleh input energi fosil.</p>\r\n\r\n<p>Bahkan menurut Peter Zuuber dalam buku <em>Sugarcane Ethanol, contributions to climate change mitigation and environment</em>, pengembangan industri ethanol secara konsisten, akan memberikan energi rasio 12 kali lebih baik daripada energi fosil. Selain lebih baik, ethanol juga ramah lingkungan, seperti dilansir dari penelitian BNDES, ethanol mengurangi 90% emisi atas efek rumah kaca, berkontribusi dalam mitigasi perubahan iklim dan setiap m<sup>3</sup> ethanol yang dicampur dengan BBM akan mengurangi 1,9 mn t CO2 yang merusak atmosfer.</p>\r\n\r\n<p>Dari bahasan di atas, Indonesia sudah selayaknya berkaca pada Brazil atas pengembangan ethanol. Jika sumber, sarana prasarana, kebijakan sudah tersedia, hanyalah konsistensi yang dibutuhkan saat ini. (ARH_Enero, FIR_Sekper)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sumber: </strong></p>\r\n\r\n<p>Zuuber P., van de Vooren J., 2008: <em>Sugarcane Ethanol, contributions to climate change mitigation and environment, </em>Wageningen Academic Publishers</p>\r\n\r\n<p>Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens KG</p>\r\n	0	0	2017-04-19 15:53:40	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pengembangan-dan-energy-balance-ethanol-di-brazil
65	A	Cara Mudah Menjadi Penulis Artikel Dan Berita Dengan Kecerdasan Buatan	<p><img alt="" src="/uploads/konten_writer_2.png" style="width: 300px; height: 224px;" /></p>\r\n\r\n<p>Di modernisasi global saat ini, dimana teknologi informasi semakin maju khususnya dipengelolaan konten <em>website</em> perusahaan. Disamping didukung oleh desain dan tema web yang <em>elegant</em>, harus didukung pula dengan <em>konten</em> <em>writer</em> handal yang mempunyai jiwa kreatif dan inovatif. Pada dasarnya nyawa kehidupan dari sebuah konten <em>website</em> adalah artikel dan berita yang menarik pembaca. <em>Konten writer</em> sebagai salah satu strategi yang paling efisien sebagai sarana pemasaran produk-produk perusahaan dan sebagai <em>public relation. </em>Disinilah sebenarnya yang menjadi <em>key success</em> dari beranda sistem manajemen pemasaran.</p>\r\n\r\n<p>Tentunya perlu sedikit biaya yang mahal bila perusahaan menggunakan jasa <em>content writer.</em> Disini saya akan memberikan tips bagaimana cara mudah menjadi seorang <em>konten writer </em>profesional, sehingga semua staf perusahaan mempunyai keinginan bisa menjadi <em>konten writer</em> yang nantinya bisa memberikan kontribusi maksimal untuk menuangkan idenya berupa tulisan-tulisan (artikel dan berita) menarik untuk mengisi konten <em>website</em> diperusahaan. Dengan <em>konten writer </em>yang handal, sebuah perusahaan akan lebih memiliki nilai seni dan citra filosofi.</p>\r\n\r\n<p>Begitu banyak orang yang ingin menjadi penulis namun akhirnya memutuskan aktifitas menulisnya dengan alasan tidak ada inspirasi. Bagaimana caranya menjadi penulis <em>konten writer </em>yang disukai banyak orang?. Sebetulnya menjadi seorang penulis itu tidaklah rumit dan saya yakin bahwa semua orang bisa menulis. Asal ada pemahaman niat yang baik atas apa yang anda tuliskan. Seni menulis itu soal <em>passion. </em>Jika ingin memutuskan untuk menjadi seorang penulis, maka menulislah tanpa ada rasa bosan. Sesibuk apapun aktifitas yang anda kerjakan, sempatkanlah menulis walau hanya sebatas catatan kecil. Teruslah melangkah mencari tempat-tempat sebagai sumber inspirasi.</p>\r\n\r\n<p><img alt="" src="/uploads/konten_writer.jpg" style="width: 300px; height: 200px; float: right;" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ada beberapa cara yang harus anda lakukan agar bisa menjadi seorang penulis <em>konten writer</em>, dalam artian sebagai cara mudah menulis artikel dan berita yang baik dengan kecerdasan buatan. Kecerdasan buatan adalah sebuah rekayasa perasaan yang sengaja saya kembangkan dalam diri seseorang dengan tujuan membuat seseorang menjadi lebih pintar, memahami apa itu kecerdasan dan membuat pemikiran lebih hidup dalam kejeniusan. Berikut adalah teknik kecerdasan buatan yang saya buat sebagai media untuk merekayasa pemikiran dan perasaaan untuk memudahkan seseorang menemukan <em>passion </em>menulis menuju <em>konten writer </em>professional diperusahaan. Dimana nanti seseorang akan mudah dalam melakukan aktifitas menulis artikel dan berita secara kreatif.</p>\r\n\r\n<p><em>1. Power of feeling </em></p>\r\n\r\n<p>Tidak dapat dipungkiri bahwa semua sumber kekuatan untuk menulis adalah dari kekuatan perasaan. Semua penulis harus mempunyai ketenangan jiwa yang dalam untuk menulis sebuah tulisan menarik. Maka dari itu asah kemampuan kuatnya perasaan anda dengan cara lebih banyak membuka diri untuk bersahabat dan menerima cerita keluh kesah dari orang lain (mudah berbagi). Tanpa sadar anda akan memiliki kekuatan perasaan yang kuat. Inilah yang nantinya akan menjadi <em>power of positive feeling.</em></p>\r\n\r\n<p><em>2. Do a long trip</em></p>\r\n\r\n<p>Setiap tempat sejatinya memiliki sebuah cerita tersendiri. Kunjungilah tempat-tempat yang jauh dan bersejarah dikehidupan anda, disitulah nanti anda akan menemukan inspirasi yang baik untuk membantu menyelsaikan <em>project</em> tulisan-tulisan anda dengan mudah. Jangan menutup diri dari dunia jika ingin menjadi seorang penulis.</p>\r\n\r\n<p>Hakikatnya inspirasi hanya milik alam semesta dan mengalir melalui emosional. Suasana alam yang tenang dan damai akan mengantarkanmu ke dalam dunia menulis. Percayalah, semakin banyak anda mengunjungi suatu tempat maka anda akan cinderung mempunyai kebiasaan yang kuat untuk mengabadikan kenangan itu dalam cerita catatan kecil. Inilah awal bahwa anda akan terbiasa menulis.</p>\r\n\r\n<p><em>3. Along with people</em></p>\r\n\r\n<p>Kunjungilah tempat dimana banyak orang yang mempunyai hobi seni menulis. Lakukan pendekatan emosional yang nantinya mereka akan berbagi pengalaman hidup. Disinilah yang menjadi <em>point &nbsp;</em>penting, karena anda akan mendapatkan sumber-sumber inspirasi yang hebat untuk merangsang keinginan aktifitas menulis. Jika anda berteman dengan seorang penulis, anda akan menerima dorongan yang positif. Mereka cenderung mengajak anda ke dalam aktifitas yang mereka sukai. Secara tidak langsung perasaan pola fikir anda akan terbawa kedalam dunia mereka. Tanpa disadari perlahan anda akan menjadi seorang penulis.</p>\r\n\r\n<p><em>4. Cultivate a sense of love to read</em></p>\r\n\r\n<p>Membaca adalah <em>window of the world.</em> Perbanyaklah membaca karena itu adalah langkah awal untuk menyatu dengan dunia ini. Kanvas alam akan memberikan cerita yang menarik untuk anda tulis. Maka membacalah sebanyak mungkin karena dengan itu anda akan lebih memiliki kosa kata yang luas untuk membentuk tulisan-tulisan yang ideal. Dengan banyak membaca maka fikiran dan perasaan seseorang akan bergejolak. Ia &nbsp;merasa terhipnoterapi dan terangsang untuk meniru atas apa yang dibaca. Rangsangan inilah yang nantinya menumbuhkan <em>passion</em> menulis dalam jiwa seseorang.</p>\r\n\r\n<p><em>5. Deepen the side and around the information technology</em></p>\r\n\r\n<p>Hidup dijaman sekarang tidak lepas dari teknologi informasi. Sebelum anda memulai menulis, pastikan dulu anda sudah mengetahui apa saja atau hal-hal yang menjadi <em>trending topic </em>ter-<em>update </em>didunia informasi. Nantinya itu bisa membantu mempermudah dalam menyajikan tulisan yang ingin anda tulis. <em>Enter and live in the world of information</em>. Bila punya lebih waktu luang, tidak ada salahnya nongkronglah didunia <em>online</em> sedikit lebih lama. Banyak sekali kisah-kisah inspiratif yang akan membantu anda melangkah untuk perubahan. Dunia seakan ada dalam genggaman. Disitulah nanti seseorang akan menemukan rahasia jati diri untuk memulai goresan pena dalam kanvas seni menulis. &nbsp;Dalam konsep ini, akan ada sesuatu yang berbeda dalam diri seseorang, ia akan lebih mempunyai keinginan yang kuat menulis untuk dunia.</p>\r\n\r\n<p>Itulah lima tips yang perlu anda coba dan lakukan bila ingin menjadi seorang c<em>ontent writer.</em> &nbsp;Konsep itu akan membantu anda untuk menemukan <em>passion</em> bagaimana cara menulis artikel dan berita dengan mudah. Menulis hanya mampu dilakukan oleh seseorang yang mempunyai jiwa yang baik dan mepunyai kekuatan perasaan yang kuat. Maka metode kecerdasan buatan yang saya tulis ini diharapkan mampu merekayasa perasaan untuk menciptakan <em>power of feeling</em> &nbsp;dan membuat revolusi cara menulis. (M. Dhanavia_Enero, FIR_Sekper)</p>\r\n\r\n<p align="right"><em>Dengan menulis</em>, <em>dunia akan mengenalmu lebih baik (dhanavia)</em></p>\r\n	0	0	2017-03-22 17:19:35	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/cara-mudah-menjadi-penulis-artikel-dan-berita-dengan-kecerdasan-buatan
66	A	The Power of Positive Feeling: Hati Yang Ikhlas, Untuk Dunia Tanpa Batas	<p align="center">&nbsp;</p>\r\n\r\n<p align="center"><img alt="" src="/uploads/ikhlas.jpg" style="width: 300px; height: 150px; float: left;" /></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Mungkin di luar sana banyak orang yang menganggap bahwa kekuatan perasaan dalam hati itu hanya sesuatu yang <em>non-primary issue</em>. Percaya atau tidak, jangan meremehkan tentang hal ini, karena pada dasarnya kekuatan perasaan dalam hati itu kekuatanya 5.000 kali kekuatan pikiran.</span></pre>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>The power of positive feeling</em>, salah satunya adalah ikhlas. Ada apa dengan ikhlas? Dunia ini adalah tempat kesedihan sehingga Tuhan menciptkan ikhlas dalam hati manusia yang bertujuan untuk mengkalibrasi emosional di kala kehidupan sedang terpuruk. Perasaan dalam hati merupakan sebuah indikator penting bagaimana keadaan emosional dalam diri kita, apakah positif atau negatif. Dengan <em>the power of positive feeling </em>otomatis <em>positive thinking</em> akan mengikuti. Dan apabila keduanya bersinergi hasilnya akan sangat luar biasa. Perasaan dalam hati akan didominasi oleh kebaikan tanpa batas.</span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Kenapa hidup itu perlu yang namanya ikhlas? Dunia ini sangatlah luas. Hamparan samudera, langit, dan dataran itulah sebuah penciptaan mahakarya Tuhan yang luar biasa. Di balik keindahan itu semua, Tuhan juga menciptakan kegelisahan, kesedihan dan hal yang buruk lainya. Semuanya itu terkonsep dalam satuan yang dinamakan takdir. Disinilah ikhlas akan bekerja maksimal bagi seseorang yang berfikir.</span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>Bahwa hidup harus menerima, penerimaan yang indah. Bahwa hidup harus dimengerti, pengertian yang benar. Bahwa hidup harus memahami pemahaman yang tulus. Lihatlah daun yang jatuh tak pernah membenci angin. Dia membiarkan dirinya jatuh begitu saja. Tak melawan. Mengikhlaskan semuanya (Tere Liye).</em></span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Apa hubungannya ikhlas dengan dunia tanpa batas? Dari contoh konsep <em>positive feeling </em>yang dibuat oleh Tere Liye tersebut, kunci pemahaman dalam konteks dunia yang tanpa batas ini adalah sejauh mana diri ini mengenal apa itu keikhlasan hidup. Yang artinya, bila seseorang hatinya sudah menguasai rasa ikhlas, maka dialah orang yang termasuk dari golongan yang beruntung. Hanya orang yang ikhlas saja yang mampu menterjemahkan apa saja yang ada di dunia ini. Disamping itu bahwa orang yang hatinya sudah tertanam rasa ikhlas, ia akan mampu menggenggam dunia beserta isinya ini dalam pandangan mata dan lingkupan kedua tangannya.</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Ada suatu keindahan yang didapatkan oleh seseorang yang berhasil menanamkan rasa ikhlas di dalam dirinya. Hal itu dirangkum dalam <em>four advantage in the world.</em></span></pre>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>1. Get to know the world more</em> (Bisa mengenal dunia lebih jauh)</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">2.&nbsp;<em>Know the meaning of real success</em> (Bisa mengetahui arti sukses yang sejati)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">3.&nbsp;<em>Get to know what the true meaning of happiness (</em>Bisa mengenal apa arti kebahagiaan yang sesungguhnya)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">4.&nbsp;<em>Accept</em><em>ing</em><em> destiny</em><em> easily</em> (Mudah menerima takdir)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Hidup ini adalah tentang belajar. Sejauh mana hati bisa memaknai ketulusan, disitulah keindahan hidup akan kita rasakan. Sejauh mana mata memandang, disitulah awal dunia yang baru. Dan sejauh mana kita mengenal keikhlasan, disitulah Tuhan akan memberi kenikmatan yang besar. (Moh Dhanavia_Enero, FIR_Sekper)</span></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Sumber:</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;"><em>The power of positive feeling:</em> Presentasi pada sharing session oleh Dimaz Anandito</span></pre>\r\n	0	0	2017-03-08 16:42:34	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/the-power-of-positive-feeling-hati-yang-ikhlas-untuk-dunia-tanpa-batas
67	A	Leadership Adalah Tentang Persetujuan Dari Yang Dipimpin	<p><img alt="" src="/uploads/gaya-kepemimpinan-dalam-organisasi1.jpg" style="width: 300px; height: 236px; float: right;" /></p>\r\n\r\n<p>Leadership membutuhkan persetujuan dari bawahan sebagai sosok yang dipimpin. Mengapa demikian?&nbsp; Tanpa adanya persetujuan dari yang dipimpin, maka seorang pemimpin akan mendapatkan kesulitan dalam mengarahkan bawahannya. Sehingga mengakibatkan program yang sudah dicanangkan tidak dapat berjalan dengan baik.</p>\r\n\r\n<p>Karena itu seorang pemimpin harus dapat menunjukkan ke bawahannya, bahwa mereka adalah sosok yang pantas untuk memimpin dan memberi arahan untuk menuju arah yang lebih baik lagi.</p>\r\n\r\n<p>Seorang bawahan membutuhkan <em>role model</em> yang tepat dalam menjalankan pekerjaannya. Dan itu harus mereka dapatkan dari sosok pemimpinnya. Jika seorang pemimpin tidak dapat menjadi <em>role model </em>yang baik, bisa dipastikan bawahannya tidak akan patuh 100%. Mereka akan memiliki anggapan, &quot;<em>lha wong</em> pimpinanku aja seperti itu, maka normal saja saya juga tidak akan bekerja dengan baik&quot; atau &quot;untuk apa menuruti perintah pimpinan yang integritasnya juga tidak ada, capek sendiri&quot;.</p>\r\n\r\n<p>Nah, sebagai seorang pemimpin, bagaimana cara yang terbaik untuk memimpin? Menurut seorang pakar kepemimpinan, rahasia termudah untuk menjadi pemimpin yang baik adalah dengan <strong>Get Trust dan Ask.</strong></p>\r\n\r\n<p><strong>Get Trust</strong></p>\r\n\r\n<p>Sebelum memulai melaksanakan tugas sebagai seorang pemimpin, mereka harus menceritakan terlebih dahulu siapa mereka, bagaimana cara mereka memimpin dan apa harapan mereka kepada bawahannya.</p>\r\n\r\n<p>Ketika seorang pemimpin melakukannya, maka bawahan mereka akan menganggap pemimpinnya adalah orang yang open mind atau terbuka. Dampaknya adalah mereka akan menjadi lebih terbuka dalam menyuarakan ide dan aspirasinya</p>\r\n\r\n<p>Dalam kondisi tersebut suasana bekerja di dalam sebuah Perusahaan akan menjadi semakin kondusif. Hal ini diharapkan dapat meningkatkan produktivitas di dalam pekerjaan. Bukankah salah satu peran dari seorang pemimpin adalah untuk meningkatkan produktivitas kerja dari bawahannya.</p>\r\n\r\n<p><strong>Ask</strong></p>\r\n\r\n<p>Seorang pemimpin perlu menanyakan kepada bawahannya tentang apa yang dapat membuat mereka bisa bekerja dengan optimal.</p>\r\n\r\n<p>Tentu maksud dari pertanyaan ini bukanlah untuk membuat seorang bawahan dapat menyampaikan permintaannya melebihi dari peraturan yang sudah ditetapkan oleh perusahaan. Selalu ada batas yang sudah ditetapkan dan digarisbawahi dari peraturan yang sudah dikeluarkan oleh Perusahaan.</p>\r\n\r\n<p>Tetapi maksud dari pertanyaan ini adalah supaya setiap karyawan dapat bekerja dengan nyaman dan optimal dengan tujuan akhir adalah mencapai target yang sudah dicanangkan oleh perusahaan.</p>\r\n\r\n<p>Berikut adalah beberapa contoh pertanyaan yang bisa dikemukakan kepada bawahan:</p>\r\n\r\n<ol>\r\n\t<li>Apa yang harus kami lakukan yang belum kami lakukan saat ini, yang dapat meningkatkan performa Anda dalam bekerja?</li>\r\n\t<li>&nbsp;Apa yang harus kami hentikan yang sudah kami lakukan saat ini, yang dapat menghambat Anda mencapai performa maksimal dalam bekerja?</li>\r\n\t<li>Apa yang harus tetap kami lakukan dalam memimpin Anda, supaya Anda dan divisi Anda dapat mencapai performa terbaik?</li>\r\n</ol>\r\n\r\n<p>Selain kedua cara di atas <strong>ask &amp; get trust, </strong>ada metode yang dapat meningkatkan persetujuan dari seorang bawahan untuk dipimpin oleh pemimpinnya. Yaitu dengan <strong>membuat daftar hitam dan putih</strong>.</p>\r\n\r\n<p>Buatlah sebuah daftar yang berisikan hal-hal yang kita sukai dari pemimpin kita dan lakukan kepada bawahan kita. Kemudian buatlah daftar lainnya yang berisikan hal-hal yang tidak kita sukai dari pemimpin kita dan hindari melakukannya kepada bawahan kita.</p>\r\n\r\n<p>Setiap dari kita tentu pernah berinteraksi dengan seorang pemimpin. Dan harus diakui ada hal-hal yang kita sukai dan tidak. Daftar yang kita buat di atas sangat bermanfaat saat kita menjadi seorang pemimpin. Apakah kita akan melakukan hal yang kita sendiri tidak menyukainya saat menjadi seorang bawahan?</p>\r\n\r\n<p>Semoga setiap pemimpin semakin memahami bahwa untuk memimpin seseorang membutuhkan persetujuan dari yang dipimpin. Dan mendapatkan kepercayaan dari bawahan merupakan langkah awal untuk memimpin dan mengarahkan mereka sejalan dengan target yang telah ditetapkan oleh Perusahaan. (Rehandy Prismawan</p>\r\n\r\n<p>_ENERO)</p>\r\n\r\n<p>Sumber Penulisan:</p>\r\n\r\n<p>Internal training karyawan,&nbsp; &quot;Mindset Building For Organizational Development&quot;.</p>\r\n	0	0	2017-01-18 19:23:18	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/leadership-adalah-tentang-persetujuan-dari-yang-dipimpin
68	A	Pentingnya Menggali Value Karyawan	<p><img alt="" src="/uploads/ValueCustomer.jpg" style="width: 300px; height: 200px; float: right;" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Value</em> adalah nilai diri yang menjadi tolok ukur karyawan di dalam perusahaan. <em>Value</em> harus digali supaya setiap karyawan sadar akan perannya terhadap keberlangsungan operasional perusahaan. Untuk menggali <em>self-awareness</em> dari setiap karyawan bisa dimulai dengan bertanya, &ldquo;Siapakah Anda bagi perusahaan ini?&rdquo;.&nbsp;</p>\r\n\r\n<p>Ketika diberikan pertanyaan tersebut, jawaban yang muncul akan beragam. Namun sesungguhnya jawaban terbaik adalah saya merupakan bagian dari perusahaan ini.</p>\r\n\r\n<p>Jawaban itu menandakan bahwa karyawan tersebut sudah sadar bahwa perusahaan memiliki peran yang sangat penting bagi kehidupannya dan dia memiliki bagian dari perjalanan dari perusahaan untuk mencapai visi misi yang telah dicanangkan.</p>\r\n\r\n<p><strong>Mengapa menggali value setiap karyawan ini menjadi penting?</strong></p>\r\n\r\n<p><strong>Yang pertama</strong> adalah untuk menumbuhkan <em>sense of belonging </em>terhadap Perusahaan. <em>Sense of belonging </em>adalah kesadaran atau rasa memiliki terhadap Perusahaan. <em>Sense of belonging </em>ini akan membuat karyawan &quot;merelakan&quot; visi misinya melebur menjadi satu dengan visi misi perusahaan.</p>\r\n\r\n<p><strong>Yang kedua</strong> adalah untuk menumbuhkan <em>self awareness </em>terhadap dirinya sendiri. Setiap karyawan akan menjadi &quot;sadar&quot; akan posisi mereka di dalam perusahaan. Akibatnya adalah mereka bisa memberikan nilai ukur terhadap hal-hal yang diharapkan perusahaan kepada dirinya. Apakah performa yang selama ini ditunjukkan sudah sesuai dengan harapan perusahaan?</p>\r\n\r\n<p>Dua hal tersebut merupakan pondasi dasar dalam bekerja.</p>\r\n\r\n<p>Sedangkan jika dilihat dari sudut pandang karyawan, usaha perusahaan untuk&nbsp;menggali value mereka&nbsp;akan membuat mereka merasa diperlakukan dengan baik. Bahwa perusahaan selalu memiliki harapan untuk setiap karyawan dapat berkembang lebih baik, <em>hardskill</em> maupun <em>softskill</em>. Dengan mendapatkan perhatian yang baik dari perusahaan, mereka akan menjadi loyal.</p>\r\n\r\n<p>Di dalam sebuah survey yang dilakukan oleh Saylor Foundation, penyebab terjadinya <em>turn over</em> atau hengkangnya seorang karyawan ke perusahaan lain adalah karena tidak diperlakukan dan diperhatikan dengan baik.</p>\r\n\r\n<p>Dengan Perusahaan menggali value ini, dapat dikatakan bahwa perusahaan sedang melakukan strategi <em>retention </em>untuk mencegah terjadinya <em>turn over </em>yang tinggi. Perusahaan menyadari bahwa ketika terjadi <em>turn over</em>, Perusahaan akan mengalami kerugian. Baik itu dari sisi <em>recruitment cost </em>sampai dengan <em>time gap </em>supaya karyawan baru dapat memberikan performa seperti yang diharapkan.</p>\r\n\r\n<p>Karena itu, jika perusahaan belum melakukan usaha menggali <em>value </em>setiap karyawan, agar segera dilakukan. Demi kemajuan bersama, perusahaan dan karyawannya. (Rehandy Prismawan_ENERO)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber Penulisan:</p>\r\n\r\n<p>Internal training PT Energi Agro Nusantara, &quot;Mindset Building For Organizational Development&quot;</p>\r\n	0	0	2017-01-18 19:07:13	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pentingnya-menggali-value-karyawan
69	A	Mikoriza, Agen Hayati Tanaman Tembakau PTPN X	<p style="text-align: justify;">Mikoriza berasal dari kata <em>m</em><em>yco</em>&nbsp;yang berarti jamur dan <em>r</em><em>hizo</em>&nbsp;yang berarti akar. Mikoriza merupakan jamur yang hidup secara simbiosis pada sistem perakaran tanaman. Pertumbuhan mikoriza pada akar tumbuhan bermanfaat untuk meningkatkan penyerapan unsur hara dan air serta dapat melindungi tembakau dari beberapa jenis penyakit. Secara&nbsp;alamiah, akar tanaman tembakau sudah ditumbuhi mikoriza namun dengan jumlah yang sangat sedikit. Jenis mikoriza pada akar tembakau di&nbsp;setiap daerah berbeda-beda bergantung pada jenis tanah pada wilayah tersebut. Khusus mikroriza pada akar tembakau di Kabupaten&nbsp;Jember berjenis <em>Glomus </em><em>s</em><em>p.</em>&nbsp;Menurut Yulianitha (2012), beberapa karakteristik dari <em>Glomus sp</em><em>.</em>&nbsp;yaitu hanya memiliki satu jenis dinding spora yang berwarna merah sampai cokelat, Permukaan dinding spora halus tanpa dan berjumlah satu, serta seluruh lapisan yang ada pada dinding spora berasal dari dinding hifa&nbsp;(benang)&nbsp;pembawa. Terbatasnya jumlah mikoriza pada akar tanaman tembakau cukup mempengaruhi&nbsp;pertumbuhan tembakau sehingga mikoriza perlu dibudidayakan&nbsp;khusus agar sistem perakaran pada tanaman tembakau bekerja lebih baik.</p>\r\n\r\n<p style="text-align: justify;"><img alt="" src="/uploads/5864cbf5-80d0-4139-92ae-1ba8e3e14fb4-pic_artic3b.jpg" style="width: 300px; height: 225px; float: left;" /></p>\r\n\r\n<p style="text-align: justify;">Salah satu metode yang bisa diterapkan untuk perkembangbiakan&nbsp;mikoriza adalah menggunakan media tanam dengan batuan zeolit. Batu zeolit yang berbentuk granula memiliki kondisi unsur hara yang sesuai sehingga sangat cocok untuk perkembangbiakan mikoriza. Selain granula zeolit, akar tanaman jagung yang berbentuk serabut juga digunakan sebagai tempat menempelnya&nbsp;mikoriza.</p>\r\n\r\n<p style="text-align: justify;">Proses perkembangbiakan khusus jamur mikoriza dilakukan beberapa tahapan yaitu mulai dari tahap ekplorasi dan dilanjutkan dengan tahap pemeliharaan.&nbsp;Pada tahap ekplorasi, langkah awal yang dilakukan adalah mengambil sampel mikoriza yang secara alamiah menempel pada tanaman tembakau&nbsp;dan ditempelkan pada akar jagung. Selanjutnya adalah&nbsp;membuat media tanam dengan dasar granula zeolit yang sebelumnya telah diberikan pupuk fosfat. Tanaman jagung yang akarnya telah tertempel spora mikoriza kemudian ditanam pada media granula zeolit. Jarak antar tanaman selebar 5 cm. Berikutnya adalah&nbsp;tahap pemeliharaan yaitu tanaman dipelihara dengan pemberian air setiap hari dan pemberian pupuk majemuk mikro setiap dua minggu sekali sampai 2 bulan. Setelah dua bulan berlangsung, tanaman jagung dibiarkan tidak disiram dan tidak diberi pupuk selama 1 bulan agar terbentuk biji spora yang tertempel pada granula zeolit. Granula zeolite&nbsp;yang sudah mengandung mikoriza&nbsp;tersebut kemudian dipindahkan dan digunakan sebagai media tanam pada tahap pembibitan serta penanaman pada lahan tanaman tembakau.&nbsp;(Mohamad Wawan S._Penelitian Tembakau Jember, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Referensi:</p>\r\n\r\n<p style="text-align: justify;">Yulianitha, Nurhidayati, &nbsp;Trisnawati, 2012.&nbsp;<strong>Komposisi Jenis Mikoriza </strong><strong>d</strong><strong>ari Perakaran Tembakau (</strong><strong><em>Nicotiana Tabaccum</em></strong><strong>) </strong><strong>d</strong><strong>i Desa Bajur </strong><strong>d</strong><strong>an Orai Pamekasan Madura</strong>. &nbsp;Jurusan Biologi, Fakultas Matematika Dan Ilmu Pengetahuan Alam Institut Teknologi Sepuluh Nopember Surabaya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p align="justify">&nbsp;</p>\r\n	0	0	2016-12-30 17:19:57	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/hayati-tanaman-tembakau-ptpn-x
70	G	Penyerahan Hunian Bedah Rumah di Jember 	\N	0	0	2019-12-10 13:07:28	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
98	G	Buka GIling PG Gempolkrep	\N	0	0	2019-12-10 13:08:37	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
99	G	Buka GIling PG Pesantren Baru	\N	0	0	2019-12-10 13:08:40	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
100	G	Kunjungan Wantannas ke PG Gempolkrep dan PT Enero	\N	0	0	2019-12-10 13:08:42	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
101	G	CSR HUT Kementerian BUMN 	\N	0	0	2019-12-10 13:08:44	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
102	G	Istigotsah Tahun 2019	\N	0	0	2019-12-10 13:08:47	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
103	G	Kerjasama dengan PT KTI	\N	0	0	2019-12-10 13:08:50	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
104	G	Pembagian Bibit Unggul ke Petani	\N	0	0	2019-12-10 13:08:52	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
105	G	Penghargaan InMA Tahun 2019	\N	0	0	2019-12-10 13:08:54	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
106	G	Pisah Sambut Direktur Operasional	\N	0	0	2019-12-10 13:08:57	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
107	G	Kunjungan Komisaris ke PG Gempolkrep dan PT Enero	\N	0	0	2019-12-10 13:08:59	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
108	G	Kunjungan Direktur Utama ke Pangdam V Brawijaya dan Polda Jatim	\N	0	0	2019-12-10 13:09:01	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
109	G	Peringatan Tahun Baru 2019	\N	9	1	2019-12-10 13:09:02	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
3	A	Smart People Millennial	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Ada yang akan menjadi orang tersisihkan jika tidak siap menghadapi perubahan&rdquo;</em>, itulah yang terbesit di generasi teknologi millennial saat ini. Dimana masa generasi ini di sebut-sebut sebagai generasi perubahan. Pada era ini, semua berkembang seolah-olah menjadi fenomena yang&nbsp;<em style="box-sizing: border-box;">absurd.</em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial diyakini akan sangat berpengaruh dalam kemajuan peradapan teknologi masa depan, karena mereka memegang kendali dan memainkan peran penting dalam perkembangan dunia digitalisasi. Generasi ini lahir di tengah-tengah peradapan teknologi yang canggih dan&nbsp;<em style="box-sizing: border-box;">modern</em>. Hal ini membuat generasi ini sangat dekat dengan teknologi, sehingga berhasil menyulap globalisasi yang mempunyai interaksi tanpa batas dibelahan dunia.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial merupakan generasi pertama yang tumbuh subur dengan perangkat elektronik dan jaringan akses internet. Pada masa ini, setiap orang sangat fasih terhadap penggunaan teknologi. Kemajuan sains teknologi ini mendorong generasi millennial untuk melakukan aktivitas lebih banyak dari pada generasi sebelumnya.&nbsp; Selain itu mereka lebih mudah untuk mempelajari&nbsp;<em style="box-sizing: border-box;">platform digital</em>&nbsp;dengan cepat dan menggabungkan kedalam seni kehidupan mereka.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Akan tetapi semua fenomena kecanggihan itu membawa dampak yang sangat mengerikan. Mobilitas antar negara semakin tinggi, peradapan dunia semakin kejam dan penuh dengan tantangan baru dari segala aspek. Belum lagi tingginya grafik inflasi yang terus naik membuat kebutuhan sulit di jangkau.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Anda sebagai generasi millennial harus manjadi pribadi yang kental akan inovatif, aktif dan kreatif agar mampu mengisi&nbsp;<em style="box-sizing: border-box;">millennial times&nbsp;</em>dengan baik.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Kemajuan tidaklah mungkin tanpa perubahan, dan orang yang tidak mengubah pikirannya takkan mampu mengubah apapun&rdquo;,&nbsp;</em>(Sepositif). Bagi anda yang sekarang berada di generasi muda millennial, anda harus menjadi pribadi yang profokatif dalam banyak hal (positif), karena sejatinya perubahan membutuhkan pengendalian&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;yang bagus. Nah, bagian yang bingung mau ngapain di generasi millennial ini, ada tips yang saya tulis sebagai inspirasi, agar anda menjadi&nbsp;<em style="box-sizing: border-box;">smart people millennial.&nbsp;</em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">A2 (<em style="box-sizing: border-box;">Active Action)</em></span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial bisa menjadi generasi emas dalam sejarah. Dalam konteks generasi ini merupakan generasi peralihan dalam peradaban teknologi. Millennial lebih dominan menjadi &lsquo;generasi pengubah&rsquo;, bukan berkarakter sebagai &lsquo;generasi penerus&rsquo;. Untuk mengisi peradapan millennial ini, anda sebagai energi jiwa muda di era ini harus memiliki&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;A2&nbsp;<em style="box-sizing: border-box;">(Active Action)</em>, yakni aktif aksi dalam membuat revolusi perubahan, karena energi muda millennial identik dengan ide-ide segar dan pemikiran baru. A2 bisa diwujudkan dengan aktifitas sebagai berikut:</p>\r\n<ol style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam penggunaan teknologi untuk penyebaran kegiatan yang positif.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam berinovasi dan membuat gagasan kreatif yang sangat bermanfaat bagi kelangsungan teknologi dan mekanisasi pertanian.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam membangun ide dan gagasan baru di tempat kerja.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam merubah pola dan gaya hidup</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam kegiatan sosialisme dan memodernisasi informasi secara cepat, tepat, akurat dan kekinian.</li>\r\n</ol>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">Internet&nbsp;<em style="box-sizing: border-box;">Positive Of Thinks</em></span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Teknologi tumbuh sangat baik di generasi millennial. Media digitalisasi berkembang dengan cepat membuat interaksi sosial tanpa batas memungkinkan semua dilakukan dengan mudah. Pada konteks komunikasi sosial media berhasil menyulap dan melampaui harapan penggunanya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dilansir dari situs kompas.com, bahwa media sosial dan perkembangan teknologi digital ternyata menyimpan lubang gelap, meski pada titik yang sama menghadirkan kesempatan untuk mempermudah manusia. Pengguna internet di Indonesia adalah terbesar ke-4 di Asia. Dari riset internet&nbsp;<em style="box-sizing: border-box;">World Stats</em>&nbsp;pada 2016, pengakses teknologi internet di negeri ini berjumlah sekitar 78 juta. Adapun penetrasi atau rasio pengguna internet di Indonesia ditaksir sekitar 30,5 persen. Di kawasan Asia, pengguna internet terbesar yakni Cina (674 juta/49,5 persen populasi), India (375 juta/30 persen), Jepang (115 juta/90,6 persen), dan kemudian Indonesia.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Dari fenomena tersebut, apabila tidak ada pengendalian dan kebijakan diri yang baik, tentu hal ini akan memicu timbulnya dampak yang negatif seperti pendirian situs pornografi, membangun komunitas radikalisme, atau penyebaran hoaks.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Perubahan&nbsp;<em style="box-sizing: border-box;">platform</em>&nbsp;teknologi mempengaruhi interaksi manusia di peradapan manusia yang selanjutnya. Nah, sebagai generasi millennial yang cerdas, kita harus menjadi &lsquo;<em style="box-sizing: border-box;">internet positive of thinks&rsquo;&nbsp;</em>artinya, menggunakan internet dengan sehat dan untuk hal yang positif.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;"><span style="box-sizing: border-box; font-weight: bold;">Make Future Projects</span></em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Di peradapan global di masa sekarang sangat tidak cukup bermodalkan pandai beropini. Untuk mengisi generasi millennial dengan cerdas, anda harus membuat dunia menjadi tempat yang lebih baik dari sebelumnya. Anda adalah arsitek dari seni kehidupan anda sendiri, buatlah desain yang menarik untuk gagas revolusi perubahan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial adalah generasi jeniusme. Generasi dimana waktu dan tempatnya dapat di gali berbagai hal-hal baru.Sebagai generasi millennial anda harus mempunyai stabilitas diri yang baik. Bukan hanya sekedar tentang&nbsp;<em style="box-sizing: border-box;">to-do-list&nbsp;</em>tapi lebih&nbsp;<em style="box-sizing: border-box;">focus</em>&nbsp;menuju &shy;<em style="box-sizing: border-box;">to-be-list</em>. Memang bagus berfikir tentang apa, tapi akan terlihat lebih hebat apabila anda lebih berfikir ingin menjadi apa untuk membuat apa.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">95% dari hidup kita berasal dari progam kehidupan.&nbsp;<em style="box-sizing: border-box;">Make Future Projects,&nbsp;</em>mulailah membuat hal kecil setelah membaca artikel ini. Karena generasi di masa depan bisa saja berubah dan berevolusi menjadi lebih baik dari apa yang kita ciptakan hari ini.</p>	20	2	2019-09-25 10:07:09	pict_web.jpg	admin@ptpn10.co.id	muh.rizal@ptpn10.co.id	published	\N
\.


--
-- Data for Name: news_cover; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_cover ("ID_COVERSTORY", "ID_NEWS") FROM stdin;
3	10
3	8
4	17
4	18
3	2
\.


--
-- Data for Name: news_share; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_share ("ID", "EMAIL", "ID_NEWS") FROM stdin;
1	yohanesdl9@gmail.com	2
2	yohanesdl9@gmsil.com	109
3	reyhan@ptpn10.co.id	3
4	reyhan@ptpn10.co.id	3
\.


--
-- Data for Name: news_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_tags ("ID_TAGS", "ID_NEWS") FROM stdin;
5	3
8	8
11	13
5	16
14	16
15	16
16	16
5	17
17	17
18	17
17	18
5	18
18	18
11	2
5	20
5	21
5	22
5	23
5	24
5	25
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
5	61
5	62
5	63
5	64
5	65
5	66
5	67
5	68
5	69
5	70
5	71
5	72
5	73
5	74
5	75
5	76
5	77
5	78
5	79
5	80
5	81
5	82
5	83
5	84
5	85
5	86
5	87
5	88
5	89
5	90
5	91
5	92
5	93
5	94
5	95
5	96
5	97
5	98
5	99
5	100
5	101
5	102
5	103
5	104
5	105
5	106
5	107
5	108
5	109
\.


--
-- Data for Name: news_view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_view ("ID", "EMAIL", "ID_NEWS") FROM stdin;
1	yohanesdl9@gmail.com	2
3	reyhan@ptpn10.co.id	3
2	yohanesdl9@gmail.com	109
4	reyhan@ptpn10.co.id	3
5	firnasreyhan@gmail.com	109
6	firnasreyhan@gmail.com	109
7	firnasreyhan@gmail.com	3
8	firnasreyhan@gmail.com	3
9	firnasreyhan@gmail.com	3
10	firnasreyhan@gmail.com	3
11	firnasreyhan@gmail.com	3
12	firnasreyhan@gmail.com	3
13	firnasreyhan@gmail.com	109
14	firnasreyhan@gmail.com	109
15	firnasreyhan@gmail.com	109
16	firnasreyhan@gmail.com	3
17	firnasreyhan@gmail.com	3
18	firnasreyhan@gmail.com	3
19	firnasreyhan@gmail.com	3
20	firnasreyhan@gmail.com	3
21	firnasreyhan@gmail.com	109
22	firnasreyhan@gmail.com	3
23	firnasreyhan@gmail.com	3
24	firnasreyhan@gmail.com	3
25	firnasreyhan@gmail.com	3
26	shellafadwa18@gmail.com	109
27	shellafadwa18@gmail.com	109
28	firnasreyhan@gmail.com	3
29	firnasreyhan@gmail.com	3
30	firnasreyhan@gmail.com	3
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags ("ID_TAGS", "TAGS", "DATE_CREATED") FROM stdin;
5	PTPN X	2019-12-07 19:04:07
6	ptpn	2019-12-07 19:04:11
7	oke	2019-12-07 19:04:15
8	contoh	2019-12-07 19:04:19
10	nyoba	2019-12-07 19:04:23
11	sejarah	2019-12-07 19:04:27
12	galeri	2019-12-07 19:04:31
13	berita galeri	2019-12-07 19:04:35
14	embedded	2019-12-07 19:04:39
15	media	2019-12-07 19:04:42
16	gambar	2019-12-07 19:04:46
17	agroforestry	2019-12-07 19:04:49
18	perhutani	2019-12-07 19:04:51
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" ("EMAIL", "USER_NAME", "PROFILEPIC_URL", "LAST_LOGIN", "DATE_BIRTH", "GENDER", "USER_TYPE", "PASSWORD") FROM stdin;
firnas@ptpn10.co.id	Firnas	null	2019-12-10 08:54:45	2019-12-10	L	Internal	$2y$10$RGzzvAjrcHZCApInjRhMCO9Wwds/ejaP2Q7QeqqzCfMBBGhnerJnm
firnasadani@ptpn10.co.id	Firnas Adani	null	2019-12-10 08:57:10	1998-08-03	L	Internal	$2y$10$xskYzQ9dM6nf3lDlEg7tsenc/3Dn2yFuQP0nIJwFvnwv/5oMFvg/m
reyhan@ptpn10.co.id	Reyhan	null	2019-12-10 08:42:34	2019-08-01	L	Internal	$2y$10$WLQLkzuBN9lW/GJUVPVFtOZ/hwGfOL072mLTH1Ex.h/kgwK4AowVS
shellafadwa18@gmail.com	Shella Anisa Fadwa	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	2019-10-09 07:36:37	2000-08-06	P	External	\N
shellaanisafadwa@gmail.com	Shella Anisa Fadwa	https://lh3.googleusercontent.com/a-/AAuE7mAhWiEbiuwM64WJwxXWgDvSYb8MI6W0viu61r1B=s96-c	2019-10-09 09:42:04	\N	\N	External	\N
andika.vernanda@gmail.com	Andika Vernanda	https://lh3.googleusercontent.com/a-/AAuE7mDyVEnBNZuHysaPTyirjMY__a-x3EAl-mVMKAajJg=s96-c	2019-10-11 01:29:51	\N	\N	External	\N
shellafadwa18	Shella Anisa\n\n\n\n	https://lh3.googleusercontent.com/a-/AAuE7mAcawr--5LrENVy7nb0udt4OdYYjKOGyCDb5IHujg=s96-c	2019-10-11 16:09:15	\N	\N	External	\N
nanasenchi@gmail.com	Nanas	\N	2019-10-23 07:44:04	\N	\N	External	\N
voidels.rey01@gmail.com	Voidels Rey	https://lh5.googleusercontent.com/-w2BbcN7RhAc/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfxoSNshK5iDyD7gYsixsx5yKyigw/s96-c/photo.jpg	2019-10-23 07:45:54	\N	\N	External	\N
voidels.rey02@gmail.com	Voidels Rey	https://lh4.googleusercontent.com/-JplgHTm1HRk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfJ8pPr9K9vzhiZc1c8ChE5v_X5ZQ/s96-c/photo.jpg	2019-10-23 07:47:29	\N	\N	External	\N
voidels.rey03@gmail.com	Voidels Rey	https://lh4.googleusercontent.com/-thh3Yht84rY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfnPl29jzbGNUuOJHQKSphsKghsYQ/s96-c/photo.jpg	2019-10-23 07:55:24	\N	\N	External	\N
daudana.dp@gmail.com	Daudana Purina	https://lh3.googleusercontent.com/a-/AAuE7mDBFintYaXinfSgnXq2PkjA5g70MFFlKytXajoQ=s96-c	2019-10-31 04:09:20	\N	\N	External	\N
andika@ptpn10.co.id	Andika Veranda		2019-12-09 20:03:07	1995-06-09	L	Internal	$2y$10$x4uyQAIwhG.Q0J1RngFStOLMB0WcL3g5AUecQ3RABOle8Qz/8CpTe
reyhanfirnas@ptpn10.co.id	Reyhan Firnas	null	2019-12-10 08:55:55	\N	\N	Internal	$2y$10$Jg8hwJHYX8VPpXb4xFFAReFbAtFV2j2H9warUbbB4Kjsffhs6rZCO
adani@ptpn10.co.id	Adani	null	2019-12-10 08:51:17	2019-12-10	L	Internal	$2y$10$QfWViRfbk1XZEyFqfIM9f.Nh2jOh6NGwQ8r0Galmd6f6zqRVCHSKS
monica@ptpn10.co.id	Monica	null	2019-12-10 15:45:22	1999-11-10	P	Internal	$2y$10$/5lefXwif.QND.Q2gweHcuHPFGKZljzXdDr4ZKioaQUA44MGVHpje
yohanesdl9@gmail.com	Yohanes DL	487176e9a5c9b0bb8a70a0c0f9010f14	2019-09-25 17:13:37	1997-05-09	L	External	\N
faridanolawangi@gmail.com	Baiq Farida Nolawangi	pic_url	2019-10-07 10:01:59	1996-11-14	P	External	\N
nanda@stiki.ac.id	Nanda Bima Mahendra	https://lh3.googleusercontent.com/a-/AAuE7mDssClEXbba9yU9Zg4eoaYHxJm6EvY_bd2pReBK=s96-c	2019-12-04 01:24:32	1999-02-16	L	External	\N
bimasaishoku@gmail.com	Bima Mahendra	https://lh3.googleusercontent.com/a-/AAuE7mBQHvpQFVPjW5PxejxFcNl_WcSJCuqjXJc5eZ-fgg=s96-c	2019-12-04 01:13:19	1999-02-16	L	External	\N
monicatifany99@gmail.com	Monica Tifani Zahara	https://graph.facebook.com/1253323591527513/picture	2019-11-08 06:16:18	\N	\N	External	\N
firnasreyhan@gmail.com	Firnas Reyhan	https://lh3.googleusercontent.com/a-/AAuE7mAnY0EhOqsQat7nQ0yVZG4m_apv092TTGB3mpku2Q=s96-c	2019-10-07 10:07:30	2019-12-13	L	External	\N
voidels.rey04@gmail.com	Voidels Rey	https://lh3.googleusercontent.com/-eGhQhEgjqCM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfY5av8Shs4OTngneWJPHzlBk7XVQ/s96-c/photo.jpg	2019-10-23 07:57:59	\N	\N	External	\N
voidels.rey05@gmail.com	Voidels Rey	https://lh4.googleusercontent.com/--Q2CfydsMeg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdL5EIW5Lhyr16SH32fxHXt6KL_5A/s96-c/photo.jpg	2019-10-23 07:58:35	\N	\N	External	\N
dhitamawardani@gmail.com	Dhita Mawardani	https://lh3.googleusercontent.com/a-/AAuE7mDVrHnjge8dF94sq0SUB5YpmxqT6dLDThQbgUlV9A=s96-c	2019-10-31 05:54:22	\N	\N	External	\N
irfanalfiansyah10@gmail.com	Irfan Alfiansyahhh	https://lh3.googleusercontent.com/a-/AAuE7mDvHDgYlFsNhg3jWr1Ekv1vTBQAJASMTn2FxmPQjw=s96-c	2019-10-23 08:46:43	\N	\N	External	\N
171111079@mhs.stiki.ac.id	171111079 MUHAMMAD REYHAN FIRNAS ADANI	https://lh5.googleusercontent.com/-u6CcqepvCbk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc4_bCRA3M1BIKdTH5DAjSYvhXV5g/s96-c/photo.jpg	2019-10-09 05:19:21	\N	\N	External	\N
jirencore7@gmail.com	Jiren Core	https://lh3.googleusercontent.com/a-/AAuE7mA4WW6PRqLE0gx9kNltkBaH5UDGURnm-RZ16c4a=s96-c	2019-12-04 00:56:27	\N	\N	External	\N
kristomoyo@gmail.com	Bagus Kristomoyo Kristanto	https://lh3.googleusercontent.com/a-/AAuE7mCDFTUFep3jHRTggN_OWeKc-XzzJ4EoCMt5TbfV=s96-c	2019-12-04 00:57:57	\N	\N	External	\N
sanade2034@gmail.com	sans 123	https://lh3.googleusercontent.com/a-/AAuE7mA_RfPPXMSBfMO1UjVGqQvTTvt-4TGRJ3I0E6iS=s96-c	2019-12-04 01:03:44	\N	\N	External	\N
kr.kristomoyo@gmail.com	kristanto kristomoyo	https://lh4.googleusercontent.com/-KabqNFPpqa4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcDLJ14zlDNsqJnRRwDrQoBswLElw/s96-c/photo.jpg	2019-12-04 01:05:44	\N	\N	External	\N
bagus.kristanto@stiki.ac.id	Bagus Kristomoyo Kristanto	https://lh3.googleusercontent.com/a-/AAuE7mBHxafrymrGlfXRU_18K1Mu3VUC4ZNqlC3gcb7P=s96-c	2019-12-04 01:17:06	\N	\N	External	\N
mreyhanfirnasa@gmail.com	Reyhan Firnas	https://lh5.googleusercontent.com/-IK-UNmy9PNc/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcyyXOWJGoldwTuQfHTY3GkngdpWQ/s96-c/photo.jpg	2019-12-04 01:20:26	\N	\N	External	\N
reyhan.adani@stiki.ac.id	MUHAMMAD REYHAN FIRNAS	https://lh5.googleusercontent.com/-yfiCsUFQww8/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdfcGLl-K6Nzfl2JQU790mKTaej0Q/s96-c/photo.jpg	2019-12-04 01:36:41	\N	\N	External	\N
panjidia995@gmail.com	panji saja	https://lh3.googleusercontent.com/a-/AAuE7mBRRZZITKXxn0Qmfz-IZI3TcguaD5hSgPdh1Adt=s96-c	2019-12-04 01:37:49	\N	\N	External	\N
soetono.effendi@gmail.com	Soetono Effendi	https://lh3.googleusercontent.com/a-/AAuE7mCThOAt8fEd7yAEHhOeExSWTBmM-k2PaZsWxAoV=s96-c	2019-12-04 01:32:49	\N	\N	External	\N
\.


--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video ("ID_VIDEO", "TITLE", "DESCRIPTION", "DATE_PUBLISHED", "URL_DEFAULT_THUMBNAIL", "URL_MEDIUM_THUMBNAIL", "URL_HIGH_THUMBNAIL", "STATUS_PUBLISHED") FROM stdin;
4weq-mOs83E	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (2)	Karya (2) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:22:28	https://i.ytimg.com/vi/4weq-mOs83E/default.jpg	https://i.ytimg.com/vi/4weq-mOs83E/mqdefault.jpg	https://i.ytimg.com/vi/4weq-mOs83E/hqdefault.jpg	t
8W3J8VHn6ys	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (1)	Karya (1) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:19:18	https://i.ytimg.com/vi/8W3J8VHn6ys/default.jpg	https://i.ytimg.com/vi/8W3J8VHn6ys/mqdefault.jpg	https://i.ytimg.com/vi/8W3J8VHn6ys/hqdefault.jpg	t
XEdQdr8xrjo	#JingleSIPro Perkebunan Nusantara Marshal  Pattiasina	Karya : Marshal Pattiasina Bagian Pengolahan - PT Perkebunan Nusantara X.	2019-11-08 05:45:58	https://i.ytimg.com/vi/XEdQdr8xrjo/default.jpg	https://i.ytimg.com/vi/XEdQdr8xrjo/mqdefault.jpg	https://i.ytimg.com/vi/XEdQdr8xrjo/hqdefault.jpg	t
NSKcT_BRfks	PTPN X Corporate Culture Film &quot;Keluarga Besar&quot;	"Apa yang kita cari di hidup ini ?" Ada jawaban beragam, alasan-alasan sederhana hingga penjelasan yang cukup kompleks. Film "Keluarga Besar" hadir untuk ...	2019-11-07 14:55:09	https://i.ytimg.com/vi/NSKcT_BRfks/default.jpg	https://i.ytimg.com/vi/NSKcT_BRfks/mqdefault.jpg	https://i.ytimg.com/vi/NSKcT_BRfks/hqdefault.jpg	t
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
5FZ-0AZ9bvo	Jejak Si Gundul - Trans 7: Pia Edamame dari Jember	Edamame, salah satu produk andalan PT Mitratani Dua Tujuh diliput dalam acara Jejak Si Gundul Trans 7. Info lebih lanjut: www.mitratani27.co.id Sumber ...	2017-07-31 00:58:16	https://i.ytimg.com/vi/5FZ-0AZ9bvo/default.jpg	https://i.ytimg.com/vi/5FZ-0AZ9bvo/mqdefault.jpg	https://i.ytimg.com/vi/5FZ-0AZ9bvo/hqdefault.jpg	t
qBvTZWUmOdE	Senam Bersama	Senam Bersama secara rutin digelar satu kali dalam satu bulan. Acara ini diikuti oleh seluruh karyawan Kantor Pusat PTPN X, mulai dari Jajaran Direksi hingga ...	2017-07-28 05:54:08	https://i.ytimg.com/vi/qBvTZWUmOdE/default.jpg	https://i.ytimg.com/vi/qBvTZWUmOdE/mqdefault.jpg	https://i.ytimg.com/vi/qBvTZWUmOdE/hqdefault.jpg	t
ix8krb1EA_Q	BAGI BINGKISAN RAMADAN   PTPN X	BINGKISAN RAMADAN.	2017-07-27 03:21:27	https://i.ytimg.com/vi/ix8krb1EA_Q/default.jpg	https://i.ytimg.com/vi/ix8krb1EA_Q/mqdefault.jpg	https://i.ytimg.com/vi/ix8krb1EA_Q/hqdefault.jpg	t
8qY-osQ0xlo	Ramadhan Greeting	Ramadhan Greeting 2017.	2017-06-08 09:41:02	https://i.ytimg.com/vi/8qY-osQ0xlo/default.jpg	https://i.ytimg.com/vi/8qY-osQ0xlo/mqdefault.jpg	https://i.ytimg.com/vi/8qY-osQ0xlo/hqdefault.jpg	t
DqGz9tfnDnA	Si Ladyfinger Asal Jember yang di Gemari Jepang		2017-06-08 09:35:20	https://i.ytimg.com/vi/DqGz9tfnDnA/default.jpg	https://i.ytimg.com/vi/DqGz9tfnDnA/mqdefault.jpg	https://i.ytimg.com/vi/DqGz9tfnDnA/hqdefault.jpg	t
LaTvfcUigEI	Sayur Okra Untuk Diabetes di Jember	sayur okra.	2017-06-08 09:32:36	https://i.ytimg.com/vi/LaTvfcUigEI/default.jpg	https://i.ytimg.com/vi/LaTvfcUigEI/mqdefault.jpg	https://i.ytimg.com/vi/LaTvfcUigEI/hqdefault.jpg	t
UP-SO9R_TZs	Pekan Pancasila 2017 PTPN X #PekanPancasila	Pekan Pancasila 2017 PTPN X.	2017-06-06 21:05:02	https://i.ytimg.com/vi/UP-SO9R_TZs/default.jpg	https://i.ytimg.com/vi/UP-SO9R_TZs/mqdefault.jpg	https://i.ytimg.com/vi/UP-SO9R_TZs/hqdefault.jpg	t
0Vzg9tOVQgA	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (3)	Karya (3) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:22:43	https://i.ytimg.com/vi/0Vzg9tOVQgA/default.jpg	https://i.ytimg.com/vi/0Vzg9tOVQgA/mqdefault.jpg	https://i.ytimg.com/vi/0Vzg9tOVQgA/hqdefault.jpg	t
\.


--
-- Name: captcha_ID_CAPTCHA_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."captcha_ID_CAPTCHA_seq"', 40, true);


--
-- Name: comments_ID_COMMENT_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."comments_ID_COMMENT_seq"', 25, true);


--
-- Name: cover_story_ID_COVERSTORY_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."cover_story_ID_COVERSTORY_seq"', 5, true);


--
-- Name: emagz_ID_EMAGZ_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."emagz_ID_EMAGZ_seq"', 3, true);


--
-- Name: likes_ID_LIKES_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."likes_ID_LIKES_seq"', 3, true);


--
-- Name: news_ID_NEWS_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."news_ID_NEWS_seq"', 3, true);


--
-- Name: tag_ID_TAG_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tag_ID_TAG_seq"', 4, true);


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

