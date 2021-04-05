toc.dat                                                                                             0000600 0004000 0002000 00000106042 14024026461 0014441 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       )    ;    
            y            digi    11.10    12.6 j    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         /           1262    33477    digi    DATABASE     t   CREATE DATABASE digi WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE digi;
                panji    false         �            1259    33478    app_version    TABLE     P   CREATE TABLE public.app_version (
    version character varying(50) NOT NULL
);
    DROP TABLE public.app_version;
       public            postgres    false         �            1259    33481    backend_user    TABLE     �   CREATE TABLE public.backend_user (
    "USERNAME" character varying(30) NOT NULL,
    "NAME" character varying(50) NOT NULL,
    "PASSWORD" character varying(255) NOT NULL,
    "ROLE" character varying(10) NOT NULL,
    "DEFAULT_PASSWORD" boolean
);
     DROP TABLE public.backend_user;
       public            postgres    false         �            1259    33484    banner    TABLE     �   CREATE TABLE public.banner (
    "ID_BANNER" integer NOT NULL,
    "ID_NEWS" integer NOT NULL,
    "IMAGE_BANNER" character varying(255) NOT NULL,
    "DATE_BANNER" timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.banner;
       public            postgres    false         �            1259    33487    captcha_ID_CAPTCHA_seq    SEQUENCE     �   CREATE SEQUENCE public."captcha_ID_CAPTCHA_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 /   DROP SEQUENCE public."captcha_ID_CAPTCHA_seq";
       public          postgres    false         �            1259    33489    captcha    TABLE        CREATE TABLE public.captcha (
    "ID_CAPTCHA" integer DEFAULT nextval('public."captcha_ID_CAPTCHA_seq"'::regclass) NOT NULL,
    "CAPTCHA_TIME" bigint NOT NULL,
    "IP_ADDRESS" character varying(16) NOT NULL,
    "WORD" character varying(20) NOT NULL
);
    DROP TABLE public.captcha;
       public            postgres    false    199         �            1259    33493    category    TABLE     u   CREATE TABLE public.category (
    "ID_CATEGORY" character(1) NOT NULL,
    "NAME_CATEGORY" character varying(15)
);
    DROP TABLE public.category;
       public            postgres    false         �            1259    33496    comments    TABLE     ]  CREATE TABLE public.comments (
    "ID_COMMENT" bigint NOT NULL,
    "ID_NEWS" integer NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "COMMENT_TEXT" text NOT NULL,
    "IS_APPROVED" boolean NOT NULL,
    "DATE_APPROVED" timestamp(0) without time zone,
    "DATE_COMMENT" timestamp(0) without time zone NOT NULL,
    "ADMIN_REPLY" text
);
    DROP TABLE public.comments;
       public            postgres    false         �            1259    33502    comments_ID_COMMENT_seq    SEQUENCE     �   CREATE SEQUENCE public."comments_ID_COMMENT_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."comments_ID_COMMENT_seq";
       public          postgres    false    202         0           0    0    comments_ID_COMMENT_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."comments_ID_COMMENT_seq" OWNED BY public.comments."ID_COMMENT";
          public          postgres    false    203         �            1259    33504    cover_story    TABLE       CREATE TABLE public.cover_story (
    "ID_COVERSTORY" bigint NOT NULL,
    "TITLE_COVERSTORY" character varying(100) NOT NULL,
    "SUMMARY" text NOT NULL,
    "IMAGE_COVERSTORY" character varying(255) NOT NULL,
    "DATE_COVERSTORY" timestamp(0) without time zone NOT NULL
);
    DROP TABLE public.cover_story;
       public            postgres    false         �            1259    33510    cover_story_ID_COVERSTORY_seq    SEQUENCE     �   CREATE SEQUENCE public."cover_story_ID_COVERSTORY_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."cover_story_ID_COVERSTORY_seq";
       public          postgres    false    204         1           0    0    cover_story_ID_COVERSTORY_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."cover_story_ID_COVERSTORY_seq" OWNED BY public.cover_story."ID_COVERSTORY";
          public          postgres    false    205         �            1259    33512    emagz_ID_EMAGZ_seq    SEQUENCE     }   CREATE SEQUENCE public."emagz_ID_EMAGZ_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."emagz_ID_EMAGZ_seq";
       public          postgres    false         �            1259    33514    emagz    TABLE     �  CREATE TABLE public.emagz (
    "ID_EMAGZ" integer DEFAULT nextval('public."emagz_ID_EMAGZ_seq"'::regclass) NOT NULL,
    "THUMBNAIL" character varying(255),
    "FILE" character varying(255),
    "DATE_UPLOADED" timestamp(0) without time zone NOT NULL,
    "NAME" character varying(100) NOT NULL,
    "LINK_PUBHTML5" character varying(255),
    "LINK_QUIZ" character varying(255),
    "IS_PUBACTIVE" boolean
);
    DROP TABLE public.emagz;
       public            postgres    false    206         �            1259    33521    firebase_token    TABLE     T   CREATE TABLE public.firebase_token (
    "TOKEN" character varying(255) NOT NULL
);
 "   DROP TABLE public.firebase_token;
       public            postgres    false         �            1259    33524    galeri    TABLE     g   CREATE TABLE public.galeri (
    "IMAGE_FILE" character varying(255) NOT NULL,
    "ID_NEWS" bigint
);
    DROP TABLE public.galeri;
       public            postgres    false         �            1259    33527 	   last_sync    TABLE     V   CREATE TABLE public.last_sync (
    date_sync timestamp without time zone NOT NULL
);
    DROP TABLE public.last_sync;
       public            postgres    false         �            1259    33530    likes    TABLE     �   CREATE TABLE public.likes (
    "ID_LIKES" bigint NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "ID_NEWS" integer NOT NULL
);
    DROP TABLE public.likes;
       public            postgres    false         �            1259    33533    likes_ID_LIKES_seq    SEQUENCE     }   CREATE SEQUENCE public."likes_ID_LIKES_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."likes_ID_LIKES_seq";
       public          postgres    false    211         2           0    0    likes_ID_LIKES_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."likes_ID_LIKES_seq" OWNED BY public.likes."ID_LIKES";
          public          postgres    false    212         �            1259    33535    news    TABLE       CREATE TABLE public.news (
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
    DROP TABLE public.news;
       public            postgres    false         �            1259    33542    news_ID_NEWS_seq    SEQUENCE     {   CREATE SEQUENCE public."news_ID_NEWS_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."news_ID_NEWS_seq";
       public          postgres    false    213         3           0    0    news_ID_NEWS_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."news_ID_NEWS_seq" OWNED BY public.news."ID_NEWS";
          public          postgres    false    214         �            1259    33544 
   news_cover    TABLE     g   CREATE TABLE public.news_cover (
    "ID_COVERSTORY" bigint NOT NULL,
    "ID_NEWS" bigint NOT NULL
);
    DROP TABLE public.news_cover;
       public            postgres    false         �            1259    33547 
   news_share    TABLE     �   CREATE TABLE public.news_share (
    "ID" integer NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "ID_NEWS" integer NOT NULL
);
    DROP TABLE public.news_share;
       public            postgres    false         �            1259    33550 	   news_tags    TABLE     b   CREATE TABLE public.news_tags (
    "ID_TAGS" integer NOT NULL,
    "ID_NEWS" integer NOT NULL
);
    DROP TABLE public.news_tags;
       public            postgres    false         �            1259    33553 	   news_view    TABLE     �   CREATE TABLE public.news_view (
    "ID" integer NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "ID_NEWS" integer NOT NULL
);
    DROP TABLE public.news_view;
       public            postgres    false         �            1259    33556    tags    TABLE     �   CREATE TABLE public.tags (
    "ID_TAGS" integer NOT NULL,
    "TAGS" character varying(50) NOT NULL,
    "DATE_CREATED" timestamp(0) without time zone
);
    DROP TABLE public.tags;
       public            postgres    false         �            1259    33559    tag_ID_TAG_seq    SEQUENCE     y   CREATE SEQUENCE public."tag_ID_TAG_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."tag_ID_TAG_seq";
       public          postgres    false    219         4           0    0    tag_ID_TAG_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."tag_ID_TAG_seq" OWNED BY public.tags."ID_TAGS";
          public          postgres    false    220         �            1259    33561    user    TABLE     *  CREATE TABLE public."user" (
    "EMAIL" character varying(50) NOT NULL,
    "USER_NAME" character varying(100) NOT NULL,
    "PROFILEPIC_URL" text,
    "LAST_LOGIN" timestamp(0) without time zone NOT NULL,
    "DATE_BIRTH" date,
    "GENDER" character(1),
    "USER_TYPE" character varying(10)
);
    DROP TABLE public."user";
       public            postgres    false         �            1259    33567    video    TABLE     �  CREATE TABLE public.video (
    "ID_VIDEO" character varying(15) NOT NULL,
    "TITLE" character varying(100),
    "DESCRIPTION" text,
    "DATE_PUBLISHED" timestamp(0) without time zone,
    "URL_DEFAULT_THUMBNAIL" character varying(255),
    "URL_MEDIUM_THUMBNAIL" character varying(255),
    "URL_HIGH_THUMBNAIL" character varying(255),
    "STATUS_PUBLISHED" boolean DEFAULT true NOT NULL
);
    DROP TABLE public.video;
       public            postgres    false         �            1259    33574    view_comments    VIEW     �   CREATE VIEW public.view_comments AS
SELECT
    NULL::integer AS "ID_NEWS",
    NULL::character(1) AS "ID_CATEGORY",
    NULL::character varying(200) AS "TITLE_NEWS",
    NULL::bigint AS "COMMENTS";
     DROP VIEW public.view_comments;
       public          postgres    false         �            1259    33578 
   view_likes    VIEW     �   CREATE VIEW public.view_likes AS
SELECT
    NULL::integer AS "ID_NEWS",
    NULL::character(1) AS "ID_CATEGORY",
    NULL::character varying(200) AS "TITLE_NEWS",
    NULL::bigint AS "LIKES";
    DROP VIEW public.view_likes;
       public          postgres    false         �            1259    33582 	   view_news    VIEW       CREATE VIEW public.view_news AS
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
    DROP VIEW public.view_news;
       public          postgres    false    213    197    197    201    201    213    213    213    213    213    213    213    213    213    213    223    223    224    224         �            1259    33587    view_news_comments    VIEW     �  CREATE VIEW public.view_news_comments AS
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
 %   DROP VIEW public.view_news_comments;
       public          postgres    false    221    213    202    202    202    202    202    202    202    221    221         �            1259    33592    view_news_cover    VIEW     �  CREATE VIEW public.view_news_cover AS
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
 "   DROP VIEW public.view_news_cover;
       public          postgres    false    225    225    225    225    225    225    225    225    225    225    225    215    215    204    204    225    225         �            1259    33597    view_news_trending    VIEW     �  CREATE VIEW public.view_news_trending AS
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
 %   DROP VIEW public.view_news_trending;
       public          postgres    false    213    223    223    213    213    213    213    213         Y           2604    33602    comments ID_COMMENT    DEFAULT     ~   ALTER TABLE ONLY public.comments ALTER COLUMN "ID_COMMENT" SET DEFAULT nextval('public."comments_ID_COMMENT_seq"'::regclass);
 D   ALTER TABLE public.comments ALTER COLUMN "ID_COMMENT" DROP DEFAULT;
       public          postgres    false    203    202         Z           2604    33603    cover_story ID_COVERSTORY    DEFAULT     �   ALTER TABLE ONLY public.cover_story ALTER COLUMN "ID_COVERSTORY" SET DEFAULT nextval('public."cover_story_ID_COVERSTORY_seq"'::regclass);
 J   ALTER TABLE public.cover_story ALTER COLUMN "ID_COVERSTORY" DROP DEFAULT;
       public          postgres    false    205    204         \           2604    33604    likes ID_LIKES    DEFAULT     t   ALTER TABLE ONLY public.likes ALTER COLUMN "ID_LIKES" SET DEFAULT nextval('public."likes_ID_LIKES_seq"'::regclass);
 ?   ALTER TABLE public.likes ALTER COLUMN "ID_LIKES" DROP DEFAULT;
       public          postgres    false    212    211         ^           2604    33605    news ID_NEWS    DEFAULT     p   ALTER TABLE ONLY public.news ALTER COLUMN "ID_NEWS" SET DEFAULT nextval('public."news_ID_NEWS_seq"'::regclass);
 =   ALTER TABLE public.news ALTER COLUMN "ID_NEWS" DROP DEFAULT;
       public          postgres    false    214    213         _           2604    33606    tags ID_TAGS    DEFAULT     n   ALTER TABLE ONLY public.tags ALTER COLUMN "ID_TAGS" SET DEFAULT nextval('public."tag_ID_TAG_seq"'::regclass);
 =   ALTER TABLE public.tags ALTER COLUMN "ID_TAGS" DROP DEFAULT;
       public          postgres    false    220    219                   0    33478    app_version 
   TABLE DATA           .   COPY public.app_version (version) FROM stdin;
    public          postgres    false    196       3855.dat           0    33481    backend_user 
   TABLE DATA           b   COPY public.backend_user ("USERNAME", "NAME", "PASSWORD", "ROLE", "DEFAULT_PASSWORD") FROM stdin;
    public          postgres    false    197       3856.dat           0    33484    banner 
   TABLE DATA           W   COPY public.banner ("ID_BANNER", "ID_NEWS", "IMAGE_BANNER", "DATE_BANNER") FROM stdin;
    public          postgres    false    198       3857.dat           0    33489    captcha 
   TABLE DATA           U   COPY public.captcha ("ID_CAPTCHA", "CAPTCHA_TIME", "IP_ADDRESS", "WORD") FROM stdin;
    public          postgres    false    200       3859.dat           0    33493    category 
   TABLE DATA           B   COPY public.category ("ID_CATEGORY", "NAME_CATEGORY") FROM stdin;
    public          postgres    false    201       3860.dat           0    33496    comments 
   TABLE DATA           �   COPY public.comments ("ID_COMMENT", "ID_NEWS", "EMAIL", "COMMENT_TEXT", "IS_APPROVED", "DATE_APPROVED", "DATE_COMMENT", "ADMIN_REPLY") FROM stdin;
    public          postgres    false    202       3861.dat           0    33504    cover_story 
   TABLE DATA           |   COPY public.cover_story ("ID_COVERSTORY", "TITLE_COVERSTORY", "SUMMARY", "IMAGE_COVERSTORY", "DATE_COVERSTORY") FROM stdin;
    public          postgres    false    204       3863.dat           0    33514    emagz 
   TABLE DATA           �   COPY public.emagz ("ID_EMAGZ", "THUMBNAIL", "FILE", "DATE_UPLOADED", "NAME", "LINK_PUBHTML5", "LINK_QUIZ", "IS_PUBACTIVE") FROM stdin;
    public          postgres    false    207       3866.dat           0    33521    firebase_token 
   TABLE DATA           1   COPY public.firebase_token ("TOKEN") FROM stdin;
    public          postgres    false    208       3867.dat           0    33524    galeri 
   TABLE DATA           9   COPY public.galeri ("IMAGE_FILE", "ID_NEWS") FROM stdin;
    public          postgres    false    209       3868.dat           0    33527 	   last_sync 
   TABLE DATA           .   COPY public.last_sync (date_sync) FROM stdin;
    public          postgres    false    210       3869.dat           0    33530    likes 
   TABLE DATA           ?   COPY public.likes ("ID_LIKES", "EMAIL", "ID_NEWS") FROM stdin;
    public          postgres    false    211       3870.dat            0    33535    news 
   TABLE DATA           �   COPY public.news ("ID_NEWS", "ID_CATEGORY", "TITLE_NEWS", "CONTENT_NEWS", "VIEWS_COUNT", "SHARES_COUNT", "DATE_NEWS", "NEWS_IMAGE", "USER_EDITOR", "USER_VERIFICATOR", "STATUS", "URL") FROM stdin;
    public          postgres    false    213       3872.dat "          0    33544 
   news_cover 
   TABLE DATA           @   COPY public.news_cover ("ID_COVERSTORY", "ID_NEWS") FROM stdin;
    public          postgres    false    215       3874.dat #          0    33547 
   news_share 
   TABLE DATA           >   COPY public.news_share ("ID", "EMAIL", "ID_NEWS") FROM stdin;
    public          postgres    false    216       3875.dat $          0    33550 	   news_tags 
   TABLE DATA           9   COPY public.news_tags ("ID_TAGS", "ID_NEWS") FROM stdin;
    public          postgres    false    217       3876.dat %          0    33553 	   news_view 
   TABLE DATA           =   COPY public.news_view ("ID", "EMAIL", "ID_NEWS") FROM stdin;
    public          postgres    false    218       3877.dat &          0    33556    tags 
   TABLE DATA           A   COPY public.tags ("ID_TAGS", "TAGS", "DATE_CREATED") FROM stdin;
    public          postgres    false    219       3878.dat (          0    33561    user 
   TABLE DATA           {   COPY public."user" ("EMAIL", "USER_NAME", "PROFILEPIC_URL", "LAST_LOGIN", "DATE_BIRTH", "GENDER", "USER_TYPE") FROM stdin;
    public          postgres    false    221       3880.dat )          0    33567    video 
   TABLE DATA           �   COPY public.video ("ID_VIDEO", "TITLE", "DESCRIPTION", "DATE_PUBLISHED", "URL_DEFAULT_THUMBNAIL", "URL_MEDIUM_THUMBNAIL", "URL_HIGH_THUMBNAIL", "STATUS_PUBLISHED") FROM stdin;
    public          postgres    false    222       3881.dat 5           0    0    captcha_ID_CAPTCHA_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."captcha_ID_CAPTCHA_seq"', 2496, true);
          public          postgres    false    199         6           0    0    comments_ID_COMMENT_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."comments_ID_COMMENT_seq"', 38, true);
          public          postgres    false    203         7           0    0    cover_story_ID_COVERSTORY_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."cover_story_ID_COVERSTORY_seq"', 5, true);
          public          postgres    false    205         8           0    0    emagz_ID_EMAGZ_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."emagz_ID_EMAGZ_seq"', 16, true);
          public          postgres    false    206         9           0    0    likes_ID_LIKES_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."likes_ID_LIKES_seq"', 610, true);
          public          postgres    false    212         :           0    0    news_ID_NEWS_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."news_ID_NEWS_seq"', 3, true);
          public          postgres    false    214         ;           0    0    tag_ID_TAG_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."tag_ID_TAG_seq"', 7, true);
          public          postgres    false    220         b           2606    33638 #   app_version app_version_version_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.app_version
    ADD CONSTRAINT app_version_version_key UNIQUE (version);
 M   ALTER TABLE ONLY public.app_version DROP CONSTRAINT app_version_version_key;
       public            postgres    false    196         d           2606    33640    backend_user backend_user_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.backend_user
    ADD CONSTRAINT backend_user_pkey PRIMARY KEY ("USERNAME");
 H   ALTER TABLE ONLY public.backend_user DROP CONSTRAINT backend_user_pkey;
       public            postgres    false    197         f           2606    33642    banner banner_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY ("ID_BANNER");
 <   ALTER TABLE ONLY public.banner DROP CONSTRAINT banner_pkey;
       public            postgres    false    198         h           2606    33644    captcha captcha_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.captcha
    ADD CONSTRAINT captcha_pkey PRIMARY KEY ("ID_CAPTCHA");
 >   ALTER TABLE ONLY public.captcha DROP CONSTRAINT captcha_pkey;
       public            postgres    false    200         j           2606    33646    category category_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY ("ID_CATEGORY");
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    201         l           2606    33648    comments comments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY ("ID_COMMENT");
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    202         n           2606    33650    cover_story cover_story_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.cover_story
    ADD CONSTRAINT cover_story_pkey PRIMARY KEY ("ID_COVERSTORY");
 F   ALTER TABLE ONLY public.cover_story DROP CONSTRAINT cover_story_pkey;
       public            postgres    false    204         p           2606    33652    emagz emagz_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.emagz
    ADD CONSTRAINT emagz_pkey PRIMARY KEY ("ID_EMAGZ");
 :   ALTER TABLE ONLY public.emagz DROP CONSTRAINT emagz_pkey;
       public            postgres    false    207         r           2606    33654 "   firebase_token firebase_token_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.firebase_token
    ADD CONSTRAINT firebase_token_pkey PRIMARY KEY ("TOKEN");
 L   ALTER TABLE ONLY public.firebase_token DROP CONSTRAINT firebase_token_pkey;
       public            postgres    false    208         t           2606    33656    galeri galeri_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT galeri_pkey PRIMARY KEY ("IMAGE_FILE");
 <   ALTER TABLE ONLY public.galeri DROP CONSTRAINT galeri_pkey;
       public            postgres    false    209         v           2606    33658    likes likes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY ("ID_LIKES");
 :   ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_pkey;
       public            postgres    false    211         x           2606    33660    news news_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY ("ID_NEWS");
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    213         z           2606    33662    news_share news_view_copy1_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.news_share
    ADD CONSTRAINT news_view_copy1_pkey PRIMARY KEY ("ID");
 I   ALTER TABLE ONLY public.news_share DROP CONSTRAINT news_view_copy1_pkey;
       public            postgres    false    216         |           2606    33664    news_view news_view_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.news_view
    ADD CONSTRAINT news_view_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.news_view DROP CONSTRAINT news_view_pkey;
       public            postgres    false    218         ~           2606    33666    tags tag_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tag_pkey PRIMARY KEY ("ID_TAGS");
 7   ALTER TABLE ONLY public.tags DROP CONSTRAINT tag_pkey;
       public            postgres    false    219         �           2606    33668    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY ("EMAIL");
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    221         �           2606    33670    video video_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY ("ID_VIDEO");
 :   ALTER TABLE ONLY public.video DROP CONSTRAINT video_pkey;
       public            postgres    false    222         	           2618    33577    view_comments _RETURN    RULE     \  CREATE OR REPLACE VIEW public.view_comments AS
 SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    count(comments."ID_COMMENT") AS "COMMENTS"
   FROM (public.news
     LEFT JOIN public.comments ON ((comments."ID_NEWS" = news."ID_NEWS")))
  WHERE (comments."IS_APPROVED" = true)
  GROUP BY news."ID_NEWS", news."ID_CATEGORY";
 �   CREATE OR REPLACE VIEW public.view_comments AS
SELECT
    NULL::integer AS "ID_NEWS",
    NULL::character(1) AS "ID_CATEGORY",
    NULL::character varying(200) AS "TITLE_NEWS",
    NULL::bigint AS "COMMENTS";
       public          postgres    false    3704    202    202    202    213    213    213    223         
           2618    33581    view_likes _RETURN    RULE     #  CREATE OR REPLACE VIEW public.view_likes AS
 SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    count(likes."ID_LIKES") AS "LIKES"
   FROM (public.news
     LEFT JOIN public.likes ON ((likes."ID_NEWS" = news."ID_NEWS")))
  GROUP BY news."ID_NEWS", news."ID_CATEGORY";
 �   CREATE OR REPLACE VIEW public.view_likes AS
SELECT
    NULL::integer AS "ID_NEWS",
    NULL::character(1) AS "ID_CATEGORY",
    NULL::character varying(200) AS "TITLE_NEWS",
    NULL::bigint AS "LIKES";
       public          postgres    false    211    211    213    213    213    3704    224         �           2606    33672    banner FK_banner    FK CONSTRAINT     �   ALTER TABLE ONLY public.banner
    ADD CONSTRAINT "FK_banner" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.banner DROP CONSTRAINT "FK_banner";
       public          postgres    false    3704    198    213         �           2606    33677    news_tags FK_detail_news_tags_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT "FK_detail_news_tags_1" FOREIGN KEY ("ID_TAGS") REFERENCES public.tags("ID_TAGS") ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.news_tags DROP CONSTRAINT "FK_detail_news_tags_1";
       public          postgres    false    219    3710    217         �           2606    33682    news_tags FK_detail_news_tags_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT "FK_detail_news_tags_2" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.news_tags DROP CONSTRAINT "FK_detail_news_tags_2";
       public          postgres    false    213    217    3704         �           2606    33687    galeri FK_galeri    FK CONSTRAINT     �   ALTER TABLE ONLY public.galeri
    ADD CONSTRAINT "FK_galeri" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.galeri DROP CONSTRAINT "FK_galeri";
       public          postgres    false    209    213    3704         �           2606    33692    news FK_news_category    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT "FK_news_category" FOREIGN KEY ("ID_CATEGORY") REFERENCES public.category("ID_CATEGORY") ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.news DROP CONSTRAINT "FK_news_category";
       public          postgres    false    213    3690    201         �           2606    33697    comments FK_news_comment    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "FK_news_comment" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.comments DROP CONSTRAINT "FK_news_comment";
       public          postgres    false    202    3704    213         �           2606    33702    news_cover FK_news_cover_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_cover
    ADD CONSTRAINT "FK_news_cover_1" FOREIGN KEY ("ID_COVERSTORY") REFERENCES public.cover_story("ID_COVERSTORY") ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.news_cover DROP CONSTRAINT "FK_news_cover_1";
       public          postgres    false    204    3694    215         �           2606    33707    news_cover FK_news_cover_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_cover
    ADD CONSTRAINT "FK_news_cover_2" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.news_cover DROP CONSTRAINT "FK_news_cover_2";
       public          postgres    false    213    215    3704         �           2606    33712    likes FK_news_likes    FK CONSTRAINT     �   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "FK_news_likes" FOREIGN KEY ("ID_NEWS") REFERENCES public.news("ID_NEWS") ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.likes DROP CONSTRAINT "FK_news_likes";
       public          postgres    false    3704    213    211         �           2606    33717    comments FK_user_comment    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "FK_user_comment" FOREIGN KEY ("EMAIL") REFERENCES public."user"("EMAIL") ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.comments DROP CONSTRAINT "FK_user_comment";
       public          postgres    false    3712    202    221         �           2606    33722    news FK_user_editor    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT "FK_user_editor" FOREIGN KEY ("USER_EDITOR") REFERENCES public.backend_user("USERNAME") ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY public.news DROP CONSTRAINT "FK_user_editor";
       public          postgres    false    3684    213    197         �           2606    33727    likes FK_user_likes    FK CONSTRAINT     �   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "FK_user_likes" FOREIGN KEY ("EMAIL") REFERENCES public."user"("EMAIL") ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.likes DROP CONSTRAINT "FK_user_likes";
       public          postgres    false    211    3712    221         �           2606    33732    news FK_user_verificator    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT "FK_user_verificator" FOREIGN KEY ("USER_VERIFICATOR") REFERENCES public.backend_user("USERNAME") ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.news DROP CONSTRAINT "FK_user_verificator";
       public          postgres    false    213    3684    197                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3855.dat                                                                                            0000600 0004000 0002000 00000000013 14024026461 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1.2.1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3856.dat                                                                                            0000600 0004000 0002000 00000000472 14024026461 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        admin@ptpn10.co.id	Admin	21232f297a57a5a743894a0e4a801fc3	admin	f
muh.rizal@ptpn10.co.id	Muhammad Rizal	ffaa10512cbbe43388cb4f6a97204616	publisher	t
daudana@ptpn10.co.id	Daudana D.P.	666cc8878dee41efd0f9fd733bf140bf	publisher	t
mariaputri@ptpn10.co.id	maria putri	4093fed663717c843bea100d17fb67c8	publisher	t
\.


                                                                                                                                                                                                      3857.dat                                                                                            0000600 0004000 0002000 00000000005 14024026461 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3859.dat                                                                                            0000600 0004000 0002000 00000000425 14024026461 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2496	1615863378	36.85.70.146	cP9l
2489	1615792503	36.85.70.146	CrOi
2490	1615792516	36.85.70.146	Y08M
2491	1615792528	36.85.70.146	4tdJ
2492	1615792541	36.85.70.146	DP77
2493	1615792552	36.85.70.146	d3k4
2494	1615792561	36.85.70.146	sBw3
2495	1615792573	36.85.70.146	WQAW
\.


                                                                                                                                                                                                                                           3860.dat                                                                                            0000600 0004000 0002000 00000000105 14024026461 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        B	Berita
A	Artikel
S	Siaran Pers
G	Galeri
P	Produksi
M	Milenial
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                           3861.dat                                                                                            0000600 0004000 0002000 00000027516 14024026461 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        50	17	irfanalfiansyah10@gmail.com	tes komentar iOS	t	2019-12-04 01:38:51	2019-11-11 03:45:26	\N
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
10	3	firnasreyhan@gmail.com	tes lagi cok	f	2019-12-14 03:10:00	2019-12-14 10:09:17	\N
26	3	firnas@ptpn10.co.id	Tes mobile	t	2019-12-20 11:36:05	2019-12-20 11:36:05	\N
27	3	firnas@ptpn10.co.id	Tes	t	2019-12-20 15:16:11	2019-12-20 15:16:11	\N
65	72	bambangqaptpnx@gmail.com	Puji Tuhan akhirnya cerutu sebagai produk hilir tembakau, yg selama ini menjadi embrio, bisa lahir saat ini... terimakasih Bapak2 Direksi dan Tim Golden Boy	t	2020-01-03 09:22:02	2020-01-03 09:22:02	\N
56	21	widodopurnomo567@gmail.com	mantap 	t	2020-01-01 19:58:48	2020-01-01 19:58:48	\N
58	21	tgunawan46@gmail.com	Alhamdulillah...Sukses selalu MITRA TANI 27 JAYALAH PTPN X	t	2020-01-02 05:46:45	2020-01-02 05:46:45	\N
31	3	bimasaishoku@gmail.com	hayuuuu	f	2019-12-20 16:32:32	2019-12-20 16:32:32	\N
52	18	bagus.kristanto@stiki.ac.id	testing	f	2019-12-04 01:38:46	2019-12-04 01:21:35	\N
53	18	reyhan.adani@stiki.ac.id	Tes komen dari mobile	f	2019-12-04 01:39:23	2019-12-04 01:38:01	\N
33	28	andika.vernanda@gmail.com	testing	f	2019-12-23 15:37:32	2019-12-23 15:37:32	\N
32	28	andika.vernanda@gmail.com	mencoba berkomentar	f	2019-12-23 15:37:02	2019-12-23 15:37:02	\N
66	72	fikrifaisal465@gmail.com	Semoga sebatang rasa bisa melangit di Internasional, mengangkat martabat anak negeri serta barokah.... 	t	2020-01-03 11:01:40	2020-01-03 11:01:40	\N
57	25	abilmiqdad67@gmail.com	Semoga tahun 2020 lebih banyak lagi bantuan bedah rumah bagi yg membutuhkan..... Aamiin. 	t	2020-01-01 21:17:44	2020-01-01 21:17:44	\N
49	3	firnasreyhan@gmail.com	tes komentar dari mobile	f	2019-11-03 14:28:36	2019-11-03 14:28:21	\N
73	73	widodopurnomo567@gmail.com	semoga ptpn x sukses sepanjang masa.. Aamiin Ya Rabb	t	2020-01-06 21:03:35	2020-01-06 21:03:35	\N
47	3	firnasreyhan@gmail.com		f	2019-11-03 14:23:15	2019-11-03 14:22:13	\N
48	3	firnasreyhan@gmail.com	tes komentar	f	2019-11-03 14:26:33	2019-11-03 14:26:09	<p>tes balasan komentar oleh admin</p>
51	3	bagus.kristanto@stiki.ac.id	halo smart people	t	2019-12-04 02:23:56	2019-12-04 01:17:34	\N
63	70	widodopurnomo567@gmail.com	semoga jaya selalu.. ptpn x 	t	2020-01-02 16:32:08	2020-01-02 16:32:08	\N
61	70	suhadi.ptpnx@gmail.com	semoga selalu bertambah sukses luar biasa PTPN X bersama mitra dg ridho Allah SWT	t	2020-01-02 10:34:36	2020-01-02 10:34:36	\N
60	70	suhadi.ptpnx@gmail.com	semoga selalu bertambah sukses luar biasa PTPN X bersama mitra dengan ridho Allah SWT	t	2020-01-02 10:32:51	2020-01-02 10:32:51	\N
59	70	angganteng@gmail.com	manteb langsung upload galeri	t	2020-01-02 10:09:33	2020-01-02 10:09:33	\N
62	70	sbupmsjember@gmail.com	Meskipun dadakan pindah tempat tapi tetap bagus....salut panitianya...👍	t	2020-01-02 11:51:53	2020-01-02 11:51:53	\N
64	70	dody.kristanto@ptpn10.co.id	smga kedepannya ptpn 10 tambah maju dan berkembang pesat..amin..	t	2020-01-02 20:26:39	2020-01-02 20:26:39	\N
67	72	achmad.hariyadi@ptpn10.co.id	mantapp	t	2020-01-03 11:39:58	2020-01-03 11:39:58	\N
69	71	septokuswitjahyono@gmail.com	Selamat tahun baru 2020 semoga sukses PTPN X dan selamat buat tim RSP atas partisipasi nya dalam acara welcome 2020 beat the challenge 	t	2020-01-03 15:19:13	2020-01-03 15:19:13	\N
68	70	bambangqaptpnx@gmail.com	Semoga PTPN X selalu diberkahi Yang Maha Pengasih.... 2020 tahun inovasi👍	t	2020-01-03 14:16:12	2020-01-03 14:16:12	\N
70	70	trisvijay71@gmail.com	mantap 👍👍	t	2020-01-06 13:06:21	2020-01-06 13:06:21	\N
71	70	muhammadbahruddinhidayat@gmail.com	Alchamdulillah semoga membawa Baarokah bagi PTPN X\nAamiin 	t	2020-01-06 17:31:33	2020-01-06 17:31:33	\N
72	72	muhammadbahruddinhidayat@gmail.com	Alchamdulillah Mantab betul 👍👍👍	t	2020-01-06 17:33:02	2020-01-06 17:33:02	\N
74	18	muhammadbahruddinhidayat@gmail.com	Semoga bermanfaat dan Baarokah bagi PTPN X...... Aamiin	t	2020-01-08 10:42:27	2020-01-08 10:42:27	\N
75	18	muhammadbahruddinhidayat@gmail.com	💪💪💪👍👍👍	t	2020-01-08 10:42:57	2020-01-08 10:42:57	\N
76	84	ikhwan.krisnadi@ptpn10.co.id	 semakin inovatif demi produktivitas	t	2020-01-14 07:59:34	2020-01-14 07:59:34	\N
78	90	angganteng@gmail.com	semoga 2020 membawa berkah buat PTPN X.Amin	t	2020-01-16 09:37:10	2020-01-16 09:37:10	\N
77	89	ikhwan.krisnadi@ptpn10.co.id	maju perusahaannya selamat karyawannya sejahtera petaninya	t	2020-01-15 15:44:19	2020-01-15 15:44:19	\N
80	92	muhammadbahruddinhidayat@gmail.com	Baarokallohu minal Aaminiin	t	2020-01-17 20:10:47	2020-01-17 20:10:47	\N
79	90	ikhwan.krisnadi@ptpn10.co.id	semoga ptpn x tambah jaya	t	2020-01-17 13:07:38	2020-01-17 13:07:38	\N
82	94	ikhwan.krisnadi@ptpn10.co.id	semoga membawa berkah untuk rakyat kecil amin	t	2020-01-21 07:11:37	2020-01-21 07:11:37	\N
81	92	muhammadbahruddinhidayat@gmail.com	👍👍👍👍👍👍👍👍👍	t	2020-01-17 20:11:08	2020-01-17 20:11:08	\N
83	54	yietmas@gmail.com	sangat membantu untuk merubah pola pikir karyawan	t	2020-01-21 07:57:10	2020-01-21 07:57:10	\N
84	99	suhadi.ptpnx@gmail.com	semoga selalu sukses dan jaya PTPN X bersama petani tebu nya 	t	2020-01-28 13:43:38	2020-01-28 13:43:38	\N
85	99	yogar.r@ptpn10.co.id	mantap kaderisasi di petani, semoga berkah	t	2020-01-28 14:28:40	2020-01-28 14:28:40	\N
88	101	ikhwan.krisnadi@ptpn10.co.id	regenarasi untuk Masa DepAn yang lebih cerah	t	2020-02-03 07:40:40	2020-02-03 07:40:40	\N
87	102	ikhwan.krisnadi@ptpn10.co.id	sehat Dan selamat karyawannya	t	2020-02-03 07:40:07	2020-02-03 07:40:07	\N
86	103	ikhwan.krisnadi@ptpn10.co.id	revenue Baru bagi ptpn x, jaya selalu	t	2020-02-03 07:39:38	2020-02-03 07:39:38	\N
89	105	yogar.r@ptpn10.co.id	ptpn x mencerdaskan kehidupan bangsa	t	2020-02-05 08:49:36	2020-02-05 08:49:36	\N
90	108	ikhwan.krisnadi@ptpn10.co.id	semoga lebih baik untuk ptpn x	t	2020-02-10 10:12:26	2020-02-10 10:12:26	\N
91	107	ikhwan.krisnadi@ptpn10.co.id	perlu juga kunjungan ke Mitra bisnis yaitu petani sebai pensupply	t	2020-02-10 10:13:18	2020-02-10 10:13:18	\N
92	109	ikhwan.krisnadi@ptpn10.co.id	semoga ptpn x memancarkan kebaikan buat sesama	t	2020-02-11 08:59:11	2020-02-11 08:59:11	\N
93	110	ikhwan.krisnadi@ptpn10.co.id	 selamat Tim humas ptpn x	t	2020-02-11 14:07:17	2020-02-11 14:07:17	\N
4	3	firnasreyhan@gmail.com	Tes	t	\N	2019-12-14 09:59:02	\N
5	3	firnasreyhan@gmail.com	tes lagi	t	\N	2019-12-14 09:59:22	\N
6	3	firnasreyhan@gmail.com		t	\N	2019-12-14 10:00:26	\N
138	204	kzvyttvtqe_1576843944@tfbnw.net	vagus	f	2021-02-25 14:53:02	2021-02-25 14:53:02	\N
94	111	ikhwan.krisnadi@ptpn10.co.id	Semoga memberikan manfaat bagi masyarakat dan semoga PTPN X untuk selalu berpartisipasi aktif dalam CSR.\n\nUntuk kemudahan dalam membaca berita di Digimagz, mohon dilakukan peningkatan pada tampilan antar muka bagi pembaca.	t	2020-02-19 07:35:44	2020-02-19 07:35:44	<p>terimakasih pak ikhwan atas komentarnya, untuk antar muka akan segera dilakukan pembenahan..terimakasih</p>
95	106	ikhwan.krisnadi@ptpn10.co.id	semoga dapat menjadi alternatif untuk memenuhi kebutuhan listrik bagi masyarakat.	t	2020-02-19 07:46:36	2020-02-19 07:46:36	\N
96	127	ikhwan.krisnadi@ptpn10.co.id	ptpn x bersinergi dengan media Massa untuk Kemajuan perusahaan	t	2020-02-27 15:21:32	2020-02-27 15:21:32	\N
97	134	firnasreyhan@gmail.com	Berita yang menarik!	t	2020-03-08 13:12:53	2020-03-08 13:12:53	\N
98	134	digimagz5@gmail.com	Keren beritanya	t	2020-03-10 19:39:46	2020-03-10 19:39:46	\N
99	70	digimagz5@gmail.com	keren	t	2020-03-10 19:48:19	2020-03-10 19:48:19	\N
101	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:38:54	2020-03-11 16:38:54	\N
102	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:38:56	2020-03-11 16:38:56	\N
103	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:38:57	2020-03-11 16:38:57	\N
104	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:38:58	2020-03-11 16:38:58	\N
105	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:38:59	2020-03-11 16:38:59	\N
106	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:00	2020-03-11 16:39:00	\N
107	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:01	2020-03-11 16:39:01	\N
108	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:02	2020-03-11 16:39:02	\N
109	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:03	2020-03-11 16:39:03	\N
110	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:04	2020-03-11 16:39:04	\N
111	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:04	2020-03-11 16:39:04	\N
112	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:06	2020-03-11 16:39:06	\N
113	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:07	2020-03-11 16:39:07	\N
114	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:08	2020-03-11 16:39:08	\N
115	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:09	2020-03-11 16:39:09	\N
116	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:10	2020-03-11 16:39:10	\N
117	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:11	2020-03-11 16:39:11	\N
118	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:12	2020-03-11 16:39:12	\N
119	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:13	2020-03-11 16:39:13	\N
120	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:13	2020-03-11 16:39:13	\N
121	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:14	2020-03-11 16:39:14	\N
122	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:15	2020-03-11 16:39:15	\N
123	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:16	2020-03-11 16:39:16	\N
124	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:17	2020-03-11 16:39:17	\N
125	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:18	2020-03-11 16:39:18	\N
126	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:19	2020-03-11 16:39:19	\N
127	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:20	2020-03-11 16:39:20	\N
128	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:21	2020-03-11 16:39:21	\N
129	134	firnasreyhan@gmail.com	berita yang menarik	f	2020-03-11 16:39:22	2020-03-11 16:39:22	\N
131	136	muhammadbahruddinhidayat@gmail.com	Alchamdulillah... semoga bermanfaat dan Baarokah utk PTPN X beserta seluruh karyawan	t	2020-03-12 08:46:31	2020-03-12 08:46:31	\N
100	112	firnasreyhan@gmail.com	Beritanya menarik	t	2020-03-11 16:35:19	2020-03-11 16:35:19	\N
134	138	mohammadsyaiful.rizal@gmail.com	semoga bisa menjadi modal yang baik untuk precision agriculture di ptpn x	t	2020-03-13 08:31:36	2020-03-13 08:31:36	\N
132	137	angganteng@gmail.com	sukses selalu PTPN X	t	2020-03-13 08:19:50	2020-03-13 08:19:50	\N
135	129	mohammadsyaiful.rizal@gmail.com	selamat semoga perusahaan berguna bagi masyarakat	t	2020-03-13 08:38:01	2020-03-13 08:38:01	\N
136	136	ikhwan.krisnadi@ptpn10.co.id	Baarakallah.	t	2020-03-13 09:44:13	2020-03-13 09:44:13	\N
137	70	digimagz5@gmail.com	tes	f	2020-03-15 14:07:26	2020-03-15 14:07:26	\N
133	134	angganteng@gmail.com	mantab pg modjopanggoong	t	2020-03-13 08:21:23	2020-03-13 08:21:23	\N
130	134	firnasreyhan@gmail.com	berita yang menarik	t	2020-03-11 16:39:23	2020-03-11 16:39:23	\N
139	206	pm.ptpn10@gmail.com	nook blh ñmm. n	f	2021-03-04 11:51:12	2021-03-04 11:51:12	\N
140	206	pm.ptpn10@gmail.com	p	f	2021-03-04 11:51:14	2021-03-04 11:51:14	\N
141	209	kopralapp@gmail.com	selamat	t	2021-03-05 18:52:38	2021-03-05 18:52:38	<p>terimakasih</p>
\.


                                                                                                                                                                                  3863.dat                                                                                            0000600 0004000 0002000 00000000572 14024026461 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Agroforestry	<p>PTPN X bekerjasama dengan Perhutani untuk penyediaan lahan tebu yang nantinya dapat menjadi bahan baku PTPN X</p>	Lahan_Pandean.jpeg	2019-10-22 07:16:31
5	Welcome 2020 - Beat The Challenge	<p>kumpulan berita terkait perayaan tahun baru 2020 di lingkungan PTPN X yang dalam hal ini mengusung tema "Beat The Challenge"</p>	new_year.jpeg	2020-01-01 13:13:20
\.


                                                                                                                                      3866.dat                                                                                            0000600 0004000 0002000 00000001004 14024026461 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	edisi31.jpg	emagz31.pdf	2019-12-27 09:57:33	PTPN X Magz Edisi 31	\N	\N	f
10	digimagz_32.JPG	emagz32.pdf	2020-01-28 08:12:41	PTPN X Magz Edisi 32	\N	\N	f
11	emag34.JPG	e-magz_PTPN_x-magz_edisi_034.pdf	2020-01-29 07:32:43	PTPN X Magz Edisi 34	\N	\N	f
12	emagz29.jpeg	emagz29.pdf	2020-02-27 09:43:36	PTPN X Magz Edisi 29	\N	\N	f
16	index.png	sample5.pdf	2021-03-09 07:41:19	PTPN X Magz Edisi 38	https://online.pubhtml5.com/zazk/difo	https://docs.google.com/forms/d/17kX2kKyr5N4E3DP4wUVGI1uv2X19kBmKTIMqAIyXEnw	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            3867.dat                                                                                            0000600 0004000 0002000 00000400333 14024026461 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        dwH_E_Mqwwg:APA91bGeit3dPwpNzBtA9qi0Mf64WuzEDVeejud0TUMTmoS3A0jjt4XhwslpErHb9LeQCM_KG_AsTWjXSsoexLJEca-EREF4X9QY58FEcZcvecVjeG6D2S7WR6AeVF-6arYszI6aE0_e
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
coktzSCgUv4:APA91bEfnerguZNHRLWsFPm97b5hSMRY2z-UlSAnnOOMRMNa0-9c7ECA4y3IqJSpj22oDcU9d788ZEZC4ilFviRVOCYp0TxWzztc46dG-_8ZacGJ2byjG6E-l1JzAhj-0Oml1JD_KZib
ffOBbiqNI2o:APA91bHbfLp0n8NrdVD2cBjUsFYJtcy_lTQwNK_yBMEOiOcTL73rqOdw88MbGddyDE0IqQmeGMm6aV7pj_oN5PyIix6Pl36bgoMgYTKpl0vnbD9JUeBdaNMk1Vl0wAJZHMW6dYcJ7ePM
cDeYWQF833g:APA91bEQ9O57FreB-eg-kIk6TJK4FcJn9XnpiQ0dW_QDRK8G9FU9jyzH4hAtmtfBvp7TezJ3ZyiPf8sBm5Un6yBuASTxktUQk2-krLzvtIgBIbc8uP8NtDVunK7T1eryJPu-qNFz3qQO
dyGgTrVHE2Q:APA91bFobFemUFPy7PlJIrYnoD48Num3Se3S7s1RjGoAgiFf1TuNsd2nTK3tsEnaQ8fBdSTwyoO9-7QA0cCThDZcJolRbBFG_kyg-0-ntHjCkfknHAHSkuQDi3smAb61asndmP4GllrN
fNkg6keKGKY:APA91bGb7lICM4h5avdiMKpLxI2ima0s6a52XV6XNWWAOE9giOmhy7vHW1GIOhU3sjEZS2leSTWdCRbEyHrH_-4QuAJddDxzpxJhpgKBiczw1g83SUQN-cHI50iIxp0UpT1EuZ4z96o3
f_HRf_wjMrg:APA91bFP2_bell-mdTHAX-65cfy-7k8OFX1JotinnB_n704Cc8sVtosRXCDLDN9_jehtsZQdXQkFdT02JkmxGEWJFprxHM6rWuQlJeE_98_NYWMWritNh1EQOCUNEGVFReYEdEBjz4aW
fF8hxIcT_Yo:APA91bGBxTMAiFb7vtajwSnS1uelshA6c7F0txDa5tyvGvEb67ZSwPxVnsedw4cGoqx3AO30_7c_uYtCBr0mYCvciJfUoClJ6uVt2gtLDiW9s63BD_Yr7hEfjyM1sCbz1AQoWchFeudh
cHMPDDDo9eg:APA91bE0KGdkUPBVr7jaBKRsu4cc4hcrKa8UmdeOO-x8o59Wk1q2K6Wiymna6rUIGDhhWMQW1XTeq_Mc7SlNsAywEOn6JS-4-rgMx3EF9sKVV0D5B51QdPAIAva1a_F2U7GTF9uYJI1l
eZmwmrBpqmk:APA91bGCcwqxj8KnvTWH5IY9QGgw8-ZQnKzj6XPzax17UKO27PtjI8q7NZ02INNfZT087WqhenaeVXMJzdmoUanD2QbBn7DfKt304XFCbbIK2mJvBCAHlfSQKKe2qJNkTthdKGJLvtdf
e8-xNkpGsmA:APA91bGeRSAaLTm3d6cZ1cv36qrUhoFQq2m8rzindjQk46vYpqyXnhvhT5MozjDLTMb9W9Uwlq0of4RYGQYY9gFjytvkQDtsurRgSdi9GRDzklzKa2wDDEU_iHbXN_Mp2lMf1mzPirET
ft-j168X-3s:APA91bGmfBn_GOfovXKlfVdta4jKnVHeMH8jKwN7h8rrsDyC0FyEgT447uMhN27HugK7dJBvQR818M78lci_044ry84sXrdF7jITqQvcEBAlNK1o0IL3HTP0drhVnqgHPjA4Gpjf2qoH
c5CV1KkqmRk:APA91bF5J6XnvJiL41IWsuoKwY6kOfOGecAQeNyGRfCFdsu_9SPwwsa3T2kXlcyDQG5IkWjjZJ_yvFKQQCWXEfMvp1IinH87R16aAY-BBsuKU3dUkdv1NeYfYA1AwE2tlvFK6-w4SjN1
cekZVd97ciw:APA91bEfwectT1kCx7xh5773G_9SwTxjjwmZJvcs5KPz92A93oPHcRVKjVhqmmlb_be5htWZaaHTIMxT271fu090FUw0E4tZovhYNWZdxsLmyEQzXy3gLlg_e32qPjWrQB66H2LFVb-1
eKkB0JjCCBM:APA91bFx-fpfQvt-yplZnf5phlWVMvjWnxzudAfMizMSO7gQxe5qcPhJPMeJtWC6iA7eCgnUaoptNaf3YuUyJeSJEmX8ZS9Xd25Qcn4poQH2nfFGVmJ-jvb00n-U9Inz66SFW76j9Jlg
ezRpZUdNxU4:APA91bHAuL66yCW0cTq42pkFs89_3GBil5Qun4ls41OTcBorWRj6Lhp-a9z4jCW1RJBRENsDohGDwV9GUG0g9Kr5Fxd_Zf51CxA0y_PsD4fuzHtMVKoB_lk8S6oD0snyti2-f0Eclmn2
fYOH35o59-o:APA91bGafx_WQgHtZ9xIiIFljBWGPUs5dCg0L0436uzLTiaE_fikeKeMwTBlf24ZUUaWrKhm1Fz7Dn1hdh0dPmz60ZY8UxQ_fdqH-7858DAlCOJ-OnbWGqFLUyOxTBQLZXmOaSOtE17F
eHrLE7p1UoA:APA91bFtp8wkayi4apYp9aa0RIFwxfmIWcsrSAuSsyJF1UapRN6xI7Q1x3GX3s2zYugmh4P1hvcSTXObR71I3yZOb50BUJmUo8cv-EXXWJdqjeI_NmXf3vmobx1REtLJFW8IZRicTIzk
czIVYw5tLZc:APA91bGWG8j8R1cY-6RuqXnFv71odiW8HSLaeV2F4raNUrVhucYmRO9omiQAfzSXSjwIsrtDFLfEEJr2ONbnBTf9wpivhdkvPhU9JlHtV1HQDpNMjihAk8QfcptXRgAgs47anb8JPyQ-
ctOmYZXjnFA:APA91bE68hpDC3j8_YytAFXjbG3aJIiB8EdXEuZqSubDyc4pYgEQcKBuMR5LpVqCSwOSd5G3fy1yUCeJ8S7S94brWCzd0-pHZorMKNcw8mwZ5W2DZpfMIaSSsopy7hI_r_KH8fReyOLv
cemAXZAJhdM:APA91bFjgbpo9MnwfVEuLHMzS1WAC2A0nEPBxf1ABpMtQKFpzDwywXSTot805NWzD1KG-1j0rvplgAxifpUA_Ma_4tZkQzNccfS3RIzPQyjSBmy2LneEOJW6QuQXq8aOxR5D9y6VmDWW
e0Q_VFioM0k:APA91bGk0HNxQVDE0Zbcz0XsVAdbbN9UWA4IvgzKSVmtntqthGCi5BqIpRayLhF0-4Zhyx-TOH9-jJzZawAjS00oLxEbSxpOk5NTh3xqUpQVad-My86yCgCHhRPGU61p6nbh4D-chLvl
dzzCwAJB4dQ:APA91bEuDeuLtMZ2TaW7Y6aMuY_A-b3_xUeq2GmXu9SwBjxl0GCTl39mF2Tzdk5YFHE6j7zxHViqGzPKQdfVdYUPA-5e7dFcf7D0s_gcUVl5I5rwHiV_RxsVskFE_ZfCkeaPAp9bEdsN
c1Ij25HgXMk:APA91bHsXjJVSPnYOhcYbBLIjSa1jER4jWZ2wihueeNAyTZ7GP2zTdnmQdqUO8lpTBOWxNf19dLxLslzFUsbtyz1a-K_Bz3T7wd9mlmg33_Fbsl1eVaxy8DdhEw5ouO3FGS_O6WJmlyp
dn0qdbCfIM8:APA91bG5d34FrK-InRwetA1sZyM0R_a23CrAM_KVgwGlSysF_L-tQxLt0AhQ8Y047d9ic7VL6l41dZ0tFtoj4llNR_y6nJAgAcWoatikx4LCQa5P-zq30Dqujik4S0N9YXN8WCEm8HSz
fjwwjEOPY48:APA91bEuY95a5nPTq4T17nU_4RHybfKrLitWUoMg2_9vllrzTGLINnO6OY1vYpQrTaNuHbdssVwGxao3gwnZrWQTD8zUJM_IMXvwVz1fu--QjZhMyoHPpOaGwBV6TCtKE8Y2uf_WgN4R
fyHQvsqTB-4:APA91bF6HTsBf6bkeGwHDZOo_PJZtgmWX5KAB5hprTu3KaCf73-JCHsymL436kOK5ym1a0v5-He-qNOx8hajr-SL3hjrSLqag3D07PXPq-se9l3aqgkW_3lwd3EvpGRLBID-ZULWlL_c
cRm7dhGpRzg:APA91bG0Rpyu7aV6zyfoTytVe5Zc-9nWdRmSs6ywYOKYCHjlIn7htaySpoLEid01zqQkCsQ43iL38F9842RIRFzi32rAQExaZwn5ruoU1a2w6B4kmzjoiBMiI9rmZFELv7BjFAykuxHf
c2t5SsUHU1c:APA91bFaxiHZWEm6o1BBmFK3hpK9HKE_Ex9mjN8Mcjn2USlT-gNVwxXRQl4mFWuuhKChqVmWnTHEGfUG2RBzvHbdgKUMwCjlh5Nwao3AYKyo1XLgAilFk0A1VQ-3k1dnzQwxGeZje3rK
cQhntFod6Dk:APA91bE9jKaD8MJcclUngoeX2R8cHGM45chCKHpu17kwD64TraYuYCMjAcg1iwBdZNbuiO4xZfDF21m0QtIRoeLWc0liUwYfErM17mF-vs9kgJuWE-Vft1SM02aYG-_dpG8CBPlTz-ha
f63cGmULI_Q:APA91bGLv8CRFp8o4UwEgzHN1jWfxQDr991N0wdfj5Uqsj6cqQNDJzIRFZw0GGMZgHhBBIrHKvv3-p1fak_1eTKAQjcQwHZlU7DUyYfZsEfsAOm1TPlMrAB5e3sZcpAwBTrEfattx6Cm
d6K1R_dL3Ww:APA91bH4XvfRbnkOdqZjR3b859TcQv4dNpKz7Ru4zpOAiUT1qSn2RPgor6qDFygcVo-ggDL1eHANYE1HkcvxeaYDTuzPKtuq805liIiiJScP7138r5vkhGHCL4K1wbYYgsf22fXWD8uf
cxXwJBDk-1M:APA91bE0sEOsHQGjE-y7pCITt3CzpjUGNYXDNlDEDQKJgUzD-oLa7kkUEo0qfAKwL6ZdLRH4p4ZFCc6pxq1IS1iAF4JxdPluhUxIloK9b_U3NQs0LDEB--hXsIiGccyEkrC4wFXCiv7d
eyjzp1dTzAk:APA91bHl6NLdukblXNCTgB8hi9G5CiID9CLiq0ATRiT_BLEmjSSkxMMjmdTESXlHw4a6IOQ3t-_s-EZEMNjYnFrKd015fyNipk6yTy-YwjkPoZ-S_J7DPsnBix9UH1SSMHsxP05gweGD
esr8h9wPZ9U:APA91bH6WQj82FlK7VA-FpcuxaB86pN7VSehQeAz79fdYKEkgfiSLdgA94qZ4pW7d7RMiRMMdN5K7AmRm3Y5_NLGXmXsOQ1VMocFXeFs8X9_TcfK2eOdNcAhX4XjfZZ_XKRrHfCmYYER
cZrkSqeEJrs:APA91bEBavbT5q1nLPq_9ev0zztpwSsIF-MOwNsBLXVAU8qQYfE7y7EKLN5SYgF9PA7sPT71mup7GBRTsM_ndfgVAj5ndsIEvXRgOQAwapQ54gaFhiIJmplcvQui4ZkrepzXMpDsilKb
ekRqOnpFTLQ:APA91bEMPxQ5ZKF84Dif0hQgNkc1Ph2c8H1xpfnEY2y_gZRqblny_JkEOptUg2TBhTZU6zKRx-zsQ1KxYdCtuRXV0FqR_vpIl9BooOEi0Yd5SkLKfeLXvhloQ5eZH0LwbIfO-JTK51e_
dEUPkINf-w4:APA91bE0f7ve1-2aSAJWwPDGJTYkyxoOUVRZnINSZVmP3iVAa7FjcxHU5V_tiXO0e7w6GEDYnmRJEDbCVRTL0KVJnI01CpjHhaWIjdRVCDmVNd5_pTJJUvz6BWgShSB60lqs9M59vFx2
fBGEsFJoKzA:APA91bEmXVR8KqD9kL1Nr_8OhjFw1jA15ppvvSE7qjit5M4CYpQWm4OESxHoJjjOwE6sCsMQMQujW3FR_s40-EPgJ03umg2QwdmFrrkOmLfbIOJlrNoQzL896OjC3MpXVJrGieHdNZNh
fuYteiChhJw:APA91bEezmaL_XPU398Nc6f9WJQgOQ46o5mtb-HfJZvoY7dznS93D0CS0Eq5zjWkkHYdjVR_7BzGvscIN394Dqwt0yVk4KXo5ez1HhDgWHQ6A4hdUuYYh7upj6B2mM0wWsUG7mhE9M75
d2ajs0UTUtQ:APA91bGj-VIri-Qz0FQ7u2v9qkN_GpwgBSHOt6L-ItldbE6b6fMjoHefpOQHzknqOt9X2LrMeMfTAt11Em-mLc6BWhQ_wQerVBEloExhbZurR8doCUIMu-9QURQKh4nLMk31mGRUII66
ciw6SjWKOL4:APA91bG1lZHsjamtsmtkPmGP1vxFSkLYsZyvRqAo5HMdwqnVtXkNL5br12bQTsS43Jdg9OqD--n9Sm8oNRkY0AvCaxArRxg1nVplpilVKivDcD7W0XpgGgLQ3gMrB5TJ6VYDP8J2sfNL
ftGKg_gjwBw:APA91bFuNN5TieYVccwBaNJRBSAX2b0v-Dr8FBfnx09u3GlnepdRih9MZ0IBydp5cPA6NqqXIgiLUA94_Mwhc60OrUwH_FxSMWmc-v44wqGDRiut1_yJ1tcsCBWVJjb40pmfXS1jnrnn
dTNvEViPMSI:APA91bEDNIKUz3M9AoKrJuxTmxYdamHoCgJHSx9EJJcMH7cTUHNr7N8DAIhYjHgmWj82klz9WHf7ZXpa817-OlopQhN8JzEWZKpb2De8XEANVYOx6709nOLnxSvR1lFnK97VvnBKfDW_
fzZClan4BrQ:APA91bHSgrK20mxtVzsu8lfuXMlfTDiN1zIaGg8rGm1nMiIsj6Waa_p2415_lt5tNvFUER58kL421ngha4qyabdYjH1wRTnc0YUWX3t1qLff5SQbpZuktdEQnmdpjkKQlhPRQ-1nf8KW
fWMZfJoQFeA:APA91bEEdVJ-UE85CMTN-4sBnwoF0--p172OkBrcayINLuXxKlbNsxawQ3oP-06NmSpecgepp3ZnifMdrpdUV6E8qXNe73Z95CUgS6OAi5iWGeI9pI2t1n5i4eftVJ5qrlPIvFkEkmUo
eTKosSOK3bs:APA91bFhQCQsqeseI2lMsICZAT7e1CagtNXrh_1sLcmOs4ra7wHSUFFX7WymbiRtGYXAHFXgXQQBmgMBvzMK4HGX2U1uUfCTLxk4AtK9dU52T0fQzMXPMQTH9ZvfDbb85NAcDnK_MbXU
flp5sNy1HJw:APA91bFSY0GZ1F0Ej1E9kQqXRG2VilO8RWHHZKMpjqlHnYmjQkc2jv-kVRf1VmqKaWxVQbVBH4Nml1pjNwzvtqezpnjbz_gMjjXEyToThZ6Klo_0u-Qqp3gT5X0cdrDC2VfUsdl3q8TH
dOrAtc_g1FY:APA91bGJF2A8fuq_vOkmS3rsrkIO4lD5vKGgOHrTuAPB4EEnJ6HdGEaCQtYsOuqfSN6CQaYszsYApN7xapB6KqzcF_zZMbgGrdHKfNO8B_cHFg6wKOHU-GVzCvnABd5W0E8Y_H9E9hC2
dO93dgcMM0U:APA91bFyZpYEzzsgDidan9UWQKNw2GJ9vOldxU8kXIKERL7nxbM96AqiO8Y4fPXAC1WrEoIl-pcFOSQaLQCehb5kA772tjcjbVgbn9qgVq0Nx7RFSHrXkHIQeWP_HZisdqbQHZnde7mt
et_AUax-aZY:APA91bEU2mSM3W5_uE9b8zNEWxqzW2UZMvvtaGDb1rg9B1JwA0SXslBf4A7LejjzjirOf5W1BwO6S-bXWaZyLVePpuObFDPTUWP0ni_ANHR6X70gXYWdYaGRiFIlapunkBGqu4jwRhdx
cqFnXwuEXW0:APA91bF5KknnvYnLcaMPN5uLo9G4cZZFjy7a2h1Czb3nzCv8R4XaIDWHxBo0c8t0O_TWvgiX01k2sAp-AmFffu5Ofs5iRGRtzHl8zs4uGbF3x3RDbK7kRgBsF65BmL6pcepk2lyxI4EJ
ddmTwL6O-f4:APA91bGf5XaLVVoVHr-eaW2bGhQjMkqd0iT-euuw7HpZD2vh_cRVpb6LTyUG116L8MNqEKY758sLo_6jfh36PZvjuElfZwoAlAq_AWQYxZBPDwLczaiqzxZXHsb2o9iyX6G64V05CMyF
dNXI8G4GTAo:APA91bE97zzIdbHYI_2g1pFKR3Pij4lNGzZZwWyAa-A_XCL5dz-47zQsG_Nk9Y7BKWTWR_wAbSt85Lp0fvkN8Uc9kN_55wrPt8Hf7GDBwztUNH6a97CbKwK2stByO6mgFsrulLsWazhc
cJdGcM0UZog:APA91bEgkQexcRuFP6wzRvPmw4mjCtR3Hkg9suU_A5-rmrhVUj5dzGaJlEOZPICEGZZrIlMdOw22_5m-Dg5wkOmfNIUyH40z8IhPIRbXkV8D_Y22xq4_Wzn4JujzTF8p2OO7cW_3VfZD
fsNY1NQ4LR4:APA91bEyzMZ-08Mgx2PrWReG4AmxiOQL0XzGR0IDOBFHnM_o-GlCywVisWLhtAXXGKghy9hak4gauDze-yOm4cffBbSJ-FHVOvbvfYkntF8eBKlKTyBKZdNbnYvomZ5qPhgaaUPYsSxP
dSTop9Gaz8M:APA91bGcLuamstWRcqsp9LJR6byVNFK2N3Fwef2V0MG1-6OMllxLSRPJofhxYwtI7bRg0_5w9eYHGgk86OS2GmsfwXY-Y8wqUyZ5YLZzePRgnwRHOQoEgqYHcrjGXiJoWEeQslCzf4YQ
ezFIix0K3cA:APA91bENBbZ69nmzN2hktzbgZYDaKRnph0Tnqk50xyAjsnm-kYh1dqIVIQK-zRmTFilZ74xMs11gDA020q7_M79u-SHsz97_TS9VwnRMOei9PYa5W3TX_lpyGiMqHtCJEZcE4cp_xW6d
cZ40UDxy5GM:APA91bFI460rr7Y5VqaJyDRetphTCtyBVGgZ86Wa7S_WuQaVXtKafcTBg4JFAS9rM1J4ORBpgwz9BtFw5wTvxd9BBtQNlsl5iEutHEvh4DrZ2yio_PKZ3-E4CBBmlCBcB7o5T08MsB2p
e6ig9WreOgQ:APA91bFbB-6Xq9ZVRxbYlK75CurhQHCENtP3cvtWBe31yrmvn7nnZROPwvJL3mocJDyoWj6cdq7dHL7Q5F2mqbZPCm26wE5NKCSVLNKI2aM1_y1V8kGazScpx55hnrBTxRO4Kb20sbk3
ehfdffZFG1Y:APA91bHSFEA2ptcmvBwBmcHFuxgAN-CG0dpvRC_-m_ximOsfzmyBgRBbSCSlZG9DlOCfc_9MYkJmKNbEYcwEvDsNK3fbbNl700xUIDy5xIfLE8Madb4BmcVQO8Y7V3ivp9hNJpzuKNjf
eoXGPq5Uze8:APA91bGBq5cWlUlrdpMBTwGcJFZ9JhAgvjC3vLyC2UZN7dDE2jsoJ8TjSa5sXGAug4Ftn08dLpGO6IkqjFHWzZfR4Cem7UIJQMFwWBikXrHqHYdfIoARlyBFuYkTeRKFkQ1PuuW_mcM2
exqpfhvbMMU:APA91bHTkdJqSBo7M5uWP8ugG0XJ3IBI17VbTWawP7EaC9rzCkzxWwaUcAGTFHukbeA5WHY0qthFmHbTcV3Xoq5FLrbqObkfP798HthoJsr963B62FEtjhVB3q1I5zXUwmjroMeV_OpR
eLD1H3DdCpk:APA91bEMVCkmO139X2BbC3UWgBFUl3_WLy6vA1y9AHSh4Aq9C6iwCqaZt_KPb7UW5XutFjkJwNBZH4YRKa8GcQy_pqB-nNdsNosiz0jT_vYdCqhPDORSmkS3Jw3jSKPoReNu3PpBP1nw
cGs0vj5L6eA:APA91bGRjOA6kNFq2D6XCEveZL8SF2OWRfRUlYPXOc9kKpUXmCziNc-kkAfFqF8R9pqHBzYwF-UQ6a8mztzSrbBuRWH3UA2eGC5P0A5s-Eu75LxOtdz_SrPIMdRoWDqWJ8gka0Q2djod
dQRParWzEwY:APA91bGA45m0CCx1Fe2r96NA-GSq0by51mVXvvVMMBMNzLn4puOmP0ebdGt7W99au5V8sNstMbv0oE-HzyJhMajOeYItJ46gCyJXMO6E6p_GITAr1FN6x2iuaWzxR_95IpH5qI_TnmGK
eFRX65EoVww:APA91bGtt-gtMXU_uFoUQc9AeBaC4gJl4LEEl2wHctTcpB9nBbBMRnEqucwzx8zklAOt4PnkmvtghDDgZly0WrgXt0chvV3s2TPsXfR7i_sK8olybZndT4T4euBCU0Cu29Rbb2mgQZII
c7SFSNeW4eQ:APA91bHLhBVUGRdt7BhetFoLa2Z_LqT0F1MJR_uTcANSXfhzaEjWSTs2Zp-SXY1B-HipDp4QV-Y-vJPouk_mDH-ET_WUOhHERQbjrOR2ma9uWccT8zHb710xNWmNfZwsY_4bWbM8qWRA
dNe_73x7sEU:APA91bEUySzwVpz0iLXtIPP6Gn4NcI8PoblHsWCTpgKQCObUOgYAmRJlmyxUrhO4wjZxXb4ImgAu7XcWcYeTrh2Gjr1n1t5mQYB9K64Bl9rfc8LFdgl2g51IwRPvjl9_UMI6jsyTkZ_i
cnRW8s79Vyo:APA91bFFi5-I_Givo4rlI2yeBQXxZA7EvSr_FRb2vDsnjMbotmT4cy9FHQUY9eNExzUpe8DAwSRHH8B_wATOBce7fUkoEASMDEab4v2f2_3ck55KKGE7N9Evzo6Du2uDth0BwOtCcd07
cLhXXMoOdk4:APA91bG7DNJedWpwirdUxXhXe3EVE55QFbLwt2YW-c98VKLJVyYCDDFl2YWlEkKgZ7LU0KHN1x_qUVrRSTE-XqcRmPlh7rFNRjYxMJm4MgKHmxMvMyLs1Gmusiy_hedIX_t2njM1SA8f
dHaseAuTlrY:APA91bFzu3eGtK00mdT_9IanjIjiv-k8HWmj0uHCoLljD_0IYH3eQb1VqFZvrDefdMclnAB2MesPW02LMSuI5NnswXEJrakFerGxJoFqbeICQvSE_I4AkY9edqVa7GbtElCOyCXNl1T3
caS0BbWPAwk:APA91bGOwK8J3O6_JsnYZ0qklneb3ErcvBI5jovr6QIPhKr844v3mM6r3_487aA6WYVJPR6_93EjPlQukIwWjq1WVM-z2izBE7QrEgMJa_5fhTAkU1UpizAffL_Lg2i3v6UJhsNqTEWz
etUuXQmXOjQ:APA91bHXppWovv8atmbV2TBUqGE2TNd82_e-yfDrjAn9TeLfl0sdsed29j98X-2U1GoZmAMuI_O28CsKOD7Az5yj2dO-fRsN5KcM48z5RItChkuR4dSoPAXmwkr3aidQz6Y8Ro10L01X
dMXsEqfgLwI:APA91bH-9lgAUVsBUCRMdPRlOC2ax0hjjF-jxfUiW60VhpvSnYzfpnkCdigFSc-O-WqDj4GjF3pCqLtDh3sJO_M3TSlQwjv3uCJ6K8hc4qkrVkIbIUWr6TNpL1j_V8AUvGqZRcjR9yei
eoPup-b5sFI:APA91bFlmC8RerPPuh1O3zNDGVKVj7DEQpSzgCn1KmV-xqRiTpjhTIDAPD2LUdZ6I0IsbuN9l7II05y1w1W3n3UlibhQK2MQXUpXi6YKVrE1IKKgmt7Ll3NDye0eTDM0SWu4AcBIAm2O
cKY5ATDKFVw:APA91bFko05f7IcFAE9d4xc1bdJoOC1TlvU4RdQTvqTFz0n5nHMuaeMhN8CufqG8Dx__3wX3v9RIN3Iq5msS0SSg3ULxDm_f0KMUFUk583c50CG4MkkqYjd7dAGwluVV1Vkr7oexGMvs
cDou_hU2xoY:APA91bHPa9ztqbj2Z99x_VNsXMzepqXioZ95oigt1FNVpmI7TfIx4qi7sdHWWtMpSl-fthItO2e1JBYjZJXWXzTA2URDD6Z7p9rKlE2cLZElpLZOvPM_w9V802IqzNFBoowP1GtGvMRq
epnpGx_5emM:APA91bEVoZkQangtOse83bb61aUWKtZNpTlFJYvbPYcCVJ7I5m9n8KT1V7bG-LNYikTbqYa0XA_9vfD923FCfAarN_MA5lTNFwluyiv5OXNGj1mp9f0qdfAwpOK1g78IRaDUrZnt7IZf
fjG0SvjbEQs:APA91bF-sQn4tXUM2p2qlGS8BRdBcwADH8gZY-7YoYM-iDzxoAhUPYCZD-vfDZKYpSZZMkQUr6Gfe4D2gActeZmn3a5K_K71Nvxjce8k7xZWJp9g7bZj8uunZKH7Cb8HUBsekO8rIgua
db_5JbRLAvY:APA91bGLFmXM8q7qJOcOQVowZadz1gQjr1QLqGHnJ9L4--k4oxz2EKgUx_Wb_ElpR4dXMDbhXPqsxat8rb09C_lgR8VtL_n4pDeZmmu4KH7R05R2E2hkV1tvRa84wS7PJffuLY39dyj1
dO3uthNzWAY:APA91bFzQdB5KPlVkqwoAyehLMOqiOtgPvuap0auZaRvaY0U7Li_uX2esYDz1217FryCXeTb4L5oQSfzuVZ9NnTT6jjeIGlPQmk90c_hWNDso1CqJhL-lNw1fb1V8Azgo2IafSmcN04T
eIPXxj-Z_0o:APA91bGJqZqoW7Ckc76Aa5E9qvwMBLmViUfiLMDLRnKtF6S2Dhiz8C7dd85fotP2VFKs-uMudRutMki463pqX0XONnvTC4ZXxs_njroWVf9bcwzA-cDCYnDiOzAAPe3Gja19Kkk5rEs5
d_xj1p3Z9GE:APA91bGycem9t-69zwVcfpOkFnsrS_pxCmxkz2YcAxGpvg-KPSntMgNNykEereDqyp6nidWoFXAJMT5HNvIJradcJcYP2xvQjR8N5mQvvvJnha2XL7ApZhZQg14_tdpBXdYTPnGnIfwE
dk1dVqitDJM:APA91bHJa_c40gP-a9UmT1YpWoR3TAHn5X24XNXKCWCccFWPI_wr8yZEr_B45QzFx45J_jZLRkkSMims-S7gR0ZvwRkmASeznfQOzMptxAG4L_k_yhU_1QmwyFUiizj1dJ68CDxHwEi4
ehF3QIqpAh4:APA91bGIsEI-VGtw2O21Lva78amDxDRkGtD34wkzlv-GAsbREY6reljyKv8UVAAqoe3FyXtmgUz-vJeSDcFsQViQSHeJKG4DFadZtsKkqBdOY3VKjsL565naiP1KeZVTNj_p3FgXWjbV
cRNZloyc5G8:APA91bFV40bGZEL3WCuaRQhnInGUNzF2Uaf2qKxyaR343m9CdWFoY34MSCo8RK9dey61F7Sa--VQ9HM3yWdm8fVq3BPiQt-IeUU68tkiRVNeAxUaKhiWYsB9cuZzdVU_LYAd4R4hR-hc
dPwwqN3ieyg:APA91bGHGkSOqgylCoSxGEnU5J_VWxMvTl7OphlfSadivjd-YQvWRoY0kQEmEPZr-NYgqgTDH3Wgc5gSqE2CswZ2vXY-RCm0GOvo9oeKDtseK4k0I1W0PLC_rxk-aRRgYMN1vu6mA9ES
cbxgvyynA5Q:APA91bFKl-t0f5WCjqK7dyuzFXVqpitbWsPmMvoubZBrdYfxSJakSHOO_4tCRaT9d2eM4OKAajwCb7MBUy7dJ4osfw3T1spd0htPuJ9xcu4pRuTOCa2yG63DBP7DaVofN-r5qEvirk0-
cNi1AVgOm3w:APA91bFZ25bUEOgGc2945lr1lgnjKM3TfZORufs6SPhmJsLWhVMIMDh9LPhOJdlUEzMgVhYah1uIF5Yaq5ZETUCy5dbpqc7xRMwgjfiD3QpttbwzAfiYRSI6NVpS23KP6xq7S6XuWUbo
fMEy86v8QoE:APA91bG4M1C8Q1WEhcs7KScNfkn2jfjSRloKPvHwhc4joRDaDaD1M1sOXwMox69nsWAf3o7gyyzN1fvK_tjkD4DivXYE9eTP0DsOyu_k9UYZ9DUkqDEhbvcQDs34DWtrO29lru9k3eeR
frtjlK3ebgc:APA91bFOV67LHP6xZMH3ky3xGqK_SlL1wmhF6MRXmHN_Hxy4nMpIO08h9j74d443qvItAM0lQsGZ_ZsQRwmUfjxWz_nVQo1IYNeLX83wRabApAILjp3aRkinxs1PiOfxZp_hpwIEEzsD
eQWEh-tu5Fg:APA91bFIDLH_6I4mroJOBLzfpGi2EPWO4QzRdOSy9Pqkx6HG58k2jXTUlIygD9QNO521N7SaHxScZTE2J4byZUWLNWxE51oc14vl2DpvXB5mFwdEVcffNBIguesFOpbZ1TOLDCMyxfx0
cPCjKIkkQ9c:APA91bED9icSwXMkKRsjbHTW4tx1mKl6x34XFJ9tZ6awGrUFul4BJFK5_C5UZ3v7T34tbhR18qGp3xEfRBOZNXl5FWBD1GoFLxifYSxi_7yPZl3hWwfHl75Tk2HAWx_Z-O4DNQRLRhpc
ehhSK_7Q-KY:APA91bG2JTEYEM94YOb-Ul8fH2DOaR0sGMdihJ_huiFkygT07EQHG-8S1B8Qg0164UDITZzj-BzfOmCQ7P8HYcScIkmZFnDuMlA7LI8iq7pi3CKJrGQEZu01KzpJ9R76o6r_RGx4a2-A
cvuO93Hf-Sw:APA91bH4eQIyYH9qqZFjAPf2Vdb90ull-f2YUAe_LdDesiGHAoW64DyjuCWY-Ov5VMuk53MeUxv4S8c-pRzse2EUXDKIpwiNf2MS9KBESaQrmaBeC1TdYidyFr9R-kefUwyST5JRVWGq
dekC1j9GqlQ:APA91bGV6h3a_a56elnzQYUmfuuNDsna_bqyVDgl0oMkAftmGLu6IMI9OdWvJ4jRLZV23s1RN3lgbKTZUzQe2FZMHCPTdm4P-w67vHohEDj3eThr6YDHo0-Wfssknfd6KZ3Mbt3sArIN
c6zjCBD_OGU:APA91bFena-s0LVN3AITkrNk2iK2p_1Ylx3MFuroioinVsTjfvcvazUxz4pwGsfNnUFhXW6Q6Q9YU72M5RinFgwK0y7rQtmxoPq6AJdyUtjbUrLBWKcGKxlQTdDlp9xhipLsJ83ezR7z
exwowzo0DHw:APA91bHwPeqKjYhabO5Aqu_RNbmEnXjKvthi4m_E5FPrY511GtM-Cn2BpSG90b7w2h0ooY8q8xWTZIugt0nEtImiDoU8bV18tOZW5ckGOKxZYFHz1_TyX3hWc6Wp2zZUUSYGywjsyOOZ
djLaH38M0Aw:APA91bESkjpZAFinHwbiciPG40g8JE4oseWkrQ0tnLs0Syh28rvCtTJuLmgERUMCP3QfG6aS8JeFnM8GY9-ByUGVBo012-IxT4W_2C00RRYtEq7S2ee90MhLAewKRM3HY9W3z6io_07d
cGY9Hue0jME:APA91bHec7duuBs8aS4OK3ZlbZf_RBxd94imG5L6NAyfVTFByVyfq1JKo9NFOOjy9i2FwN4OAybkdrN0Nd-w1_uABPa_CfzhXfHxy6qot6A6S5MZzye_3r8XQWttd8zrNIQlWZkoEpiT
ewuZefKI4SE:APA91bHX7dDm13KBXDJSOIFFNr9kVDtyl59avto5x06sMnLvyKZe__WgIvnp1RVCjYc1jLax10prF6m-JxKkDtqzJIbGxhw8FqGLVx8mqq7wvw1XJ59qaXBzIhSnGGhro4fGxDbcC0tu
clOuZU0giWw:APA91bGeb111zmQEL02CZzjbaHwL8CJge78-p0PQjItsZE9jqcLam06PCCmwqrr_1vxEwkRkwTSPem1WJA7FQHhbrv5zNwUDKiE_Xc-9sPBKl2_084Vq99JzngQK1CUXrE-SwkcKuY8C
dc-yOmWGotE:APA91bG-Y6a-cTP-NITcWYmeIGRKylOd2mqJG1MsUZNykvv_unA4j_8G92WYfoLR9KZSOBO7jZ4fNS3JF9CVE2Tl3WgIPLG_eL1sfdnBokxCfm7_S5HfKftFsqm_fMSZbNDy9KUVNhe_
dA2bQ_w_la0:APA91bHR9vS8UW8VPA5xLbpw_vFa77PNrFTNabkumAmvqo4JYRvzzbONVy9iLZCI_OMoptySwBCEtbareakUQJs6XCnmftPhMxNhIZryOqmo_7Td3bCGwAhME5LHTZMzLJ69bccWlI3h
fcL2rNIhxxU:APA91bHQA-8S0Pj-gACXDirCC0kynzs2bum7jJrWzLEWXn4QfZf-qcSyWoKj1wFlxUR5uDJ0iENMHnHhn5d32OOgmL5a67m7lZ4nWGPZhK7koE6nhmRxCkdC4_cf0dAqmQXhMV_jUeNz
fNqIemXjVFA:APA91bFp6tGPHyWKPdAlT26ecV_uD29JVCCVvw9k-LeG2R-2lmWNUwZgoYN9nbWYEC1l4hcCIuNtypYzOiSUo5tTzrg0UaR0m34tBc9ZSP7xtM-CLZe0KBfqMexuIg3krSaZCeDffqWG
fEpSGJRW108:APA91bGzqpup5plGumq9hhH0fDeE0h8RMZXg8-wrrwEHweKpZZozSpzDEWSGaszaFosuYgAI28sSeXdcIAzLuzkztiNDK4r93DVlVULuCcqWdHTZz2FbPP_A2lKIgWlxwus2-sJHFmTR
fYll1zkYYQ8:APA91bEI1pYzpmqR1o_-gKMRPwm0WJEx_6wxqwhLBXbdFQ1pdTv9AtuixL_-WOI0fjaKoo6sO8gSbwGYQ1Ozy9Eb39MDq45oMS8vyO76pV2_l6gFxbgSXaAJ85SV1KVtpd1-LddqriQJ
fax0vxRL1zg:APA91bFWAGF-h5gAyirschNZrwFQXB-XMNV2u1YxNpK368q5h-xhQtS6vKs-m4qQtBagazX700iJo8leEsputl4EIdDomB28MNSZDas8kuMPdnngnZQEiJGHnBtFcqX0qs_AOpK2ku7c
e7N77rkxEVY:APA91bGJXrZC8aAuztO0iba6YbSlw5mWc5UfV__6q6fZH95fBe5W82IHxDEHeDZid4eR2-w-TZ3Uu4E7HX3_P5raXjxiVSdMLh71gC1Az54kZhF1O0YDTsGVjiOQnz0r6ZjQqUykIRxP
cpjKRb-2OX0:APA91bHCxRNHjhEuZR83lwrEb0Y5Wl9VSoEmBgDDletrxKINiH8wcWm42PT_MoLsVOZ7e9ClwS_eT8EBfou5zGPZMtNX4jHrunEi0hGZgzv1Zi_p_NqkoCoj4NxqPfmnLqdlJ6A3zn0F
ePZDP_9RVpI:APA91bH1ipVFtFiUgSXDbiti68gdpNzE4c6W4QdkLw0wPRCCr1fIWc2rftmYoLUIXt0RqJj770g33nUE2KO7AJF8PBvWV0WbNcLBNb1QSQS7jTN7NcZCfiF_x0xqQkVwTEQ5jGVLCYV7
dra3z8zFjBY:APA91bGrpxaPNDzG-PhM62p_45undvL56MuQLIxbgPMjBurjGEROAPWO1cEBUp8q-8-G0TUGhW-Y3EYv0gBgK6L_-JQvKtqN7Y4niBjMcykkadSN0z1S5pJxzcWtdSGTvccS-APluF5P
f0S-zwYNJI0:APA91bEdxc27Nik9Cr76bwgpeyqOsHPDdQTUfCg4ZZWP68fvsTdne3o3Jj3sPpZUyl7OXs6UuGSR1Wkl2lW8yqDOR8QHsDo5pOXG0V2cWAQD5Bxsm14kmgbNH1ocyIF3WEHSCeE2eyK-
d1v3TOJxBhY:APA91bEPadCfBbmmxEYQl2duyNb24QaEooUuuOp2G5GAXRi4MYkwVpK_mg4A_e_GHZL9NUrptbuMnDahT3s_c7zeOPq07lNQtfrBg5nVdwtuHiIt6Rv_qX2qiawxcuJzex_sPLu8KHe4
dx6RLfmuMtE:APA91bGpCfqQCtHLL0aUSohpMYidW1GFg39Z263OQgN_j6WeYo461CObvQzJ7_y92pnG9QXT28gRoqL7oYFL026c_DvczEplVh5yfp52fwTwJK-CuEwHwmQG4pZ7FbQfkG9UhaqQtkCG
fk-jFIwJGuk:APA91bGMbapb7Smyc56kJ-zRcjBtQOb50mhD3K9fVwkbRMxPWk0dLey8IQyxpIlFkHJDEdcW2j23CgYTWseDWEPaXoze7sFmSY3FhoAP1du8s2mIXjZxeSxWqpRzzZmA-ywh_KDkP9xX
eNiwPd5-Xxk:APA91bGj1MEpBIQFH8lzoeFMOHecjm5lA0Ba-HeEjR2WLqwu1Yuzt4YFRTQm60Xt_PI5UyGtErb_-hEsM5hdZKqTLPLYoZ4Uc_kPpnx8Au6dVOlqFDEM9BzPy4qzPjglbxnHoqBwVu56
cTP2X2r2jNk:APA91bHqwGIiFp5NBXgN8GaOO8ksd4STulwINvzNSRrBZU_JDbMtC_xA7oXR7GA0OAq3HrOWdHHB0XX-RnQTze1Qv8Z1_LpoV3Wy4JFXsBAjIQYYmw448ijPa2eYPLy7t_Eh0wWgcjoG
ejKYgEYKmbQ:APA91bEv6in_lEwluXrLbPJXhHenltEFDPzhmvoUC4L6RzvLYbKLoAxux3T0dvWavZ7jmHFcIdKMC6xNRHJiJ48wVS2k-Ir1rGMz_WlgR8Zo8e_4W2dZfN7aWrK146BRilDEE7PUtogE
cVtpbb6Rqwk:APA91bG-1HEqsK17CzzZFlo4Ym52zzjKWGMdpOrrbPOJtgu69z0LKd6SYOnsK82I3teTnZLA5oVXHinH3nuMIxCWrPxeqlGF08SNV91oe0Tgu2ILCekgxeLi5CVhWwmUcPsqOi5LL82l
eUmMnNNKFp4:APA91bEsavm767ChA2VSCAuwapuGpnD9eCHyalZ681GnQnoSouClebchxro-0E6Lnj2xZR76ag6WzsIXX8jNzScKvfE5qsz_D1IqnKDD-ZMJm-UFZqvHDr0x-MMuOqQclzBMntIhH7hD
ds7195N8uu0:APA91bEf6qFcU8WNCUIYIMl8PcHPt6loMA2WMwEt2CLI9MugvKxg5YtSEIM8nLISKVicgcPGe8cb1cxlcqq1LlUoWTTrp2DWRiDSkUMx3rNKjovhVVMs4ZqfCph_MRu0t0BUhtXIole1
cgDvNP79e14:APA91bEeeGoFJca8IvMWu6NRF0yDYl8gP5Oancwbai76j_GhTbZRCz1PHKruiDxzn1_5jDzO6DOv4UJK8V9Pd7Q0i-0t7s-wgJ5PKomy9xFtjGXMC9ac5FKlV80K4j46yEhbap4dZ0Ht
crGnOAp-TCE:APA91bHq9KGXX_I2DefNOnMb6F2Ip5w_gg3EjZctdTaAA12QmcoPE8vUzvfAUBZTpXjyDHGe3TQz7bGG3ZnkPpInNCkeWqx8sFaoOTy8vkuBNRJS-sk-NkN4VJGTSJt43aS0vUkFnDYp
csZJAeJun_c:APA91bEh7efHXhx0mYA-ehj5aUvElv3ilFyJYMZfzkDlC0tBcURLvxcUSZvg63UZ-mA2Msb1_JC05HSPxeeVPsoc_4jtO4BugPhZSsttvAfttaWvJ2pzGm2axiNJXw9scR4OA3Vyrx82
f0JzgldUyL4:APA91bFHNHHuS7ZDUzT9WZk-u4TO2M0F6Ed7F8qFbAx_4ZBUFz8qjPedH2JT4uqyzEUPs2mImbHOXgXArUUHkKDRaYJjoq6trgq2eRmitPq4ai6JSn5jD0vkYrdS76G8ZCx-Ly2c_pYB
foZrRxIZHZI:APA91bHATL8vvOVAXwZmZd71j9o9ulgrTZpQU8fFUlBdzBJ6Ipg1eHUoGtLKInTlLPMZgqXquvc6AQUdQ1buvPp1CYICo5F9KymcfjTW4R0UHEVOISUDDYfTdYWhqbiYXZMVDuXXsa0E
ePEd_HjG5EY:APA91bGiPLRU3KPgbEbxrjNxH06XwcSBeGLQEIdHYzUTvWeeLXtRbJWMev65s1AFE3asQu8fGx512ubH6rfmCic4nLHZLpewnBtbincbabB0gbDEkTFAGdiJeUepwV9BNfI9Y3yoZYrx
d0Jj4MFdoTQ:APA91bEEWMQLZCdQ8mBA6FUktN7mJZGxuKmsnB8ysdiSHxgwS9NoohRSScEDrVfUYNjtMH0eMegX6Na4G_3dsvX8sU0qysuLU5I8k2_o3biVSWay9JwZD5ke6fJldaU6dnpEHxGS4mIj
cwl_pumJ0JI:APA91bHfHvPB6dG1aZKQSPvH8UHaCMA-thhP2T9N4bYf7e9aU_e35465QgxAcZ182NIpw7nznmGzsgCo3jaUMXVZ1KNFBn6PksCxL59WIwJ5uLqd5e9gBBVGONfNWCs88i8_uPIXJwCb
dfox50Ijwzw:APA91bH9ypWwlLAVSNbtcZ8xYz9qCykP_ffhVeAeUQhdhLRFuNfTO6C9FLfkVJUghY4gyEm8Bh-A3WzRCPSf49xCGXwkfbClssuNwXQTRUVPXyjp-qzP5NF4eDPXnZpLnRchlypEwdjz
fmMjKk1pwgI:APA91bFwLDbDu6kuCDbgRnrCKx5hCa_kro4FXpn8bUWxviXikGCZ2aWRfEQsO6ToF6HjLPIXWtJeyM_lnfB1HwqcPSQKkjjhAJJnkKFDIi6tX3zrljLrVQZLQjTTvCsuA_N3qWKwuMkH
fCXPlwlZs7A:APA91bGmKPDITw3iS2g-WwzESrIVa7F79Yv3eF1_0n9ZiPJXoLo-Y_qE8JMjjhk8pgjf6ZpOUD3wcPw81ERF_lJtKjtQhMTsg0B719Oow0OysNcaRwrmuUCF4tCmvVIXWNUQny6ZLyJr
fdoCa_YWkrc:APA91bE43wM0g42tznruMAbG5tbdfe0aTVzbyS7KJavJr_fnH0NHSiYQPgumWeo5uX9WUnFxaymwjaJc2EU92JQbYIjercpod71YpWR3-6UKzGeJipdR8rAMAOUGxnllORzWmdI_oq3N
e6BRmO_L3Ig:APA91bGFSoXvr0Nd-t8aYQtnggQBucdLmyg78OJnIEFzclwWEveUzp9vxUUwEgI9W7d_fV4Srt_cPudmGIL9XXm_2nTNrzUci9bsT1P8gB0opGmf32qz1fHABmFYn7SMk4yP5rqY1P4E
dp22LZKzCBY:APA91bEfKpF4UB2-1jpNZ_8ZkDpG1Ra8BTVLedgZC9SRJX_klrTS-Il95gHZlUOhecl0nsyeGV69ewYgEpUO3WjTT0kPNQTloeieYzM_vg8yi5S0oa7zSuh1wbMShw-WSDihPq5o0btB
egzIjPcxaVE:APA91bGhpaGTDMBrKkX1hIgj7mcdvhqoH2hX4kIx0N8GB4HeNUjj0uToALcaWKNKTPYuWTvXjhiodTBbsAXDLhkXywniwEaBDFMoqfpVhi_con_LxR3RvJN1wEQnFWiuTdZ1bZcMtLmm
eplaG5Zbx_4:APA91bFoXGivl6HL1yzkOHXBJa3sgr693OMURSIddd02IADL8cFOdagbRWHYT_AeJSGAO5tGEKT75hYGo1OFPxrg0ZQzdJKw4R3qLJ1d8H6f-SmSumfbprXA6_T-7WwvSeX5klPXlips
czqnmpYbdEE:APA91bH4It64iT45OG5ZhE0XjcDnr5wJ9mwzpXBNxdgD9Bzzt2sFoZ6ymMeUybT7J6W_FmI5WslnmSiJLk2qEuK5-pOUH6wXpjCn-sVlJMGWG140dSS8EJf1auRdbU4BY7re-HDtyo7z
dXL-fEvPi5A:APA91bGC6Rd3abQPoWfbQpADo0IB1C0qwb9Bp0NbCWMqx-iIlMuCBLGH7_qQx63zduZBk44qK7vY5jrfo3_ijNZBOcW6LzndxArJ9KR6Anp_U90cbpFjEUJU5Es9BlE8sH1DOOPxe-fL
eN3YZ5VGU08:APA91bEmBys1W3r8SRk-akZ4vwoPsDw25-MloOA561-hojcSXTLuX4E8dEkeuA-46Az6AnTsfn2-VnvuONiWMInoHX60sb7Gxt8z4jqjUPgIGLMckeEQRAQI603sDcjinBiHLagB5WJC
fokH5HHhxYA:APA91bEQvuWU4A3sqCT9uAV4PR9X4uU4kOeqUYrRAhL59zNChn7ERuzbvGGOdVBTa95bmeGxIApTIDpMQ0lariS0ZD8HFMyNY29tStFW26sLdrPgiygxstUNxDNpgcUMuO5ZfrgqNqnp
dJTFRo8v6FM:APA91bG8zZW9_wPfzgAdC7Xqjb_1N6gIODWs3zz_Kpaz3Gr2hjrd-CdVdAocLfExFB8LeVKD1qQy3C3zJhs8H2BgB-eQuTCrGFJ4cywbyH7vR1raPb3-EA-dgeArT8fyJbVC7Qawi6pD
fTSUqyhXgoo:APA91bHmt6njU7q4raEID-gDZJhR9G09giWswSK01PPsaBBF_v4UnaSvOU1ZLAxhxlEffNHXWFAQhi60GNRxeyPDKdXS7aIOWLkyFYKvtT-Z5cf49JFn1ALVYD8MSN2h-BJRRK-336Kx
dlSva9njaZc:APA91bHKcVI18-8_sqI7288GmY5ZIR1WXFdgNVYos3yhnLrpXOurHYmks6z40iT_Kn9pUJxZUSEHsG9fv6TvdUXkYs5imN1BfDaAjrDp4GbAPVlJjMeHV6VhtkS0IxC3vpqeFDHVToJA
cwJdvjlduLI:APA91bG35aJ4Q4n5Qej_JmDRCrNldtVbbNeigv3j53qqVIl9DdRQFoiPeAuOZRtL4_LAmXLAfaZc7RG3aMTr39MUQWZizczDUmLOQDREr5SrgOfLWv-zZtllYxDMw47z16PU7Is6js9s
d6sbN5GzcVE:APA91bEmFXqjQEBtxuOW5bIGMIEKxBNr0jQRMvTKnt6k7l7gKpvUIueTNI3JwL-GfZmOBq70jewGtTEWOS3i03Ry_3PYUEVmmr-LCouLdPrFPqrl3o34ErSarNY2xJKJ9dJ2vFFeVb9A
dYRJfhWFDbw:APA91bH2YKtwwdOZ616AZXhiVu0oSFludBqBhpAWIKhmvQaikVnf1OLPE_MbtLGYrhg9_l7enF9r_aE1llWRRr4SGwf3OfKF-L_0--XQtCXKkV7eij8ifUVEnOhmlOjFeTo72HaTcLdi
epx2qecLcGU:APA91bGwpJrnMgE8UbWv4j-suAaF11lm9uT1cqii3rAIG0vzHYY_eYYHPFjt6fxGGjcXPbiw0aZydF9wuntSOUIg9v3Krsq3lFk6i11DbOr67C-3xWVHchXDT9iQ25IfUtjHYq0kWAV_
ey9sff1Yqtc:APA91bHn8dClqD0WqLTwndngUb8nJsL-rQoOd1O_mkeY1bzp-Pc-mAmiTsv8mAhfkVoABBuuPY_6XBO5joZTt2vjNp4JYEIznSE9TuLaaPDBWZccmBVmNFaIlCHpl1sAnrTL2nmgal8K
erku4AZ5a4A:APA91bESK4fJLdMwbxjSjAZ2BbYpn9Np-W0LuW2pdzKlpND_e3HseW7v1h9mmWIl8686up2x0KirQRFbi06TSGlHcbrmgOcat-fiEdpnrBFff61mec72pqQ61S-q4NWNjiCJiDCC2ZD0
fZYEcwfaXE0:APA91bH1kqe4ePuuiilD8e86Z1a0VPMgAgrpt3OYEVl6_0PZLyJzEBC1lP4-a_0vGJEX5Mj6nB7dKWvyMbLVJpv27UR06IO2D7eSv5lrOCqzDFGNkNVLlMje1TBhOeBTQ8DuGPT-vE-b
ef5ShpK_Z0E:APA91bHVPwsJwLf59969T-Zb7KeHV7N7JITm0IMIhq9MyE9gly8q4gvYgOhtvoPoD066-Zlf62-UXTFkcrzvwAKVantNtCLi390fN--qGC_ZCx1YmNbmbN8oEbY95XpBkLwV4ez2Jl1r
e9u2KX19PFc:APA91bHSshOAK_nOKpUxwZzrK_Gd__6dMH0FIVpSKYA33BOlmZgYF9uRq006nXjiiS0l3D-scr1Q7i2PKVOELe0tMeEtr23lCgO7mpNSFJiSFHNID2zt32krUpUauQ6NnLfH4_iN9emD
e-fQLsWooJs:APA91bEgde_ORwdQue5mktyrArhsZXIpIGsGrfvS8imAQcjcaykRkS4VIvloPgGeG1yyUsgR3PpdLATwhjrK9bR3N--3KUHV2iRmRO6CZO1tg65-PBVObXKtkKF82ttDi2nBLPA09CmK
eBxataZxQ80:APA91bEWksloo7kMWWDNwOzHCOhQH6Kwc05i64apKbccCn16XWcmSgPa-DTT0L6EENQDRBAh-ppW0OcBzgxrtNqx7boEHCjVyXHohGxO5-ggZN_oJiry8UgIVyUyBkpdce85u4avneyD
d5E1ARSy-Os:APA91bHALcAjaz5jwlmmXYL5IBDerQVTFRG3JeTRJkzKhPEJLqbRg72qBV8xpmiqRCqjuSrwLMA6-SUHNQ76Vn7u4iGgswlvejKV5inLXmjyuCnKWxCSiPmRGfbjihfuog49v39THM3G
eFVWlVN1s9w:APA91bFsyJE-mMn92_cj8546GYzhTxeWmNu6y-NwH5WyDbRiyjVkiAzrH6ttX1DGtpR5sRxqQ2LFTIcJtg2vfOjpRiomWMm0XcIeJx1eJmOi65_LCD80fcU37bajd5Mkl54vSczt28xR
eFZVXKRLt3M:APA91bE0w9UghNRjHnUhNBrx1oHnfnku_A2r9OmyNHnrtFLsRG7_kAgDGAHy8JL6k1bg70DXL799HPcpRhPKogo-Q5-sr5rznNeDVuSlqEJCwrbDP1vJjJkFEP8_CZKapNLLC9L7Y3u1
d03PhTPfFo0:APA91bHdDAOPqN7nUhuglywICslKOhnnmTI_TNcdjYy2xemgwevqRZWtb_54gq06LujfhlYKqVfXEu-4yZtpzmpF6OyA0Cig4pgnfGBtuD-_L9tvrpHkgnHw6u48ERMs_fYbQN0azGoj
fncN2UZhcEM:APA91bENaFMWox6MvJ6ZU-ljezoat84hwH6o69XIXJhaZwJ2zOMup8kJTOyQSgoEcbSHX2TM86syB2zYnBCkpygkY_UDJaNBfoLKPX66EwJxRlhKXqLy7ruu2s8WNIKUhc0QywIDVY-8
f2bMP1z4ACs:APA91bHH6G6yJWwUgPN7Z2oQ_cyybKRKdOkR22LxrpOIWGzxuNPGG4HfqvSr2ZCJwxH3KKN3hmAdnpfpS3eb9glPgR53pZ-XGIhGjeUdWqnbu8KsPJwP_LlQQCHbKep2NWYJ-Pg1cQBW
elObWGxHxYY:APA91bEWkj9fquCsh3Xf_GC1dEBfspdBPJWRX7fTQPqqdw8hunkXrG3mvjGAhaSWIUAXzdcay7-Sc5ubQoGUNsmbpGMyEgBlmpRu8rtFDJ5pCyRnr6jzQ9HEn5uUwwOn6u0MC-5XjUoi
dENH8i55b-c:APA91bE86dsKr_K-x7ciMVofDBy840h0ldlBxvgF0x2lijMyvZa-XT8wAnMFK8u4V8n2XbZJetdu8FLWltuB_tcG2kcIEnqQsa6PqEYvCIoaXMqvm4kvUbVUFwiwy4xbiX3VxJPWZ7vb
eR1uvsFX2ow:APA91bFEhW9De0MzpV3bZjKLnSQv16QvIlVsaxcK5w1563oT7j-ESgxDvo9QyTplP85xCUJo2qa0v3Ctw-3xZWIRXQY73qkx1Rtg73SFyjmb1gLdWPoJIMZ4XGKKY_N3jM5x3IhXc3Y-
ccrLp9m0s0Q:APA91bHy8Th42E89kW1mxwdXe15SCr8OlkiZDO6DdE1bJh00PYUpuP3zzxwOtDh35cAuzb2kF7ooHfAY6agzu9R5hrHPP8Id_ikyclb6xSSmWjKWkYj7hQU3u0skrYucslhndvAPfiod
cP3QUF02JHs:APA91bHFPNOi1NFOSp68rpUgcACKMAx5O3YJjI3T4DB7ocibkjW5vdFKX75peGiTm_PX6ibbiu13ftsX4quYR7xMbIxADbd4IthsK4G_MvlCU8sX_ECqyp0w6nVX0SqICLaMErPYyIPz
f7cjjrMdRZY:APA91bGOJTuNULJYYD31jt6bDWZIjr4UFcFa8Yjt2YlnvL0Wr8awQgavqvRdwFum4pQPxtJKLlSsfT0mSNOsGm_14tHOxMXZ-CwmJpuUhtdi8dntqV1m9RLzsM9K5feqrGWpVoS3wQjy
eQjZuXaNY4c:APA91bGCliWvDjbeylD5TOxZpMYWwjPIsMx5b1h6YZAfaVJBSHOnevLrCLO-mefBH2VjpDM0u4b2UDtF7GwfVTnL0y3IVS1TJkxmPteG7fD7YFDR7-eDaHv7Q4TC1rA2bkPqXz8T1J7E
fxhchbsFex0:APA91bErNLQ3AThLURGphoAyNON5bL4roa82nklAeYP89-Vf1xSCJDstyF3c43M8mGYzfm4cC5QInhQiq1dQeZVA6_Dd1lcw8W7YcXVrYcwUCXO5W0evrZqiVzCVycujt5T_ibb6A68Y
ea62yA5mQds:APA91bG0Mbm_6qKGWt-aM3Ri-cwzMHz2hpvdvGDCm0h4ZoSb_cAIs1a7E5f30YT5iWomDEiw_to-2F1MN_RaiF0UL5mpGbfuc2CrIfY2JAhoXHTSLchMuxWa0MHDqwin8uAp1bPTsvgC
fT1Ru1yUWNY:APA91bH3o7Gq0HbNYyMg2tQhC4PWbq35AlVNSZvASMJ0jxIDreSrApvCZIZh_lZXLsLOLxb1c-w4p_51MLPnXDi4agru5dU4TVH05YTzzv5BrRKW2f_nGUTydNhXl6DMrXW6OeDDW_x4
fGFylcJRfCg:APA91bHrgz3EKSgqMwpEDy5n2_WFTayH9lUgenEMUg8pwxJ6_Y_tJtg0uLg2EeQ878RVCOxklCWQ5k1oZjJv89VRH1l4fGoxpJjdFiyHtO13VCIEUixPggKaTzkQCw7JouWkAauEVStQ
f2ES4AlpW6w:APA91bE4V9MzuerjTxkntulNGTr52RPtT3nf8dwue9dC2WaeqD4TTbFMwKUI1jhQwri6ac-quVcbqwQzTz7NCHAk31N_KOv-JF-gX8_0wFTgq1XteuGiap8bSrkLn_mxtzPZLTXqFh-1
dVhnDxfaw1Y:APA91bGjv6l9PNwtDHtPVNXU3wEDTSl0FkrdbD6zqrC8FbxACaGAoLoegYeSeRkWXTSY2E1t5fgnJCifiPqrhoJgseasea3P718nHXV-tgVWbGug9XeYh1C6u2F0Bb7nwaeEegy79-VR
dbmYfRIaFWM:APA91bHUGYJOM4Idmbhbt_eW7ggikXdgbPSBqeXo8Icijftye0CXtytFfgyzZCC1X_Vr-GGk1CMXvACvBxZvjIxWFuABVopnyLUPeXxb6TtTU7xuoD7YN9EKo-XeXfp05DNd5CXOsYV6
efE24UjTrtI:APA91bEKLfGMIXmxkIZ7Kne8fV0BRSLeljhQAeiYIPKYYLaYj3WtwX6wB38EDCyOe1eKJsH3iDRrgy3B4bDee6s1YPq_GTKqw7u4us2n3DqILS-Cpk6JAupLr-mXrI13C2lQaXxLgDgV
djTwGn_KIHQ:APA91bHj0a-3uLwyu1GotwbTJobhKD3u8Q4jRlQNpm5IQRblOOErpDK7k9Qh3_Ys7MIRYrlk6C8vRdufBpBT-1WQuN579-KMo83bWbNcM0E4Wy5JjcdI4NiH1I9PNAWMbsabu-H79c6d
c5f4GdnBdxk:APA91bG_IqgU-UcdqJb78Bj2WrH6YsD190dlA4ENP2HhvCIs1VVzqHZSBM0ASs85jFnDEguXicnSrquy9BNtkWxg-Sh72DpI7AUwgJeKIr7Bw-D9dZKGTSmLAfhq3VG8FUyzw7GiKcT8
fnfoZVFQGFE:APA91bG1GR6TY_70_wz85vGVBMyUZvhMvDMpvOszh5ofvJPal9jl3wbQ9bVb-D3xLRoxr2jAfRJ6wJ7gq3T501s2Z3bhk7wuCQlHsJ0Z3iEMUUNty8bXMeV3d4lOFX07ZjFAkLnSxijh
cgq4naBVgYI:APA91bFFWYswhMAkNEp0cD3kuht6Bf5T1ua-D4RTtPRxN6blxZ31x1gUCStiP1Fe8NCiNhAaRifzmwYQ22NHrbXy7HI5EahroS7tlI-mLTDeNkJkekwFzwWftavCJwhThFeZcY7P3bK_
dWmkA1Ubq_s:APA91bHJpL7d5pCLuNT5cV6D_zTQxu2-Ljj9S4J7pQYk0CUzHcyDth8QjB9-8SKx2d7LPwLhHiSc3RBFrcTcMHg0NgSB8Vyi48n3YtYRqjkuXBHSc9JRIaLuaZ6IKH_lneGNo3R1eTr1
dS4lvub5nTw:APA91bE4YKPnSci1BxOJsjCddPYUuWkerkyenkwYfTjmr7D4-Y-Cd42PpswhA8afAjtVUZ8YuBDzqdCNxhgU-XpoGStkdq0uR2DxGeWVg7UlAeFUaHEpL_a-9TD0ftfFibCbWjAuJpwj
f0S-pyoa3-0:APA91bFRq9iNRdF7SghED02FXa5uZtf7K5Lc7_Vtrb_cy7FmSOWMdYWbddiXFSF-MAEMQp57uMUfHZtOYfbCES5GAZgRCnLEL6r8srkebzZBf0tZlWoLjFoABJer2YcTeZQj9qEBnEEc
ePAh3iydvFY:APA91bHh1uao6CMHu9o87T_SJt2uNTrwG78bH9wjajuTjceMNZ95PLBrgNXIDOeBeXRmyJUWn5V5xrFBjYCXtLXvAdUpVosJG713I-RPc-jQ0SzTRQd92DZDQ9R2dhn-PrdXSsRk88qU
cOz9ZoHgAdY:APA91bFZnlVGr0VdG4E906cP_xFMzvWflCXOKpsJY401S_YrxcO6J6JBEl0bHWp_7oJa2GSe16Zg7wLEnyV4zLDBh1R0-vh1HNuXWWrWiST4ZSEAyhn2-nG7P-SYSruAgwDriwgLyOfU
fXP1kCHeUYc:APA91bFFaZg7JApFndxN64Kvcj4KJ0VsX_mT1eZBJAH8j0a4M2yH4ue4R9GO_mEqFNXABazGCl61qR4DWpoqZDyuy_G4xXRzb5cL7fk7L29JijOD_-ZUY6WndSKqGUEtynekPHRuEF4z
fB0nU1b_yc0:APA91bEvfcQWst3GxgpvfEFExn8VRiSKthvZV6EHAhIks6_xMLyZAGMjNSzN2oms69u-meTtUuO5a0tBvJA06gL8YAtME3l26o_7UDQ8Jo6dYGNzkELKVBCn5yMk61APlhoJ4G3f1Qdg
djr89e5LxZs:APA91bFqjxfkAGhU2zZP7PJfhjOFF7V8hL4vn3V-i34jHIqJ4saLZjaQsgBEef0m7eitN2Qabl4U0fZWQjUtYtK9zBiIBM8wl18hptu60jew20AFmh06XHOG-iPrQ0tIaPV3G1iTipap
d2iMcpOZuJg:APA91bF75w4mdD49Odz4KeOywjYWx1CM0ZfZubHlVnVYaUTT0ZZOnepdEOVBfF91aE1YaIlMfAuzQIfshoOVvM_KbbKMsfak3_Na16RlzTZaj3NsRDogEpsTPSPUSvZRIiCB20Bf6-27
dcGCcS0Inxk:APA91bFJU0X1tNpROTMWIlNxFwNFlY6ZbV5z5xwf6aBKKTxZZybdZsQdmPNolrnEQppjXNvr0HH0pVttKH7_PjGJANFS4YTSzETkDwybFCKmHW3W70GJO4pUvIczs91meX6HAyBHsLYH
fAPycyFSkdw:APA91bFG3WHp5f0YY-7mWZZWZZF-1uSCjBmTvT1VZz5eTq5J5_ewN7AbmEVkOQdh4_iW7ZEGHXmF_HY1RMSMhFYUSqgWuyeY8pj5nX9nEZQ0JqRuqTutddtoWYpHaszzt_DKgmIa_fe7
caA5a78Hi8A:APA91bHOncaglEmyBMnY11os-ifXRq12FK_1iHE8HHfx-nBg0HeRGZUtmVvx7J46r9I6f0_vnDidx9AE0iB8C45b6a-IemcpERZfgej-6awCf4YJq-882RhbrbhNZSrSLIBb6lzEMzWi
dUDIeg5xNzY:APA91bEHb04RdX3Y4vcTXAFmhlkCLj44WQ9ssKu1s1cf-tRbmMlzFPja-R41YL-U3JiHYGqJdjaSV7hyM3BLEYF5fZ6-7CagIySw-ABuFzEiTecfeyTNoNftxqd38BYW-X_DpmO867-A
eNb3hWA_7aw:APA91bF2h8qajFOG1ZYi1QoRPMozxC7e-OWJXlxozNiQN-uuyx_K04xFRp-cHgFc9ZwRSWrrans-9HPJSOLXlaaa5QolVhKzImM6FBKbE2PhUSNQPwsY06PG29A54dZxjmTPozy8pN0s
fde7ePMMm3A:APA91bGvyvDt90EnZ_P3kb5k0YqosDVu1zvQwRmXzVGPRomXkELX7Qx4P8nilY-wGYHcsNbrMs1ndlfRBg70nShmk7giMgPvxwZPBw7_n0QhyJws6D6_augq13eFsiZK9uROa6qaja-h
dJydI1Jg_6Q:APA91bFNy4sNSncc5UU8TwdKLBHURdm4KqcN1UcyBP3t9wPpPbch0haZMk6drPLv-xMNRRBwmi73G_FN2z4TEU4cU0YdP9l6_PySnzH4oewUdFRbcgP5LBY2cL0GNdlpbW0LwfTJzhxW
ftX0pJ9d7Uo:APA91bHVOq6L0gxc4w9Mqf369Uot5FtDgh4E2hHb0ZKAs_ph2cZqDigj1yZP0R4ZS3FJpLsi5nbyCTQMLQoMhxGwxtc3HxzWvdHpayoInAkeHHFtbcIk-qaNUZYFsFVI33rYonA0TrDJ
cjF2HP4gDHI:APA91bFFE4qwC3u-neBVeEJoXVGAq6WAVToGRD6QIE8hfwS8y_CgkEPcwUfB-MFpo1uOlyf3H-5IZYQLA6b6b9jdtKaGUevPrl7geeAWOz7vagmjtAEILPV06teVtewE5sEyuXVitnMp
ck-QwlHlivM:APA91bFfIeinBalC_aDW7cfIOyzgaN76XsyhKMLTEANOVFUwevCRfIFaiAASnSsd6c3hjBUecnXA3OSoOuLXrBWtw8w1XGaWzkPDh6sO01tUvlimf0GTVWkIZwbdoayGMNYvsfp6ZfiR
eYaJ9N6DqPw:APA91bFGPOp20R03qi-NG_fFpLZCq9oQGzQc4Slpo1j1Emt-3JubLr8UaM-hOjcmME6RDH02NTBKubAZWHDJyTYZiateMh7EajKokLKdQlG6Q-U0mAAVexc8inQFwFOzml-IWEbAVczq
dTVkPRLHWXs:APA91bH6GAH_IThbOg0upBOpTwF0Ui66_ssyHkQ3MUw57wk8z8-RduungoX9-vl04fSqo8H_SNswaONJzf0m3rD15ycyKbwayKxcvjwesKuHFnoGLJ5G0S7UkWBTDTVSvRW-uwiN0wX8
cdquJUNX7dY:APA91bE9op5XJaOr9VmMhqtzbvORYT8MjOuiXJ3skPSZY3aDBMc_huyQNTKzsJWijor69D4YtrrGIgciReJLQgQ4BDSEyfqtt1F0fklcuf_tVgTG9U9mGh2gDmIc-3f1sgjT1YD8R8WP
dBXUKbeFeVA:APA91bEWxpFffa6IZKbwAMUj9ia2GjwZLzIj3SM2iepwPEKf6l21VfuMO-k162Tm9s755Y9Np5WK60Uynczw99wi64T5KGmWEpoqjraeKXjWOK5jFHHzedAo7Gmf_s7SvW9tFCDDbLwQ
e-eJhhc0Z-o:APA91bFVmiNOez4juuoBBpQiJ95XSHbjEHhHOXXkZXBncO5yViSfmuJgO-XsdqZ7BbGUIqL_gafg9nEG5PTTVID3Sg02xnt8oNl6QZ8sl1Lh7ny_IzHW5jOqCe5c3sypGQn4O4ZhtIu6
cDedbjxJPP4:APA91bHGNy-qH8EoCnm08tIj8F3m-x3jCsZxzsZTTLnM4C5D_hNum0_qbN7CPAwzmk1tsGKARjHORiQEnT78pr3u6EnIzdFkv6WzpVAvcet66AI33H3YeXR8DYOOcpn1nsxGyYY5iQsd
cpRtKdvVzAI:APA91bENoW7g4lPXQTlp6Hn_vt5VWNcbHt82k1I6Av4diXWPxYQqdjkdYvvxmBLDCOh31_XDgByRkvSG4570lK7S4n1WcrJLWp7gEkM_hmgu8NxaENqeknDpdSw9LR7Y37bVI41wUvv8
d23aBbS82b4:APA91bGWBjYHbGpDPDsNcRfKvDsB9tbYAC-MujB46MetEkHwkwuDA5cMHXq8ss-L50YDtbDGAEHvtSkzyanEY5xnukE7WWsfeVSsX4oh8WXFSq1AhU9W6NxUYNWT2Ay_LneYZLaTds8u
drmPpV2xv_U:APA91bEQIlwMt4g3VmUUMtdvDnSYW4doTsLT12Mq8QSgx8vpILBHpNDXEsOAjQK4hmNCBgg9iuV_K25kbGM7sDgx-AvtR7Oz6Ar-dpIYbCJCjcixu1ZjhK9aPQglIHTG24KnTlqNnpYN
exo0N34z45s:APA91bHL1Sr2acyNRz-x_eogR10skX4I4Zgz_hZLMSfLIbYOvQDH3SjcqsVb-ngj1cLm3fHFesx6EjLAxjXKG0utJSg68sCd7wVqoiaB6WP-VBsGF71f-bASwTGvkeSDi44EPme7OlPR
ehIrzVTTVEE:APA91bHKarzepv9ywSFDPc0NgFBWirgx6jhYIk7pzGE-WGqTwFseqACKXaizRMWNd0K8YyV3IT1svIk5VEkFJ4JYhWnNA4ja_Rc6CZcRmo7gSRcXFtbBeklf7H8A6vg51Fj0RCEuC2uz
f_kA__thVho:APA91bFF2SVQvJYwiJsvswJcy2nlXp2QRIh5mV2D4OH4myhJmar3Voah712HAxT0yIS6CssZdnKZHuDEv-JnB-HrMl8pYtVUC7AUpx8K4gP5APZsBgN-mmS3ivq-rf7j-w5WdtdYldc8
cV-3xNxGSY0:APA91bHtYZyqWWIP2Y6B5z8IsXDm2UDKbDJUYH4Vr56GS_bvD7Fty5wzeszNCqmjC9-CubipIGO40UwPtw7HQ_pzVNtllzDUgEjo9-nt7Y2lHPwerFVomjajSUs97mRX4unei5e4gfSH
fBgEPo55DiE:APA91bGTf-OXabqCOyaLX78xhWWGgSkH_UGwaGgeEC3g7jCIGOkdAnAjRmxe6lHZwQ1b6NSYxQVdlGt87PAa0SxElE0Tyt_sfNbeMvS_aXqftBN2tfxwLcBZGazhdUb7rkEU4O7SS9AA
ehwscTtYtZM:APA91bHlsupLohZpm3l3ezkH0MMxIH9T0aszBcan9wrqM_zMI06PgLVwbTsxR6Lh1EDtjRLR7YylfQrtYGBdX_1JROaoO1n6HLyGIt8d11gEADMwHjPbl4tzOtt26kTeIVqqcTFXkgrZ
e3EWTYPD0LE:APA91bFVPgrlTeGnlQzyf9YElRMIVke33ceX8SzijvmReQN7VIrmXNphBDN3_Wuws8QEP6fxogOIhXMVkmsjeLWfbK-bpjByXZXfG0CxDHLM3q6ZtIDm-prWmg2mak0R5W7SFoHTW7Zq
d8q4agd_FmI:APA91bEk-gW8YYPANCDq0q4zqkvqTSBS2sOnOWOVx-CS2c2zcT8XpN9s7KpuYg4TPAfv33LKdLznvnKlR9JrlFAK3mZS0VwrIG9oDqA7-aghlQQVWz6RzdDiSbLV6ruGrUqDt4fx4kBf
dHW-ZSdoSz4:APA91bEsdgtTlG9YZGbJN10b8bVjDs9VJJCu-pc-hJs5YV9eO6TWc5Bvd2hgq6vSDaupUhN7xrmLNPTgbeI6tqUs-QZQTvCqWNKmWwVU9NlH0KUXOBn7LlT4kdO_kIdtSSK1mdYOQmD7
cHECixsv-sg:APA91bFW1Gx4z-d1ARY46jPI1CmQn3jUZSzbkmYP9XkZAyEuR0wluPKVYt11Q9jeysbuGJ1eNkOlDgd4hxJQ9bEN9ErcNFrAfJsG98v0AfgSom7xr0BcG8X97Ge_8dr1sYV4FFQa7ff3
fLbVWgWjNC0:APA91bFXGrHV7QhnYgknExZ4FZrLIz0e1vmipZm25YW23dUbrjtebteCAUB17UV8-eeHcsXBj2LQ96zvhL7CO_0phwWvOAokaJJiwmT6iFXVUv5Wfn8wBY6kmciaUIeK4mFMFKDwoQpw
fG11AlIDElA:APA91bHZtWahN8ZydItwEw32KoohCXplR-kzZf4utYPysMfZ7XQDS1OUL9h1BX_Yqf3LCBNjQg7lOKM1xG5gL1MyHtDNjRwbj77TJwkuc58QYXxUWnGREo6_qwqnu6tdioleqg-_2-v0
fiHaYFxXulM:APA91bF59CEWb0pMHyjG-9iZNnCOSHRzu_g1ln1ygJJnHCVgg2LA6smk1PAxjUPbASZzvpkj2SJIz8evZLFzuEgdXGNRAA7aWRjrNlaf2N632t5AcAHyoLMr43xNhI7dxG-CDQ4dZsc5
cEWoVhljVrM:APA91bGrVFfddEzVrNkNb4joodX5LRknNiHBOXRKkohSGmEaGn7GheSTKb-5HY7mY_9CixATeT1j5hoE6CV_ZAnfxU3bovTDdHn0S32MGM9rFMgMlWyRq19muSMsZeZmtvQ3fFA0W-P9
em1c1TGFm8Q:APA91bHDJ4R7v9XkMHd4bedZaPhDyWcBVT9w5ziP7O6zSsZGbtrOGHbuc-sEGVh8rhpv6vDgI92RgXUL7gb88vCcTNAorh4DD78rkQdWxJEvgVgORqns6eI43T_MMHPbFUw8GGvg_gf8
cr1AV13uSCI:APA91bFq3e2yCmwJLpYjC3iuXhzB0Wkc_0WBuIIJn-O2PRIcmk6JMZlUSdelr3REAk-W90svP9stKWIce726tPPlIUYAEsng9--FIfH6dUxtp56xRw7C-vxOuw7zO7zih9avLYgIfdgS
c80oDFyzH9A:APA91bHUvtmNcQlnVDBvAAW90eNVSabXzr6ljhNoegWQ3z4Ipaz1_HPOyQEjEYjzcmHuCeqDgTgxKQChl7Gk8Pu0O_1ky_dM2nN3EPQs_y0_A36xiqWo5HKwtDA1JfAf3w5Va_Y8BGIW
cgsUsPLG7fc:APA91bERzKNOKD1XafSHesjF00F1LkhcPuxS_XgzTMst7Gn4cjIrSF0dI7H-bzy6tGm85k4SYQJiY8RARTGRuYJK8oMQxk0ukkl6iVJ1XibEUldHYv5Qymb5m91vlOHUET3wbDvDCv3j
eRtM0fc0isg:APA91bH-vjH3KIeldnmutqFQaUQ2GYCTIt44LjulUATJbbRF2h9QODkYkpTmVjpgc2m-_NM33sGIKyyQIAACc_YllYDkV5Suek_YgqzQnntnIyVGswxG12zFnRPmQMuVGDW3JIPKBLXw
feInN744Q5A:APA91bEzQ6yXsNjko8DDIHQRsynMdIyxk8OVftHohE6-08TDnl1iXfQ6ttiN0z6unQKOHVzoEbgcFiRypR45ORmq7QqtiBitr7yocussje1x_HKxoIkLqKLbgNDcpSAEU6RqqXA8_2Nl
dMIR2am15Kw:APA91bHdyX7VKUplDHTM4gvqreekie2YBUSsIjzp_78Qvf67jjJLtZQKCekudTAb1myTLIIVeXKLwTFNMCNQCBMEizfj1b5d9hTqDNnyClHXHEQ7jkEHggMxstsZQhEecgFdCJAq78yM
d2GjGRDVcnE:APA91bG-O63MgNY4Va4cVW_3btoB0512P3aBK6hPyt28Cz6kIW_1xuy82XRQCsXeLUEJPGfz_x1OumFgWCwtsv5D9ax0dMTjuTTha1K7_XLYFREewj1LuZjsUfPqwca0lhc2sS8UJHgE
dBV2SC9eyUQ:APA91bHeL2klCTr6R8L5WczBCgi3xrF2uW7qDbOyvv3A5Vjugu5ZSaNoonzXcM31-ZI_SE0aPNLNbWFYl9R6VHhPUT9uZt-FBxYsLK5U4eGBI32BlozEyuyQPgqooX6t0he3sNftfbcj
daDsYbeibg4:APA91bG40bqh3okV63VyhhMknLD3hOYW5W4SqX1QFfeE0-vDevVhFCq5iTxDwWl-GVtsqvh6KiG__w6gO_h59F9OPfNMliiXo9Acu8ZY2A8tJZYbq_7EVaFPUW5JH8xMBl7CsG7VbXL-
cUszMFKNiOk:APA91bFpnbbgi5PxJvuP6ryxrLNcB6BKnmr6m0gU2ojXvxXEIpj0LK_MS5VmqQwVh20z2uY3hg2rSy5ftV6Yp4ByiiN1UHWcPqw-BRe-B4_HwlHWw6iE-5zqHvJb_Bcpi66copWl65tr
eE2MYKbqh7w:APA91bGvpyPnJYrBYLofBCrIUpzOe41iJRKsCKL4qia4qpcdAa58Qu2ny7N_D8-YZL3_vR1nklLqnb1yh8UzM71X4L-LGOZIBJwOKa59VbdleR2W7lgk5fB2SLegQG01Ir7lZgMXIqDc
dcY6oXErA7E:APA91bGs8th6qsRo5AcT0HOeIWtUpEmJwS84g4Ycc5AnJrtRSls6WGld0qvdcMjcOLtN35gUiwR0d6Vnjjngw5YT4_kmpxkB5jObbh897FV2MY5rgvxGXiO9ySiqgsc0fVa6CtloxNux
eT9VXS4gJDA:APA91bESPU_ve1mZ9prrYHL6Yp5SzA-f_a9uW9bBV9IpZD2oikIWNyfZMJ6QkCdYPi7ByR1lofF_9ptQzaFL5j354hiQOBpgxexpKgMuToK8Opu3tN6O9CEL08fvwPji5UomDis7JO3X
daXQkjStr78:APA91bHpK_-VRRbWNz4lHxD8Tgas7oAi6krIv6PwSsW8y4scf4rpHK9qT4TsfKOyWqCplDJ23j1xZEiKzasTvL1WHFQCcWUeOTUhCdZzqa4zkeLWObsHnCMQq2F4ETbK6-HwqKMjOi5a
dzsHSJ3cjHA:APA91bFVsMXI1LOUGa63nTf_e-nKvsPsJupM1kddpbU4ahHSkior32zssjx-fXBtUF0mDPlFMw5zs_KBM5W-6Y3Ma8aANi9XdDoJe7WaD9UQ9aoUCAp907s2O8OMSXOoJLmgf8eTRNRg
d3RkyvXpEC4:APA91bE_opLyfw-2cXeKEiQ4JIEeuP9E7A46A7qRfbKnD6eLn6I3i17G_uvmU_iolMuEMVPLNJQ66rQLn4mgg_mnw51kZ6EhZJvL9dBag7AGf95aztkCU1YEuIQIkzypHyVsXe0FUoM0
dq6QPBhZOOo:APA91bG7MYlhdKSvAsq494l7qxF3jM-hVy9Q6xeMPiEIrXMHLh0nV_8YMFsJwWoLblY_JL_KsSbLD9Js53THZc7CZsYtyix2NJBXupFv6siQNJoMlKOZ3HAFd2Cb2LeM4MbwT1aiNBI4
dODkVF4Br-A:APA91bG_BydeEzUFnBqw98dSouvR5X01SyeUWKh_Vb_tYM59mfNKCji4zenKG1_6Vc3ILJDmaK9a_xSiGGI4wDK4VJ_z2zt0I3foPYmuFkxmkp-p8kZcnybfcBk4EVN755_lIAPH9Ncs
eYySfa0YV9k:APA91bE3YQ-11gb8WYZVqgBBN8S8y2mo5rLJgF8t0klX5LzCILFJTLz46QAZ5m9zRuiSzOvK08uTw_Wdd25i1t1p-PreSUK0Aoy0VsdwKkuXYatZx63aH-377wKDsEwffMCnIgcEK4sn
cRP6IFYsIQ0:APA91bHB97SXJTYHB0k0vfcb5MT1KHbMgeZTqD6v8_QT0aNHBjP8KVw3Yu4STQno8NWvhnbmnAyC1tCylCQcNt_hbO5ViusyixwwQ7PCATK_kw_3RzBvgIrcdnq1UR_koh5nvstZO4cL
dNcTp9uhSO4:APA91bGac1OpJcF1kYrLpmCBaHGcMVnz3mCiB4pKUaokLI9hH7rCOy8a0K5RVtq4-OnRPC593NG5iTh3hqbbGMTLudrg2d4b1ICRgqMU3AwcKGfeZ9PUxOv2DR4ERZC_K5ZQjkUm3Snh
dikClW9rXm8:APA91bEAlA7LNcpEXjp3ow6bQpWEMj0RrJ1SzCi9R65IMaSkpRlAQ6fUsWA90w57Tf3ViuiqomFQ-KZlOIMeo5x2Zq4QpRleUuRO11H9PUG9_uud7dPGtxmiWfjXYScDnwCl5e65ccW5
d8aGOpV5SDQ:APA91bHGk0J7y1oeLjuGKXSGEPL2ewUmJP_YoZvrcNsuB19qStjGZo0cAKYPyaAGuHjuPUDreAJpXCTygipVFqx9YCVd5viC62CUU0EVb2YOWDiTh1Hw1F2joqUCdJ-Piv1wU6OpFzIH
dzeXA9gtTlY:APA91bFS0gkc31zCEm44ha-oJi0qxUUT3ZHP4PQsJ9DfboU_TyYKyIxVnvv7Xy6OZMeEUQOJalzh8pMB4Woa-qCRPpvuUBdxxfxCFidG8hDXa5d2cQ2QrmQySE8D9z6mS827SeSYGkSw
dxn6wr2gUUQ:APA91bEcxqGSRd5_LVQmlxFzQqIoSz7WT89x3pII9iG8dQ5Xpp8p9mpMSCAg4nATvBW2t_-_yRM5m2Hbe6DShJnWpDgFCx-xnSWMdcQGpwVvh6Y6t3REyekX8soFwZCBZQHA0QP9A3ut
d-MXYg7kKZE:APA91bGdmPa8zWDUei3L9weDCzJsf7i2eWlZvA2DB2pM7W-3Hcni6sz7RnqFBbJDamYcntjEYAqxwL0P6RMMyriMLGMQuohtqx1O8L267qPeBdOx7OhMfNdri0x57hWvs_e86frLzxxM
czsv-hjbxdw:APA91bEJhRcjkq56ZLi7SYPhmfatfHrq27CStlZaou9fIDvKXYmYUSSVPFa3EOa79F3hRiJJS-xOBFMsYvO_1BO0w-PzIDx6GQXZ2AMAcO8NBAIGPSYB07lLhoTAiis3Cf_X0JwxMkwZ
fu16W8KVxKg:APA91bFLqpV-zdXlID1Dsg8ctpnL2qzxDAvvyaSs7oHCd0Hv_CWiwTRYhBq64pWLn1qAr2PijnGhhqCjDjWTe6VP-ujTF311MMXwEchOuKy9XdJC9s-y1cblg39QkIgJMLZhLZM9IBt7
esny8syE38Q:APA91bH63kuH1FEwKTC1_dF1gZOVDtpj7liNOPBpFuKNaUiylOfYol4eJlJ_Al0026ocd1bKZ-3xDxWl_5E5Ib0BOPq16e2NwJXJHdiUd4teYB4tRSaJTlRzGVJB_s1ceUa5oMMF8qWG
dQQmIpvrT8Q:APA91bE1uphlnbhXNwVllLDwOPQMFUtOvHJ88JHrq5JGW8rgtcmvDorWy_7b9NqSIp50DIV39gIISnro-RIqC4xvaOmkWj_8dsBLMfht2MVIp4BUEHZnfhBgZAwSHbdNbo9nnm3eF7uX
dUCdpMgKkM0:APA91bEmMOPkggNIwyG_DttKVqHSimdbzZeXgaLlDMFrjWCzVK39BkK8jH3Nxr2QvDhTmZhNu7VBjjRHY9NNmXw9QvRZ-Fl5U7JEpPOXe-zAdTUeDYym9i1cMZFRM9IB2p5Yhq6PnqdJ
fsFrt_A86ko:APA91bHSLnbaY0Ir6iLOP6sJkuhVslkazK2B1B0_KuzekccxAoa_f9r6w3WRBBvUzCiGIZoEYbFfGC49rP8H5XNnXPiOTUG43e1bG0Yh3mme5llbeTzxRAGN-PemtKCi9Ejq0Iq80FOr
e5tO9xVKxRg:APA91bGbMbvbhjt74MLlg2jgRp0XnAPT1OMYAAlqOL_lfNqzwXcX0ThFtlJigRTmnGfg0kttpf1kRQMAGtqATfSRVdKleiY5OCGtaze0sex5nGcjFQmd-YUGXj-OGfAq4urtk3m1z8b4
f8QOhzF00SA:APA91bHeGn6PR02Ie34Z7Ow_qvB4fwrMZ8b0A3Ff3i_XE9Myq74k0HBmqYbaLxsfDXj_FLwFh15LapUHHaZs6YwLsvm4eiV8UUN-NjLnHByQ2pNtm2KBoqFAiEi4tlAMVP71DfDBn32Q
fTiLlNznTFw:APA91bHoTM6S_5tdR0yJQCDypMOjoTc-NN6i2m9_ZlOreYoXyJmAAoAHXzItBQ7nUmYJjvs1puD6Rt6gWrcJvYvJxxoM-r6PWv5UiNcdUf--p5TQaB-NZfJr4Bpzbe63isCv-Keq79dz
emoMmVCRtkM:APA91bEx6xU7h4IchJ4uloo-Wuiqlu8Wf_FJ0QBs-kUucyVTt8O_QnwRQ9RrubvpIRs9F0xGsUanXl8XLpkiHZZlg3yhX5m7QgGuiFBSOi0O3B0WApohCtAGOozo4OTHbkvFHm9RslB7
cp9uZ0lllo0:APA91bFs_-i2Y7X5STF8ZkR1_fiHuI_eVWleijaATSa_pNv1qI091I7nVHph7bLUKFPE-MB1HKB7akgpVS_YDzqEiCQQkxVI6pWQyi6zjwL8fx6_w_DtaRWkC4MLoZmmBo8tGJfpLDMn
cgcpRQiXARY:APA91bGXmdovN2fWTiTmUkWTGV7rtbEdKpP3xeGDKt1QfRl0S7ltWy69y6R2-Cl0IlU_ZQWCW8WCYBZa7lZI3a75xvcycBIlIfCkYDciwe9yrFpjVdJcZREguS1JccB8BCnvmV8wfT9V
d_qypNfZV7M:APA91bEP1_eBKxa3vcO2WZ0Mylinehk2wb6iHVzo0mdP_O55JYtZDIbHMrbcDolapd2jNNQEV0ksYKc92AgpDfHnF1jsZUzRy7dmuQBiOcRqpQh2vy_u5YS9jrVstHLILgtGaJL1I7Lh
cRqvah-W5rs:APA91bFXUoD93G4GTl0UPTyA4V2Pz7HVx34c-_yiFMys6zDzDO5uyQJijZRm6hr_IbTTZ5RIqATnP9D3E102DqbLbX-JjiP3_vwrwjRnIbWM393EwLPLqB3_GM0grPQkX7gDdFI3pLC7
fkS3RfTQFEI:APA91bH-VymTdg1ygzMsvDq4EMCzPFhgRSgouYZ4VCm8LyVT8CWMyI2Ggrh50zPZe78_ibIGt5tau7lhq2eLgPkcy9DqJ20l6crTg57Q3X6LxbYzAWbrdj63-zde4KLOSKmBYMpWasNJ
cYdRjh1JAmw:APA91bEL3V3PZ5lAKJRRBwtf3XoHNHYNR-WWvt_5W92aEaJZ4Hj0UZODfrtiY4884ie5uQSDD7_BlIhDiRloZ05IdsZxot0vbdJWopl79vNWtUBw3VyMjyJeWUfjieZE94tvKn6Ylrl_
do6n8sMH4bw:APA91bHKAdAz-PMnTAPnsfJEOI-oeKWonWvzhYaqsfcXTsoxfVODPBxNxmkEr0NiCBrzP2zIkBhVGi8tMTfcvlB3-YJBgODwNrggIMObbzh7UZMHjHrmWPwIpJLSMBUv_ZJHIZDUKCFS
cEHmLFUsNDs:APA91bEKJhfIGHrkrbq7q3MHxXNIFeaCzyjUHV0fHePGMtVomg1UTrJ-vACwmIdzCrXBehmj1vn4zMjx9n5_7s-4XRG7f-SbU42G4XCFCZEG41e_A4ZnFqN0BX1_FS2J3VW3Sc6S63gC
dTke_EOIexw:APA91bH8Eo96aYQlNPJ_5bhkUwnHv6DdokOkNhEMXZ3oMOe7b7lBLw-p5jZIa1dVnEUHai7EKr1yMqv6Udiyi-Z7pALJRyr5kIduYoQ2rBv6BdMqr5Z7vT-K9Xvjm5IjtK0aztzOTe6p
dkGbqA2HywY:APA91bE5fPm0KAbk1JVr7D7IZHHu1cz9Sr52Li7gvJ78dQ6qUICwgCPhY1QfykXEEbTaa2YF-siD9d00CYfbQTLPbkwwBn6l-Zl4dH4JAkbpC_MQ-7Frjdwewq0WGQEzexd8glIsEeyg
fA5ko4p7m_4:APA91bHLP9nibiDd_uUQB1QvB-YLqOCIreUs9CeZXmMuUcfno-hkL4FgGSn8hC-CMotRgMrvdApAhNm2XaFn6W33n6d2zLUGOfm80A6Xf-jipeZDhlsjbR4n7rMgZKNuQoqhDljOeWOW
dl4WR3jdVUE:APA91bGd1-SbS5dXlqP2kp8PqUJoRcTvJZAqS50Sta8c5OIoKjbhLyeswB2sftHqQovWRPGb3N6IBJk2QB9VxyKNCtBN8UQoMDO90jVMJD96bBeCT-QvwpUYJSKL0V1STuVrI636nX6G
cbtbtTsU_uY:APA91bF1D40xsV0jfgBmqnoSwMk5qdp1i0RGum_WYiX10i4BDa0K0phM78VetGipYo1dNVWWt96vSZR7ZcXOIf5qeq_UKvoMD95_q-mg-1rawlW2eIpQ4AdSlpF4fiMUQzy-O6XB3-RW
fa7DZIZvfvY:APA91bEHUoq-xyc6UWsXawsyhoJJmROgnFI4PC_r8YYZXK3iS9HQLP6E2fVYFYMfLyFvC-VhKLFZFv5noWa_pGcYuE7uovy2TObAfpI3GeI3hpmqW3xE2FPrnjqYpsivE7OyuX-CABsp
f195c7OIRTA:APA91bFc5S6Dl30cs2Vq1nM1SB3paulkBwGkAVP1RVmXFMyCBrM522kXOQeU1W3oPyc0BUhz02P2gr96RxXrTiGCxQoVLgSXaYEbqvv9kbyiORFi5OL4A9NzE-e6SMe1jZhDux2yj9x4
czIxTOX4Gpo:APA91bHDhLUVDguN29U-zpuylG6bt6mJLVLc2jZsWyi3THzXEiMd0HOHxH89czY2OA0usuncGQ36ALqyAyrkfmEXG0rZl5hJOsFV7igUVct5MULVaM9oDphU7-WfEkmDCdXhkZrlqgj9
fBsg5fetBDM:APA91bEtxi36o9w-6JhTluvwj8Hz316Fv5SODee7J95akv7sBwAEtLq9G5MQoKKGkbKqDNKeDx08YeqW7Hch6mPvIhH2rBOzrf8m4en73F9DsO2YSNSdyL5Xgj7jl03Nal4tFpoce6c6
ef8m5brNQpA:APA91bGOd6y1R0RRszLi8lrYt8O9eTMDvBWivKOUBd4IVIA29pGUdZmwEHQcxDejLioof4SIuFbnrdi0p3WTlca_ty2r-Dr34hXMw7gYn2OuuwDSUu-m_G9rT_1eSepAfP4sO3pRtvO7
eIfixlmphpM:APA91bFTyv_1If6TZBVWxBdzI12EjXhavROSpYNNUmIkXA7ENkRBrcBNn31OVcwkP64ccPdfSuvynxXSTl-Kz4SEwLR9Docw_KVnOA4sE-qC5bAaGrESW-HkQz0VZmledYqYQEO8Qo6X
fNaqwcFcyp4:APA91bHc0rNu1NU1ZK23SmJuUaNCVE8-SqaPfsYS6ljz-el2VL-btYGGKXl_W_iehg1zEoBrEb-sOCoiHtF9O_b86U8NPS_Eqf44vMuIp4gU9vDJoObE_cQZnfXCtED6Y88UiZ1t9aLx
edULlazBYlo:APA91bFkINHX-qw8mnhToEXwp8UtxMqE6yZH2ZziCIgHobQ8u9Kkx740gOJnF4IrmgwddvPjzF0STs1k9o4HYD22vkIfD1JmNJQnYSU8kmwme8qGrHl8oltBdm2Wm7yemmgK3UVAY4BQ
eZhL3n1NV_k:APA91bFOKFWE4nGEgNNe0zecMQDY1eAQqwoNTPlzhYy7D70cSng3rHhlAOSmvka1-w-BOx4lxGj4JC0E7X9_AAQSd6Hcefw2nF8l-M7pClCIun7h6zlQaWJurTFQVW673SwySnmhbxIt
clyC6msfHTU:APA91bHIqPz5w-t0EErVgSRgt4Gc5PzKELPzdMEvFA6VDzfWvO72DYMpwaaSXwS_soyT3gSrJWVMbNlJHq4OjSmLOCGabAyQSixnW4HYCZt9RCBFDrzwEugQTBNPLt_RUhJxI9rRC7Xz
fD23T4b3cro:APA91bEoT0A5XJs7FqqhQO8bQkgU_Mfm1D1zzdVegrBnVhoQ6ClH7G5Crs0kDn50NpwXgt4Aw3VSCA4Ytnie0x0xOWYjIEpxjFjDoAd9VlAizF2JpWrcoLB6s6KpXV32qZCV3RKtcu57
e-4LmZM7I1M:APA91bEvCFm42Wuv52pVd-Zw58w2XgpJIi03b-bQzXnuDilOdKusSiuWO2LTYp96dXW87p7tjyqyMZcjodEhuRCPZHjsYiQ2b1NPgfXU9nO19JdN-6CKKtigNKeiIidLktylfN-tDdhc
dbne7boaN8s:APA91bGZQ1-zscbmneu777No0_ZJQ_iht22Mk3YiGP1x9e6sGuGuMRZgM4Idedc4EmK2IInTi05vG9-w8H2OBVL1ftOBNxac6_f1trv7AHraJIlx0pIEY-pbX5ynNdJHr0jTD2zONBdo
eS57KvTMjXM:APA91bFO-d69IU23yOnMxMn2GS_0bCo50j92Zzjiwt6IQo-F4iM0Jygiht8P79_ZSXKdHFtge2y9XbXh6ZO6w2mIBjh0b3e-WDCnqgBm-QtISyhBHzl79Yapig0QEE3dZGp4I-TGT-F0
ead7GXiNBOQ:APA91bGIsNPfwgj0lyoNUvw3QBKxmrsjKoRiv34OdD1YCauop2esE4eCM-GWGEhJwoP-R4QkGkVau-rBGK36CmDlEhQ1lpepB8sWk0Sruq9iYVo-dxOaXVnoU6a732f0n7HyT73hbGsS
fC1_lp_kNVM:APA91bEu6jUGlBYmUjceUrxEciowDQsYXVBU05yGZ4_oi6X5khOficPypti7b7KsjIpib-p8tJj1GoM-yJNG8Ejk-sSXYX1Pg-m21nldYjqUUu8t9oSp3uKD6v7HDtpHnvA8lqNlSK_A
d5TehQiHUfg:APA91bGBqzQy6GXiTXPFJVrDETL-N7d_l8mlrV0rfLlMpTOGQ2YACLmbVYYarlyfz4Eb-H0Gi6MdZM89JRYtNg-eHEj3wFiNpm3cpnx1wz3c-Zu9IwNOeMPQ6QgQ7zirxwVgO-k9pO-r
dMxcW2vU3Mg:APA91bG8TAQs9MnKNDrch3Pm_33qzoOaZDuCf4N531bCH28vv_WYNXWTb7DfwAKSAxHYkdRWhfJ4nWbed3v9fa83lzERlqM3m9oEH62cNd6VTHHbYrSA7Wwbf20UJfSeWD91OJHyk_yK
dXk1mBxQOOA:APA91bE9C5I0hqmmF4yXIc1nXalrZoRgrKR8QMXTME17aAx0GAD4GTC8FYbya5XMWE6MvLb_oJSI1kcZ25sO5t5sS5YwsTIDpGJPJsy08ptg2W1FR1RNNd7x0MnsEOzlNIZoKMqzuTI_
cEKIcuyHp8c:APA91bHVae4DsEFKqCBAImP1WBjdk6d_xA95_3QdxiG7R87VNJ2D5WZU0mlZEGaDzOFncuc9kvHJa_rYteEg-ls0t88h5bqkml0y0r4ig4TGw_fFgW7U_2eT6otd7pNTkwg6Mnw7_Mj6
eufQeu4C_V8:APA91bHVr8B1LMDaC8xS3BpcLEIPkdOWeVWupgkr_7f4VRr570mduY_oedhtu8X0DLFY51fQiD2IaNpsrVfNjb2fUpR18E4Qh_LZheJvNCwBsc66ndcsrzKG5lMmAgjOA0Torw2eF7zI
fTVcjKpYRgw:APA91bEHIf_BUmACj93bksehROhqh5Y-AT3A4St4QDy0Ks0J6cF--lPpe1g3tY_0C_J0mlPyC8NDzlRrF7mAfhfJRAQEvsCQ46R0SevFP0IkemE16d4m24s_hsvWWAfwVQb5YAf9UZnz
cwFyuJK9Dx0:APA91bFQNUjjwvgKon9DGKdOD2FNRpNR3UM9o5oIDVBnFq5X-ejVJx74R6xITHp06dU3CvwqoWv6XJTUHkIglgPbVWRA43WqynObvWMT0lD2WwVvWVbHPONBi-Z9MmCjDXQp8s7wuWur
faifYNlsiZ8:APA91bF9eDUuOi0ZWt9nQqHfsE3VG2ar0NwvNmYniADDJKie3z6onzVdd9NMg2Rzagkk_sO_ds0P8Ya-8zPe6eWZqGap6sURKItf4N9NVqIC_tjKU0En3sSO1kT3-LhKOfYeYBdiIxZb
fAd34orEB1c:APA91bEqZwO-_mFn00xKAHVcojRhL7ih3RokJG8s6wk5aUOq6Xy8QQdVRJRO4rzf1rHtlDp3932SIAXyF4RCkbIHhsV-mYGyOEhdDGZqqbAainYaceRhF2fUWu8c5IGYoesAHC_TbAin
cWo25tOPzPw:APA91bFhFRj6QcLR_dpSn0H5-4bmQUREC2WFAhLtvwa9sfFjvJx7zxMCvHDoixXda_6qbg0JxSJwYRxpd1F8JFspJLSvrjmZIANDEH3v9ntEkMvTbCjIpIueFA_9yzWE5Sh4H9o6K_4T
dE4Qbiz7or0:APA91bGaJ1WTQ1918YKJ9nDAY15wRxbMweFeaxWkvLjR9K9FeToc-C-e_EO8DJGCdzWMIdDY_ATk8265IYY0ULungV5VO2R_5YzSKAJmqGn2xXk4jl-6dSelr5phRmpEUpdr6mrboNUa
czzfU6HEzQo:APA91bEXjrgb_IwV6fmlfscL6go1hFpDW2XPDOiJJ9_2lX5lqYYpyCpRAnsf6AU7ENKDKw4KgC67_NMbsFcs-WySN9GEm0rqhNuQe3IovT9hC7is3RwRR9XDaPzRTMQsv_tZCaYtNrz2
fYZ7TRvkwVA:APA91bGUemG04OQE4gG4m-TVL0szIVTHWknB7jPxxH1OZb6o4ix-nNusdVTfo0wBnWe15ZNG0fCa5eFdldRcFwbARtQEDKymMDBBxwe_5M-s7CrnOVufl1JJG-El1HHMieVAzuFFLm0c
cSHMux0T_ps:APA91bE2jDGmi-W0Kvsi1kL5-CgxBm5HVQDiPz10ThlflHLiuvFVKCfZwRwag_vd5IsVzdfhsOEnhptBjpIegWBPc6uHfc-8X4riiLVAsPRkatVV5MWIPfbxRa9_L86jafZoWTniiQTG
eAmWhUI7eAs:APA91bEeGrI5KA6b5q6iTMbDxX9OKrOy5BsKxnA2qj3tiKMDzIg5kRn7taHRTGV47P7TZLxKbqBM8l0GYCTNtacMYI3qOqxRnF76JtkGsz14AsfHTX9aHejyilXXqPib1S1sayrvKt1o
fYMGFVAVVzY:APA91bEaeZATAeKDAWoojDrSoGkddOq8a7chMpuvlRx3i6IaTNhubRcHyFdhMkaUWT4NQWpxavhmvjgDBAwFQZdZ0J31JfBhvUUkp138V1fbPmqipMoFw-x7LmcRYdhqFNluTAUkg5vL
fglE19Ss3QY:APA91bHAYHHdv4qTQ4FvIMVHFWveC7jhlvtHLrv4vS8t0bX1Kim4f1hOoP2Ty_HqNJks7gERJy8Q1b25FUudInaAnM9vrY22XnLwXlNtW0as9a9VQjC4-mjjh1oiGCxml3ydppWOX0Mb
eMOiO46kw1k:APA91bFDgbxFP9jA80qQZDswE5IW7Gfxv8kOf9Oaffc9v1o9-A3DJOmH4LHETLLi5f2xSgFYDqLKLdaWvDNpudQ9OxY_zByi1vrn2X9O9D6ZCD-LRF9vci_D5zO17UcNnp5CzgZOqE_w
dlXa6mWet7M:APA91bHgNsOCtKJWH68uSVStN6-WEraPGklbOQQ_9TvYI2E2C_dJKZJtR_uFRuG90DsQGtZfhOXDqn7aPGFkDhEIK6D09ULRC4_QanX5Zb_T0Av93wq4qKeshQ3eITK66hAeblPsFaB1
e3MR5hkbovc:APA91bHl3L6VotYw6-Zltc9JVf56zJJsgbNcuW1Hv7PsjRPuHPcMHi8ZMqoS84ckLPtN90LuRVvQE0mxmfeimDMt3XoUBgMlPh-92abQDwkRc9EF1Ycldqr3-RCJ8qZCrIDvR8Io87FX
dPy4goHTPug:APA91bH1GYg1zlaHFTQRWECjJPzm-AjBtAw_xzfT9XaeS48rU8vxrRE6JUk2-uFL-Vi2PZvXvU4pBE-H_V7RKHMfbYbwX1no8VyPafKlwlblhlhQmQzLTmNbLYbg9OGn3W1chRd5eX6h
fCShlX4fkJQ:APA91bGPKRBwC4JN-faaGpgqEBwv4-AfkenjU3aYWV9CBhIGTYPniEEjwUXBF5w3W7kyTp1FRyxvYxt2bZCHyGSLQNGA1UeWlRHFFuYzy6Xe-bGF_EzL9umYYdHHZ3mw_46tsrauTbMC
f4a3xNfSqeU:APA91bHIDq8dkVom5Jgu5Rqq46jq4qtB5KGznmU456v_JFrNJgkcnenDFhy72dh3JZj9jg73szCQ1nE7g7XHX_NPQWejRQ4n0b8fBaWnkFWUsc0RnT5rmALQxFvTKQe7g-TKoKL9wgq7
ckHkNv1s-po:APA91bHNAxbLiATAkBhR6IHqBUGJ06S1oJEqARenPvxT-MaFEsuuaVt5edpeXrR5PR66OxIWUGv-m27uyufSiZnFKZnCEKsE75qUftUPdZb4kouMGeKBhyEc9q40lXDhhtFtm9hp7n_9
c9i35jXGcDk:APA91bHXyYFByEqDvLja9MPO6lLd6gzHXn_O-FtPN3WVmrccdpz3HQweJbNKckxPAHzlvTXoate8XCIH2RrlOM8_yFpo7jIdAwhUf-eC9oFKnbYAShdXXJl6gxH0Jv9GO9mSI-tSwC4j
dL-QvUovgIY:APA91bGrrkATP47T5ewSq3Ck4iOpUJVI0DIerccDvIZPOESFxGbVVoDMkaZckmmtFEwZcMEkNOG4mosgq9UonUki1PK9ufB4E3PUSBbrQbgl2xlJItmagwKZVIsi_McCh8fend59T_xD
fCepVyX5Ed4:APA91bEdPrqy-Pj-r__8-DTEccgoD_P4SVOcHYfL1uVOqWPFJgUn68nEi42XuvLMp8bUXzF8CjG96pXOWr8_EhfL3NvyMhrRcjfIwfxE4_l362icbYzLLXdxnxBel7haPQ3yCM6vJo_Q
cxVMe-mcSc0:APA91bFtc4mLcY2xJt20BS1qATTNRYz1fyBwOaV06ZQoUgXkUpPWZNA1FEtyv_bJaZatxll8PO_0vJDh3HnMB-Fd1QcSXEZRU6Xt6mzRl9y1ggzRQvWuLnz3KdxIy6HJxz0TdE25xhjy
fq44xMS5_zw:APA91bEg6Ql6ZlYvJBxz0xR29CH07dahdnzEJ-hl-99pvxBvSgPqqnz1cFNLZFCaIMcKA_BsTFH3oUxZOquGQE_TFzidMnY16CksBAB0EtFNOjk0Ln2MQ71HJnudtrPvhF1vAPUhuX2s
ffoyWxE8En8:APA91bEBrDRiV8L7golPXKQ7gsE8vMzpwAUsg-MQPeoVhQL1KM9eq9O_gxd0TCz-e5qBJ9tXVUtcWyVLoZ4A0fzGf1BVvBQBJnAk997_pLaz-AclPZiy-XjbEGEk8dC09c8Qph8E4Lso
eq1EbubmqQQ:APA91bGC-EIuBO7Y2mPUXqUd5xfj15crxomSqQCViga8H2CIKcKxw-NwC5SN5inZdN_GX7GYkMzaZlq2LUtGpUvAIJmilN9fovxwgdt5KROzG-LJsIFymlJySyrKoAv3qIZ2htzkqxp3
cA5d9C3xvww:APA91bE_oPU3n8aaFvYzB4ZuD4WgF4c1oKO2EPoQSWBBUJ7JU6AHS9J-raT14pzMWLriF0LmQucXeuV2pZPos5gC7FmgBNBJmBLvGQ85yz_deMLe1QU-CDRTYleUQoZvegyZzLhfy9h5
eZZ1_fxr7ik:APA91bE6Tek3FLzRtgy1FEqVyzXAt-QllatdjIZp_B5_v4X7jwI9502_m16agY41orT0hiTJGIo-bCpLGNPQSWtWAbKIobPAmcSvHiXpgxGCyK39ojdCJE_Xw-qqraPDZxGsRMI1GTTr
fp6VvmUciak:APA91bFjs8FZ3o1TY5Hp4SkeprBlUEnBV8Zw-CKglIg8nKf0hOq3h57UCQGgpMfOCyevEqnoQrjhlg-quAQi5MbAnHr7QIWnryIrbc7EB_wzYFVF-NqFkIHw08P3y8eURFExcMP4P2JW
eG1OOfEOQHE:APA91bFbXC231rhOqXvzWkG-BuvwEMf7FUm_uTUztcg4fjYKov33rwXiWYkW5emSM09ChPn9DoYr4jOVtMopqhn7BJsnUCkYcccZ-UrAk72wu5LIsTCsP4YujVzJwhSxlJCrugrUdByh
eXcsYG9wYh4:APA91bE4eGidT0IS7pseckvTJg5G6-T7uRlmN9_VG-416ZeRlmj7VrbQBg-Pi0nDor_GynSTFQwmMNq0Tpi7mOaGpej81UGP5tW6l6PYuiZHUSD0gIUf-7YaaxuF0IFqSXwPjDbyMGKW
fcwuxgAjLtQ:APA91bEuPgMoqGt5Jm_itEwfE_ejyhFnnQYzP1IIkeVTc35VWoQc50AhvrpvUd1dRvOykFKq2ZAni2Lu4ftUkM_ypV-Ng1aOZ-Qs-Gx2UZkMB8A19CrsrbAzuPZ1497Zv4cwaeRTU3kY
cUkPEbJeNMk:APA91bHJDxxb3ZKza6nYYT08fVPpg1kvQYd0R2iaI0-p5X8gXye6KvK5TltM0O25OoMteD7kbNt3_3HlkKOcnHETwYZxOk-hJr3_DgqVvQ1MKEtG-h3FzJvBCwyDYgdBHLlbZ30z_SLH
dGZmcmryWbQ:APA91bGFRcrhFs6PgqO822jK4ESIv8FKIHKFNg-rjIubHdJZY54XQhCpyTUXbKweS7vkvX2dptGp9E-QNb106UUCHVIbcT4zmTcFiTvTp_WMnmtK6u5gaPPCDMSGHu1aynHUiFni1E3z
cYA3YtK-R5Q:APA91bEdCopfs9iWct9u2taktkut5nHe77JuTROwTjieyQvbG-kphu9XIjRREAWan8DfxNSIal0A4GpfC_UADLjXO9EGxMx542vNLs61T8D40NZ3JKtJv2lMUvK3EioRHnj3cGzKlCC3
dq_MLY4EbAc:APA91bGerp8HnIWZYz-oT5Bo_YL8aY9ccocG1GSgYA3Hwpap0dY4nZHr_v0TydeZQIKDYPVksoI3zSa2xanjYuI1TNHw5TL_AvYjX7sVNf1X1cQ-qg2YEBGVhsVrChaP0cpq4IcDd9N-
dcuFeBGOquw:APA91bGORrp1oY7eEnYCwxBxcT0tjVsc2osxhl4g7USpx3dmbibp9KzmvTTmlEAjIcT6Xe82d1oW-_rb7cko07LUfxrZtkdKvdu9uTxCOEXgWtlOlZIi20ur2c0fzIWn5_kHhab_Wfal
c80FMVvx6PM:APA91bGHuVvb6mj_uvAX0rl4iTyagCpxf2geJ0WZ8Cwj4yfhP3iHNlHaR_9ClgNtwDu82INIw7mXcUg_GawsapzypB6b-JPwL7U2xl8MiiB1l7M5GR9gxdmnQHyeb6KVmmrcLdgf3Y93
c45dXqxjlpQ:APA91bHVSQo72L7fneP9UydL0Y7eurgE6ZjYX6xnmUxw1rWP0zguxI48qH9ENCPn5POE7Orb1kPZ2uuqQmG5Epp4Y3rKTGjgHLozOfKeoV-3iM2Gwbo96TNzfgrhFpPJhUJe9dDcwBKJ
ev-XDsSx5jw:APA91bFU2M_Od9yrzCDdfrtCbGF9DLsF07yq_W6GqUw9sawCYVlEldibgMQTBnXmou2sQffHbtvYMs1dFuBWmpniFMFTjVZmtjk5p_clD3N6YjZpJCCPtqRS6srJST9FXWAtVTuSMftP
cyO40kJGCkE:APA91bEg4610BKwiz1RMN-Y21jZjmufL_vJ8z1GDGQFkk0ZKDqwNfQDkL13IR6d8e8cuo-7y8u9wQAGaWPcSkKFXV3gYorzbnSeuFHSR0Yia3vbNTO5qRgGTYzIbq1f_mBLDrW_TbmFJ
eszGVorMjqk:APA91bHg4E_tADRk8pp0WJ6soGF7d3TfPmJz5ByPeN-FfSu4p538nDsIM1J3HJ_XYiCLXKTfEpiTNd4Rn3Gi-Sz6OYKdK5Y0vAm7KYn2QrUHvDdkmsLjep1mZTNY5fYxFEqIh5ec6dHg
fRkIzWz9p-w:APA91bGpoEABdp5boTpIav5Pr1B7ZwAbxHKjkvzZEwjjIQVawys8YsGYFPbOXtBfE865IYWWmT5ppKKNEq12Yop6YlFeYegpJwb7MY40UvyLd4a8utZm8dWWnAJgpeA0zyZzltNSzPvr
dVNj2aAdLrg:APA91bEEI9D-TByP71fApJjpKTtMXE3dTi5LRB5ixqZnSnaCb41-6BrEqCB_OKjubdMnn2PAEQy1SZdm1UrWeSRHU3Lb3BMOI3i0cUdmR8YUur8FlsCD7ulf--uzKczoTQ6NzN9OKZhG
eD-fFiZyZ5E:APA91bEmWdrB-NV4ipFpbNLSp-_DFIBtEiRrDBxW6-sg6_ldETPradeywv6LULFxrjW4o_Sywpis4GmEYmbdgd57BEvnIpGdXJVRm6c6JAbSahRJBzV6hPtuENXUAwkc6kz1lQGvJumy
cOBdd3vvLqw:APA91bHPKnjlNvvGS20SKUx9NniJTOPZieGijC4CaOw-FrK7kGebYQcUUsEyQSiP4HEiVMH7OPtRdJiKmkLrTWO4UuIqLHbH8vOOsmQUFK_U5uqI7Jmk-0UlaXe0IvpKNthayGg_yd6e
ffEApocYWbE:APA91bHgYxV74tpJw2go4ZU5wKTSHG1ZplAsQMIGLGWK0UhIhc1JL6m_N0VSSHc24KDi8DTWZuZQWUp4DUIgFkFGuXaBfavMQQFOQct3fzLHFa74tP7dqHRg41au8r6DZ1p1IlfnSt8z
f8HY7qmW7Uo:APA91bGwqBeOyO-Y9giE51Tx4oQk7QOCfWUJ4W1BFXLdgCyCNrPRYW69BR2Kt1fHnm3gTUhS7I9GDflZv2GQ-GFa6Haoe1hH0UUwAZMP7aI6hKfvstU7HqD0eOo3MZBNlHX6vL35AMos
fCJmlC52eN0:APA91bE8RXe_qKyBMDI_c7lX6w2ZaRnD7hhE7tg21CnNj7kzreNaon-41CUP2D1G9WxWwuWEnbCJKymfHFn6gGMbMIO5B7aFme7Cvv_LiF5QF1T2X4w2hGIvIgmDZhTBAotLiKni4-dQ
dqF033-ErDI:APA91bE9Q4MOhhBqefD2Yb3h24oVi3jN-BCv-86FA7YnQ5koaR86HSyPKGsGnTodJ1zqa4ypF3z_cdOk4eveOMrw2Hj5SCbs3EW-Wue5KfOfAz51hjhMFpPGXtKBl1Xd_z7ilpRqXnA2
chGvwcGiSPg:APA91bF2YAW9mNXDx5UwfkAteOyQbFO1I5bAz5PrLHpQw_jLj9jJ6exUdaDccjThl4pT-kJo_RlF3Z4EN7v43ntFaF0iPaOHd1ZJVWzBkOlgTBdhaEIz3umZfTansah7N3aLGd72luep
fX9mcJDw43Y:APA91bFoKdktv-d2vwo0njTOmgqfN78DAIRSP8VbjPCqL_NF46gyZyRxMuGwUlCHUzu3T8BBVdA9uZObu17QQYjkA_zKEVo6jMaKjfaH36Rvf8I9oo0XGBLsfC3Wc7-6cXMYxUUHE_-F
e3QI3lFH4L0:APA91bFTeFqbFHOXktamoCxqWTxKyqyRuYGapvgfY4_4oQpHkGtGjCuie25S_swEW_0HhoDoYfkxEbSv1BmHgny4yOGPdhHoqa8r5jkWW_1MaljZs4Zo8xKgnEtMiagoZD_LTjVdMyFY
cuyYL5qhhds:APA91bGmvbbyFo47riGvAti4aGfGUSSpfss5PPxIGTSRcUVEOyop2TQi21_ig5zm7eO0Pq_H0dk-7RT9Grcd9q8-zFqrj6_as_FKKMDlPSEt7FvNQdFc_ieNEU9ByRCOXPa6sg7Zylm1
eIXlTq1Yjpk:APA91bGCMDSf_zUyRmQw_FWuyIclxfHyz-8wuBVd5_q0h31a94QgVrohZabKxQHWkO062N9KLk2BJoLSbO_xe0lkJlQgu4SR0lMW7FfZ0mCZrbazSEdgFWgUzgwbsHD9wnCHwpt1gM0Y
dyWQFPdKiIQ:APA91bGQoDDfnZx63hgxtyokS5D0m17N69q28Uh7Kv-CQjnLH8esNa35Rwf73FYjDEVtkK0bYOlbZHhF8EDjXbJaqb-ZuXq0ZdCmOtOjV1G6V0PWZQIoTruyoFOkAN94Hm7l1rOejIiS
dxBcLhHhxj0:APA91bEZe_MoMjwrKuAo3x54Ew6P8vdGuqw5Oo2azixc2qyJrtUcUbx3HIBBwaHeXlbRE-KR0HXsGG5vNhzr_GMOoEb35oKSd8_Bnabw-4K33yjazipi-wleSkbzBNSIWKmp3-gb2euK
dKLJEklIRws:APA91bFVatxItr3fX_70QiN6bCot8Fmb7jFW5OOC0rHXl9tcOGoU1n5HK38V-g8DMWVemLD3fFacVFGE1TYXz40CJQMKu_ID_N5g7hFess_zmIOjm_3usvndl1z4uyqIGK4sV2wfzsfy
et8BnV47uVw:APA91bHTiduwhkCqO-OtKUDX-SJoFlYxl55Z-oIEgAai9mV0telLPqiqZcjWNu8y52H77l2jVwjhXSSWM6t7v6gHXagG9YnBPd-9sB1ydOix4-UXqmoWr-TCf9U3tWNWs0z8RONr6CNA
dYiJfDxEyfo:APA91bFam4iyTPFsJsXD9GiFRvE-dAI51F_GBgz1DsbaWBDdu_gKSG9PnVg2NV-uGkEnxMiwULDzgoV7ddDmTHq9HgDk2gXopyL6yRGlANtzjctmT5bZZrENe6IkIqR4qZ2Bl56_VSCy
c5cbvIWIvgE:APA91bGVuR7ZQgX-IBqtY7VlFl09LEhgCVUhAd46rIACXEhP7ZK74DI6oLIZS2IQNV81P-rs8g80ew8kjEv3QzIfnAHZWb37EB8wU2OlrmR2DqJadJmHpceTNsXIrytvam0HD8R_FElQ
dfX-q7PzUx0:APA91bFbZYhxCu5J1RqGlqX7lBWiwLgTRvKq3UC4OWuXX5McK9LBnVx1XME_WgEw5TuRxbw8lNy9FLSTZ7ZXlwzXO2rubEK9cuqxnLu0l8DvATIfzzK6_sRChWBWIrPTcKgJ_0-bw7CW
f4rM-V-GFRY:APA91bGCNpCvTMXM5pqKXU6X4cwVA-El4cw1zpwsCAqWwq4X9eZMQYgSqCBPvY5rnt1j0oI_I8R3TWFZnSNDQsl2R5s83066or4naXzkMYR172_JIvbP52QFMNPYaqfWVdqttRXx-qpE
cMJIfxJP8uU:APA91bGQcypQCVaaePFdPCzZLOb9_oCjEPiOQ0eL9esAQ4YBU-npY_M1x3VLXxjl8s-3dWip2Fvabad2cvNaceCfkCFGzDmmpgIzMfgqwXmrUQ2pVN1P22OSHIRdFzMoYfsmZu7kZQV2
eKtU_pz60n4:APA91bECLtFp20MiRGm-AkECkVJQ6x7D3jOMEs5lO1SqBbog3S9kBlENQcPzBUuQyExTEBQY5-VM-Aw_KvFa4gVWuj8b1BODWUGo3m1OQlwGlkNsQcN0_B17w8byfhAk1Pd_ZiIEF68Y
cQmhahMPAlQ:APA91bGoal6tcEKQQ5Knb7L44UdBBA9HxdNWBaiAYlCgj7hi9QD0UvA9vcUKo26jp0GxcKoqpxpOVbm_jZ_E7ORwaS9VGGnP2NCHNYrYFvMbi5mWPgL22U6d5T2Z4cmwEAfrHjt0wYwa
eiPlZHyvaMo:APA91bEK71BjMovNLWL77pamGZ70dcR61EbihhxOTFAtTz24_E4EfJb7oPye35QYz9yTV5suaNqPlFKdJDO8wZ1sZHoaL_C5GVk3ytDi8GQxiKJ4wxklXTu6QicyDXPWxMvXDbp3Bbpj
eQOVsoY57H4:APA91bFoU153EOT_kf_KEqbx1ezOciKRZeMDwRzc9QxFkicsK9NtNf0ODvgDnlnw1HfEpwfvTAl15lL0wNIokmdbtj-mfpROcAsSpL17pl-Du6cm4fkFp39NBukcmk1qzVHbij6FQbdL
fgTwaZmmevw:APA91bFy9PPXdNq0h-KQoVZqNxWD0m7MFo_B1jTlDn3xOfHAuO5042qRhSicF25PvgLREQluQRx6S3mUseplBfZ7zecrA2-z921-DBnmuz4-o0HnxiQD7w8U825Y4SRQlDARLuy2J_ZR
fo5cM5PtYzg:APA91bGv_vGdtVGSiAHibQLW72GKK3ARdo97FrgyFadUPBgbAWZwTzsquku3PaxeShzFhEg2j1gjz2Y80trC44GKlCzyfBm8nOmnhrI4i_rk2gyTndgITyjdTQ5JvXChBITXMp6S8MmN
f6L1wWqCJ9o:APA91bHsOF6nRlSi8Ftju_35Q6w--_E5kikQhm5RtlG8GfKg7YxE6NVLnOlZDnHG6Z7yZBrnYNjLsrH-kltVf6Sr1Dj0-gmpaKdnj68Cq4WwTMSJkCulRYerJv3Jd7_SAdafsRmQDc3k
cb4s2OGIFJw:APA91bEfbJAfa9dv6X-lrC5aV0BGm4se5k9Q73EOiHKYeX6LKHn8qSCoX5w87iafUJ3cqMf5z7HiqtbWvCENBON5W7djSzhWpUfLb5szw1Bkw6wKshiNt_fbJhqKgsazVNyTQe4j-jM6
dEPTZbna-p8:APA91bFiNXCAf_Pi3j7FJun7E7KWs9uwi4nm_s4Rulc81PxKT73Pzk2D8VvD4jt3a1nM_19npV2A7Sl_ffwoP1Te3rV7Wv9MllqVwMhZ89WAukq3XPeFD2LLWF3dDQU-njW7MYFTYY8o
c10A22h9MYs:APA91bHWUY9Kekp63rIEUrwrFwzPAVAWLVTbPh2Yj9a_AjPGdqTO0RFzufCkZYHbJ0Zi1nTBBDV4_pJQJSPg052ryPdmaBy_zlgDgV5w1JjzAfokmkRx35_46yIGj-yGXtEBWtYCMKzZ
deMKy2ZzYXc:APA91bGZk9eLKx1PRn5ck3Lv2R3UeRTb6I8fdix1BjLNy4k7ytgXpTLPZ-x18IupOVbKLUjj9OM61BdNAlnmADwtoiPNKG1-k-X2tKxHItV-f9IkKZMENASalRu3gCNSg2lz88r8tW1W
cIp2KLUu2c0:APA91bHgB7mPdog0koamzWg1YIqjkzwsJ2_VWyp7MiULw_IBpDcCXTyh-oHOwJ84ps9XzZqZYqCIN9tNhAtpCcmUa9ZNCNszcP5l_PUVY8Kt7fGxdMeihlGxXEJZkdhHrgMYXKabjdci
eN-2prhy0uw:APA91bGphiNbl9FTkWPz4s8gXsjTRTf-_JynvekNYg319iRRK9ihIgXOXctx4dFVoNGMGVEYk5WWKRQiOwsysTYUsT2zOZXCL__e74HzlA-pRugNPL9_Cn78EA6ArEOCVepBmVmPEdzm
fgztW2-gq-E:APA91bFyXi_NNYsM82wbQ8Vxesv7ZI8_GbdAjhpycFGgZKZHxUXZ_q5Tpd_rQ0i2zhwI94cvRLW7U9qmH6HRcgdKQ-7OZf-5aintfllYG87eooR5GVZPKhUuLhj2Tq4JblTzt8Xpr1kC
cgAe8D33H28:APA91bFN_j7b7fp-XnuZ2YQr2VumvhKgjAF9uQ3HoPtG_rs1mBXaS8gCgDo02SCxlrSL5jVSnJ0czZg-5JtFpuvbWElO8lOqPZcR-SNPLQsYGJQD6OvOf1G1zAqBOaqP29_5MG0qSQTF
eaw2TYuxPzg:APA91bFX3GI50wTjEIPhspHei3Tvh7WpHFT65-681eLucFjLgw8nu-7o6tjro5dIgCTr2H1iejd1UFcfkQYqGKu2s5RsgtXVmuSJB7rlLdrqY8tTp3nwk2sLkeHMaO4qgfhFMnNpRihB
dol0SGEIS3s:APA91bENyWrAs0bMjtViu_3Vr4DdMoF2LJih2RlZs_BX7NFx9riELfGphk2fALT9MFV7mqlzlhsrqRGmFW3UTsDohxggVMDb6xEf4OaKH7SeEGYdnxlIT5zAlL7mcRHgyvy319p5NTOx
dp3gDhnfNxA:APA91bE78j74DrYkyuSJguQsf7n6hA1TqPXHtW-J5kBRTAwrODnteOZYP551SYkqqVTNHlpLtUGMIw-uBwam6FNI-rxe0qOcj8trpBq7FtfhTaVZ6TKVbiMblSKw0q8wUBmqadvL8Ik0
fPtq5CAovBA:APA91bGSDuWzzu8fU1zlwntkGQHkC30Juz0QMINex5DZcfIAsVY0zZbTRpRvPB9q2zeZRSrRIsCR1yddmWFKhA4iPLNgnDGGXGtWhZPK8nt6RfBQmwXBGft2MN7tQ7SDiR1E-WhOseSD
eYKe12ap5iI:APA91bFwgVXJGm0RZry9NeHvdnehH6g4Mpp3DcWdF9H6xdYuJUblIbJZ9xffxxU2bkbT1sOOR8GgGO2dtUA16SArUIEb7EQBFpINXhMEjpfqOmmgSqEskTQtL-1NSZlt5CuprpL_uq2_
f_ONFEP-cxg:APA91bF7CO8uKuHCVZtDsGZviB6v5_mFh4UrA89bVvTvKR695uT2OAj1RN-G6Nff6ULOpHH0R2m3ff9ZHBOpaFRE0JdNtcTJLXDJch-vgs9f2Xxi9_0RpuTZ1fSH4gE_WB7C4iQmnZp7
eGm75j2NjEs:APA91bEeec32O5mmxl5QZCOBhWkZXgCYcY5hGSYk4LTzv-Ql4i9Gnjf4y6ahQXf5qLGX6ooMGcrXvF1XMYZ-TyhFpgV9z-bIoWEnDBSf2AJTkE759_V3Hw-mmXTBGUSAjjHGe_FPJsEb
cvmPzCEvtH0:APA91bHiU7NGn7pvvuX1Lr21YWx9Zt_kOsfZoRSy3JxC3f1DMcOsQZzFwfp3WOIQa1i1UI7C_4VNPNaboJ7C52y0YWx90F4NrL_uYM54gAdCV4zDY0TMcfw60rAxYrBuFBtqWmVIXmgf
eWcJqBeZVN8:APA91bE6emT5mjwx3tN2H4y3MNz_-ojhYQ1hJJOMpSLLHl6cXz-Z0e01CPzV2Fy-jr19ioZwJrn-GLK0wrQEOzv_PNQTjQqcfkw2Zyk02X9JQ47EyveFstRIZ80wQf3PTNxFcOyXnuSs
f2Q7pN7i-oY:APA91bFHzewp_1NTIgv8T8qKl3MNepPnX0-nnOo3KXKCBntUuB8NgsgN2tGKH1KClF_wlx30w_A4XLO7SMYAX4xbERIZBzbScuPhYO__4UF_xsSWjp2ZUpXXQSj7a53WybyJ4AGiRMCg
ct9Xy38rywo:APA91bH-7MMZlbQVhTbfiQPYT_JITDSvv5LKxIE_TpnEIQ7hxXou4QhC5jS3G83LRX5QpH_49YNYcBI8j7R8hO1RDJwPiXb4ITI0bdHIhz6a8eox6LMJjOCtoJ1_5wkSFLjirlm0AVLL
c2ic3s1ysHw:APA91bECm9LgwiFwYQkqbhu7kvSgHApqtHvl3mgWzSIufLaf_U_qQXn8g3foH8F9juUzhm-ZRSIjznALiZd7aLYEwtqc74YioMZXSgyIq0G3sPiDLuz3ppw2Rp8smWi6KJZjL-AlPU71
eIBQYjGMTL8:APA91bEalwzvdV5VAXOcUTMjYDI3YylMUCo9JmTic0-FGOy9vpI2PrsnvnJJ5g08YQ6bSJJZCEy-mE8nLZIYEwwvqfiRUJ31Inw2PcYl0tB-_hVyaCFf27aWGla0u0KKvzyXKF_VSRzR
cqdHrjEhOb8:APA91bFFetC9Q3LMQ0pkod2ZkwX6q6efFqBs3b_H7QJXYeSPHjZ658MfFzxvmnVbZa6n24Gbf78eA1x2WtOLYArWwd5TmfzkHVYiGJXR77_7FnRjFdkf1nU_60v9MUNwlsQG4Dz6naNP
csz2j-K73EU:APA91bE1VU1ZpInXxi1QHabSKsJHbiUgejQ3Y-3y4I3tubQiZaD7-IRdxqNT38KCGxoT_RSptNDW9hrLAYaiwtWr5d5TW_fxeHQ9onZlR_ZVdGDHSfHCVzuObddfygbb1ARRwzjdzqot
fo8mTErzajs:APA91bEqPyq9RXYfRFYOpSyDyttytz2xLHwB4HSxiAcJpFKzd2avJIq8hQu_g73VoDDqr6Q7uYY15udADSzp_tnzd81-oUlBT3xUhpffPpd83nxesJgRgknf4gnHylW20-COAehLZ1hu
cqblcLuE36A:APA91bHghn1UOjwrNF6Xkas7kR6lOwfftgiQZiqCoOjUrQ658hUz4JRJ7bAM-gdnngnGQLb0wq7vQFOohGey8mIReY8A8QYRbYrWOeXsuIoUdJwRFj2wfCaPIZ3xhrwyZrjixZ9ckV7U
e-fm6ai2IfY:APA91bFl0gim27eC4s1VpOiOAi90cRQhjUL-hJdv-jcznu6WtoxN3zgmGa9Q0XoeXzOLOcHr1JxtmNMB_UwOwBVo2LCvdLFd8Oco65bSfBx4yBZb4sEZG_mfBkvv759ZOFj_ztGVc8xI
fIRi5cH0HK8:APA91bEsNW34-nvcqEEJ3AzTkw85XtZrodR01_9k3OrkN7L_nhgB6Es7Yjq9ubpm_wcZIZfuMTkiJ71hbElf6LVJS_yAO5iWXveej3GhiXXGoVdX_4mBYZYy__0SXANRMLp1Rkj0z5ky
fLjIg6nLZNA:APA91bHsJJ2E6L1RDH-zDFAuRYFYGDdgNK0PvAaha3ncIKA9KK5r0lkVddliUCiEa4TBvSoBGmKiqPXD3dLOuwn-xl3NrkGjllgeRZ7BVGS_la9c3PJS0BmXjgnc8DnMxhRWOL2Ed73g
f_tfF7G-JuQ:APA91bE9IV7R053CLQc0AO_n_y2gSWomRejqHHUKtIQf-B82vcrZtacTK_XjyBwpRv3ef7TteBd6fqfF_2h0TxHwE96fc_3ZMQHHIZ0HZlIPHXOUIVqkOHv-fE3A6fXmxgmddmfcCrqF
fysDgAKRiQY:APA91bFbt5toRpJot4ruc77Wj9eakPHN-cyKiUbeH3G7gHQi2PZ1BOfyO8Gy_ePHXHvUKvVO-3oRh4T3uZNfP5b53AuCC3M64Fl1VFiCgzXMI5I03XhruMHODBGGRYzcvfSqbsZOcwHq
cunPRYDmFzQ:APA91bFE6C5Z1dUzJRBBJX6q4mE6C88hMPmFSKUCzrBNUXdtAPvXZAcJAOwr3m_X45vkdd2rtj2EFYtJZZwRfxnnRFv0O2v3TXDa1Tq37QtNRhlC9rTZMXDO5J4AVnf_PFofRfmKuTb2
fXX3sDPzFJ8:APA91bGQFsVhuPh8Vo_XS9cUQdapYwHmz7yh1CFBRHpJ_2EfRjw4LPkUPHf0HYf1OyczRdq1ANTc7ZjUoCEb91Vbs0jR-iXaQPPqpElQH31xiR31h-HwubXxLHFU7XNf0Yyv6WBJvXOa
dspgVH8ea8M:APA91bEB2QY2SIwwxIo6FgJD4eKWDIGUSasLzOAtb1EYf8WgWFOj79FSRwzvQHa9tK2csMibz30J4xIH7dtfxlk_Zgu0uxrKX2KUarkEhiebVzzkRFrY8bwsEJaEpAc6B7OA0zcfA9mU
e1ZFHzAhXEU:APA91bHbmD1z-USCbJPY8CHt7dB1ZLR0i8yjeu8RfrweiIZlQFxu_TswZytCJK8MB2I2FFYrgDsAoeYoAw0SogvL2C22R85bMDb1z4I1imOIhg_tfptZxco9VCu8j6QJ_DxMk5O2v8xx
cDC4laH1whM:APA91bHtvS9w9Tpwl7Aw0TXN-4HCOxikldbIYd7FYYcgODs4Mi2iZlhuOm0aCS2-DcQLpb--e1va8LYhdOOngEfOztpbD11b7iPlhSYFb4e5lfIud4usznYEPzliMmjKCsoqZZ70IDVw
dzl8jZpme3k:APA91bEtPQqoyzdO1M61YC-x9PBOFAf6zIPU0p7oDxh7mscqWmR_xox6qDtBp8w2C8LiwaLNVmJ-EbXkokEvxwoeu_Mw48JfrfyiH2G2MQ8qsGVOtm75QuObO9AU-saoxtO5LLm6Ntc5
e7-V2hZFI-0:APA91bESvcpftn38Etkm8A25WNoq6bxwV01Zlb0A3DY9bzsskw6IdWY8LeMySIuScUzNglpKOZT3OLGjLKRThNlQh7oYVsfpEn9xkjXE_4oRICnDtCSgWf-J9a7-4WqReThESEw7YyoW
etXQZjMIc70:APA91bEPFPMJSFJ6qP1O70z39a2lY-rmXCe9NWAqesXe4qPTnCtD8lkPMcpviG9mtms5jR48mz6qRaT6JDnZ1-bHtGnvZDewJ3PWlFwIYCSvjPNBD4FNWqFVmXof7IFChgiMLAniR79r
eAzJeMylWiU:APA91bHXCYWsbIDUXAn4nvYDt7rw9Z4tsgNc5LQsLvauPZucisyYjrkaWOjf_UROBCtL0vakrqpB4bmNmERi7NzOGxmOPPWZAwP_MJ9jBe1BzS_QcCApFGo3KP0WhNzq62GfTrcFX-Tj
fueSOwErlv4:APA91bHjUbPQsagDTOxzsz1ocBLwRfkUtfogE-ec_LfnedmByJqI_I7rVapNT2w3sv2Uim2JE6BXsfWuwCNBjF5ewd6CzBfv11j1mVyrIhzOFeB1Rh2lVzH2u_5-WiWkXgGyMp_eQNdO
ctZFAnODoaQ:APA91bHzM0wLYpZTAkP5O3FboFGNWp0krZ5dXOwf6luPkXdcIAeSBILHUF8v6P_VhpBG30vXfscdNDEdVS6Gam204nVlrCd4Z-k3iC6zDv_Gq3uXPi30wX773AJHX3vjL0VE-KqjE1dX
eGATCY__R1w:APA91bHKfQwTLqWeEig-kD17D1h7FnuTgpvbSy6aMyCrxPUHpbUT8pn2E9vKXQWo3MZcdpeOpqSpi1hzNj-R4lQjOFe1F6eoi8x-BECBQuJcgKgH4wgiq2Zm4R5oiK_4AdgYcH9qPYOq
fRl2yJ7TIqU:APA91bFLJOLPVcPngjfKTLCnfaON7s45k1ozxyD3RJ0cb5PWTwcZDpmHA8qUkCXoo0TkQdebNuRGMT2mMESDuWN67AAQnAa7iEO5gUydmNZb8tImgcculB_a0uF-3lo-Qo94N2pcLY4j
c37oKl_hm9A:APA91bFfHso-7XoD28fU4zbMrSjrWjLUaYm3MBwfOJm1t5zSiy8crRHE6rdEHSZrBYCbK6G2VoVd3NKDgmyGglQjtPE7vm8U1rCgYXeMbjkPXGJMlIwf4eC-n3qAqCLAnDvQvll_iVCm
f9jRl-6dnPY:APA91bFuKsaAJ0j6S5oJodOfJe9Me94Sb2bjPn-mZEAGnEdkvSWfCDtvr7JvRNkn0tv_5D05XdcY42qGoM64bad_u_qfoWChXDJGS96qaEA8Jk6W2aLr5nLl_XyVIeiWtZaRegNYY5sT
e505NSD1KPA:APA91bETuBdeB4Opca_9YMlKolhad17J7MpzSpvT5m2GQCozCDsuf3XbWLaMpVisE16kreMdEp4QvPGJidegzlXXfbOEfKakr4GAYolaQ8ae14X0S4Z7IAhpTPPZREnmnnilhK0kBL-X
drzG85aRqT0:APA91bE7TfSfsosPP8mjc7hCkpWlEp6paIxDGg-U1aUJMKPzVDFr2-u5ANqRe6LaFrWv49tnoAMZLsQv68HHrdr4MIOOZ2AphAjRfhr-p3kEwFOhb5fJMmoSuqeeE3ddtoVseKbwLBU9
duh3fb6kV8I:APA91bHTmdJZ1nFJlmwUiE6dsrowVwsPdBItNeEo6MzJUnmrY2yk3ye2KC8rdM6oVu-yYT5dM0pnS2resQv5sUyKUA9j1MGQ4sotpdID2L1wsrjYNfyRDAcCz_aOM2WP_8LbVrrjvrKW
c5PCgPF38D8:APA91bEnhGGYnJ4a6fdXXHn7Iq3PwC-ihwClHbhrtO6uJtVu6tMcbo03ZTryvVpxHN7XlG9FkIgHiHV_oDW7YvKdMWg88fGiv-EvTGdDneNeovpFIDCKiR-UW3q0qzl5PHwB1ovE6NEN
et5a5TslSEw:APA91bEB9xtkooDOsuYhe5tIASh3A8tJIauQJczbQUGqV9421qght5PypBD-q78VIIGt5b_NXFqCgLxltAZWq-PbKG9kte2y0YrHCfF-Ez4lF5kgxtfzDRUhi7aEp6n2Huq-XIArqayH
fEgtA0jvMys:APA91bFWPSPwiB-5zFX7Rkos5ehmzTgnYHo-urcycBKUAGArD2l9thnvLjqdKgaggCc9c_iWkMrKWYvV2vqB_5zzFBh5NGJ1ZZdNHVvsLekoDpAMShUJUIWbgy_-vA7y9_a40RQstSEB
fJ8D_7duySg:APA91bG9efHKgfglZBUsN3M0e3pzOYvoLc_NWV309JVhkiy38UlbeKyWYyc665rUuWNHpB7P5SemXgL71CJINZmhwhuSDV06DF1ploe7G-mZ5W_IuigQenzGdW9OZm7T-rEGO8UK6a4K
cYOGVQjplzo:APA91bHko76jQDZAm4H2RJYaKcSdTfiutk_bSRf2NTetPq20EtWhTtKxs26FwSyX1ECeoEJMgvHDI7sWsEOJ1Ippy3V_gMD57PsCd8-VfkAYq2WXfm33jZKvqRzCkVjPYKWZqHbOSYqF
evA4XVJEipE:APA91bGcV76qzJJSFClVPDKHoJFzNNdqEYA1ohImHiZGShv6DBB_YbNKMG6nDMKCChLc4RZ29LSMlSQfCGZynUxYUKoawz0DXfmEgsMIXGO9RUYKwhRtS-dwODxx2Qjq02ePr7lW6QCn
fj4MNJ5GRfU:APA91bFRy-Z5gd98dGHxCttlpozmyffqXk2w7o0D8K62dfZhrwXzHg7baPQ37MvIAdDMmPpVuhUIQG7qYRg2VDvNceCPcfDtrUEiF78Au0DIo0nsML3zkIUvi-WijOyAR_A-UywUfwm-
cDykxb8OEeI:APA91bHNv0gbBMY24EP_0iiG4IsqRn0y9rUXvNAlGKat4aFbYWblwpqk9ETQPAKbmmDqn7LwrlmMwiLyhS44N2Gy81bi_v8pmMlvkrQD30wix8_8xdrb4ccX4MB6rGbDcsE8yHxw8Avw
eRVXfb-GopU:APA91bHC1lgvDd6rEmOrpCANNv_AaZDJGnRvjAFbLmFIqVBrVT3TeJ7znL5uN8Hp3aw0SaytsKsnX7eN7UsKKxrZfHlL7WK8Wu0ZZy4N9nMTr_G6cmfciEj0e9YyF7ivtTlBgZ58Mevg
cGr3DwX-OuU:APA91bH3Hq9V70ensEvAjzis-2_meRGrVJkssls7Osr2dzlp9cDQT33YF0oBrWvH5vhxbzpaF2ITMgbVVTNLKyg7_ng5s_Av1GAeIXJH4a6V2iCqZnwCBQILDuX5ueSdvxJt0CZsgy_L
f5hrwjNpJEU:APA91bE62O6t06jvKY8J4xCqheOBQ9TKv4_bGE1mm4SF6oWOlh9KuERDTUp7C_XepdczQDeYG01fuv5Eh7kU6ABqUUmCTGOuXasYzfC0o-xXuuGvqddsl2CsW9JbxYF4K23gJWodGZkM
fe4fvuyQgsA:APA91bHFXaR0jO66p2mKSsfnNKC6MLffXytzxNtkB7ZprLjEUGYZIKoCl81n3K1LFPdOKo-R1KQ80Zz9_D-_69DYl6F7PnRuCSAZ-_bkblYt_JtkUFZD_HYIKRgRXnnOkmZOSTCSiDN9
fCsQliGVq4E:APA91bFvZMfkKuafF1SY-KXToPzYwbKA7tYPdegrRgjnr9mgZiBGvf4Uc_txm6HfL2btQZLZCJ0hwa0IO97oRMdEFi8WXRHmTowRXplghNn6gL3j74Jd51Bb01JuyZ6duCHe8EEO3MQj
dCtEVNkYXWQ:APA91bFsLLPLWXSpF14YRNt2tqmLZKaFpQyi_NtJwu-4R_TgymbshtjzumaWgXJnCME9SBBpMh1X1PmbMgUh87n3gHwe_wDzlC9T9LAUGEoGwZnlJZ7mgaDUUfFriQ57DIt6FU2R1jGJ
dgXlwr2ZzvM:APA91bHX-Jl3rERT8DcObo057SxBtjVmrhZ4_zXf-3Cdu8rkHZLCA8b_ZNRwTA69bBmQCEed0C1Aw2NKZMTMAMCa2-I7rlmsYYY0iNkvuQGH5FpCnt0xFDvP5KTfklGQfw_tsi0I7oqh
cUfqVDy7g_w:APA91bECbYamM8-EplamFwv1ehQvlKgBpuIE7kjei7-28xDjSN5gBIRksRWK4GVpABD5fmy-QyA-m5Hvndoz_hy6hmvBhJJSIVgUUtjN8IcUMuSFp9Yytdr1jXxz04UbizXzKmnS1w76
fiSXKvdXmzM:APA91bH_MrE9hmQmnR708IERtYAp54URBUiiGGqYFQsILDnT9pxZ8EUDmdhZbksX_vS_SwJdBYpWJhf6WCDg9Ux2ATQ4h9TpUM1XLYpcUEeOcnR5fvnv07AJJhAJE7pTg8ZFYqGRbw0j
czf-_cVeNvw:APA91bG-BuHQqkFHXjkKyukfL0ziUXKV83y16gNgoPY20rBhA1sd7l095HOklrGcIhf9Vl3uOimmE6rQw_aSq755dBGGpJMw8x2QQENvVMSBWmyCcZi3GAJsm8wwQCoL-h_OvhClV8sa
eaBWSyACHik:APA91bH3XMYKIHQPTzCmG6CDhurhkYNUc3ve30V24itirePwJouQvFyjSIDtDX8dRs3cQZiWficP_U9oYqI7v2G_OvBqKPsefI9uEeQT99KNMcAk2JWcrCZLh15DAQBc-G-tANpWMJuF
ck2eihV2xvA:APA91bEy7TzLm9FAg4D3ITismn6qK5SZxM-1yVNiehZtaq85uXLZ-nQqnzXDXs--x8tWqmN5Zo0BUTFfNceyLzd_2DTdmqibwKK1-MUSEkstuVEtrkjDg-7itvkslN2iA8YGAGINPUpd
cXVX4xd3kic:APA91bHxulgIPUs7vCoBxfsvsWsND9RRx6NeLkwSjRtnFt0NwiJJvhwbh_b1R3cf4dVCDCUj_-XujQu35Na7zRIhSbsVFeBGifZLPv1vlqAI7kET-Ua6BqAMCvh736GANz0qWsntcv__
dGupT8nnFV0:APA91bHVXkbdH6upchDEMbFzrFeu71jYncYa9a0uF8xMMbO610FNi4OMt7lrYSj5-AVAwuxdUVsEkJUmdl8LyNN1t-oHk6k_gHvSyO-hA3SRp8P0dAM0wjmsH8UPfhmptHOq33efkWdm
eXXE3dluN4w:APA91bGdi0eEQyy5TWztTzu_JSh74XxjIo9Vedu24bjclAXMEMlg0L89h6t1rFzhoaFkZS2TpMbIatCtqTT7-bKiGaxRwBI7tkFJFguZxaDIRSmROrKux2jfJvFuxV1fnOW15GmzfapX
eyTvv99qIoU:APA91bHfLXAmoqIuzDkuGFypffHUJ5AkL55gfFSKhQgMgcrhw2ax-Jr2z8EtBJiP_tgz293xYuWonmIQAL1zmtjX10AgfnYh5i4yYnbJxNzaDZ9qy1qFk5YIfyVEsQaOzsormcFZbLRQ
eCvv272Db8c:APA91bHFM-5Vi3y5IzSfY4kFYzU2I5cWQ_KFWChKS1AfSPyWEMf_1bnaC4UoDD1s6_AeCrftrR7oiuC4Gh1lOpm15f1g2FspeIZzAa_Fp8GXRBcXbPbKEw0bnKVHwN0nH7m3as_ufGUd
d1aravEscbA:APA91bH9FBijnEUlcwfT1gyT2YfhogjZEps6pqmZEbKACUDgRSr2HhgUK6utiIqbqI-lKHpTyAZaG7D0nH_7deV6H4abeoeJKX7aZaNyip3u_T2SKHzwnNiUVc8OnQD2ybR7-eV9GBFa
d5wkl2K5cCc:APA91bHPWBxeWdhPkxjUMcdw2KXSw4XGduV-T47IWNkWu0KsADiYNuLI8BHSzFZPip36iy6bVByc9MbdpLqzjYPDQZy8xoZYMPUZxd1RwPsWD2dMMF28ecDy3pMycd1nt7ex6Y2IO2xY
dOYqnqFAEX8:APA91bHmZUK2qTe3N1QGsGg64BeMnnQV9fUkH9bn90d9_M4dNCbv0UWxrAAnQbzwKqLta5Mf1VbtfThOjiHDw0Zp0OUQFuodwnRhp7QSWNKGr4xdX0TI7ClaJIi_5qpJSOHTYPk-cDli
ePjQ_V4GFHM:APA91bHcIeOVov5sefns-0zxq9qGG3sdPn3j91712u6FxXvfiifRIqMbLwqVKcqZYrrNcG4CCypuzD3RdpePTiDy4mE4Trh_I1jevhagE-Fjb-Jju1cVfq1K1RxQcOQKo7YTQFNsD9Au
dqJquZ9WVlw:APA91bFUqJjfxcIo_udVUpnEXQ19LZFFst7VEjv3Eq756PrDbcszdDHJZYm18CI8sKcIm-9ZGcomB04TYzEDjFkDTkxusItsedLUzI95pSHVHJOZaQ8nvUNcqU1J5I84VOuYGNecOBgZ
cI9fqzoJdLY:APA91bF20by5UQpBzRTTWaaIoSJ0fXcYhg2hdAQf_SVfQ36tFgh-jIukWPL2p60p-WlAFtGZfnoB4pme7vMeXQ_f2A0oCTQYuGpKet8DM7yB794uY5yfDipeyRngJ1N6yIfH4R8192uV
dJeZPy00fKw:APA91bE_oW7gQ3J-WtR93gIzIopRvEBElh4C352pxd1-q8dpfJ-rVmBKRBAzaknmv5EZ2u5_7FmzRUVyE7NPPSCIRha5BOy0W7O3YeG6MuvE739UBPHnyYfn1neD6IBPqlCC2TmhXzrq
dJhdkyuELag:APA91bGYGZ_Z9W5AwgLTvHJJqjlp10oLQZTT14nttLbh_mBAnHF4GZzpi49cKHwB-gA37OhllkTSHrvAU8h-OR51rOaVkVkZY5DEAPbO6SPjxtS5Nqx7zGasKqnEyFOfWwtnjfR017Jg
ekcYyDJfpJ0:APA91bEUyCFbhiOwi7nb-aUuIw3JZL4q5VVettGOtyDSEhj8Extn9ZvT5IMfh_4GpdFNUddbKf3DdT5bGWlWWg3F4wL8HO-eO_ELLyH-Lzx4_1D7LctVDtDAVOA6hNOjQa7J9vWRQj8B
e5rqjnGsNdI:APA91bFsdsfp6INbsGTtv9ACneVAvqv13nCZxXR1J5yA6xRoiB6Ez7I-jfg-LNk19bu9A409d4eYDQM_53bVWd697dilBZBU48JRf25tV61HD655k1LuEdxwigLJxs3-uKPF934r1RAj
ebTtNlXucGo:APA91bG6lPd9xbgIjdwHPHoJgK0k2O-exkfAhsRY1PpHV5-ssP8L1ph-Xuj7jCPq0EoX3Ag6nf6GPssv9550tnoAbJN57cmbo_-bQgWiGYGG5blmgPFFIWEk9Hw9-mC6D1vDqz_zi8_d
cwQg_GbZYzc:APA91bEdPtEKXF8WzPchsIjqK-nMll-Gub5rfQulekPpPU0T-WRjzmhWtnMkYxBP5jwf4IrbyZhIogMKlE-G5W0BzN33tW3MuGQb0ISxA6JfjcQWVtFhOviJVdSGXcQRMA0LsW5MlkKs
dUZVZXXptto:APA91bGfJCOQ0DbpVJv60R0kB7L4qC-0X3sSiWOKAbgAUbxOtd5N6qmys8yFcXBCteThIgxZlog5A1Fyufc6ASr5XLsm7K4Shoni74kpu2gEaNGZeyYz9U8N0EXWzHHsAscFMc7_yehN
eP54uFUiKfE:APA91bH0dU3U4vWZDECUTBDuDr2yg_i5rCYjgW4XgdIeAfcnjBU32GjcAdKpJlgi3nMntscx1RzZoVB49xSyP-9RKCAV_ho5tU3vcvXqgrSVPAgYQ1IxkG4-IfkLi0HFuUrb1W5qW052
fuHf_X0Qaig:APA91bGyZelmFDiS0WBpKmU1Sv3yzcYeVjt2Cj5NE8s4cMxMCY8KLM3iBvpH8TI4n_S7cbLpj96BTCT-VuLkCJjtOiLLQxN23iFtjOEreNpNIXmlYFH2CyFuYL8qclGC_kWFjZdLS_Q3
cwuynj9lKhY:APA91bFbdbhBCO1kjK3U90BAUrCDpN9ZfO0ZxfyEBb27K5e241K1cfAGFldZBRVsUidd69WDCCrbsEunZUtcXeEsVR42xXePqDYlZWRsatQOefw2FtAIhkVYpErsB_MXBiM6NTEA22M-
cLbR3lO7WUc:APA91bEsm1PLN9jWinItImcoaBdNHJEeft8Rxv9BchK0TSdvrBi5ycYdJeLtTAvjNGm3Z5lFt8aD8rSG-a3YlOH8cSZugy-kJpQWMlU__KhqraILUdUSk8N1Lc4TcB5YV2KNbEKNdDrN
eBTmA5mb1IE:APA91bGu3eCASJ-hq3W8EhDb84swsLQslTSpDjHEoArUYG7tVbOvGCaF7apQxF2aw8liYeHXopHczYCgm_bKxtoZnFV3JEhJI5BRjbeYZYr1dlSvh85QPsB43CvNpPjKxDJDzN4txCq4
evS6-64aRWo:APA91bGmd6duFnwDZ-pUIt4z63t8WjW1p7LntDzBM34bLwKXRubyLHVqs34dqKYGTgbRHTsluMG6D362ObKCNwKymeG_V3Vebax1W4ncZpx8CswFmbxOMi0Nuw2FHo1RIMeXoZUZG3Ml
dRXVT61-eMs:APA91bFtLjZ1bXd5XCy3tGOwjNt-7kVL8FZEPClSmly8UmKy3y8flnATkuO_9oSIAQbbXySmlgsnK163amTLjDhyLirqM_leSKv_NFL7S_ewXT3HKvh1lpfsBq3T_0d7NyMCkaDSAllU
e-MfOuyTsak:APA91bHurAiJRiJR99NW_dHjfU0Kzy1y54Whp8nHkQl4u7058CAtv4uFJ7grCAJUvONjPqb88rHOPwcnnUEPIEjoABLpeUlAA9gMwSCygxfGg4awPH4kEGLKWeP21wHwgu7A4lGhWNuw
dnwmvN16AAM:APA91bH0EcvgYUfA4rfjIDR3nvvIar-mh8A4l0ebUf3WIw3ndlr7jOId_EtKpSBwX6K2XkeHSVrCWGPdNjkJ91w35Dwm2-ELgiRMadO9aPdLSPfKhvTklFT2CS8nowW9zgunpJKNgLrl
fLB_6-9V1n4:APA91bFsobx-WMrHEUKWYfdQmFIO7jiPhm0Tbm3R9EIWD2qahRw3cNzJVOrpI8S1dg3grI0Dte63Oy0Ud0bUANXupRnlY9JeXnpVcCon3eKUjoH5vY72rxkN_8AfeAV-p12sLU-FsAS8
dz_rNA9V9eE:APA91bHqYBhBZpOxXwI8_oavcTJF16oAadftRMtkhUPkHoyG4yBbQGgd6LPol1xYvyVnIAwj9_2ULY_gI2rA5YKr18oqwY8Ef1wrwCPp0aVppdCklfIWhriSVSh_5AgJ62-FsNPKshUj
eJFkl6E8MSY:APA91bHm-7o4VmblTrHlCk6yXeCAOsagmteW8CtTnbPeXRS5cX4YHwBief_KsH-BnwV-FDvmzTl8Ovq_ABF1xWAgEAAPN4KtS5Mo53npSCdHkV4E0B-dFoQlH8G_lF9HbABLpM1XC-c0
fHMZwmOqmUc:APA91bFpTgCubqnY5g5dlXbq-nXP8SJrXupAAQRemyf1u2jgcWrtdbN5x4JgLTfzrDVhOaysQCz1TV8FVyNsBJrhg5OBszeK1ZZkREDVWGEBH7PrNaEIN5Sx2_TQosHqUUwRKVeennDa
dQk4T9CDy0E:APA91bHTFizOxOYZSYPsN8hodrK1se8H5MnRjZWO_l4mbCMKujVxgXr_T3BOKqEg3HX3ZtpkB9WEIWTNwXiUrxmVGkWYbOn1RE7equkIDaYEhScflJCbCwmtR9dku9yhno1-lZO_0jw9
fQiDUKK_MGc:APA91bHXfKvT6JL3B0H7SG7h5mz9jEgFgJ3dme-R8LDa_K0sp-nAyZjUDtPbSvdMwfIPnRx-Q5Lh008Dv1QFfTeKmbB1NQSr-SfIqZVZrO-9o2NqOF5G3sIFAWirgW4V4eD1csAM5UAf
eKm0PlqPDvk:APA91bGwejVF6HEUX6tGFJcxAY1_SGV4iVjAvDKkqupdRlShP5EWALrkou38RadATraocGiWQqG1HpfiBCVjXrNX1nlYNbeDTfz96yJlw0VQHKsPA8Av1_nryx75GXvJc6_0TpxqxMMe
f1j8A3llOAQ:APA91bGjrR_V3nwjqLHgLBz-XFpYfjtFL8BzfwlLyWJDOAmILxS4qV2QpIoabYW-9Bc-YFhHnIErU29iDRFqb84gOIM-93tJPlWQQxvkcrAA8HqHBN4wX6zhXl7ToyOVrayzXsb31QKS
cPe45UDSLEs:APA91bEmWcw_U9ZrwZY7DYqbwe8aX_ukOdSV09A-Du-2j_RleFaoX-8rNe08hyhtla8KE_MzdCzbBVpHifm7wp0cZttTnga0nSPKQ45_6aureQhBCpankF_gPe3TaOVZb2brVvJQ8tHa
f6ImneUmCTY:APA91bH0qizAj58TmBoC-wEKWtmdjsSwUU7MLVu2D8LDnhOVwR8nIjuKvbFTsZrZj7HSI8-9t5SLmCkuXc8z_V6zqdiCiZiL8qgdglfu2A77GCr2P7kYnxcFlqPQPpLt6Pf88g4WOSKK
diQHkHMhFws:APA91bHZZBdBKOlvyTNwStEgkm35VEKPoIDgznXwMEBH3-kzAfSgxmm3WGfr136x01FOUWs4hKVLvTaGyDZ5VH9NLUihksUCQxyqou71RAb1bQy9StQR8rwJzL_p2pYKVF522dCPg5P4
eHSEhRF0eMA:APA91bEH7RG7U-UyOGmurE5TpebQ2Z35PVYdvHXubvhS3L_NhTssMLqB7noub8dJbc4etQlt0Ymok86IPvK7nyCFTrqEeJk8g4CXlx1qdfy3wAvBfTvnm8uss48w3QB5tFRygCKkjHWc
c-lnXyfvogw:APA91bEvF2Oh1p8Wg1alu3jAOLVlFyWWwChDgR25F0xeEb77gWDVzOdh3t3YNekYKbQaoG4uLQ89yW4C19HPLstJQe-GfgRzRlxEGIOLFdn1-bOoGMFXJnIsgL0P59BlQx4nRkczBNUz
e5Qozu2XG9g:APA91bGzYkyZsSsdOs8XmAD4XaqnCx8bpWIma2Rm1bgXKZV9ME0L5H91FU9YLTCA474xcRkRZFv8Pagq9HJjekDxpNnztbeosg46bw7SQB6AXJuc33QuZizRyaetSKILTb1BfXjM9C1I
eX_zTX3Tnfk:APA91bFIHLjZB6H-qdXR4-JuzWQRTg0I9fMRmv00zL1x9mRpOz2VO8D4wLdkUo9C7vsjVzKrK5fNm4JLx2rABx59OF76JesXb-x2Pzk6dpb0LSwASb0l7_jUcqlvaQwMhgPKDfFHt-Xc
eMPVtdOZNps:APA91bF8_muv--JXdMXilmUoHRYTOLaFyp9SsTTzVWb6jhe12wiPKs6haggq0tHZ74b3QjIa6JaPm-fOw9DSMHFvwDgRsP0K5CH0KvHNYctWRRrBbakLH1tchJGUxxUm8eESN6XJ59hE
fRBjzn2SkeY:APA91bFSLab0aN06KOWs0ZQY9zbTT6al_PpcIYaTIXRgC-1_82s8Gx_9gRzDAguBAduLUE-A2ZKdl0F9qqcGtu88gO9AsWixW3qdqqRKZmIyfhqy-tCyuZZqnjzfI6udoaXtX8h8j-tv
egPu0LVh4S4:APA91bFmI9jFFncsVA-6tCGvPdx6DCmhzjxyUbKmUmCWwIZiKb9qdoNr9o7I6DKQCFA7x1XD90cgw9yHvtKZr8wXTx8FEqId07CMWA48hdS1LRcqecUzgAdLzXHyYZOysfdM2bEIp5kH
f7SK8eKRTYE:APA91bHLwOYcn7vBW9VjtEoFSVbgC9Dr-0ZfdcWIu4GyyaqrEKtZvZxpR8aRs5PeQ21AfbNQ5KwgQ54QDxElrXR9VNJbT2CfVT6XlGP3O72mNuyHI71Vl0kXBpCcg6irvasA-w0y4F6n
c29JhyZJ9fA:APA91bFoq4i_gN9CCEIjTb4xCbE2VbAcLb9TDudj1hz-GPTC4c-vh7LUb2lXk7RpfLoHxim8DoLGuh7wFOLiAJG6u45rJmZ73b-UIQiZtZXMStFc0SE-V8iBMVdkzxbDXxZyTw-JoQPW
cL5Yln6OJE0:APA91bF2fIj0YuxLmh5w2GyCj4Y7JNI5jZwhjDLkZ5ruIsKa0OJs0MN1do7T0hdEUVrWCi_rMjkimhWr6Du2srkAwhPce36BwNUaZQndatSapHBXIwJKlWAg6rw6LXcakcjIaKbeoHoV
dWND9shel38:APA91bH4UgSiYlSSB_EtqLiFYnsjwE4WO9C4nBicWIfvBiS9y_rlTAlhvdsGoMKYVaH_idlgThXKrf0hVjN7Wl8L-22yYpzqIye9aqapeqV4KrxBrpGT_dKWzuJvbaTIL6VorG0vB35m
f-ocoYPcNWQ:APA91bE0cJGr8MZk4tEQBwh8rNRCyTZkT9JpYdOBAH9FYXyw1796esbFhZBYycylBSUQgPAOlNfJSJIJwituuT2nXEiTaxDY0y_MZrnPdQtz5LYlCdS2iiu6yojit_SCt-53t0owcIxa
dRqj7JYyopE:APA91bGwxQA1khRzV7g6Ma5CYosY5Jimz7wYJlUVRhkaIDNXV4KAWwXUWk-nhhzSneAX278NiWxFDKpnW8FK0T3Hls8nnMWfuyloG-1uZKRmb7xwtZ22Xots1_RqNfq2lGK7kzMkrEkE
d2HR8qKCkdA:APA91bHyrJffzqK325WZeQ9SNeoWBvkK-MmlidKFolKuM9H6PmgHd7nVf5xObSh5j8-_MXi63glPcCJnnT2ftZc2NGzcwYuyut8ruvsxUogT1-l0-siLAD64P754MbKPNBA9eQMwDNkA
f3SLWOLj0kQ:APA91bEBTc8eAD190qwu8BL8KJMEqv5gl_lzUMe9dM_Oncf3DdJx2suXTKr85PFHxv6nuMHU6FPxd5NR3y8BKU8lP_7Jk0KIOy3ghyVZ_cUBdoTIrtLUneqFUUcJgFecXqOWn7cQ6qUq
ftbosGiP8Ds:APA91bEXGl4h_r9voT8NhhOoTFwaBwqUqwrhkZZpIGuzja0VE3ihkdjFtybFAB2UPSR3_N28DBe5q_ahxZx3dl6bYaeSSfgeicBZnM-GsOFLN8BpX4JuDLxNNSEpqIsvwQYUAdhR3B3R
fnGRALO8YGM:APA91bGZ0jT_XXVDfNEYR2XGkbFkY1HYfGCYnzxEg9gSwItbm6glxDuayM5eG6z74XqEHWBhoJpyI_R48OO3BHUFAUZyfKbPTHExc7EnwxFUH-72kOzfqjc6_iou7Y6rrahreNyGGaHe
e3ICrOLAALo:APA91bGHkpeIf-tID6Yc9WuSYqY0bMwpDv8TEM4g1Tuoe20_dnVGZx0DSyI6o8UvYV91MpnlSNReZORpm9dM50-YlDCRammt10Aj2akyDqzVJAhAJyQPniMp4j-0ktdk-UDge_oI20jX
dpaK2Bnuoso:APA91bH6NuWCV8tnqNNCbvNoh-tq9VoCR-sDFEWsGNWtnelSP41tC9tqDzSY07FhJUZivel-S8acaNSNd_iBsfgOFV8K2NjxpZDQKqn697Xz7EdiqPrHlS1efGYa6FP1nfMoqHrHN12E
evdrKEruIGI:APA91bGGUTvF4XJlS7kWYQTyRC5zcjgbeKw2ks3XPATAX2iGHP13m_YgYO_dh7_rBadsgk-HMvEzS0VuTQPT1pbt24STlhhF-wSA0Tn10mXDHPPyGPpFIWLX17iiCoNNesNtWFtiDcXZ
eW7ivrOkZKk:APA91bFcZZI5I57G7o0rIDnT4ETOV2DbrqzhDLLr81KHWbkyh63x-xOvFi6V7T9AC3uG0X9rkdh76YjOjEWjZtp5vK7wJhWsA0NCs2OA2Dxcr9bA1gUbgZz4qehNvz3D3i8rRdKSP7GH
cwVMHkhmeKc:APA91bGBG-MzRZEBoIseKapb7M3mo87tWIAYF-rdEUb2GbvAFKwFRgERUtzRLVGQixBWtn0mWv7NQndONqT4yBwHtmtYRil6ROwCLcSmq5YkQBTrs7F21zbWl3P9QB7Qna0WMWN-myqZ
dfcTf2di7ok:APA91bHvT0hB9vc8Y2ndyXzFtMl7NULParWhOxyfe6wBvZ5zngHUJvxY-_umr7TkspOUa1QMn-jk_DbpntQ0IYZuBHTbZ3LEAjbi3hddyvhq04X-NQxpSMgTbkoss6uV1zQ20zkRNCbF
eEKRDGtUFv4:APA91bF60ai2eY_wypGSzuD1zd4Z8fCVTcB5ZJPuSsQbk6Ss4kwHdVYdbqVP8lTvmPkpZ31oQFUyLQdG4ItZ1MEwBFCM0iK60xS_lPW-f2I--H06nylv17m0JeIRouFuB4QDGTPYrLIk
e-iGiOiV97c:APA91bEHcpgHmwo14Tdwr56pLrVSvjBmalI4SKIyk7adLNl3FJirlRC88qhAUMI72rQ97w7SAQlz66WwPDQwqhWrmXzG4nxCk2veIODrecvT8I6wTBPMwBxYY9j67YHcv4FXSAsu6imn
edpSBixgFBQ:APA91bHkeaSqVJ-WHIyA6ZGm67Zjj7F_TQ2VLXeO5ilqIhoroJFAtPeI1mfSP0a1rZgsFYGKm63_ygac5dKWstaHa3y8XNVDa1dNdQYOOd7Pi0byS-YflgBFZnZDFYgyFpfaTPxv5zkx
dJ4FdZQIpaY:APA91bGuf5iNNg8q3gxFPwGH1hT_k8KMXfBi5y_pAIdhhMv5fy47QdgYq0oqhvF2Eq5VQOe1K_MnEn1yynVqJJfTGYiubRN9TrVyGaf9LB2XpkF-D0N7CiAdy1ZTtYUkDGxzTh-NL5Nh
cgowjXn_wxo:APA91bHr6ZgJrdKejf2d84T_ueRJ-Z2aXkRfAQi1NUSy-UztXlfT61sjH2bBjGLfamm1V5Az8wzcRNhXilbGBisJvnj1admFOgL0f5OM8_N4jYMN_p5FXWZhjJ2NpDUA0lIm05axR1o5
d7MzfCi-OxI:APA91bHxflby09O2fAmKwdcKuDpawlXeZegdwmKYFbbCiyPK6Ub667wOAJgeyWHpdefA5WCCBoSKQKrMY-2bkaP6d942sNqSB7cmxkda60HhAFKSCIzAN9maEs9emlRz-VD_l9JzAre8
dq__iknzd2w:APA91bELRDL8XnuUmpaiTQbKbaOeOtybdTQ3JSxXyMJVS5dhzVNPMW2zTqVpiEIeWNL2_njgkMMRf1oW9dkmBHD8wP70I9gUHU7R9nAz_YoX08gS2shgctR_U5ZQ9pwsbekcbKR9_6QO
ffAolvSQLIk:APA91bHh2QONhrcEaGMuL0laBBzJBpa06pmrIN5WMKqpYU1-N_UJMXS4Ci7Y_78jzSiAb_X9Yp0y2gHk9-tNQO61PdooYkka5VwzZPrkBzcmi2o26XHoxcYC-npp5PfxmqkMZ7SmWQsQ
dA9Qzbk9-F8:APA91bEVhSC3ZDziXMCpaZh975EYJeDlF9m0x-CyHfVfSVOyUHeWDdpd3nfh1vxFLq0dNR1RlC6vmBZIvNkLFvHMVq3GzDkfPJWYKxdpiPPZ4w9h0MwwNBMW-kHdwdjwXQfnctHzyqO1
dXI4sTonEt8:APA91bFIxcwChcL_qCNJYXkEOqahnAg8fpAsA7-UcfgYsebGvuGSWwmC1VbzXN1-bWEvOeIGFnwlhKZYJaBtmu0LKdTJySSMdQKL-lR-t-DZ7qatttMjWRuFOiQvMBhrAJCjetow6OX0
cQyB9tQSH_s:APA91bHmU-M4x8ioRnYbHyb5KjTfpbUCvGLeq7sCegcbmz6VIx69EWmUgF5YXeSGp3_Lb6ftPX0etzy5Jvyoo29GPwzNhLhuhDqfQsJSvaN35jzLAN4dOUPF-eof7v9Kep4gS6-wUeZj
c_LDxxPed2g:APA91bE0uIt3UwEjtVqAf9SjO_WpJawwdGdYqTCqrpuLLNhNp_SDsZVgtPXhOmph3kHRDfMEKAp8HqHNQDkCJfCh19ZRI-AR4YRvm7SmtjBiIvSOuLCc8qljSjU73PIrbnXDm6bKXCw3
fUjYaHbU3Lc:APA91bGax2QUnz-Ar7Bzhu6SXtdvGvEi6pOuMgFuKnlaV-aYC1asEBccrcbhbdGU2Vyo6-OMFka-1Ow7A5GFk-SS9oGKV97dk6kKPNF4bFPaz8YUbKu7vk-k2QoCkcLE_B25ir9BOK_F
c2Q8TyNnSto:APA91bGCBoys3sxqOWec-lrapbo8b1P93xaXtwrV213hTPJfwrh0q6TPwWOeJhbIz1vEn63Z2ZcyoKS7hDJT_RCZ7nN-Z_biU_ppmjuDxSbOY7XGPUBadmN-2KYMMwG-KtPgVzQL_JfI
enqe7vqy7-A:APA91bGIRK3jZQjyuuI5540nGyaqfrTLW2igHJ20kT3HCsD8WRuCY7AYCgwSY2F8rVBNoMcprCJhl9snhQjpXaBljZQ5Wn5whSjFkFep9A85yYAFxOYYDXpDgi6IZh985xq-jfK7QBBS
e70Kxt03ADc:APA91bEJ7i4gZNDiEVnIHKd2qYNfD1kfii_YMtgvo1FGSopD9Yo15Euomd1LCA3PnVvF7jKnOMProlg30VR1afLv-fRuQ6hPNn6VsXfgs78iT7ZNsOrU9GdPGH-4QEDfbqLN2XPRrbbu
dQeHDvrXPyU:APA91bHR5oMVIcEBgEc-K5Kw19u5KMAp0yT5Etf3pPRyjqVhv05JoI2PKZaVNowQo4HMU79-7-vd41kZIsNF3i99BkSRH70xa_li91uDPjXzsaUaVP3fCpljK4bVPz7QRQx5bCXIiGh4
c3YaXJiReSg:APA91bEruDN_8Y53E1RsBIATnLaT9vyA7V148GpE1yBRJgS0LRR245tXBD3aaNgW7GjYQ-X4CBviCjv3K0ZBFt0ki1F0cQacYUL32lZPKHTHWvp4lHqWcq3-1dnc_IJy96rmCiptkL9A
fPktxmKS39o:APA91bHV41plnlq-SMH48zrI0o_p4vEs2zzRQV1wST5w4sjHs6dCrNfHcdSBHbO2EgClakaz4re5AO0L3C6jDaGkAKGJMZbs_hs8fNthwotkyuOM4izWm3r72KKWYv2_0wU6M6OoYsIK
dNi8zaBpNrY:APA91bGu-SQEZR4lSWqD9QiXMmtlAw4am2j-KBhtMqakYTRlrKdKKXFNxwFPpZh9PlBl9OZ4BzUn6woB1neqpj5IqVz2ZngRjBOoWau3DZGtPzfV8q5yub2Htk0akxdFDuBxdd7BZ8nV
cKD6Qus_79c:APA91bHInSKxUoiJBcnf1_lgc--jMJaoHkN_zqI28uheX9GPiDpM_MWQ6n6Rugk42l5xbjVW6LaarXEsrXPb_qcIGfxuvGMpflk9Egh7Kjjx1udWCwenG6PgN6RqZn0m3nPs95y6brSl
dMYOy1XfWhg:APA91bFhpFKAKlRmijv8z-DK8UEXcVeJZB7IqFgLlBMJF3nNHFzVfrIYmt-k06n1iSlC1kfZP7UQAJBJxB81RKqeEWUBcN93--rr_fh7vbakAL-MNEiKq7T7QEmE33EObztFJpYyHFz4
fQU8kcisKgk:APA91bG_ao3AaoYMBmdwrqvFn-9nwknOBkNqFNuq0KohnDyywsaUMRat5eqPh3G7HR64lPGDdRAyppW5nRgQkAJmVVatJPdKrncoC_G50et_uKux3hdv9qgXVzORzwvXKnNFRcWcTYiU
fyh5vAIt7yQ:APA91bF79Wq90jKcn66hQMsx13JKLDJzZLv4M20zzgjr_T1POrwUzZxUla4cCIdlUcDzmN49mvhRoOOBYHDqD49eKLiWzMXmFtiGi3eE5ljcF2qyxSiOJzwCBs1PMbJpF02CO3OxPyCN
dOGULHpdMW4:APA91bGIpgQ40_HHcylSFqicdVjU0qo-2dzBSBgbOcx2V6Z48F-e8eL3IPSM4pkbC2D8P8N0sIVW3JmJb3y0d3RBgdJvSnSq-D--id3r5IrVqac9WC38DBztKY-YPSFDGDrRow84E-k6
f0Yua1MSQlg:APA91bE2qo7TSu49aS1Vd_7z4YfZj2F8eDJi80kw46Z0Yc65Yg6NlAnsMozfSRX_KqTkRuijeyBoEs7ey5zwhBoC7o_ThL5U40xq0vJZl4AiaxuuJ_jEPyc_jukErS9KZ-wFTVtEaJdr
dr0sQ4X443o:APA91bFPxdZvWx-xloZ9b0A_y7AQ7xai-1Ko1FgsVn4FJEa4xYkV7l_CUN1KfOjrwpm3Qu2lbF22emkK9mfBDI8BPagsp42fOaOGWiHn7WvVdFV4vTEkLxYqcPnx82iB1LpwnaHG80sF
cHltBOXd8TY:APA91bHWHQS5kRLMnhebqZv5TKTxrsjYNrqfhiVF9gxrshvGTmA9hOv0WxUyG784RARZEKr3OhCI9Wwu6Z_t1fFtuD21Kb8Tns4TY-_yv2IPyDKaB6ay47sFlZU20HkQPfVsAtND9JfJ
elz4ZlRtdPg:APA91bHZxD9O09dPwXVmvu5KNVKaoInq7v5ERFuRikmEbkbebKYV0mV2p_2--dBSElD3nDCYgsizelUo4FuKdo7K4m-5qgK4WV3_fJt1DP8dTSygzcI_Ccq_QQlUj5AGD2mKeCwlnNZr
eSbDP0RvhFM:APA91bH2IDMKXgVYybg9JP34Y-yuJH-jDK6vBMDCgSM309JR9G3_KxYX9aeQsPIYOX53XL-aLN4ILzAn-R8jaeO3Jh-_JLabT9dVI8w9BY0hQF3yPWeIC-IVQ0LN75djXs6Vy-pBEyma
fDerYM3G518:APA91bF7MwIo4MGVUBP_6ZCrmrupSyJFUO1bFznkWtHill5GVo9XCl8iRWGtwidjOrWsMw7vE2_oxMneRALAoHkXIKqyIRD9JWbhO8phIVoziFi2r7XxqBAQ3btwUJ5S42C1KgGi7uDs
euK8IBd36dI:APA91bFOz83c6W92_YthQrsxNrKt5PB35vyTGLOYZPv-XvRHmwtqsgIPkbfw45ACvVdPM0lzxguXjQYWAe6luaHkqRRvygCPzm6gRIEY7-grxHaZm-D4epdnG_W0X52BEdEZIHB3M9ZI
dCacn9vtzQQ:APA91bGrtO8ajhBdLTk082C05QhYvmvZsMa1SPrk01SUgUUN_oqCKb3qOQADxHL8cVlUQW58vQlpwO2kmg7N8R-zWfiXpNazpBVD05_P9RcT-SkBnTucZhSKdGQgvvL0r-m4eAVXYjSq
dxMISU06afQ:APA91bGc-cmRVC0_l3yXq6oo7AcJEZ2ScJxuf8HARV1zoVSH4QRwibg2URj-W5bNcICmy2pxbfQS21MSeoNZgNrmBAfd1D2REOmT-Ky8QBkN2JWIa_KtYcwoBwbCueWY4V6NAtn8PN2e
fEEFMadv5RM:APA91bFWo2aiC5kzD6CzQtC1uM3EaNxjLqPo4wPV0x8Yr-AQd438z8ZQMd1m_NnfzHAagdHOp9myPl2pxyzTwkOPAzkJiYAh5JdtR1GraXO5RaYNAjlLXzpdcoeqVnKY622INUBUJ-2f
dGTfm7bYk48:APA91bHiJZfwv2Y5fHgM9Z-DXaNm7RTDGWE71E_z4Og5HMN-PZEq8IXBh1ixYtI-oL4l6H3EddxsO1o1F4uhuAETvCQCydFsmZoUmZkWNyNl8Sg5tvHZSC8ieI6qYN2ongnnIoa4kzkI
d9Vl0ogrnHw:APA91bHCr8g8uuFvkb3vxPrO18NQjeDPtRxC3wdSPWbRWK5GIhBz5iFblnBvjgluB22ftxR5CgdW1_i279hb8JF17Zzg_waVUwbyYLhCS4azevhcDFaS8O5eKs_pbkc3out6CiQAyhKC
ejbj3AAtdNA:APA91bHAk8syGvHfVXouzkWjtenZ993iMkyKxTDEFTL66bFoH1r6MZKI50BVJc9W0ceKCC1dIhRyporiZiK0XjRRL8f9Z-bvYb3RRE7m6_bLUKerQjU4L4dvZwKV84eUrbMFnXq3csFk
eHYN2lbjs2k:APA91bFpczc-seVmBMRLrYtzWpenp0DPIscc2JcyhpxK4jpreanbQ0YwPcyH71i1WjV22YFnBHFf6Ty3DJ4QQlUexDAhWWsqQvDMxfveJCwRPdGoIt5RWQ-LoRpk-0xD2SpJMcfG3o3a
ecRd294T01k:APA91bGI8ChdEQ9sPUfPfnmrtMgNBf65VpVowWFU1zQLfTrFz3tjJOj9xZXe8M12qRaymwL340a3nRZ6Pryu7osAmp46O-QaAdSI91OBM2Sn5VEnmInq0N-bRORcj8-VHQ6nYly1bGs9
fE6ubVWPzfw:APA91bGzXPMTgXOyaPL1Zv5SjROz7nUPi0J3tlMn2L3-sD5SclwSAia5-WFoOobUS02QUYSLpRAotKNC9jI0VxwqM3fPCcAlZQPbAS-CoX8mkMCWGllSQ1PY7yzhbHTV_13I0uvX_aer
cegJpkA6AWs:APA91bG7SvmChFcK6AVxH5E2iPT8GZO_Nh-BNJZuNTPQvkpGLW7NL_NLLsOYSOxDjOtIhQH-e1gH6jNt1PiTPIiSbijKvBdLUhzqM6E1an4Slru9pOTEsthwBbQb5QjpDU9fuZMlqYqU
cn8vXvAvx4A:APA91bHpfpHBu3DD8UlfmlovK6c0dcuPu-flY4Mk0O5t4E5Sw4cNv6LJNRgkPhVQmBxDIlDhyyXlH1ses65QqFl9Q6TMUs9KlAFhejEgtXHOWg2bpCrEcYQ7JM8FMrqxi8KiKGohDg1s
fSrPigVUPx4:APA91bFJStrQqfUTQirFjzj0lvblnKEYZq9qAkyqn2IWwGfSYSrTS-_iISS22H3IfiNuJJmj7GHLZKPJlm4g6MniP-LmU43wdV4KFCodyt5U6HprWRB-aWQsX7zD-VFFw1vLFVTS2ppk
eXPJFYC1GrY:APA91bGYG3W2xp4ZGHivxVFO8ra_1wRd5IzWl2jq3sE-cfPhUXfT9GU8Fh6QKXfkhmHIcoPGFZZnt4MUh1NJW9MRz-OuUpIatnidksfJEBPKRqUdWSFsnt06MBGKIyu0nkABq6z6WOTC
eJprb15awyM:APA91bEjh4tNk5H_0RNnmGwuLTzqTn7H7e1MQoJw7p6OYy3EBhVtxYy7pnVg7HlPAcunr6nFzocqV8MhRpkEZ5f8T5z3pMQXyJYQanrQsANcXWlNb2ScT2adVORYo3jUVaVC9koReMX5
fSj8_ih0pB0:APA91bHkp8V9xvXkAAaoGDTQqUIZo-LzNL8qMXnF6htgbO5hLFITPIERw5z6w2jEtdhM4J3mKlTayF58-5Lk6qsjMm9E4SQs07pdEg1LZFwO--NtDoY_diNskXiOxM_DpwW46n3iG4MS
fIqloOo7tzc:APA91bEHwVwOoH27r9MUNtE6eznbRdU2SzGmMpkdnxK78wdE6qk3RiUFekkqapwcV0NTkNjevdnWOY4o7Wr2qhK3UXQDE-wMWWIuM_nGGky-lqzVRcr9XiASb_UkqgTZxyxlnG_Yzs1q
fXZzRxP5Y00:APA91bFA90uTrxGhsDjVNdaFMI3ZZ8Q7Us-JDJyEbWcpfzyzyNegGVrdlLn7B7Cnz6yVtMADJWnw4FhnTYgSAm6kapaZzmrKGYJQx5t-bHgggLMJLSMHvErsWRvZEmfDXd6lYfwsjo4r
fiZtKSa3za4:APA91bFq3CI6W1oLFYRjnzjQGjNa8noSAL6K1hZQKkjx3s4mQpGC8TW9MySF7UY8YCTqF-nHVTyNnBdEJpLSwkped7xpJRqwerwOz24LbABkGaVCEXrdYa0UzkF9RhltxThAQWTuJIRb
fk3hwSvTTSw:APA91bFQ5uyMHSWM8xnlxQGtBBWmKFEfDjpn467H8eoWL2G3cIsk31uOirjeeMfXFQX_PeqUXzNF05M20HAuHMK3EVl1HbWT2f9x_7n43G7uZ0d0yDOS_7a97dOCCMSPG6XWiZdZL9ha
cDa7bkHuuTM:APA91bFzRxoDBgiaQnz3VnsnYSFLAXjnpKln3JxOA2jeOl4RCLvFDi7vA2ukW-REMd7nETm6lERynTWjwc4NAh6abA8-KWh6nFjXhZV5CCAFk13rsHkwvFqepmkeNkZ1lwaAFvEt56hq
fjNMA_DuWSQ:APA91bF6dCzYnKsvTMTxJCAFdrbXOg7cl17GTdE09617U8JN_TGsIBVnI8sCuuDe7bHIgAFPNfNX1fbs8pB05yOt6EeNBMyyoNe1_AXEnKiVFedJ_pnwj3UjJpNtEY1rg5u2kDmpC8ud
ex-6Q9pHk1s:APA91bEATSa-cAe0T3Gsk_xYVgUg4zGzWYzMUGFL3C3I9leLGXvogVcDMU833_9q7bYLiQZWoBY1Pl2ZVoJYC1N7tEj9VyrQMMj7vu3XFLPtcBANkWAcSMC7dPKoUg22d5PJzqGmf0Kf
dkiFKRbe1ys:APA91bF30cOlJ6-nuO-xWEZ29tU7TZ2pYkFBmOQE54OcrR5EQ-zIunjzyKTLzaeWAlmzDqotm3_C7yuE11r2f0wnvWFok_6c74Hi8CgBH3gJ2XXqZPZaPVOJtx9KU4oOysnOooVL1iEf
c0JZm95it80:APA91bFGKxS0c8voROSWX4PLs7zrF3RTiNKu0i8sA1r7tySNMnhr5N6AzkFxHedviED4ieEtJxShUQsjmQ4LaVzQSFQwQXMrwlRDB69qMahmtpU83un-2kD-iDCnxAzB21uUfDvIhtal
dYVTBS6rHmg:APA91bFIccHG-ceSiNTuVLzGraBrZLCjpxPMeaGP_Z2Vhc_Yd9wLHRk_2hdob2fNwLYZHE-AhaqHPd3CRWfNkmMCEE5dk82b0E89O5GsbobBx8pwYA9fuA_0aL1eyrtMiLdguz7y94zm
cEmm4rQ9qeE:APA91bGE5nxXfX_WdkWpLpGd32wFSG8b1jRoN_GzMHn5BUTq2jz44PaCQHgR51AiE6G4ZF5adhfGAaSTjHrr2Ff4YShyJC_6D9BMESYqOOSppctllO5MVPYldPBbArSA5JK6VXkXEKSM
c8GriqrQa4Y:APA91bESuEDOsVbvb3Qtu5ljWmrRMN-Mlh0BSc-_hO4DnLyL9YnW0_HdWwOVqU3kzo10MkUVAQL7-uX7cjujmpyQ2NUdmxFC3UYJO-I7fEdPNNvwHxq-tkfDvVZlyKgvLGyUWHEzdMYJ
dxOnf79BYBE:APA91bEaejMpJvlfplwS_ax4OBh9PW1harai2fydq9TpP-WnUChfoo1zGKmFWFwOypLaPRsdC2f-LxJLKwWzncjKHbQTc7FFzS5kUNfmmVeijDxfzQvStK05z2jTI8d_q5qdYF2xj_jo
fSjK9yW87eI:APA91bEC_ZU4YFB4dncu3DtqhR3N0lcED4KyB9MHHCVVhpZA-PJE4LD3W994AW869w3UeG6N2ApVdoaGnIiacDJxbY9BvqShRa7wuKiIgD5GcOKAl2fgc-dQJ-8dYIsRHygyVELpMXA1
fLVS2zdzHfs:APA91bFtTysMG6qYMxAw_UyZo5tBQ-3C4uxAM9JIeKOUPayc5zZIX64BoXYNfOpzW1f_nZR4GaZe0xDYHz0nKKLRYoJToEp-8sKlbdkn3GuHAvHKQ5ispZpf0gWJeUca9-QwANNNS0vj
fD5xfAiRoxo:APA91bHhHWdEQYLmKwygkLWQDyD8ravZUg0pS5HXSihMIyHQUS-JLbVZSJ8dU-ZejVXZTwIyJa04vrYtOwPLwWefLvllTwBRAHxRxGI_DnxjAXtNuZuBM9Iyyx9DJ1YoB_K7iAPDFk8q
f74DAEL8kB4:APA91bFGuqNryGHl73bAURk0-wegmlQ5lrHkeqqXeFZLqCOo1pnamHrWBpdJJwhujuZ0E8Qo6LLWwfKHamqYyIpVYUjxjm6ROuETzvhUQfLzKZmXB1XUYU58SzzLz2CEDT2X2e_1xKCQ
dL1XFwM4ruo:APA91bFfQV0WhIntxAG-0hqIGqGaM2w6XrMLXBsX4PPsPhdTTcAGY4f1mTdI1RldYFCFogIsV2IF_mU1_h4YJRzXtbNMKuAH2hsdZ7i2wBGnNnMwaRcuO3OTia-4DWwUU1fGzw1JEzPO
enGT_n6HW1E:APA91bGbBYNuWOUcunjHXtcm95YFFTxHQw-1um9BCtxc9p86vfJCRI9MULVCU6KP-wyTyaUJlYrABkxo6krcylxnuwZaLpLQB7qGjBWeICHYnTqimrEkDw3Cndk6JVRQ57VkYiJzD5mR
c22TWy5thDM:APA91bGD3XTfsAZfAm0oGM6PtHqDjPM_gLqXYzzE3UGsk8qbuaRWSzI9HwJqaOhxJ9UMdnuM_c5gCXr6XzQKJodHihrg4onf86kG98tIKO-TQqzNyvDyl2MmpNLWv2jIROWa0WgBkxzN
fEOeKINHyI8:APA91bFWoZwV6QzxnjnvZMrXB55W0Q2tdqK8ur3PwQzeE6Xuebmb9oBnUwFX7qmU02PfSHyBfB-_GGxGVCejfSrSTDcFd9Byj2QzIzsxkHMin4r5b8kBZygL7pE5sMB58Uoh1Z7UKbaa
fbZkS35U2Hk:APA91bF6xiSM0ayKkGItTVo6X846yMHcvXtEXSWmCFyWOvBq6DVESTNRTDnI63PJ2dURFP0GLKwLv1zbIZoQQLbpnKo5g84zda76PjsNBicr_ShzNgxsgC4hJz7Ahj6exYcWU7EOQUmY
ft42ZleSKqU:APA91bGSkQ6Em628jf4J5r_-39Es0bJHVxdHSZcJ0Z0OoCeODJ84cBF3ogWyJj50eKCiaG23RLXF0FoEEzPekDoq1xm6JdG4Icr7GEHR92714w-HWKfMYum5jacbUoxzevqJFI6FKNTC
ewwCFjQWjUM:APA91bHglK6JqS2OYSNKLuT9PJt5V3knbfJTLbUT_YD0ggO4rvUVJ-NtDE-swwmPta0-62xzvCI6S1iu89LYNrNwul3i6R8fLS70dd88JhUGRer8ArQipfr7hLM9xLuasdoqAfVMlIZT
fJYVYEZkStw:APA91bG2JFtFzXQP5hs7T8-FgRlSbMdnCZ-s9UBohjdIFfu1z5AI_kyfaOcxAC7jW6QWlbtLMxS2YEDB8qNgVBbQOU9BuD7lVq-2CRDLk_nzNMtjVFgV4rxYEViVqbzg892nbmUxZKtR
fWvf5H4grlE:APA91bHwjv6DoqufbPHzXN687bg5uPg66bpYigtYaUd3_XoqGyx7sZk-5PaRAfu-uhxJhFF0YkWWyPE7asM3_YyP78iOlyHmgxY4dsh3cxaVnp1I6LJSowGU7xtEWWTYug0kmpwbQeIS
cugG8MBgwaU:APA91bH7JSXtJXfumv0ODwwf_XziSEc2xot4xtpWpiGsBczN4kPQTZVJW_8c0mI-_WolVn-BEqEJ7uofVmEo8ClnLMNH2k54fAYoTSqCj7lGAwnLPvJB81M6QqlfKZqFYDIhxKjOD26c
f0dZ4QzpNfM:APA91bGgQs_8UcHIbbK44SXjoUYLSAyetESTJis9oPLYupsKqeIkRMsJRgybzE6_ov6wp88KETxYZmOve7R5g_hI9_egqgS5a4B5Eqc1I6Tmy8xzAIfFfQAXSf7_qiMh8dXjvZaAudr6
cqovaef1DsQ:APA91bHFnsrZgQwBQrveKEkpnRAevzNLe3yhmxjGRrQTP--P_2CIj3w57I-RGELgEiubseCnOjtPSygnCByopretelk0sJX2HqkymZp-dhsClYwvLjJCDUQDVIGAFS5aUpYNHu3vzJOP
cGLCrDavpGA:APA91bE163b0SOjxxvtVzxtxPqXuf3NGejkQqOaVUOznFQxBkDsiWVHDzSnBIN-UfjENWuWqBys_qbI7n_xx7gsl-7Qu5KfsTrO33NpE8rGiOVh-tKw95_wAHvOb0k7yzalK2BnlMyJs
cectnW5_2tY:APA91bF8BExXfWBtVEgmw5wsSNCf1Pd0ocRN2v25Y8Ciji2iNGoHLJVTGrPD0xSdEo-SicLoJs9xWqJojhW6E__smJPGNlNNOz0TFGIAaFPB31nD8Ii4-VK1fasAs9dkxU5CtExXOi2p
e77tKwfE3Dw:APA91bESVnQR714EgBfAN82E0FHc_rnqinMbcteyhlXZeBKpSo78VYhx6q89atRA93eIcQoLdFTwzL9oIpBGlS5kR2pz-tPdFTNwSZxVbpISqhvNBh1e3fqYuGtMFyrqsAn9j13ntha8
frEWDgDIH3U:APA91bG2zJ7_R_PCAcnsMZrwDoF8kbwbiOC82Iqfk7f2vrHcdCGBEAycCvOAjuNNvP6gg1Da7LlRiogjlVHhRxGqrAf7b4-d1lqpnh7dXAD_Wg4L0fWvxe-ImJNzhVD-aZoLTahm6k4K
et9C93Y33QY:APA91bEUBHck7OBr3DGuX8yck6jW-T3kemExSKejwds842B0qLMUTKybveKTs5CNhJs-0rl3Whp3ymt-7H8OmeTrbOAYS41xgXzOP0B9y6DJ0agmZxZajJhtiT-NKcFPuiZe2Rqcd3pv
dHMkCfpdtWY:APA91bFJkq98fXrMji82jAcUTIDceqJjB-boW_WQJMZswQMqudsIDbc18X_2l036CrXMGR8a3pL2ogR4wl3YrODKyb0w6QmfstQY-vUk535xJTBvVAb5hMAeWeQ3fZ5q9XMi7ohNZhzy
cmbgIus_EMc:APA91bHiqxPJRM9MOTtZJAz4sys3glelGLEa1ylFtoO45_M1KfdFnrIE738YWq9ugSbUs0whWqdg0nutH_bKXf-ABVkE_jcsEQjJL9uihBSOAgYBtrdbiBufEOQdFoFs8JleS9oq8wBV
cRxKPc0qYYY:APA91bG6r7_x1d2YdMhclP9I20L-PLkpCs0NSq-nxZzYzSwEOCY3lZMI2xneNxGcxGtgxZxMShl4Iyf4khdoko_4WK74bugT3p8qOFSlnjeFRVjWlvB4uwndy4ekPuvNSD5BxqOo9LFl
f-DGdmGnzCI:APA91bEl09hDPViJNLW5wW9pK9SpfY7JAYbBOqFaSEE2PnzfSpmDuHQbxUSWl_aIqFDGMvicMnzFpnnygYt8v-nvPcQjAznNZaVrGqWO4BbUYSQWYxc3epm8snAcMov7wUf0rY4QfAmx
fAchWaEdnOU:APA91bH8jWejhEhHb_EO60oLNBkiRetP1SdbTRPGg6zyPBWhnYlh9Pl4DLu7sOLZT9IzNPbvujxIxYfe3lTRDXRgBeJpK5P4XOEGNiga6uelHPsCqUvbm5jQQaN7M-XGrSmPoco1nOdb
cz0FKFkfRnU:APA91bEL8271OzOjBSFQ_DZj4JRrJy4xJjTcJIxhhC63eL2KtazA2JCGaH8oOlB9AIC-Xu923YqBzII5Qhd7bRC8Qqo1lP-KRhEujZ9JA36gzh39c4__JvhIr9vSumiRWHaucXp4CUI1
fMtKAi5-sC4:APA91bGTJj8SI_ZkhS8e6uEb07-9rP09ppyJFJU6518mOzwshqyLeU8rbX3_DogWnlXQGbDU9tkfSdi7_ptEF9eT66MTaM1jBnYgV_jyhhpoGvaHd7vxIvy_FxiBOJ8tm39WerJKfqvU
fIaOH2PZrv0:APA91bEKN_N6bmi4s5QpUMpkR-R7pAvgSm0Hd30eFBFOE_YSfmT00tY5Mj3JNA-4wubrAtF2cdQQju11H-SZXMO03ZcAxkzcOd9y08tTSmOzC8wJ8Te8tnzR0iW2TG5B2uCsnjP-s6w1
d3qdS0-O8CU:APA91bEKNTMkX7AqtFy59AuQLOcMZRmsxCEib9lVf9TNZtgty7hhJ76bF4F-HNAwhs2HHCRtmPilbAwcfSH62r2C6T8Ch8T-QAD5dBFlwzQ8u0bfV3nIDWepVKefJ--OOv47lzQO3mJJ
f5jJCUOSask:APA91bEvYsh3q-hexp7KnJdLwe1nQqv1HTvYAOLKANWzL5HWSdrQtJnTw6m3VXhRDvqrc1lKH8GGwk-vBt0D61WjOQddS9i1Jfr2PywO04bPX_gGyovDFD1sptu6MDRn6NBJ4MlpNHEs
cBixUQOtgyo:APA91bGzgnQ0zk12JWRbPchs6wabxA4f74iub1kBntoMEXo8ub6XamXnoPdIyp5DkfpRUPqqBWLsVYWRSwywURta8LIVhOcXm0A9_WvyZCzAgszzYXAOw-jrJM65JSatTC1xPpuNgjYC
d4EGi9MFSsw:APA91bG3wkTO-d9Sv0re3XOUuTcx2FNnwcyLjLSC9fvNAIhyU6-HlTzshfbRt5wTtT7yoTvJIMt9K_rWVKlGTOlvu9-PLU3ahHKK696MnBSUHH0NViW3zcHCVUTq8g4B8wjzOXs-BwAY
fwuXXmnI2QI:APA91bFPB9QMth4WsiL7L58H_AxqCQMSnTnKT_x6eeZK2we_FpUp8CiRtVhuIbBPcLNE7V1OryDJU6oNg8Nlk9NmgKnRQjw87AsFsm1tMHmdRSmG0cCwZsuRKtQd9imFP3yH8t2xOh8q
cMp9FjTW8b0:APA91bGkzM7mjHKBQT56y98XH3V3akO3WLgHwLiPvlKxmWMlDOCVzH_WPSeEZrZUw_a5xEmsxPn94hqd3nSaiu12goS9Q7pQu8vsSf_xEc3NmqR4nbPqhxMDHT2zlumVMjBOiuuvyZC3
fBZ_uEvXZj8:APA91bEDyFrMIC2dz7UgBEl8ZJcl_2RuZeGHD98YYYnJrprK7kbEFamUIibeq4qt8rmnvdglONKsGmt9UDmzu2B5mbLmmnDA24ywzvazzz78EGU16l7Wx7HaKxWEdu63JVjn2X4c_xLA
csRWVlqtaqo:APA91bE6iwX5ZmrUpOcziI6DvRyKBQgdYHT1KRK4x7vsYPx3zNTaeTPVVnTezT5mMVXVaDtLkIw4H0uwbYGufzqfdjGyKnwZGT4nf71uYDzR2DVVNLeI0yiftE4w6kiKIj7YlaiNBMJe
emSJ1wpwp8A:APA91bFJ4gWivQxg6FZdEM14N2eeWVYf1YgLhTXUj6blxEVG8lBswtQM65F5PmvN-EK85TB46hnOjfFUMReliga2eypY1w1hCcBEDRayYOCxuDm0BgOkkPNMtX90wg0pN1qjxoqNkkep
fQlp5DY-dqE:APA91bENeINjKK-p6EdU5xGGdiK0cBkRsrGR2G1p8riYy7grqSZGQEKSkL7uNn6Pv16M5CbyIcGTTJvNKKtgCzxm5xm0MZFdS7kpxG_Dv5s6eMAS7FmABnkdncdu5jmwwFJGEyystfyl
f-bSvUuqJh0:APA91bEytUubqHLCzS6e0t5E8m5PSMjKEfFXsrgsCZO8CHsuSTIqEjFi1RndVk5W9Llp7pL20pbYAppEs7vMtSJAUko8KsvMqQ_kS-MulMafj52OimAIcokLs8AuqwumbMg6slKKt51v
dP0RSbRcZfQ:APA91bEc1KXiahnINBayXRHUghg4kUJ-d53pY3dfuUR5tFgYRgVcjMvqsjHSRuFP7h5NDLQugBGTD1NxxqaykhNYHxukNZgJDAbjQ2KFIcmZDE2C-Z6TNv3790GNojdze5zq9oGA3zDA
c9nGOPDO6qU:APA91bGCyYM4OnG5RHNpz9UCKy2Pmubg7R9kIRucUA4inp-Qk8j3cUL2xecRsNWuGwgkKvqko58pYjRtd0TS-8VvMNWlnVJHeteXRp7kAngl1POUFd3SJj10dcM6T25ugMH99PA_oGQK
fpNOSC0-ZyI:APA91bFdc-2l20PiSHG0_oVceUDpt0xxIOW-82qJns541qEjBKv071adrOdNIbRNlLYdapulfy7AJKis4YLPnZ6JcXbp0Gl-h773nNEZ1PNiPBnGRQ9dX7GSVz4pv4_cYU1zTWwgCk7J
dcd12oVwKyM:APA91bFeknnbeQchzg3-LX4nsPZ3rpIsjCGRNig5jypgWjQYNXRDFaiOpUY_b2r2QevrU9NcX5TzzImXFI5x_qu44D-vqpfFkPiXtZ86cOVk-UKhrGZc8I-IwKys-kT6R4lWoadlGjo6
ejxrxyQw0Eo:APA91bFGvVJqQ1tROpLLhYgFUABtQ5KziK6dpeRQYdJy1qvvghQLZMankPLYFVjG09MdNZL4RSM1iPzR5tc2lCmDrDnGP8XxIMjiTlk7dRKCg1BZ1XEPIb09hnnEkv2c9YuKULYGK_iu
eb7_rLBtBL8:APA91bFijSI1YCekkxbpOWbvXlm_gZSDM3ZOTDtb1YykqeQ6y6tYMQXkYoLMPz4uXsOEmTnEtd8RjM1FWmA33S8svB8wBeWoaArYY1PBXgzjvZSrIfNjPM-TaT6dZwsgusSnyh4xtKY6
c1Cb14dHnsM:APA91bFE4p3upHQVBpKGit_JwwOM5tuew594SMML2Hje27yOrLA3BpNGyGYiONZett7HKOobwagJlYXbjbw0BullwEhfLvKizRw59_-QA5jD36NU1KUykoG--f2-y4o4A6MPHOIBt7kj
d6ZEuCW-s4A:APA91bHRBaaFfLX8HiOgnbyl3yVhhCVEJcmtpkdFlhF1i3TL8YC4fd025OuDyDsBHLpgR4Vllk5J5lvMgT5uwDwa0T3eAGpxVvxPwvX9QzjDza2liXhAjC2damyTm5JRzDxpPjWzXCrI
ej_4kR4MrO8:APA91bHLlWbxQzm5-ep0lr7uEd9xEU6CGPEtTovhNocJRY4HfusedPtBk2-TWONV6usIjv9RTMD-k8aqoEbJwFBkMAFS1RGxpJa7jKZRrGS0cL9aN8MRToaY_IiAxqA42eeCwMFmw_P4
e8lmAiSSgJA:APA91bGdUvUFTlPuVVOo4jL-opHY8S-4wr69laRJXzMYWzijmHiEZMq6RAMDyLZVNSX91BSyGCEmY7i7T9_bJldfQrxSOgt2JcWnHotsvcLIw5NyA3VR5Z-Swb8IBVW9bwwHhNewetlR
c3BjJRbTXFs:APA91bHgvuB8Zycdx9CQ_LcnSP6TfDYsMhGEDH5-RhwSONViMl1c12xXzySnuO6wJXRKTqjOc1PQ7eknJbdWzanS9Z9q0TxiX3c96p-nqMEfItY8F1Yt9RNnky_nEURvIj5g5vQk-RZ3
c2sMDZ0oUqQ:APA91bF-QI5_c7S-lbWtvP2vHuOxm0KQPpdq_3ttA0IUP4_kbFFwKCpbNQhoI8vhLgDk9viHMeI6Ru-vLICtaZf5TY43LkvG9jrWZE8ahdSsn1Aw_BoYtsxd2RVKrbQLRpAbEeAjX4Uk
c5mzG6003Lo:APA91bFr7dfq0sOCRyGw35dsRc8DiITydaRjcXLjdL8SaeK2gM5Ubxv2O6d3zt4zU2PJT7xHEm_7NZp0tr8JgOC8qxaYqg7o2x_o_Zaeu-vMjHSOmc5GcjC2nW8Gowp2LrEemLqA89fZ
fS-3OhUBiaI:APA91bHpQP31DTDWR0uxwYcGCGzZKA1BKx5gr2K3fh-V1tI3wI7Mqv2NM3kQVgB778MgIhLckOIhuGoX7iT7-oTW2iDod27sstExIUTMI1efEqfEJPA9PkaHJz5ZK1dLzwsl6fG__jTT
fShZq9RpxdM:APA91bEuh2NIfXbOwYvijdJQJAtgSmsmZWMmc28diWPTm3xG9ZWiK8nnO1qCpmwX2sl9oUhUTwXFdjr_hcxkqTP24N1gwAEBBE7Kv86QvjWfZEOy_xDySMJi-9R5AUMcnJ4TS15_TlEJ
d3RVpIUFep8:APA91bF2oMTY1qt-S8S5svlgaHozb8oxJejIefofLQMDIiScBpf85ig3ZpOjIhCaoJhTT9oeJb8Scdo5DiKbYC2zqwIJPp0B9XKdAOGwsmMEV4XW73TMGeGYEV7lvV2sj2BqyMM2oAcW
fhvxbUJXB18:APA91bHBn3DlLiwY8igK_VQ35wy8lWZZjWMdZqHRTl89ajXNKLy80kET62nfzA9BdVcCZgt_1Nm4aXepwzFZL7MrYYjJpvX4ZowCGMIRkRKMIZhpd4HVxKGK3H-QdiRsmqm_EAuWfVR6
dbKK-fYFTrw:APA91bFUhXhzFryw5cDR88GQqtLHHMa5ia_G0FKLqgovzJhzb5wjiiXsDiQpExSKAZYmwF7385ut_6Gt-WaGG6aJke7lcwdafdCOLqmV46e1gOnQJEBxF1YM7SnWkSyJwConaLbvM-gZ
cP4fnbD__hs:APA91bGfHTqhbXT6RyGRKdmWW6JM6UzCceHP3Nllrqrbu38X5xrp1pxvfNTLIQj8G7RpGYuPWNoqZn5EylDYPAtL_dKKgIYLCwoP5CA8in1YIcLpn-7sKrKk5-NHG3dwmR4acCAx4sCQ
cj83rXPsMj0:APA91bEyzTJdQvszzDkpvUZFGSkimnNPoE4sMDCcKotdw1vV0xaHMrZJVQ-rd0AooajpD0wnWlJqdYehojMpWhwO-FdyoZMbJiwAeTbxixkjE4Hq2d8j6WL4jxcv2DJhDSxNFAlc5g4P
cCkzuzvZhoY:APA91bG0GZmjBbBrgmpwG0cky5BNztK0CGGv41cjUCG97Z1jpEZJetQOULwsAJ9-35IHhqhkqkfG26rHc1tVn36Et9pLfoQildyg8mD8xuKwygs6xS_EP9XZmrHcLGNy4jNTiPPpT8ZZ
dCwJd-7tW-k:APA91bEhwV3X8kVRhpS4pCu_teLiYpQwOmK2wk6Y3ppCIQgnJZV3N0rAzuFSE_D58--3nj_lUPOt0HGM0lqbCsWmr0609SXsZNr76T8lRBCgS8oU0Qy9c7zgQ9iDb_e20L2CwD_PGdqR
eNAzxMFrilw:APA91bFRF2UJNKzN_-JjzWt0QYS5xybwnCADcnujXLXNJusrELRrl125A6SOG3mbKzVgVGjayn3dupdSsUTq5egMKKQ0LEZWJoCsOEt-YYArglJLiXqCdmthFXGZ_t8OSUc9upjJoJlb
ezYZ7S3uRkM:APA91bFwOxXW-0vd0JfIMCN2C-NOO5Sev249O1hMfKrokdr4DX4QPvQnCBE2flMZxBtia3oEB8F5_kFT_LbivRDk-DbFLT_CuJS4Zul2_XBxbci16ZiRzriWRxxCXJV49yuq_Xg9t2ul
eERhw4tZSRE:APA91bHdPFlCLtsJyvUkl0k0ZbGevWuWH-nnBjKERYvhUBUjz9vqfpA_vUzcbj3KaiUglHp6NA5vGv3xtF0pyNnUq0Gy_QNKKJdYJYlfVECv-0b8-MktoDzOUYDmRQqmHnvSlSKozFwq
cb0-dONjbYk:APA91bHw7Y87uGBlrmj3hGcGhk9bLUZskTLTVoNyMrZAi4AWn5c5KHC2u-6W6fHc0HDBUJqXwkp4vP3qPbInySLrJRbVewmMK2vsjhbqppzWhxA33ZRDq3MuBU626LtCm_tQs7-v7KvU
fFaVO8vCM_U:APA91bGobQ_7_5H4tfB1zigVKD6-VOEZPyHP0LB32VHzC92IeOoU1SnKleyCpZz8j3eIjeUTXo9LcRH72Dkzj_xDaPfT6lJDZKdT0_YRi8m1czZsp2As9AvYGTBw5VsT_Km-LH4iK4nA
dprjIpDDMuA:APA91bEZXLub3hUBYmOekA4qXKaQFFEj8kOS4rRoFginiwnxkOOOjyhe-AjBQfFqzoQqD-1cc8C7dGBRC1MJ4zoZqyhUuQV7ykGqQdttNSLPbLrOPnOuvP1qkisvlwG77Vmw24KuEDc4
d9WCJ3wvP0I:APA91bGnxplbSWscZAS9ZkTHwyNMGRXKPtIecTDTh3nd7vYu8zdxOHdfBxNZiTuEZJw2jQE3B_nssEN-AapYvT2oZ3j4zqHkX5zONaOcQn2Tin9cHV5_b7ToeOhYSprCDvZU3XJuOwnr
c3STEkwTNwE:APA91bGNTyyFDQ7cvC8zWuRGLeKl3DEd3R0B_pWFxdT6CiVmkOnLT4M190UmH5G99yg5WY86-Xkpo5S8Noh526oHWWP7WA09Z3NeoOSliwpupMxdz3PiKO46IVe4MVTO9DHBv_J0T7rZ
fqiT09MyMZ8:APA91bElEQWWcrjBm_RiWxeu38Tp4VmPhGOQltI5pd9oKpSJcmsqYjB8UhFDw0oQ_4dEfHMKrPI54C367x8WLaheqbtzJWt8h_V-GmstyWI-L9Bcr8SaimRsauCFd39lexrXVo-29A_x
cY6s3d13w-w:APA91bGMzGWM987rGVPjzYvZlTao7WCq6W8wswzTLbRy6d5ErZ3oIY0UStBCro3jUYwrbTxMPjhuuGdtMoQV2GoVp6TG3470fClKHxX8AuA-Ktv5gONc3vw5TMMn8t_L2RVgPT5u6ZLc
ff45wmU2XxE:APA91bFyxbCV5jEmBdho40evj91laJdHv0zTA5J8cqMzZsxMxwR4-6aBU2o8BolI-6YbBui9cgAooyc0RfVKLsT0E4kTZACMpJXFeuA4WdLK6oa2TFW2jA_lJOJdX_jZpvKfntZZnVTG
fxarym-N9ww:APA91bGlWQL0vshOsxIo7Stzwn6eMQBXF2T5dRsI8v5UZpeu8ALZZrMi9jszAsf8IttkzCR4xG4Fr4A2vI08_IBAIAy56VbH9QF-k13J_E-OvTsJMM9ofgnVBBZjywIB4XKvpHfcjRN4
cRfDvVUW5UY:APA91bHvoaTpvOz5JbwL5wFc9BsAzVvE0ieLNE68JFjW-MJNi4u5RAQXzvR8iPJS8Oef8ODHlV485ZEqD0ZESKrGygYJHa_HXbhaNmqpSQN92CnEKLC5UZF2Hf6lEy3KL3bfMrHAFIfl
fPVL6gKLyiI:APA91bFeg2RzZuordeOSZmuGhXLOVsOYm27SHipYwpsbL6hnrKbvJE8mIYMLgV9kp5cfEIK1mneQ-PvO_C3pzF8of8WbVxdkpId23LOsMPK-eD-4vhVbZiwxx5Ny_3UU5fUDmWDWFdEf
cvLGfIdFbt4:APA91bFDcWi9ECP4ZZWdrJVMQBYZCJg4eGCQ19oBPsUyp2fzLWWUg9sMYInjLPM0mWwhWSmBh8jc0lWZnj522g0PQsZ-YZwfSfbHmVbQ5t-9fUGINxQVskn26aCW9JrrWZi5oxqKBQi5
dzi7N0t4Pek:APA91bGkoH9aTcqlyLe6aywmx7wLwx_xnswz2kIv49U6gFAJiDKmy6mUvblos620GSd3GWkzh5suhR5rNsSQ03Seuif1rDgcNZ_9zCgS3Ef0reXX1sm1R5B9FaTENxeepXCwLokDkq5k
fZQihVksM3E:APA91bGosw0SbrFrcTAafM3ELZZCnLq9QKTL94AcPDILjZXkcQDL6Kt_pdN0vKTMt5wtQbXrYw-IHqTsdbXtoDYba9oP_mwrNrAopdDqRTPBct4n8q8SIAPSq504CWd7vXz1QY_WXeL4
f4S-3GJtLz8:APA91bEof3iMVJU4EI5EEP_1dLIh7wB3lOKegS5xIdQiASefTqkPmJhzSX3QVvCZRy6dXYKu6pNroAU7F0qvIPR6gN1wEdMm393qKWM_qDjE5w_WEsUmNMvAIrYECyVCwWJ_jIGOqv4g
e5pnlN5Lndg:APA91bFyTF5vmLWq9XrL77muNFp5K-TXxmlMGyV4LYMip0vjZh1l_UgRtMGn51e6GA-E-8--baVhWXLibJxown-YlE00d4poC4WLqOjXIcody5ICKq6zG5RLnsmP4kUr3ia0Het25MVa
d2M9EltdWsk:APA91bFCygvxe1jtFsLQsVGdtcVe-BDx2xZY2MSinj6NBv8c5o3dF1FHqTG-BNGQr4gpmEE9Uqqtyy0nsEo-GoRhGdi-hWEYXRajILXhhe76UciZfywRQTWon0NxROQ5Jg-kTzAWt_Ma
e-3vYhW79k8:APA91bGiAK7I2oI13o9JhlDrTI_iav5jhaoG1pmz2apkTWtiikkWswnsuUnS6ILE0y6L2ZT9ipYIqX_QE7ODlT7mZ61QMCnpPTJivqHq6Kfubsr1EdP73QPzFHVy2KvOqYXLajpGramt
fMI7XdH7FDs:APA91bFayW2NUojJytAPFDzPOe_eNf9Cs0LbKwNLiPCHHXczLAqdCjLOgg0jq2vyue4amBUmM5uSVbjQdqPiEyLIZQooFudGmkyWqpvzS_m_zWWrYGS1Tu1bUc8HlJtJ-x0tHDseSIEf
faNnQmDJ7KY:APA91bFaEyaZbAchaGu0HEDrhTlclMBAQja0-crYSM1cqvb9IGf4MdZuNXHRPshPDr-yngXfa_iQd1TUuch_pL8Ho1tju7WUfN4669B4fQxb5oZXF_Yzk9lXjsEvPOJAwEa8KbYo88QR
dxd9MIKEsoA:APA91bEKcxUBOgT_IzI9xaPUOVj_yuEj7soJcMPUgDc_YOLl4_IKBnVJA28wfcLt2kI2RS5rjBsmXZqiibcCR0Q4MVd3EwqUGuIdLP2Qliv2nhsDmvu66XeA9-Yj-t3KKzKteYq2OkDC
fGan5S1oP48:APA91bHUMPj2nyqXgRe0fhvkAZEVSFgdxMCtCWowZO40G2_Yza8ba8vB8gtHLNI5FtePBvYAjC8e_dIX2J1PM6pw0rsB1eql-4qTtpp1fdbjJRVSc6uA8xEpAYTHaQHGS4w_VYoAyEEd
f0IVK1Kt8oI:APA91bG4svWKzY32FU__5sxdRKQuv6bczWx5tWxGosLz0y4Qhw9WkUkGHFXk4HeYmiPDLMW8DxIQEcigkMirvv4vWQnZbMu2iR3-aV9zrLKy-QeZ4MFTOBM9PX2oDiuxAoijn_cqCK4L
ecXyWj2Qfh0:APA91bHrG7gJloiZ3OD_8JIlP2Akh42xMT-9htIOLSqZFDgH9g1HBYy0WlSEjo1HX6guV0ehhuvQmfLI5sR7n6Ad4dVYSfKsnsPY7cEAUvtutRjT2FuQ3mUFVApmxy-9rswaYPJzINNS
d2IHOIoDSP0:APA91bFLaR1WESq_waUxSKCjPsSJZA0NH8-iRCEjLO4GwY_ppmrGk66S2ftxKI6ZiFEXWAVVA7Kpqz7qYTzUWTsZX_Kz-tZOxlNENTvgU2JIEVgLMQzWGK9-rUMuTYck6Z9kFBUf4ogL
dyDyo8EOqWo:APA91bECxmcZsq-WwtupjakyqAl0pOeHBjeMhWSrX9jdgiE6kp6wa1PN3uaIWm2pygNMkUYT6UprNM7A1t2MKS0r3O3AW_bIEAXLe2zDhg_b9EEbTW-L0ngCBTz4NzlJc76dVEna5faR
ewgdUXX1KXY:APA91bHan_-dyYB2K41e6I127Safv3xFi-M14CmyMDtqI2Bvjzpsmjq987t58CpqKtPGbRx_UkC7OT2_AJvA4Ve0j3e2INIPxFfmFdEVOPv1fWtAw_8mvZ63jL6BYH5eyWynMak04biK
dRlA--lWT-Q:APA91bE21mivPOyU9EuJlamgw4FKhOz8AwtDO6CAOAHICQWzKm0RPyk8GZk1QMH1qhkWvghtWM7mke1CjsgzZkBhYi7MOBto2XHNGvV0JetcajFQ7Kw8pFBKH9R5IizzCvaFHZ9X08q4
fx_bD7sWORA:APA91bEGSqeY42paaQamE7yfpnbkFj4zRQjLs7eP1gczbPnNYbfpP8OoNUIMCFdsWXaCGl-c24_fb4MdIJFKEbDXx4PW-WE-Wj2JHR3ePLqV__KOz9zBfHylBnnyTM9M0aWfbx5iAMwi
fjKkyUccHPY:APA91bEugurcPXzEQkbY_JbLaN8jXZLDNKy_1hO1Oi3_M2-YS6LvAwH_-jE5YcxUTEqjKQ4i5FRpcrI1cz9mfOl305TzC_f3HQF9Wr5qO2jcQmzR3sl0H0mMyVrqSJn3iGkuxODaTqIb
cD-GudBsB8s:APA91bGme5u4H9Jo8s7G82ZZH1eiFbG_TcRuZSCqjikGJ7-PV0C4mS-1femmA-ZJP4iGbGZDgEkKQSdrCKBFyMjpolWm9Y_n7_N_Qq3nO-6-c0AdYq3G3Ovz8hByXGzV6GMjKQrOIR3v
d5Kxng3vlZM:APA91bHredHqHYdDpofpKANW4Y674xiHbK0k4FavPBI3HNat_2rLwuhjauSNeRIxTwk6VgR8UzYCsVIwH3Q0ca3LJudkHDDvSuFWNHz38nLzWaVVZEF6VOh32MouuMUKv-HKm1IBbY-e
cypMx8fZkl0:APA91bETcNafd-p-MIPrG2EMcgj0WUApXeiSI12Z3dFtPMt72RLIx7wzzDPwIwnXNx2t4n4lS_xDRxx7v_MZph0O04RLuSwga1HhHazmbI9ZfW8Ps_WsfMRFqMtfA5JX1hhXHqusUDPz
e5FdMZTAQGU:APA91bFk-2wrib8_5WiF2VWCR0ZvodqErx10A5jF-xYy2DTAqjwxX8-wU3llowhsqs7twKRt0HkYCStSj5Tb6nlkutf5JBH8ky_F4hw3-w8tTJ48-PkQYfTyQYr0MwNFAT87EbR4pfbQ
dJeY-ewZqT0:APA91bEUiv_qlrjXLE0uyY2BzBwSrpEOgiWT4dQrCptdHw1GGmrrudwqUbSxiHxNEw4Yy9F0QgHYUz2SuKmRgCLPHH5yb7ngDYv8EN5TiTSYH07dHZbKJzDAx--8VxZXhdhVEwImGw2R
c31G_L02hjA:APA91bHgJJq97TPI1rsdkef3ZmTEyAccrwFxZBuwymt5idHOgMCvHolghH-OLYxSgOaCriIOvVE1eff2CFzSYMVIFsHx89E9bEkX4qe0r32tylPa8FupSNX7l4bxSC3CSKDn9BG-ztTa
ela1ZXrC39o:APA91bHCWA45LAz2-X9eaBDdrhOdJj-nKwUQl8gwa_8YruuUmwBe_lvDKwHT1fGOumY9wFK--cWQnOzGwsX1qPB0LXI1pMajemUoSxAQ7PPelYsnRpeD3WHRoYteTAO0cpug-saRcmsi
cAzJeA3FePY:APA91bFre7ECimLRLNjEQitMlqo2Vv70-jkEPnt1sXR7cuMP5mIxteLXHaW85183XJXd-10xkKpek3OR4D4rE3VmSmfLYjyht77th7ZgnhRSIpgpJp5I9jmr29iRNbqlqtpK3bPb6YEK
ebh-niWM-JI:APA91bGRfNq-0hTUpp-5OxyFK_1egPlOLRiEp37uwiNSMdenNaC601fYdcEGywhnNMFXAikJV54dGDgA12VbgHTfFFWwTNpEBANHHNrlxUdP3m5towM3Vt7hKhprjuKpblJ10Ri8xeiA
eRq7dh-Kpo4:APA91bEiMSlUyvO5HbXOi03IqwRg_pA-18FLcd1qiCWHFFZZwL6QwYIwbbPWCEfQAnNuueyHruOmN3UyVmX5x2x5NsKXolrNR7LRpVBa8j2gnrlGaryZ-Qs9nLzIqd3U3Y1bqnWxuEkl
e5FdMZTAQGU:APA91bGnGohxqYhln5cTU9Hj3OvprCW0FRjuGbyz8qDsFlLGajf6n6ztfww-rBSEL-Gs_0ptW4CnBC7BZuPsoxgiczM41i53neuAQ0UHiySKCYc6gjJwoEazr1l2S1SpeQzP4D6xUDP1
e8N1JNY6ioA:APA91bHctPjFotjd4Oipm34lqR-wvVo7PGWSRIDxIoKY8SU4fxOtErQnEPd6IZ8xw-RB7axCnNqIEoYzBr27MvggXN9nBwOVdY9LnWFwkGyWSyjlASzHNuDa0DOqS55qIYB-U542ed9c
feYDS1IY7Yc:APA91bFVPzobfUrQwSkoe8FpVqO01ecSCLMLQJY8z47UnTBNQSEhfK1Yo3xe6nOnRx7a7AvH-vB0Zo4nOkHM8l0nUPL48ClIPflScl4Ktnl1cBTqWRqbAx6nXKhZORoJzP9cqCKqnWKj
fREDfMek7ug:APA91bHpehhHiYAI8pCwrwJiMUdb3RvAIE2OR04QG0IsViTvLsl9oW7pYHo2QsiIwz1_fLOIxzLVBxC-_em1quUVd8tsHdSw8D-5jT6gpyY6i1PB_wL-xnllX2hr0dY3efygLYbvviCM
cJbmhz_nuFU:APA91bFTzxcao2hNppKLD2mcnoxhIbikBAGS6EAZwpjkjcdk_KvjLaMndNiaZUD1Nc_koFWlaqVfie2099YEZMr8kVYOAMKTvSmny5pLxwpey9Roo3DLUWTfjwYgSPy6TxwoNt6xKxDa
dvNaBONMPaY:APA91bGClzD4a75YWNVF_SaFxvuNwuMraibC4oW_rvSQTQO7fZmQB_0XCqggpSSZ68oJrPoEkEJHF4Q8C8Xp0MvrI-r3JAofNjGuv0QIIYCmJj_oFVmAMDH6f35gyktWrP--V18Tm4cu
dgQGGFSMW7k:APA91bHalf2_X9Ow4BIqAYM_uRpnOhlSfV7irfwt4LvkAXPXKIEijcxA04-kHnuEuIzG3aOPXV21FiM1zSHuMtG9mvT0iPhMuQ5S-aIYQZeDcJGrRiFXWRuWGK3FhX70D8ZlWEaFVFHj
fvIg5jdDO10:APA91bFU1yO_IiX9bLdMVu9rMJeIPuqm3721H8oyvCHPRQMi7rXvUzAsoj6H05rZem2kfhbIIFYUcqYrLAhCdM6WHjEPY2gp26HoNmXkQZcr4NGj5GKwOzZBJhRZhsoe40y1YNM6PNBz
ejiygX7qo54:APA91bHO_kjFkBakQbvFeTqVzhj2SRNdLpOjT2tVgopRhD0-D4nftAh-uhw1LgQkctFRmkEKgeUHGuMtGe6kZ-yM5-ubInwBFnpceDXqqC1P4t1ncsoRwSysb70F8-NooGTonIZ9BdIs
f195c7OIRTA:APA91bG0i0ZYThFcVb3pTlO4nSHEEWNpGDHPkUzBZeTqKyMGcueZ2ZRy0-jIBNnKePC3_cjGiZrSrLneG3H94dhW-2e5UQZo6Yc8ruess_Z0ueftjO5uqO9VwHLt3GOc3XE1bL704yV_
fK7d6FPxP0Y:APA91bGJXQlkAUiD2l96EBuUQc5MTAt6Xd7Nffvzjxg6LFTuIsjcSvqJSkdR-cew0H2KIep4V-kzxKoLcwAB_UyFwelK9O1kH01uPIchWhC6HH2PbMY08GtbCfQPSt-QV39zlWqasstC
du7OhgvnmME:APA91bHTAe4w2IdEalsLeuivhy_gcgKCfzUahQHnOjtVOFG9i9UegizXRM3qHxLP9dUjpAaajGKmNc564X4WO7lDAu6DRZn6kVtJ3dNxgx-cTjIZlKCmk2qkNOS8C8YrqfApeCrF3iVs
c_lrGnCOKSc:APA91bGNlpP-qWGAYpCfzw6LD7j_HCwA4iKwAUtxWsSjjT2Yp9FekbnoETpsP83BcSh5ngS2E3POeOK7t0Zphv7Fog81GhJCAwDSeSjHi-9j-QiVG19SbMN6j_A271ak1s9QloKXy_if
fdHmZ-j7Hb0:APA91bGi3ey-BJGhJ3F8YkxAPUUk7FL91s7gZLkLESI4LVDecFeSu_Wr8GyI5jZKRh_JTsyRKKfs4Y-a4y55CUPhpjrYoc2wAAxa7QsHTx3knyMd0SyDSEao9cPXKdd-Xzs9aOyFdAq_
deDWmhxYas0:APA91bEPBV-HywoS9_7yzN42M4YOxxahf3uq-FTRI1odSGRpoFN0QuDg05pDqQ7Z-ObAtnnswSIq79-pEB2xoSk8biBu5461YQEitgoJM-W1yRHS7h0LFBTE31j0-6gOL5sHrGRtYcXj
d5xWm0BTxl0:APA91bFhxtS5MDjLEO7QFemEfI_4TC-rX0B2ugXLBVHl3jFALH5qPHvtCYhFRyQ_LJmn-YRU8eo8XIC3udwCRL0LWtN57xxWfuBwAGPCh3qiBQ1t0NXzAzxUZhqDNm_n8UohrhDY9fkh
dFRQVTUu4PY:APA91bHFGD5NxGoIxeRqFpex6n5BskgbtVnkKWpJh1nVb8j3Db3QK-Bd5Wyy6CKDWItJta32vzyJIumlvQDSifbBHZKyqobZ5oI2J65UX9fNTRteJan1C3s7zurTisVmx510XUQpVbhC
c9ffCdHyUsg:APA91bG2_GbkPZerIwwKTLR1KmcieGEZWmmnmridr_fr_hfAN6SGcli7IfrUOl8h5VHwbEGufU5IgPXzCCDksevmmeFcXTG3-zvMSMyUvEq8vpMR-X3_vpibNuXkDJxQ2KwsBA2ICkAK
dd977ObW8wA:APA91bFyRPGjkb4I6aooU7qX60CedI-93GdYMyLdobwS6KtswIeyRwAvAPniNBRDPAkIrB8XYyQ0Qz1fs7_aoPaINIPq-fKI6tBNfS8meTxGE7gviAC5VcHkDcrEG0CwpP5IGPIhx776
dUBCOS8ZhpA:APA91bFaykR95dEMYtJuQ5GXhtjktWOlpbD13sZ5F4DwZPYnECTprDCb-8Hd3UXartgRcQSjJywdI3Md5jbwYaQfUkPdnklFznCg11bNV98mEsVX6M-dk_N6JyXcOzCpHyITU3aP5utP
en7jTVN_IOU:APA91bGx_q4IdIwPY8lwj_Z_vLSUV2DB_PYPURCR983FPb3glKBLJdP2aGaHkL2ef3k4WkJZ4l3VC544hCCBa-xKFtAyZi8oP9b-xsa2hEl0VTRarco22avwxrLpDXy_i8aWR7ehEhOb
dwZ0eXUR7Yg:APA91bEmqNU2YAkmtrsy2c5ZP67bZJxXXmnKQNdl1HSG9_0L0sMSUYBTSoySFd08CN82nqTXfia3eWO3FAmwryZF9g4q91NbcvkIs_x1oPw8r_qIFaAch-SNOh8RdUhmWDKg998bHWZ6
ejUowG2dwhw:APA91bHywt5eVY2FBARFcEcTTQrbM56f-TRlJVRbhsiKNwbK-s4LwSqkJ9DUn_SJxMunbDRWbSa2I9ggEUeZnZh14UsGFO8yJRqXHh2WhKhzrC9K6nRI08Cwrz4j8LHc0TCv0yNpu1aM
csyLeZD_X7Q:APA91bGJ9T0Q9Ep5oSLkAIGOwNwwncyAQIdD5qQbBbkHZq0cSZtihp2Z99DOhlOaI04yIIYZbf2JU_K7ghweWgEJU98IRRVWEB9lRPQwbaI44eZ_8KyR70VchxDBMPWflneF2GKnBaT9
fuEhjT3UNNM:APA91bHc0O7RMKjfnsaJN2uRnT-Y6SxCMluo9Rqa98GuGUSsFbdvrdrxARzNvAFa_iPlr5kNg0vbFPR1QSJMPiXsF9C8mZ9GIqygpjar1pdIP48Si8-1w2iM16uJuwuzJsqj1-6Shnv8
d-Ubz8d8jq0:APA91bHLX_qmbobvCa5Ate0zJ8mFXC89B9Kta9pSwKpI_WK0Vco3mY6mkCiXQEubxlkm4DvM3iKuZ5EvH9v4bbpCZIJ63CgaV2djjHpOBCUG5d8fw-fOo6hps-DaARfulWB6NaEPc0Kw
fXP8_zIgb9Y:APA91bGRCcoWWGFJwTs68I-VsW1v5hFhYGLTcnwW6vcGkxinrpSv9ZuOgZa22NT0cmIAPCUWMT7m1ADizw4jnbfxnoK6mcSyGcDefM9k967vAHOKwPWiZzVgou4AAeWbdueJ9FVtE12-
cu_Nid-7mic:APA91bHzVvBSE5JLM-muE23EIs9n-djxtHayEbn9ykoQW13fiYEmLu1qUk38JHU85P82v2VaDnUT_zJRuZ17iW43GpvCzKMfnrLIHgoj5LdqRcTIqjfgn0cvOc1gM5dVACiMR6_PePEM
fAfMmNsw1Fo:APA91bFkVdsjlOop-417tcBEAk1JgwcyLs1fZB5GwtIGv93yguzw92TD_rU9sncAQQM5Lxly_VAUBoNgv8Wk22jhX1MqgrzuqIR8mmndf3ZWGCwGTZ-6qxyAgDMiKoqjvvDTeE_TAZeW
cgMdiFQ6caI:APA91bGMD1l52nakQ3v52KrjRNeD-XS7gp-cUyOIpouZ6w0qG-LpPrtXdhYzW_kJI2uDMtO1vS6CvFn67tcCul9hFdGkuM_Jrv7pJNipgmaXn7QvkiSMDc8VBtJnlGPWNdD0pTmSUL-x
fiXkv3wo6FI:APA91bECvJYpoTkCtde4rwCe-EzzQl16vbTLoy76l-zZ0Oxds3Irss2O-1KMSEdb7Q0rqSmHbK5foEoPI4Qi4GHhfXGemVCclhFRe-dxMaMy8gKG_wNVdO0lyveXhmzArb9HlMUvy_XM
c7IL2p5Opr8:APA91bGwgRkPy6NejdrblMT1O_EgL8mmc4-an5GOrTfq8uyAATHhx7-pwU2vcVZfgyMnxx-HqVCfHrmehlGlcj2whJcaVHtkkWbzrkq9XGDOnxBmH79rZ2bPWIkbuoLjihIe2lohTjn7
dHwyVCMEKOg:APA91bEjwPlCcAHpiGSwUQUYZjf3V4X2wJRxviQbgJILqTASPttggOpv2XFj-AU1XJKetHSZthDNCeQhmRhClKXQPdROEpd-YiOTp_g1ipGODc1l2WL3_JJPgjUKJG6DzuHYx_7Qsspv
f6mA5dXX08Y:APA91bE_gA_PoUMfMvjwIT1ucclWx-VB5uooBOA8acS6CjZfDjz792XZuX93TJd-XuOcgRWdbVLkwKj5uAjxKWe74B905XwhbHPLBxizWfyY6T-X946mZK-uKz5OitQWzv5TH7e0Yw6J
cVlk2jhnqBM:APA91bGXtGAIrRDcOZi3KBfZVr4STZuBbiAzA8_itpMkT5-Gnv4OFx1Rslw4BiQ9HpU2QUfegclslIkrYar0yH6-jc6N0GonL3RK7ltLXv0dx77WrEoBPbebs-jObGN7LLBK3Ojjmtne
dxLbxY6FVKk:APA91bGzdE8_5Wa5DZhQF0y4NRhS5YoO9wT_CJ_kSG0uphA2_ve3B9Wb7LIQEV8HBzV7hHUD38Hzl7c2tprV61o8II7USKZ_jNI-S0O3fEaJnCrX3bXPtuhad0AnF3Joli-4cNzlbZcV
fcP7S5_teM0:APA91bGoLz3rJS7_BAGwBznf7sNYJdVkDdAtzjWr5SQX1Y7RD0SB4jp7nCpuVcmRRzi_eb7slgk2eJxepbL2n9JwuEr64td6zhMNnlhIUk919oa1ZdG1mn7qxxvl89CsXnghPfkfG1E9
eBATGApsaZA:APA91bFuRxLrS-qv138a5dHIG3TG6z0Nhs7sHqYZj7-rr6FZ1y1tJeBwszRK_Di6FQ_dbuYspVV6Z-akG_hJ4ypwVkggJnZxDFUsklgFsauTQW50m290atnTA3_mgI4qHKtJXNLtFa3X
esp3I75fkW0:APA91bEM31Q7nctkFvR82IKp7RsgbR0b1OZOSMsgj3daIBr5YHMIlF8GY0Sjpu2U1-iO1GzFW2Gg2bSYQDVeB7G7CNM1HDLRpATa2zNW7uxw6iclTgOTheUZeXNrPT7b0l_uZqojDc3j
fNf-s5OurLo:APA91bEAEs4-KfL43BOwo9KGMgmUKLxeltOqp_aS96bHX4xABjaM_1du7U1tGRzZg6uldYyn1qPmlYcPcXa7_RTzLBR2LEgmEuQWmr6n4r3AqmxoqeA9rZoztjqkmJxGyNoZihzLY1va
dYzuIrZ5RB4:APA91bHRVV91jhYltZDbjhgK_U1eN2qdqGyQthDjOuqVN0ZAbXrknB50pi0aGH9M8ykigsN96fOQNCDfV7N1WVIuLO8CSo7-g6_vrtltlQjCdiIeiL9ok4DquQKNtE5jsOOoKawhuUJS
eKk49hBQ25g:APA91bGR89yAn3YAXnb0-09Rppme3ZIauCmagVM-gxHKWkDbkkJ6fjO6ahYaZeMjmbLjX71jRNkQRsTDacuoZSLqcGst0IjaYTkm_0OZBBV8FvLngwxlJBnKneS8O1vL-9xT4d41cyPV
cswTzLiXW4w:APA91bEnPtg8C2ZUpMt0U9l3Af7h20wHmKEoX5xIh5FOl9z59Rss7SL6SCSk-rkh9buoqy_mNF6n-cN4mo7qHUDAijPMTv0v9BMbbdsVNoReKUkcPKLDjMD4VfT05vQcmM_ZM8PeUGNc
cy1Ld98TYQw:APA91bHluQX4Os0QEUqknDL8LoHRSpugJE37tJStXt_m3pI_eOLJH4RRQsAxEghKnprCvDc1cUR1H7Ymvb11_PQ9V808F6l6YNHyKzXmvVfJT8q7_Y8bxlLJcIAAZgGyJFuuiuKdW3y1
f3ZAI8OmGf8:APA91bF1KEItg5yY5YsCglp4cVV6fHzzpRHcvj1vY70Qlc8yTDa4gNayswEkmMSQ8GoAC8JL8fZy9rH99f99p6zXEHu_KFW67kmVTJRg9q8Ss3qzb_iveV-CD3QT8Dd0o1n92lrLB1pC
dBdnwCi2WbU:APA91bE-AhPAwVOoipGveAsavBMmNVgiLJ_tI4izMoANycOQjV1Kuv76G9Hj1iGrmOHH4S6YcuMdri3CzHXxPnz4-ofEp204HImUjsKDRAIc3T3qyEllzciMwTBDCisG8Bps2Vh7m9iu
fykXDzZTKD8:APA91bE6zFxKVd2bQt5CnWvA0xCJ33KnoVH0mzW3YndttXkggyT6SHoLo70EwBgP9mOnPXnpyAIpYKVbojvUtF60B5RJzkRELh8MP-YW1NX7UuZhjyoUISWFvFzWqAXjQeKw04t2jv1g
cuBSUA2CeuA:APA91bGLQNrzcX37XC8lWbBWQDKgsh3EBfnjlWI1Hg_mZjVzKFEfuZ5laQre0H30iZTV-mIhbevb_dUdw-wZantW47wGEkhbYj_yDAdlxzATeiHXdn1TR9spRGzwGz8bohc-gR88VKT_
d9fuq9DbS-A:APA91bEvvTNGlbb9m3L8Q_bFB7IXJQJil9KLlDZrXPlrqGBQR3FvlCZVfuqIS0pNpkeG2oI6UAboaTEflX7jCqxun3r7zw6U0vpCncVcBeqH4ka4tnkeDu6svTOk9MtatL8AdI7dS9JP
cYWwkMKAMxY:APA91bHEv59SWQapTnoX_MDSuhGg4k9JrzLgxmIQ6uhlkSraumR5TFlJ-rgrMa7Uq7VQt3hWStM5GJA-TFMHPFaGsTJYkFsxpRAaO1NDdmhP1ffo_zcBW_xfz7YziAEhv3oehgFPXnq3
f3VnU5XXST0:APA91bF4oKmmo3nzeZw8jlUDBDHeCgSEuKuYUO0MqZ3Xbf_ndQejCmhajsfQ_ZStwpXR_BM9xLy17zgE8MCR1Z3FqSlrjyqaK6FMhhDciFT7GAP7NXzPSvG1_pLjMzjYui2i4S7E6oIH
fNWNs7EbC64:APA91bFvTRgSeJeXJcaV6_WAwW18SyfCA_ZxfmkA7dc86vYUENNVFluvaOtR3qLtE_aYEgqErWqrZuhya5kSRGQeNpYa8BeSeR5ElqWyzUfDmmSCgSEu1ahArzWEufxU6vJVlsDEoNpv
fo1wiVfQ4e4:APA91bHIKNNt19naIQIKQchnfjYDQlbdE0U3ymI-jfPtqRZwXaCn8RbBDT2ivu2eAV4gtn3CdFbVsiUldr9c6N0zl3B-GsFJ2EPgzAoyb34M3JY5TWj5xTrJOv9RdCmQqyFMe7f9F_3d
dcpO8vUaC3c:APA91bEE73U7khSqBxZoohZzhSrAvzq5RnPP06HCJFerFihsjqPCNcconIImPZWxZRcA-N-y75PqM0dy1-7bSQ0pDZUT1gM05lDC655xZON2cPOYwXqmzxrOEbiUYr110L6BmrekK-wu
eDcUYAkHfKA:APA91bGJR_u-oEx768uNCuTq9tc6vz4xo1dlStg8q0N2UaUqps37AHXOl2E1LStNIhJrL_3yrLqJWOvOTAO6ODghMZNaMSltDiRbeKCDUpDv7zM7mXmdVXbWR5SkPlS6kiWG7JEtgxZw
eg-321alJBg:APA91bEz5BN-F-yh4S4tYbIgEc_YlLnjBod1-_86t5A0LrWhzf4e4POEyVeFcgtQkfvMLYm0Qb7TgAAeaydSl2sX7UGvkStU4ZkOYnzOZUJUNCoSDRiThkhEL7uPPw0_dHiWuIIPIXcl
fdbrTuGWnME:APA91bEKzexD3B9ihmzxJqWerwDSN8WnqoVGqdU2tBrL5qdvxcJbKY7sY15w5gKQd8INLQRriTLvYdDd8kMPwXzZG5ckerVPBeuGpoPBCA4d6ycM-YY5yz49fntnMrb_4Gm4TuXxuJHg
fUycDBzdfvw:APA91bF-w_kM3sH6drFwK1sigLwMF7e7ikhcy6ec5bTTRfDnysRMGfA-IX8eEmh7oq8ywa6hWKLoZA68Jkb_CSrFKV_8smQ7aSgb49S6Z2pZPAgvwmbyIBqDZGikOlgkrz_EuOOPtIEv
fL6wdo06yQ8:APA91bHk_K7Z0GHrg4zp6KB8rUQ5sHx-9tOEs5bPwaK31pS52ca_e1CCDsxH4i5IHHrwqH4rP4-pF3-lrURi_0Ain0IDsoGYW9jrdO6M9dkFEnUci7baCILsO4Q2Hh-jS88TrjXw6wNR
dsOHeAUyty4:APA91bGVU5Rf_Q7IK68EkVd6ec3UtWpVS_8rILKIChZA73nogZum1-ZfqP9kJTL9YtySFBJen6ihHzQB1kPB6I17dL-BPBV10aalqE-qCmVNRSDo8tQB23fjpIiNDnmK7gM9V1BOEqCj
dJN9cYX8p1c:APA91bEA5Wl8FM8k7VLB-A_2ksBmq-CHZrhT3Kl0geZ4p_wVkRoz8vg_Xvh4xrD8BqBS0VET0mz725YudJbVr-aFwtIqLz4gtGYheegdtK6DLfAnCL804xc6cVa6ihZv0wDgsRpoWVpN
eRQ4JxUkdfs:APA91bF37aSq5iJIE9yZ7Cwrb97KtDm1SdljRff___Qsn3-5hhcqYMzk8AyIZjOxubjRV1cP9sBpQxla5Bgg3U8lGWc6zMLMGOGjJj3OaeHREf_NAZpYO89R4Is523b3Y8i9SvzQvsuq
dLHKpxTeH0Y:APA91bEoA-5lpfgTC1AD1c7WkKMhhZBgBhofzzVqsGhTv_t7Wa2Ak_i_RFN-vtsheHc2voRF8Sn55wdqglGaeuaaiow4Ra-259Fga8di0P7jNMSjAy-kRWtXnxytKUaOy8g9j2oQwVR7
fpfJs5c793E:APA91bFuOsqAP5zUX6EihMTacN8zVP9FmSSf6TvCKvxBjJv_s-yV41BXDdxorpRoW5fT-XbElFhAhVqCkIMGremauX2c0qU2zT4yFwhbCWZ-An_CMVOzlbKfE3BOfzqvrJlnD-a5jYmF
dGxNAJC4k6w:APA91bGhld-E17ikfJRvdGI52DZs_fukX3eRA-Wj_mlMiQ1PM98j0dg1KdzHsIkrRgXdx1Cbf6DzBOAucuOIr3UXw15gZFcMXLpsZRLbTlTyU8IW-U8QzAuIKh9QaHim9PUhfoSHVJk3
efNGp6APQz8:APA91bFqh0Z_RFGLI6ScfIHg3P-bkWsDFvVudbCnyG9Ia66jgebQ9R4_nMBC5yM52aJnY5UTR8JDIln7300-9ZGSK4xqTCjLWlZcxNHMtqg7LPhACuaj6tY0g_KVwf5yh8Iv9y4JlybK
egCGjaGkY5M:APA91bGDLsU38I3zV5DA81pwJR4cuQywh8gDE3Jhe_S4qtfp_Hs7ZO2ed9va5_5HEcFgFyA4JluZo-35a2-NbxCvPhF-ihBwdh6VnSiga_klQthxeoRKOgxGSfYQzEUSuleWLmQNmmYE
fdMKGGYfc7I:APA91bEO2qpZS5a8FSAntJt5XqrGFCMx8lQsRK8LOh5dr96dvS0XvWVyHb6uWUDNVEDEZsZ-9MGR6my0aH4IxvNCSgkP4iYN2q9mf0jyBZL4F1I1qLPNxwfka2YuaV1ka5eOd-p66tdy
cgumS94gnqU:APA91bF2B4o0QT7kIFINEh-6b_z1gaC7aOyk_PF5TUOt4wM3AGSSL4JFoD7M-SlqC-xIoTPgUQdjZ_jT1ye7_p-_nCn-hXHChKHHRudsXtXs1UTWJcrB6LiSiYoYMGvNmPnXuSSQUDZ0
feo_nlSUxnE:APA91bFxI-eCfqpD31NXdr313P7bTQ3EmR8MS0L6lXRMsn4MdiJrr3ZbbUUYDphGZIXMcZHrn1R5nWbAx_RIEUsnGVEaXm05DZ95l18gF4sK43IG_xp-38RfL8R0bNPZovFWmRQ3JUPJ
fJNo7LLone4:APA91bGWcXF2IDYJqEuxAoP5eZL6LmpwKYDtDpDC1FM7jEPECzfd0TrwaB0PLQy8lxH5SM-R9fwsUFZP3QyEl-uToYg_dJ-AvEovaS7ZEvwpWoFQBC6wXEsfSYZqTleCkjRjhvFpPhYu
e_VlAeIeXHA:APA91bEfK4l4Y0VRN_bwJ46GfmzJrx6wXPrre-u788EKgxRcDmJe9_IvzgR_SPRYadgArEAmjwZQGuwKffRMz690RLDbpdqMtHr5s9_RK12dTB-IcZU-9BQoYsToT-A98131hTEy-fOx
f3WG_4ONGvY:APA91bGdRK6e-P64WhJu-P3ui42JPmKyvtOuPTXaQvF6C0AV6IwYmB-erVKhsbrvkn5NJ4K5nZPcsyRgi5sWI7ZEM3wu-JW26k53HZ4CllnOgeqmpoL0gBwGveHHRJDQ1tmHi26pbTnL
eAVi7Y0p3MA:APA91bF50MXjDwk5EY-YxS8P2cDkYhjYkbuB0VTO2xjFYe3hM8G-z038AnYUcgaLyPCGOY7l2c-DK41im4NQZdry1GnJ6JJpw9Ybpx8_PZXAMpetJxYCd-e3xeq_0r1s7QyjeKiUyNFR
cwnFsY4T2uQ:APA91bGtA2RSltKdgekEyGMCb6dZQm0SVjkbj4KWxc0nkUjkycJA3h_Eh0DFbheKHWJahZENjcahIxGMUXHYCje0R_PcJUQAsHlERrq4xIatOyypiMq3FGqT3m8y-bvhr5-UAHILkhoX
fN1l_QS8dAM:APA91bHzSK-ctq_UIMZry0IXcd6CB2xaFOSVqC0ktnlbzWLO8D1oEp2h6iGcNEIEtpFmkhoL5DhOpwTaCdB6KJMkK2VSxiA-2yL5pineMP1naNprXqT68Do925DaifgdM2BZHPmcarBI
dfjLvGGtcjg:APA91bGkaNAe0ZkpVp4qsKfGAq8xu-eojD0abHpxmW9r-oLIGNMUIdhTOyRAUfPTBR6TAepw6Iq9NN2ETGR83KMA2ZKQCPb-5naP8Ftx7Lc-YEhRCseM-C7LlALELBbyb5T_vkR8UO53
dmtJX7xosEA:APA91bHuVPN0zHXQS3Qwsqmd7b0bOlaM9gUpJl9U5hNT_7_h0fHLRXKt42v17zsCkWqS3qRtA9VjPUgqC36Cvl9yI2BJYt0XUGETT8TCCiGW3F06FYbqcuPfN-PV9ZZ750mokP_cSIQK
e_wR_xsCC4Y:APA91bHRxKbpB6XwjBaNuwsZrlPe3ObnuJ8DLNx7TlvIgzjSGZpOnwsl9io67Y_4gRUJ99B5K0GGaYeDck1Hf31XmS69_ZcTED6ngBH0TuexQSGULkpoFSHL9buTWRwAkFo1eKggzcnp
cWNHtMPUGpI:APA91bFQa_PKmR4zKAK5Ly17xdVLxedRXQmZMVPGAbBZyZCDqrcUMt9mdlDwzCkVvqTdUL2RZX9c3m335qNV46jNA670AnyCaSFieWpa83QFLp_UIQ6ZtvXTx2rvXAPN8Q1Tp4BMMMXZ
fJoOP6Vbdb8:APA91bHL9m8lRB4-N0759SIK32dZ29eimyy_YY34IJbEIa7GOOMFqf8Yz8ZJNXe24CpzVq18WzVTmJwKeuKUmsZz3JTbbUfr1t0LTNXaUQLixp4F5r-kEx2_EP6j-NIlJp6pBKXVSDMR
enzT7KM96kk:APA91bHwIdXVRObLScV0HNStDrPpP8pNkJPcKbGYg7BLu0dGPyN4Fhe-8dbiP7_Sh-5Vo_A2jsz-ZtEn6XMDTyucmWzWMQGUq9sm9IK3JD2AKmSMrmHfTImUpNVtqVMh_m7LXDGFjcas
f-CYSwLfUAU:APA91bFlSvfj5I0HIoXJ9D6BFI9G8Cg47lCrt1pVaEwB-8eCyes-hnAKF5V4PidKSBgYWubUVyrkv2unlvJc53_6T3KR3SG0PIdhy3Vuqk4_eMhQn99FFYG1MGPOzhjnY8TNHAKZ_UyP
fIzVLiMU6Ag:APA91bHtP3DzWilRa4Jf-Hpbf9LOyNLRn03iFUbft-sEkgwod5PazGv44cIZoYr3idkCfb2O-b7bYFf9nw800pWYhfNRttvgfGUhiI6y84X7kqxRNTThWKWHXOjkSEIiuuwsT72ZorAd
ffS_m1Wfw04:APA91bEXFpQCJFtZCsR1igakGfJFBMOzzXNQyl_HfwEUqYZeuIqu6SxK6Bs-RQL5kTPD7shbXQJu3zrawYokbAfzhg3_idfOmRzX7HkSWARdJfhgUKMxaUdytHdRce4wRyJwaW4e26eQ
dE4WEBnMi9U:APA91bF9-y0_IGKXgEl-jL8-ZvmLA_ixRk5cWHzQ9T-MpcHC3bfNZyXRmnqeC3F1bbiJcrKNKDdg2cnwWys8p_tCFlJgarVsY6avXsyXSMQR0jLA_k6gyVekQbBYgnaUwj9z6tAlsx1v
eyF9_wbfuyQ:APA91bFZqJ6WI19BRdiNDMe6DdPDCnS_j0pvk-j-v8gISt51OOoFpqC9GiUnN6PD7b-c1zradUqAT54aMwcvvXR8S7v2Q9T_ksrRDl9a-LB8yc0yQFRzKnTuO67W3gI0V4cIo6X6S7oO
fs89DXmigvk:APA91bEcjR7AkN80agUB3ONxkGpx8Z_07dwIjfeoC626N0ahsITsJqpuzjZoU58oIeamO6_dUimDUCWQodYgUkP-7lTxUX0DLAQfBt39zKRPXo502oJ3O8ivfR67ThsQ1CwoFO1wo55d
es_FFv7eeXc:APA91bH4yU0oFVjWwko_R_A9sej5c-OBvc1ferUTx-PRy2sdXhSbqe-8QcHfiyAz9RF5jKCWq0vDOkRWNGV9MEeFncBX-D8uJeSYV1pSFAwQwVqNWqtyWnU9ANZcPTevT9PkNRrZLWjE
dIW109sJ9LU:APA91bEINb5-pj26DRRve34Wb1JWv3b_vu8IjsSq1dTaxduHUmPMflkS8N2xr_-ew72h97ce3LvqrJRyRx43PWYAhM4Jmz1G8mU8CmHLP-eEje_33ZT_X57r3bwHieO5RPUjebxY02Yp
e_gnyp_iDTk:APA91bEX-WcF1t2y2LBFcGv3KKKM-gw3RlntGGUfrkzRLgo2aIMbJxY9i8mWKZL-0PBk47WvHgpn-pwkMtFFt1upPOAp2VWmdlsm0gDgnIvP6Gfe8AM743WYU26SpPOwiJEmO16wUo0I
eyXdkhvUBCU:APA91bHc6-p156g4urV21v0xSPhjNn9cTliF_4htCzipkZYZDi9Qhtgx4LFi-Ik0V-zpzxh23GjyB3vtaluUqeaoZPKlioZBaCSPjuClaGW-8Z8Auvqz8weI8AmQhpV56XI1lx5CMn0G
e8pqrkP3SPY:APA91bE8cZSekip-k99p14NoLodCJHehtKGAid964W3JneC9-p77q5ADJilvSlLYl5J7Vnvk9YTV1w7RyEx_mJMrMRwXcUu_5yvNkoK7C9J_AhmTNYt-hkYINIIvfUGl5AA0oJNTnlFZ
cA7sSqVK4rE:APA91bGWeIFuNPZ8Bcmo0JP211KEOgPHGzeRjneG7TFjRBkg4bbtNxgvSSx9aDEdBWYyrBWtQ6pVYLKtqoZ1N3jSGlgqJpsQgAtg1sW1ySOco6LxuDZ9Lh1sGZRdA04qq0GwxjhVwY5w
eF_6wDRRGlw:APA91bHX_MxknUC96sZdKO_4BWyeHBnCOeDOLsUqvHDUXdpt8eDg8HSuv1RqqbT_ys96qgfvF6_ZdlzJouyOndavyPq-c5QhIfHq35NmmMLSJJ_WtgHLorZNFBF7FL_UysCWJCcAdSLZ
eHUHAa9O0YY:APA91bF7IWjy26AzNJgvBS3o8LLUaCDbYGS13lacF7i2Pf5i5tjzzvoxfxZaLWQt8cbRWgkKtCMrx9S3DoryyLXN2TvUy4H9z2Kvs8R2z2qHDm5Hbcz3Ou8SX0pdAUmBPkbpidaRa4gm
fDIU9iO5lcc:APA91bHvg4V8_wk_d5VVmqUaiFTr0l8dzWNGb9zxXDUxbc86uXZMznIpB_dz656FFQRlgnNMkyYov7GHMaV40JUblQeje09rkjDPiRRHSP2E4aNM-knPI0iVIuBemt76Sg1yrz7JcY8M
cSIJW93A0Ws:APA91bEeoJoQaQhnvULCAk2Z-k8kb8WcgU9oW_aRGtACEESI_R0jnyOzfZo62PNzqQjLZKqt74CvCMRI25IpTvcOTPb2FIubHIL5nTQAk5_aqmY5Y8KzVOlkI1s0lfmF5mSL7ZD-h9xt
dlyWnhLwEMk:APA91bEnfqu2jFTIdqb3Fimqo55x_6yLorFbiZBLkLXqIP6jfBabojlMY-5t0o3tDyxM2FsfyjSIU0-UoEkZZc4ssoPpLhZVrcMGExKYCE3mUNm5BHq_aFD0XQ4IhIckW38m46flY7U7
\.


                                                                                                                                                                                                                                                                                                     3868.dat                                                                                            0000600 0004000 0002000 00000003675 14024026461 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        images/gallery/125/WhatsApp_Image_2020-02-27_at_08_30_41_(1).jpeg	125
images/gallery/125/WhatsApp_Image_2020-02-27_at_08_30_41.jpeg	125
images/gallery/126/WhatsApp_Image_2020-02-27_at_11_08_20.jpeg	126
images/gallery/126/WhatsApp_Image_2020-02-27_at_12_02_17.jpeg	126
images/gallery/127/DSCF2512.JPG	127
images/gallery/127/DSCF2515.JPG	127
images/gallery/82/1.JPG	82
images/gallery/82/2.JPG	82
images/gallery/82/3.JPG	82
images/gallery/82/4.JPG	82
images/gallery/82/5.JPG	82
images/gallery/90/DSC01619.JPG	90
images/gallery/90/DSC01620.JPG	90
images/gallery/90/DSC01624.JPG	90
images/gallery/90/DSC01627.JPG	90
images/gallery/90/DSC01629.JPG	90
images/gallery/95/WhatsApp_Image_2020-01-23_at_1_44_08_PM_(1).jpeg	95
images/gallery/95/WhatsApp_Image_2020-01-23_at_1_44_08_PM_(2).jpeg	95
images/gallery/95/WhatsApp_Image_2020-01-23_at_1_44_08_PM.jpeg	95
images/gallery/97/Bincang_1.jpeg	97
images/gallery/97/Bincang_2.jpeg	97
images/gallery/70/WhatsApp_Image_2020-01-02_at_09_30_56(1).jpeg	70
images/gallery/70/WhatsApp_Image_2020-01-02_at_09_30_56.jpeg	70
images/gallery/70/WhatsApp_Image_2020-01-02_at_09_30_57.jpeg	70
images/gallery/99/Petani_1.jpeg	99
images/gallery/99/Petani_3.jpeg	99
images/gallery/71/IMG_9102.JPG	71
images/gallery/71/IMG_9068.JPG	71
images/gallery/71/IMG_9082.JPG	71
images/gallery/71/IMG_9081.JPG	71
images/gallery/72/WhatsApp_Image_2020-01-03_at_00_43_19.jpeg	72
images/gallery/72/DSC01424.JPG	72
images/gallery/72/DSC01441.JPG	72
images/gallery/78/WhatsApp_Image_2020-01-08_at_07_09_18_(1).jpeg	78
images/gallery/78/WhatsApp_Image_2020-01-08_at_07_09_18.jpeg	78
images/gallery/99/Petani_2.jpeg	99
images/gallery/104/WhatsApp_Image_2020-02-01_at_5_15_54_PM.jpeg	104
images/gallery/104/WhatsApp_Image_2020-02-01_at_5_15_55_PM.jpeg	104
images/gallery/104/WhatsApp_Image_2020-02-01_at_5_15_54_PM1.jpeg	104
images/gallery/107/Direksi_1.jpeg	107
images/gallery/107/Direksi_2.jpeg	107
images/gallery/108/DSC01837.JPG	108
images/gallery/108/DSC01842.JPG	108
\.


                                                                   3869.dat                                                                                            0000600 0004000 0002000 00000000031 14024026461 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2020-03-05 08:00:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3870.dat                                                                                            0000600 0004000 0002000 00000026260 14024026461 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        72	voidels.rey05@gmail.com	18
76	daudana.dp@gmail.com	3
81	monicatifany99@gmail.com	3
83	monicatifany99@gmail.com	3
84	monicatifany99@gmail.com	17
98	irfanalfiansyah10@gmail.com	3
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
2	yohanesdl9@gmail.com	3
5	firnas@ptpn10.co.id	3
6	firnas@ptpn10.co.id	18
13	bimasaishoku@gmail.com	3
14	andika.vernanda@gmail.com	28
119	tgunawan46@gmail.com	22
120	tgunawan46@gmail.com	69
121	div.qc.pl@ptpn10.co.id	23
122	div.qc.pl@ptpn10.co.id	21
123	div.qc.pl@ptpn10.co.id	68
124	div.qc.pl@ptpn10.co.id	68
125	ytoday9@gmail.com	70
126	angganteng@gmail.com	70
127	aldino@ptpn10.co.id	70
128	baktidir@gmail.com	70
129	suhadi.ptpnx@gmail.com	70
130	agus.sukaryono@ptpn10.co.id	70
131	agus.sukaryono@ptpn10.co.id	65
132	agus.sukaryono@ptpn10.co.id	54
133	sbupmsjember@gmail.com	70
134	div.qc.pl@ptpn10.co.id	70
135	div.qc.pl@ptpn10.co.id	22
137	widodopurnomo567@gmail.com	70
138	bambang84sierra@gmail.com	70
139	tribuanaik@gmail.com	70
140	bambang84sierra@gmail.com	21
141	bambang84sierra@gmail.com	71
142	baktidir@gmail.com	72
143	baktidir@gmail.com	71
144	danang.sw@ptpn10.co.id	72
145	dody.kristanto@ptpn10.co.id	72
146	bambang84sierra@gmail.com	72
147	masdan44681@gmail.com	72
148	ddsrn27679@gmail.com	72
150	bambangqaptpnx@gmail.com	72
151	ariehard46@yahoo.co.id	69
152	ariehard46@yahoo.co.id	34
153	fikrifaisal465@gmail.com	72
154	danang.sw@ptpn10.co.id	71
155	tgunawan46@gmail.com	72
156	shabrinasukarno@gmail.com	72
157	bambangqaptpnx@gmail.com	70
158	septokuswitjahyono@gmail.com	71
159	tribuanaik@gmail.com	65
160	dwiandikang@gmail.com	72
161	dwiandikang@gmail.com	71
162	dwiandikang@gmail.com	70
163	dwiandikang@gmail.com	18
164	ariehard46@yahoo.co.id	72
165	mukhlis.thohari@ptpn10.co.id	73
166	mukhlis.thohari@ptpn10.co.id	70
168	trisvijay71@gmail.com	73
169	bambangqaptpnx@gmail.com	72
170	tgunawan46@gmail.com	71
171	jonugraha57@gmail.com	72
172	ikhwan.krisnadi@ptpn10.co.id	78
173	ikhwan.krisnadi@ptpn10.co.id	72
174	yogar.r@ptpn10.co.id	79
175	yogar.r@ptpn10.co.id	78
176	yogar.r@ptpn10.co.id	72
177	yogar.r@ptpn10.co.id	71
179	agus.sukaryono@ptpn10.co.id	78
180	agus.sukaryono@ptpn10.co.id	72
181	my7632773@gmail.com	78
182	ikhwan.krisnadi@ptpn10.co.id	84
183	soetono.effendi@gmail.com	84
184	soetono.effendi@gmail.com	70
185	ikhwan.krisnadi@ptpn10.co.id	90
186	ikhwan.krisnadi@ptpn10.co.id	88
187	ikhwan.krisnadi@ptpn10.co.id	89
188	soetono.effendi@gmail.com	90
189	angganteng@gmail.com	90
191	angganteng@gmail.com	86
192	angganteng@gmail.com	84
193	bambang84sierra@gmail.com	92
194	my7632773@gmail.com	92
195	ikhwan.krisnadi@ptpn10.co.id	94
196	zainuddin.fanani@ptpn10.co.id	96
197	ikhwan.krisnadi@ptpn10.co.id	96
198	ikhwan.krisnadi@ptpn10.co.id	93
199	ikhwan.krisnadi@ptpn10.co.id	91
200	ikhwan.krisnadi@ptpn10.co.id	82
201	ikhwan.krisnadi@ptpn10.co.id	71
202	ikhwan.krisnadi@ptpn10.co.id	73
203	bambang84sierra@gmail.com	97
204	bambang84sierra@gmail.com	96
205	bambang84sierra@gmail.com	95
206	ilmi.nasrulloh@gmail.com	97
207	ilmi.nasrulloh@gmail.com	95
208	ilmi.nasrulloh@gmail.com	91
209	ilmi.nasrulloh@gmail.com	93
210	yogar.r@ptpn10.co.id	97
211	yogar.r@ptpn10.co.id	95
212	yogar.r@ptpn10.co.id	91
213	ilmi.nasrulloh@gmail.com	90
214	ilmi.nasrulloh@gmail.com	88
215	ilmi.nasrulloh@gmail.com	99
216	ilmi.nasrulloh@gmail.com	89
217	ilmi.nasrulloh@gmail.com	78
218	ilmi.nasrulloh@gmail.com	98
219	yogar.r@ptpn10.co.id	72
220	yogar.r@ptpn10.co.id	99
221	yogar.r@ptpn10.co.id	98
222	yogar.r@ptpn10.co.id	93
223	ikhwan.krisnadi@ptpn10.co.id	99
224	ikhwan.krisnadi@ptpn10.co.id	99
225	ikhwan.krisnadi@ptpn10.co.id	98
226	ikhwan.krisnadi@ptpn10.co.id	99
227	ikhwan.krisnadi@ptpn10.co.id	98
228	ikhwan.krisnadi@ptpn10.co.id	97
229	ikhwan.krisnadi@ptpn10.co.id	99
230	mukhlis.thohari@ptpn10.co.id	102
231	mukhlis.thohari@ptpn10.co.id	101
232	mukhlis.thohari@ptpn10.co.id	100
233	mukhlis.thohari@ptpn10.co.id	99
234	kristomoyo@gmail.com	102
235	kristomoyo@gmail.com	101
236	kristomoyo@gmail.com	102
421	firnasreyhan@gmail.com	134
239	firnasreyhan@gmail.com	102
240	ikhwan.krisnadi@ptpn10.co.id	103
241	ikhwan.krisnadi@ptpn10.co.id	102
242	ikhwan.krisnadi@ptpn10.co.id	101
243	ikhwan.krisnadi@ptpn10.co.id	100
244	ikhwan.krisnadi@ptpn10.co.id	95
245	ikhwan.krisnadi@ptpn10.co.id	95
246	firnasreyhan@gmail.com	101
247	yogar.r@ptpn10.co.id	105
248	yogar.r@ptpn10.co.id	103
249	yogar.r@ptpn10.co.id	101
250	yogar.r@ptpn10.co.id	100
251	yogar.r@ptpn10.co.id	106
252	yogar.r@ptpn10.co.id	104
253	pm.ptpn10@gmail.com	106
254	pm.ptpn10@gmail.com	106
255	pm.ptpn10@gmail.com	104
256	ikhwan.krisnadi@ptpn10.co.id	104
257	ikhwan.krisnadi@ptpn10.co.id	108
258	ikhwan.krisnadi@ptpn10.co.id	108
259	ikhwan.krisnadi@ptpn10.co.id	107
260	ikhwan.krisnadi@ptpn10.co.id	106
261	ikhwan.krisnadi@ptpn10.co.id	105
262	ikhwan.krisnadi@ptpn10.co.id	107
263	ikhwan.krisnadi@ptpn10.co.id	109
264	ikhwan.krisnadi@ptpn10.co.id	110
265	ikhwan.krisnadi@ptpn10.co.id	110
266	soetono.effendi@gmail.com	110
267	soetono.effendi@gmail.com	110
268	almasaquille1@gmail.com	108
269	almasaquille1@gmail.com	110
270	almasaquille1@gmail.com	109
271	almasaquille1@gmail.com	110
272	almasaquille1@gmail.com	109
273	almasaquille1@gmail.com	108
274	almasaquille1@gmail.com	107
275	yogar.r@ptpn10.co.id	111
276	yogar.r@ptpn10.co.id	112
277	yogar.r@ptpn10.co.id	113
278	ikhwan.krisnadi@ptpn10.co.id	111
279	ikhwan.krisnadi@ptpn10.co.id	112
280	ikhwan.krisnadi@ptpn10.co.id	113
282	ikhwan.krisnadi@ptpn10.co.id	111
283	bambang84sierra@gmail.com	121
284	bambang84sierra@gmail.com	112
285	bambang84sierra@gmail.com	111
286	zainuddin.fanani@ptpn10.co.id	121
287	m.aziz@ptpn10.co.id	111
288	yogar.r@ptpn10.co.id	124
289	yogar.r@ptpn10.co.id	123
290	bambang84sierra@gmail.com	124
291	bambang84sierra@gmail.com	123
292	bambang84sierra@gmail.com	113
293	ikhwan.krisnadi@ptpn10.co.id	126
294	ikhwan.krisnadi@ptpn10.co.id	126
295	ikhwan.krisnadi@ptpn10.co.id	125
296	ikhwan.krisnadi@ptpn10.co.id	125
297	ikhwan.krisnadi@ptpn10.co.id	124
298	ikhwan.krisnadi@ptpn10.co.id	123
299	ikhwan.krisnadi@ptpn10.co.id	126
300	bambang84sierra@gmail.com	127
301	ikhwan.krisnadi@ptpn10.co.id	127
302	ikhwan.krisnadi@ptpn10.co.id	127
303	ikhwan.krisnadi@ptpn10.co.id	119
304	ikhwan.krisnadi@ptpn10.co.id	127
305	bambang84sierra@gmail.com	126
306	bambang84sierra@gmail.com	126
307	bambang84sierra@gmail.com	130
310	bambang84sierra@gmail.com	131
311	bambang84sierra@gmail.com	129
312	bambang84sierra@gmail.com	129
313	bambang84sierra@gmail.com	129
314	bambang84sierra@gmail.com	125
316	almasaquille1@gmail.com	131
317	almasaquille1@gmail.com	131
318	bambang84sierra@gmail.com	132
319	angganteng@gmail.com	132
320	angganteng@gmail.com	131
321	angganteng@gmail.com	129
322	angganteng@gmail.com	127
323	bambang84sierra@gmail.com	132
325	bambang84sierra@gmail.com	133
326	bambang84sierra@gmail.com	133
327	bambang84sierra@gmail.com	134
328	bambangqaptpnx@gmail.com	134
329	almasaquille1@gmail.com	134
457	digimagz5@gmail.com	130
342	digimagz5@gmail.com	131
364	yohanesdl9@gmail.com	65
365	ikhwan.krisnadi@ptpn10.co.id	134
366	ikhwan.krisnadi@ptpn10.co.id	133
367	ikhwan.krisnadi@ptpn10.co.id	135
368	ikhwan.krisnadi@ptpn10.co.id	132
369	ikhwan.krisnadi@ptpn10.co.id	131
370	ikhwan.krisnadi@ptpn10.co.id	130
371	ikhwan.krisnadi@ptpn10.co.id	129
381	bambang84sierra@gmail.com	137
382	bambang84sierra@gmail.com	136
383	bambang84sierra@gmail.com	135
385	ikhwan.krisnadi@ptpn10.co.id	137
386	ikhwan.krisnadi@ptpn10.co.id	136
450	digimagz5@gmail.com	135
470	digimagz5@gmail.com	128
476	digimagz5@gmail.com	64
482	digimagz5@gmail.com	3
490	digimagz5@gmail.com	98
494	digimagz5@gmail.com	93
495	digimagz5@gmail.com	72
497	digimagz5@gmail.com	63
501	digimagz5@gmail.com	66
509	digimagz5@gmail.com	68
510	muhammadbahruddinhidayat@gmail.com	136
512	bambang84sierra@gmail.com	138
513	angganteng@gmail.com	137
514	angganteng@gmail.com	134
516	angganteng@gmail.com	138
517	angganteng@gmail.com	72
518	mohammadsyaiful.rizal@gmail.com	138
519	mohammadsyaiful.rizal@gmail.com	136
520	mohammadsyaiful.rizal@gmail.com	137
521	mohammadsyaiful.rizal@gmail.com	134
522	mohammadsyaiful.rizal@gmail.com	133
523	mohammadsyaiful.rizal@gmail.com	135
524	mohammadsyaiful.rizal@gmail.com	132
525	mohammadsyaiful.rizal@gmail.com	131
526	mohammadsyaiful.rizal@gmail.com	130
527	mohammadsyaiful.rizal@gmail.com	129
528	mohammadsyaiful.rizal@gmail.com	127
529	mohammadsyaiful.rizal@gmail.com	126
530	mohammadsyaiful.rizal@gmail.com	125
531	mohammadsyaiful.rizal@gmail.com	124
532	mohammadsyaiful.rizal@gmail.com	123
533	mohammadsyaiful.rizal@gmail.com	111
534	mohammadsyaiful.rizal@gmail.com	112
535	mohammadsyaiful.rizal@gmail.com	113
536	mohammadsyaiful.rizal@gmail.com	110
537	mohammadsyaiful.rizal@gmail.com	119
538	mohammadsyaiful.rizal@gmail.com	109
539	mohammadsyaiful.rizal@gmail.com	128
540	mohammadsyaiful.rizal@gmail.com	108
541	mohammadsyaiful.rizal@gmail.com	107
542	mohammadsyaiful.rizal@gmail.com	106
543	mohammadsyaiful.rizal@gmail.com	121
544	mohammadsyaiful.rizal@gmail.com	105
545	mohammadsyaiful.rizal@gmail.com	104
546	mohammadsyaiful.rizal@gmail.com	118
547	mohammadsyaiful.rizal@gmail.com	103
548	mohammadsyaiful.rizal@gmail.com	102
549	mohammadsyaiful.rizal@gmail.com	101
550	mohammadsyaiful.rizal@gmail.com	100
551	mohammadsyaiful.rizal@gmail.com	99
552	mohammadsyaiful.rizal@gmail.com	98
553	ikhwan.krisnadi@ptpn10.co.id	138
554	bambang84sierra@gmail.com	140
555	bambang84sierra@gmail.com	139
556	mohammadsyaiful.rizal@gmail.com	139
557	mohammadsyaiful.rizal@gmail.com	140
558	bambang84sierra@gmail.com	144
559	bambang84sierra@gmail.com	145
560	bambang84sierra@gmail.com	145
561	bambang84sierra@gmail.com	143
562	bambang84sierra@gmail.com	141
563	bambang84sierra@gmail.com	142
564	mohammadsyaiful.rizal@gmail.com	145
565	mohammadsyaiful.rizal@gmail.com	143
566	mohammadsyaiful.rizal@gmail.com	144
567	mohammadsyaiful.rizal@gmail.com	142
568	mohammadsyaiful.rizal@gmail.com	141
569	ikhwan.krisnadi@ptpn10.co.id	156
570	ikhwan.krisnadi@ptpn10.co.id	155
571	ikhwan.krisnadi@ptpn10.co.id	154
572	ikhwan.krisnadi@ptpn10.co.id	153
573	ikhwan.krisnadi@ptpn10.co.id	152
574	ikhwan.krisnadi@ptpn10.co.id	151
575	ikhwan.krisnadi@ptpn10.co.id	150
576	ikhwan.krisnadi@ptpn10.co.id	149
577	ikhwan.krisnadi@ptpn10.co.id	148
578	ikhwan.krisnadi@ptpn10.co.id	147
579	ismedrohadi@gmail.com	199
580	ismedrohadi@gmail.com	198
581	ismedrohadi@gmail.com	200
582	rizkysipil12@gmail.com	201
583	mohammadsyaiful.rizal@gmail.com	201
584	mohammadsyaiful.rizal@gmail.com	200
585	mohammadsyaiful.rizal@gmail.com	199
586	mohammadsyaiful.rizal@gmail.com	198
587	mohammadsyaiful.rizal@gmail.com	197
588	mohammadsyaiful.rizal@gmail.com	196
589	mohammadsyaiful.rizal@gmail.com	195
590	mohammadsyaiful.rizal@gmail.com	194
591	mohammadsyaiful.rizal@gmail.com	193
592	mohammadsyaiful.rizal@gmail.com	202
593	bambangqaptpnx@gmail.com	203
594	ismedrohadi@gmail.com	204
596	mohammadsyaiful.rizal@gmail.com	205
600	kapista79@gmail.com	196
601	kapista79@gmail.com	206
602	kapista79@gmail.com	204
603	ismedrohadi@gmail.com	206
608	ismedrohadi@gmail.com	208
609	ismedrohadi@gmail.com	207
610	kopralapp@gmail.com	209
\.


                                                                                                                                                                                                                                                                                                                                                3872.dat                                                                                            0000600 0004000 0002000 00001664107 14024026461 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        45	B	PTPN X Bedah Rumah dan Bangun Sarana MCK 	<p style="text-align: justify;">Sebagai anak perusahaan PT Perkebunan Nusantara (PTPN) III (Persero), PTPN&nbsp;X menyelenggarakan acara Bedah Rumah Tidak Layak Huni (RTLH) dan pembangunan sarana MCK di Jember (30/10). Acara yang dihadiri langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Direktur Komersil, Slamet Djumantoro ini merupakan wujud kepedulian PTPN X terhadap masyarakat sekitar terutama yang berada di wilayah lingkungan unit kerja PTPN X. Program kali ini dilakukan di wilayah kerja kebun Ajong Gayasan tepatnya di Desa Kawangrejo dan Desa Lengkong, Kecamatan Mumbulsari.&nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Program CSR berfokus pada bedah rumah tidak layak huni dan pembangunan sarana MCK. Sejumlah satu unit rumah yang berada di wilayah Penataran Dawuhan, Desa Kawangrejo akan diperbaiki, sehingga menjadi layak huni bagi keluarga yang menempatinya. Sedangkan pembangunan sarana Mandi, Cuci, Kakus (MCK) dilakukan pada 11 titik yang berada di wilayah Desa Lengkong.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapan saya, melalui program bedah rumah dan pembangunan sarana MCK dapat memberikan manfaat bagi semua pihak, khususnya dalam hal peningkatan kesejahteraan masyarakat. Saya mewakili manajemen PTPN X mengucapkan terimakasih kepada seluruh masyarakat sekitar wilayah kerja Kebun Ajong Gayasan atas dukungannya selama ini.&rdquo; ujar Dwi Satriyo Annurogo, Direktur Utama PTPN X dalam sambutannya. (Valen_UWM, CIN_Sekper)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n	0	0	2019-10-30 17:25:55	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-10-30_at_10.20.52.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-bedah-rumah-dan-bangun-sarana-mck
110	B	PTPN X Magz Sabet Silver Winner di Inma 2020	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">Media internal PTPN X, yakni&nbsp; PTPN X Magz kembali berhasil menyabet prestasi membanggakan dalam perhelatan Indonesia Inhouse Magazine Awards (InMA) 2020 Kategori BUMN.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">Kali ini PTPN X Magz mempersembahkan Silver Winner melalui cover majalah Edisi 31 Januari - Maret 2019 di ajang tahunan yang digelar oleh Serikat Perusahaan Pers (SPS) dalam momentum peringatan Hari Pers Nasional (HPN). Malam penghargaan yang dihadiri oleh ratusan pimpinan perusahaan pers se-Indonesia, tokoh pers nasional, pimpinan humas korporasi, dan lembaga pemerintah ini digelar di Hotel Mercure, Banjarmasin, Jumat (7/2/2020). Trofi dan sertifikat diterima langsung oleh Soetono Effendi, Kaur Humas PTPN X. &nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">&ldquo;Kami mengucapkan terima kasih atas apresiasi yang diberikan oleh SPS kepada PTPN X Magz. Sebuah kebanggaan tersendiri bahwa majalah internal yang kami kerjakan ini mampu membuahkan hasil yang baik, bahkan secara berturut-turut dalam beberapa tahun terakhir berhasil memperoleh penghargaan. Penghargaan inipun menjadi pelecut semangat agar kami tetap konsisten dalam menghadirkan informasi korporat bagi seluruh insan PTPN X,&rdquo; ujarnya.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">Perlu diketahui, malam penghargaan InMa merupakan acara puncak tahunan ajang penghargaan tertinggi yang diberikan oleh SPS Pusat bagi para kreator majalah. Acara yang mengusung tema besar &lsquo;Kreasi yang Menginspirasi Negeri&rsquo; sekaligus dilakukan dalam memperingati Hari Pers Nasional Indonesia 2020 ini dibuka oleh Ketua Harian SPS Pusat, Januar Primadi Ruswita. ⁣⁣⁣⁣<br style="box-sizing: border-box;" />⁣⁣⁣⁣<br style="box-sizing: border-box;" />InMA juga merupakan wahana mengukur pencapaian karya jurnalistik media cetak yang dituntut untuk lebih kreatif dan inovatif mengemas konten, termasuk menciptakan cover yang menarik di tengah perubahan tren pola konsumsi media di Indonesia yang cenderung mulai bergeser dari media cetak ke media digital dan online. &nbsp;Di ajang ini selain BUMN, juga diikuti peserta dari universitas, media, Instansi pemerintah pusat dan daerah serta swasta.</p>	13	0	2020-02-11 13:56:51	images/news/web6.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
95	G	HUT PT Nusantara Medika Utama Ke 7	<p>Sambutan Direktur Utama dan Komisaris Utama dalam HUT Nusantara Medika Utama ke 7 di Saphire Ballroom Ayola Hotel Mojokerto. Sekaligus dilakukan launching new corporate culture SPIRIT :</p>\r\n<p>Synergi,&nbsp;</p>\r\n<p>Profesional</p>\r\n<p>Integrity</p>\r\n<p>Respect</p>\r\n<p>Innovation</p>\r\n<p>Team work (kerjasama)</p>	13	0	2020-01-23 15:07:53	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
161	B	Kebun Ajong Gayasan Panen Perdana Tembakau	<p>Sabtu (27/06), Kebun Ajong Gayasan melakukan panen perdananya. Lahan tembakau yang dipanen adalah di Blok Kawang Bagian TBN I, Kemandoran Kawang D seluas 5.280 hektar. Penanaman tembakau tahun ini dimulai pada saat 12 Mei 2020 dengan target produksi di lahan ini sendiri adalah sebesar 19.500 kg/ha.</p>\r\n\r\n<p>&ldquo;Saya yakin Kebun Ajong Gayasan akan mampu bangkit dan memberikan kontribusi laba bagi perusahaan,&rdquo; ujar Aris Toharisman, Direktur PTPN X.</p>\r\n\r\n<p>Tembakau yang menjadi komoditas bisnis PTPN X ini diharapkan dapat bersaing dalam lingkup nasional bahkan internasional dengan kualitas yang memuaskan. Hal ini didukung dengan perencanaan yang tepat hingga kontrol secara berkala.</p>\r\n\r\n<p>Protokol kesehatan seperti mencuci tangan dengan sabun dan air mengalir, memakai masker, dan memberi jarak karyawan satu dengan yang lainnya diterapkan dengan sebaik-baiknya agar kondisi tetap prima dan target dapat dicapai semaksimal mungkin. (Sanggra_UB,CIN_Sekper)</p>\r\n	11	0	2020-06-29 08:59:43	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-06-29_at_8.49.33_AM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kebun-ajong-gayasan-panen-perdana-tembakau
47	A	3 Piramida, Cara Sukses Lebih Cepat Untuk Karyawan	<p style="text-align: justify;">Tentu setiap diri karyawan di perusahaan menginginkan jenjang karir yang baik untuk masa depannya. Apakah anda pernah bertanya, dimanakah titik tertinggi sebuah kesuksesan seorang karyawan?. Pada dasarnya, setiap orang mempunyai pencapaian titik kesuksesan. Sukses bisa diraih oleh semua orang dengan titik yang berbeda, tergantung penerimaan <em>mindset </em>sukses itu sendiri seperti apa.&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>Time is life</em>, kesuksesan tersusun dari jutaan proses, dan anda harus melaluinya. Sebagai karyawan anda harus cerdas manajemen diri, terlebih soal waktu. Karena penguasaan waktu mempengaruhi tingkat kesuksesan.</p>\r\n\r\n<p style="text-align: justify;">Ada banyak cara dalam membangun perjalanan menuju kesuksesan yang anda inginkan dalam pekerjaan saat ini. Namun, untuk mencapai itu semuanya, dibutuhkan upaya kerja keras dan usaha yang maksimal.</p>\r\n\r\n<p style="text-align: justify;">Berikut gagasan <em>three pyramids</em> yang saya tulis, yang bisa menjadi inspirasi dan menjadi cara untuk membantu anda menjadi seorang karyawan yang sukses lebih cepat:</p>\r\n\r\n<p style="text-align: justify;"><strong>Frugal Time </strong></p>\r\n\r\n<p style="text-align: justify;">Hemat waktu merupakan sebuah <em>mindset</em> untuk lebih efisien terhadap penggunaan waktu.&nbsp; Untuk mencapai target pencapaian yang bagus, karyawan harus pandai dalam manajemen waktu. Lantas bagaimana cara menghemat waktu yang tepat?</p>\r\n\r\n<p style="text-align: justify;"><em>Frugal Time,</em> tentang sebuah kelas waktu untuk menjadikan potensi diri menjadi komoditi yang bernilai tinggi.&nbsp; Setiap waktu berjalan dengan&nbsp; kecepatan yang sama, namun setiap diri karyawan memiliki titik faktor kesuksesan yang berbeda.</p>\r\n\r\n<p style="text-align: justify;">Sebagai karyawan, anda harus menerapkan prinsip bahwa setiap detik waktu adalah impian, dan detik selanjutnya adalah usaha pencapaian.&ldquo;Sasaran itu impian yang memiliki tenggat waktu.&rdquo; &ndash; Diana Scharf.</p>\r\n\r\n<p style="text-align: justify;">Seperti yang dikatakan oleh Diana Scharf, bahwa impian itu memiliki tenggat waktu. Jadi, anda sebagai karyawan harus mempunyai&nbsp; <em>new idea instincts how to quickly pursue dreams.</em></p>\r\n\r\n<p style="text-align: justify;">Ada beberapa tips untuk anda sebagai karyawan untuk menghemat waktu.</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Jangan menunda pekerjaan, selesaikan secepatnya. Jika memang pekerjaan tidak bisa diselsaikan hari ini, maka buat agenda penyelesaian untuk hari esok</li>\r\n\t<li style="text-align: justify;">Jika ada waktu luang saat bekerja, maksimalkan dengan mempelajari hal baru</li>\r\n\t<li style="text-align: justify;">Berikan waktu terbaikmu untuk perusahaan dengan bekerja <em>professional</em>, inovatif dan kreatif</li>\r\n\t<li style="text-align: justify;">Buatlah metode-metode baru dalam penyelsaian pekerjaan anda, agar pekerjaan lebih mudah dan cepat selesai</li>\r\n\t<li style="text-align: justify;">Buat peran yang jelas pada tim anda, karena dengan peran yang tepat maka pekerjaan anda akan lebih cepat selesai dengan akurasi yang baik.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Setiap detik waktu adalah kehidupan. Waktu anda terbatas, jadi jangan sia-siakan. Berhematlah dengan waktu dan berbagilah banyak hal positif untuk orang lain, karena sesuatu yang tidak dapat ditarik adalah pengaruh yang kita berikan kepada orang lain, dan itu bisa menjadi investasi yang baik dimasa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Wasting Time</strong></p>\r\n\r\n<p style="text-align: justify;">Waktu adalah salah satu hal penting yang perlu diperhatikan, karena sedetik pun waktu tidak akan pernah bisa diulangi atau diputar kembali. Waktu adalah kesempatan. Banyak orang tanpa sadar membuang banyak waktunya untuk momen yang kurang tepat. Buatlah prioritas, agar efektivitas kerja dapat memberikan <em>value</em> yang baik. Jadilah <em>smart employee</em> yang mempunyai standar <em>mindset</em>, <em>that time</em> <em>cannot be played back, do many great things. </em></p>\r\n\r\n<p style="text-align: justify;">Sebagai karyawan anda harus lebih aktif, lakukan banyak hal dan jangan pasif. Sukses adalah tentang sebuah proses. Ada harga mahal yang harus anda bayar untuk kesuksesan lebih cepat dari biasanya.</p>\r\n\r\n<p style="text-align: justify;">Seperti yang dikatakan Bruce Lee, &ldquo;Menggunakan waktu adalah memanfaatkannya sesuai dengan apa yang telah ditentukan sebelumnya. Menghamburkan waktu adalah menyia-nyiakanya tanpa rencana dan sembarangan&rdquo;.</p>\r\n\r\n<p style="text-align: justify;">Nah sekarang anda sebagai karyawan perusahaan, maksimalkan waktu bekerja sebaik mungkin dengan membuat rancangan atau agenda kerja yang terstruktur. Mengerjakan sesuatu tanpa perencanaan hanya akan membuat anda bekerja tidak efektif. Hanya akan membuat Anda membuang energi tanpa hasil. Nah dengan membuat <em>to-do list,</em> kedepannya semua waktu kerja anda akan tergunakan secara maksimal dan anda akan tampil lebih produktif.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><strong>Give yourself motivation</strong></p>\r\n\r\n<p style="text-align: justify;">Era globalisasi saat ini berkembang sangat <em>absurd</em>,&nbsp; mau tidak mau keadaan akan menuntut anda untuk selalu melakukan pekerjaan dengan cepat dan tepat. Sehingga <em>mood</em> yang baik sangat diperlukan, karena jika kita tidak dalam mood yang baik, akan mempengaruhi kualitas kinerja anda.</p>\r\n\r\n<p style="text-align: justify;">Dengan berbagai jenis tantangan pekerjaan, seringkali <em>work mood</em> anda akan mengalami naik turun. Nah, situasi seperti ini harus anda waspadai. Untuk segala keadaan, anda sebagai karyawan harus mampu menunjukkan performa yang baik. Untuk terbang lebih tinggi, anda harus tampil menginspirasi dan selalu mampu membuat serta menunjukkan <em>Fresh Idea</em> anda.</p>\r\n\r\n<p style="text-align: justify;"><em>Give yourself motivation</em>, anda harus mampu memberi semangat dan memotivasi diri sendiri.&nbsp; buat diri karismatik dengan passion terbaik anda. Karena sejatinya, hidup tanpa semangat maka akan terasa mati.</p>\r\n\r\n<p style="text-align: justify;">Salvador Dali mengatakan bahwa &ldquo;Kecerdasan tanpa ambisi adalah seperti burung tanpa sayap&rdquo;. Begitu juga dengan pekerjaan, bekerja juga membutuhkan ambisi sebagai daya untuk mencapai target. Lantas bagaimana cara mudah untuk memotivasi diri?. Berikut ada beberapa tips yang mungkin bisa anda coba sebagai inspirasi untuk memotivasi diri.</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Buatlah sebuah tujuan di <em>ending work</em> anda.</li>\r\n\t<li style="text-align: justify;"><em>Reward yourself</em>, Berjanjilah pada diri anda, bahwa jika mencapai target, maka anda akan memberi sebuah penghargaan pada diri anda sendiri.</li>\r\n\t<li style="text-align: justify;">Buatlah <em>mindset,</em> bahwa hari ini adalah hari terkahir anda bekerja. Maka anda akan bersungguh-sungguh dalam bekerja.</li>\r\n\t<li style="text-align: justify;">Berusahalah menciptakan keajaiban baru dengan prestasi kerja anda, maka dunia akan mengenalmu lebih baik.</li>\r\n\t<li style="text-align: justify;">Temuilah lebih banyak orang, untuk belajar tentang filosofi motivasi kerja. Dengan banyak relasi, lebih banyak pula pengalaman baru yang akan anda dapatkan. (Dhanaviya_Enero, CIN_Sekper)</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Sumber gambar beritagar.id</p>\r\n	3	0	2019-07-17 22:00:41	http://ptpn10.co.id/uploads/artikel.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/3-piramida-cara-sukses-lebih-cepat-untuk-karyawan
90	G	Strategi  PTPN X Untuk Giling Tahun 2020	<p>(15/1) Arahan Direksi PTPN X untuk Menghadapi Musim Giling Tahun 2020 kepada semua Jajaran General Manager Pabrik Gula di Ruang Rapat Krisna Kantor Pusat</p>	46	0	2020-01-15 15:05:34	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
46	A	Kombinasi Bioethanol dan Biogas Industri Gula sebagai Energi	<p style="text-align: justify;">Kebutuhan energi dunia terus meningkat seiring dengan pertumbuhan populasi. Terutama untuk sektor transportasi, 58% bergantung sepenuhnya pada energi fosil. Selain menipisnya ketersediaan energi fosil, isu lingkungan akibat penggunaan energi fosil menjadi masalah. Energi terbarukan menjadi terobosan dalam menangani masalah ini. Energi terbarukan sumbernya beragam: sumber langsung (panas, <em>photochemical</em>, <em>photoelectric</em>) dan sumber tidak langsung (angin, <em>hydropower</em>, <em>fotosintesa</em> dan biomassa, <em>geothermal</em>). Khusus untuk biomassa, perannya berkontribusi 9-13% dari total energi dunia. Biomassa berasal dari degradasi hasil alam dan industri terkait. Untuk menghasilkan energi, biomassa diproses dengan degradasi <em>thermochemical </em>dan <em>biochemical</em> <em>process</em>.</p>\r\n\r\n<p style="text-align: justify;">Pada industri gula, molases merupakan biomassa yang dapat diolah menjadi bioethanol sebagai energi melalui proses fermentasi dan selanjutnya hasil samping bioethanol, <em>vinasse</em> dapat diolah menjadi biogas melalui proses <em>anaerobic</em>. Kombinasi bioethanol dan biogas memiliki prospek yang cerah untuk dikembangkan. Bioethanol sendiri saat ini menjadi sumber subsitusi BBM (Bahan Bakar Minyak) paling berkembang di dunia. Kebaikan bioethanol sebagai energi antara lain:</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Bioethanol mampu mengurangi 90% emisi atas efek rumah kaca yang berkontribusi dalam mitigasi perubahan iklim,</li>\r\n\t<li style="text-align: justify;">Pembakaran yang bersih akan meningkatkan performa mesin dan mengurangi polusi udara,</li>\r\n\t<li style="text-align: justify;">Rasio nilai energi ethanol 9 kali lebih besar dari energi fosil,</li>\r\n\t<li style="text-align: justify;">Bisa langsung dicampurkan pada BBM tanpa perantara sekitar kandungan 10% bioethanol.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Brazil sebagai barometer penggunaan ethanol, menjadi contoh sukses penggunaan bioethanol ini. Saat ini, Brazil berhasil menurunkan impor minyak sekaligus memanfaatkan ethanol pada saat harga gula dunia turun. Hampir 88% kendaraan di Brazil telah berjenis <em>Flex Fuel Vehicle&rsquo;s</em> (FFV) yang mempunyai fleksibilitas dalam penggunaan BBM dan bioethanol atau kombinasi keduanya. Pada tahun 2012, penggunaan BBM sebagai sumber energi murni terus menurun dari kisaran 50% dan digantikan oleh pemanfaatan bioethanol dan <em>Flex</em> <em>Fuel</em> (kombinasi BBM dan bioethanol) dengan target penggunaan BBM murni hanya 20% saja pada tahun 2030.</p>\r\n\r\n<p style="text-align: justify;">Tidak berhenti disitu, <em>vinasse </em>hasil samping bioethanol baik juga dikonversi sebagai biogas sebagai sumber energi. Sekitar 18% energi masih tersimpan pada <em>vinasse</em> dari sisa proses produksi bioethanol. Melalui serangkaian proses <em>hydrolisis</em> sampai <em>methanogenesis, </em>akan dihasilkan gas <em>methane</em> (CH4) yang dapat dimanfaatkan energi panasnya secara langsung atau dikonversi menjadi listrik bahkan sebagai bahan bakar kendaraan.</p>\r\n\r\n<p style="text-align: justify;">Sebagai contoh, produksi umum biogas di Brazil sekitar 175 Nm<sup>3</sup>/m<sup>3</sup> ethanol. Energi ini ekuivalen dengan 3,74 MJ/L ethanol. Sama halnya dengan bioethanol, biogas merupakan energi ramah lingkungan dibanding <em>natural</em> <em>gas</em>. Kombinasi bioethanol dan biogas diharapkan memiliki prospek cerah untuk terus dikembangkan. Terlebih Indonesia memiliki banyak pabrik gula yang dapat dikembangkan industri hilirnya sebagai bioethanol dan biogas. Kombinasinya mampu mengurangi emisi 89% tertinggi dibanding industri biomassa lain seperti: jagung, gandum, singkong, dll.&nbsp;<span style="font-family: open_sansregular, sans-serif; font-size: 14px; text-align: justify;">(Ariel_Enero, CIN_Sekper)</span></p>\r\n\r\n<p style="text-align: justify;"><strong>Sumber:</strong></p>\r\n\r\n<p style="text-align: justify;">Zuuber P., van de Vooren J., 2008: <em>Sugarcane Ethanol: Contributions to Climate Change Mitigation and Environment, </em>Wageningen Academic Publishers</p>\r\n\r\n<p style="text-align: justify;">Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens</p>\r\n\r\n<p style="text-align: justify;">KG Cesaro A and Belgiorno V., 2015: <em>Combined Biogas and Bioethanol Production: Opportunities and Challenges for Industrial Application,energies journal:&nbsp; </em><a href="http://www.mdpi.com/journal/energies">www.mdpi.com/journal/energies</a></p>\r\n\r\n<p style="text-align: justify;">Belincata J., Alchorne J. A., Teixeira da Silva M., 2016: <em>The Brazilian Experience with Ethanol Fuel: Aspects of Production, Use, Quality and Distribution Logistics</em>,&nbsp; Brazilian Journal of Chemical Engineering: www.scielo.br/scielo.php?script=sci_arttext&amp;pid=S0104-66322016000401091</p>\r\n	0	0	2019-10-23 15:26:35	http://ptpn10.co.id/uploads/foto1.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kombinasi-bioethanol-dan-biogas-industri-gula-sebagai-energi
48	A	Invisible Work	<p style="text-align: justify;">Di belahan dunia bahwa sebagian besar seseorang mempunyai pekerjaan dalam kehidupannya. Mereka semua bekerja dengan kemampuan, gaya dan kecepatan masing-masing. Namun beberapa orang menghabiskan lebih dari separuh kehidupan mereka. Semua itu bukanlah cara bekerja yang benar, ada yang salah dengan cara bekerja mereka. Sebenarnya ada sisi bagian dari sebuah pekerjaan yang tidak terlihat oleh mereka. Ada tiga hal yang menarik untuk dilakukan oleh seorang pemimpin perusahaan sebagai inspirasi karyawan dalam menemukan <em>invisible work</em> (sisi bagian pekerjaan yang tidak terlihat) untuk cara bekerja yang lebih baik.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>Melihat semua keindahan dalam pekerjaan.</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam sebuah pekerjaan pasti ada satu titik dimana seseorang akan mengalami depresi, kejenuhan dan rasa putus asa. Semua itu akan membuat mereka meninggalkan pekerjaan mereka. Bahwasannya ada hal yang lebih mendasar di balik semua itu, yakni mereka banyak melewatkan keindahan dalam pekerjaan mereka. Sebagai seorang pemimpin, beritahu kepada karyawan yang bekerja untuk Anda bahwa pekerjaan itu adalah sesuatu aktivitas yang menyenangkan. Bantulah mereka untuk menemukan jati diri mereka dalam pekerjaanya dan inspirasi mereka agar mempunyai waktu, energi, dan kejernihan untuk fokus pada pemurnian diri sebagai navigasi baru dalam bekerja.</p>\r\n\r\n<p style="text-align: justify;"><strong>Kepedulian Pemimpin</strong></p>\r\n\r\n<p style="text-align: justify;">Seni kepemimpinan sangatlah berpengaruh dalam perkembangan <em>mindset</em> karyawan. Banyak karyawan yang mempunyai <em>passion </em>yang bagus namun akhirnya mereka tidak produktif bahkan kehilangan pekerjaan mereka. Hampir 70% gaya kepemiminan akan mempengaruhi baiknya kinerja karyawan dalam pekerjaan. <em>Global Studies </em>mengungkapkan bahwa 79% orang keluar dari pekerjaan karena kurangnya apresiasi sebagai alasan mereka untuk meninggalkan perusahaan. Dari penelitian itu dapat disimpulkan bahwa sangat pentingnya perhatian dan <em>respect</em> pemimpin kepada karyawan yang bekerja dibawahnya.</p>\r\n\r\n<p style="text-align: justify;">Ada delapan hal dimana bisa dijadikan sebagai bentuk inspirasi perhatian dan bentuk kepedulian yang menurut Jay Shetty akan merubah pola kerja karyawan untuk menjadi <em>smart people.</em></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Jadwalkan pertemuan dengan setiap pegawai,</li>\r\n\t<li style="text-align: justify;">Tanyakan tentang kebahagiaan mereka,</li>\r\n\t<li style="text-align: justify;">Tanyalah apakah pekerjaan mereka berarti,</li>\r\n\t<li style="text-align: justify;">Tanyakan bagaimana mereka pola pikir budaya bisa ditingkatkan,</li>\r\n\t<li style="text-align: justify;">Tanya mereka tentang keseimbangan kehidupan kerja mereka dan bagaimana itu bisa lebih baik,</li>\r\n\t<li style="text-align: justify;">Tanya apakah mereka merasa dihargai di tempat kerja,</li>\r\n\t<li style="text-align: justify;">Tanya mereka apa yang dapat membantu mereka mencintai pekerjaan mereka dan perusahaan Anda,</li>\r\n\t<li style="text-align: justify;">Dan yang terakhir, bersiaplah untuk mendengar kebenaran dan kenyataannya. Jika Anda siap mendengarnya, mereka akan siap untuk mendengar balik.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><strong>Kekuatan Kepercayaan</strong></p>\r\n\r\n<p style="text-align: justify;">Milikilah keberanian untuk mengikuti hati dan intuisi Anda sebagai pemimpin di perusahaan. Banyak pemimpin yang kurang percaya terhadap kemampuan karyawan yang bekerja untuknya. Sehingga membuat <em>mindset</em> karyawan berpikir bahwa mereka dipandang sebelah mata. Hal seperti ini tentu tidak baik untuk perkembangan performa dan <em>passion</em> karyawan dalam jangka panjang.&nbsp; Sebagai pemimpin, milikilah kekuatan rasa memiliki dan kepercayaan lebih atas semua yang ada dalam diri karyawan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p>Sumber Gambar: https://blog.clarifai.com</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n	0	0	2019-05-03 20:34:35	http://ptpn10.co.id/uploads/invisible_work.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/invisible-work
23	B	Gelar NSS, Ini Beberapa Solusi Ikagi-AGI untuk Industri Gula Tanah Air	<div class="gs" style="margin: 0px; padding: 0px 0px 20px; width: 1292.01px; color: rgb(34, 34, 34); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: medium;">\r\n<div>\r\n<div class="ii gt" id=":pu" style="font-size: 0.875rem; direction: ltr; margin: 8px 0px 0px; padding: 0px; position: relative;">\r\n<div class="a3s aXjCH " id=":oi" style="overflow: hidden; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: small; line-height: 1.5; font-family: Arial, Helvetica, sans-serif;">\r\n<div dir="auto">\r\n<p dir="ltr" style="text-align: justify;">Industri gula di tanah air menghadapi era yang semakin menantang. Untuk menghadapinya, para ahli gula yang bergabung dalam Asosiasi Gula Indonesia (AGI) dan Ikatan Ahli Gula Indonesia (IKAGI) merumuskan beberapa solusi yang dibeberkan dalam National Sugar Summit (NSS) 2019 di Ballroom Convex Grand City, 12-13 Desember 2019.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Beberapa rumusan yang dibahas dalam pertemuan dua hari diantaranya penyusunan kembali peta jalan pengembangan industri gula nasional disertai instrumen&nbsp; pendukungnya yang kondusif, lintas sektoral dan terintegrasi, terutama menyangkut aspek produksi, distribusi, kelembagaan, pendanaan dan hilirisasi.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"></p>\r\n\r\n<p dir="ltr" style="text-align: justify;">&quot;Hal lain adalah perlu adanya kemudahan pendanaan dari perbankan, penyediaan teknologi budidaya, penyediaan pupuk dan benih tebu unggul, bantuan bongkar ratoon,&nbsp; penyuluhan, perbaikan infrastuktur jalan, jembatan dan saluran irigasi untuk mendukung pengembangan tebu rakyat,&quot; kata Ketua IKAGI&nbsp;<a href="tel:20192022" style="color: rgb(17, 85, 204);" target="_blank">2</a>019-2022, Dwi Satriyo Annurogo, Kamis (12/12/2019).</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Pemerintah sebelumnya menargetkan bisa melakukan peningkatan produksi gula secara bertahap hingga mencapai swasembada. Namun hingga saat ini produksi gula nasional belum menunjukkan perkembangan yang menggembirakan.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">&ldquo;Tantangan yang dihadapi industri gula kian dinamis. Kita dihadapkan pada permasalahan-permasalahan terkait pengembangan industri gula (baik di sisi on farm, off farm, maupun diversifikasi), biaya produksi, dan lain-lain,&quot; ujar Dwi yang juga Direktur Utama PTPN X.&nbsp;</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"></p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Diharapkan melalui pembahasan tersebut bisa dirumuskan solusi terbaik untuk permasalahan yang dihadapi industri gula nasional. (Red1, CIN_Sekper)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n	10	0	2019-12-13 14:55:15	http://ptpn10.co.id/uploads/web_nss.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/gelar-nss-ini-beberapa-solusi-ikagi-agi-untuk-industri-gula-tanah-air
49	A	Kecerdasan Buatan (AI), Inspirasi Menjadi Karyawan Versi Terbaik	<p>Metode Kecerdasan Buatan (AI) merupakan sebuah metode baru yang dikembangkan untuk menggali potensi karyawan disebuah perusahaan. Metode ini adalah hasil dari sebuah rekayasa <em>mindset </em>untuk memadukan kekuatan pikiran (Rasional) dan Hati nurani (Metafisika).</p>\r\n\r\n<p>Setiap diri karyawan pasti memiliki kelebihan dan kekurangan. Tidak ada manusia yang diciptakan tanpa <em>power knowledge</em>. Menggali potensi karyawan dengan metode kecerdasan buatan (AI) merupakan teknik terbarukan yang dikembangkan untuk menemukan jati diri karyawan dalam bekerja. Mereka akan dipandu dalam tiga konspirasi, yakni <em>&ldquo;siapa anda?, apa tujuan bekerja?, </em>dan <em>apa arti dari sebuah pekerjaan?&rdquo;</em>.</p>\r\n\r\n<p>Kecerdasan buatan (AI) memiliki banyak kelebihan dibandingkan dengan metode lain. AI memfokuskan pada titik emosional untuk membangkitkan kekuatan perasaan dalam diri seseorang. Karena bakat terpendam akan bisa bekerja dengan diberi rangsangan melalui sebuah peristiwa yang disusun oleh konsep yang matang.</p>\r\n\r\n<p>Begitu banyak orang yang bekerja hanya sekedar bekerja, tidak memperhitungkan waktu, kesempatan, dan kemampuan. Mereka hanya melakukan aktifitas yang sama setiap harinya, bahkan ada sebagian orang yang datang bekerja tanpa tujuan. Inilah yang menjadi faktor terbesar penyebab perusahaan tidak berkembang.</p>\r\n\r\n<p>Target Metode Kecerdasan Buatan (AI) adalah menjadikan karyawan yang produktif dengan teknik komunikasi <em>feeling</em> untuk membentuk karakter karyawan yang mampu menghasilkan karya, bukan penikmat karya sehingga karyawan mampu menjadi versi terbaik dari dalam dirinya.</p>\r\n\r\n<p>Dalam Kecerdasan Buatan (AI) disusun oleh &nbsp;<em>three feeling thoughts </em>yang harus diciptakan oleh seorang pemimpin untuk meregenerasi<em> the strength of employee feelings. &nbsp;</em></p>\r\n\r\n<p><strong><em>1. Method of opening the brain</em></strong><strong>.</strong></p>\r\n\r\n<p style="margin-left:35.45pt;"><em>Method of opening the brain </em>merupakan sebuah metode membuka kecerdasan otak dengan sebuah rekayasa <em>mindset</em>. Hal ini dilakukan dengan media memberi kesempatan pada karyawan untuk menyalurkan ide dan gagasan dalam <em>event</em> progam pengembangan perusahaan. Tidak hanya sebatas itu, tapi karyawan mengaplikasikan secara langsung konsep mereka di lapangan. Dalam hal ini, karyawan tersebut akan merasa bahwa keberadaanya diperusahaan diakui dan memacu <em>mindset</em> untuk menunjukkan bahwa dirinya mampu untuk melakukannya. Dari sini, karyawan akan belajar banyak kesulitan dan pengendalian diri untuk proses perubahan menjadi versi terbaik dari dalam dirinya.</p>\r\n\r\n<p style="margin-left:35.45pt;">Masih dalam <em>line mindset, </em>sebagian besar pemimpin memberikan motivasi yang salah terhadap karyawan perusahaan. Salah satunya adalah &ldquo;membandingkan kesuksesan perusahaan lain menjadi tolak ukur nilai prestasi yang mereka capai&rdquo;. Seolah-olah <em>mindset</em> tersebut benar, namun kenyataannya justru akan melemahkan <em>mindset </em>kepercayaan diri dan mematahkan performa atau <em>passion </em>mereka.</p>\r\n\r\n<p style="margin-left:35.45pt;">Setiap sebuah tim mempunyai seni bekerja dan kapasitas yang berbeda. Rasa kepercayaan antar satu tim adalah kunci dari pencapaian target yang gemilang. Seharusnya yang harus ditanam dalam <em>mindset </em>karyawan adalah &ldquo;Sebesar apapun target yang dicapai, haruslah tetap berdiri optimis dan mempunyai rasa penerimaan yang besar&rdquo;.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan:</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Tanamkan <em>mindset</em> pada karyawan bahwa kecerdasan saja tidaklah cukup untuk membangun perusahaan yang besar. Ada yang lebih besar dari pada itu, ia adalah kekuatan perasaan. Perasaan yang lebih untuk memahami tujuan <em>end working</em>, perasaan yang lebih untuk mencintai pekerjaan dan perasaan yang lebih untuk melakukan penerimaan yang besar ketika diri kecewa karena gagal mencapai target. Tidak semua hal harus diakui diatas kertas putih. Setiap hal punya gaya dan percepatan masing-masing, serta berkembang sesuai waktunya. Jangan biarkan perasaan karyawan larut dalam rasa terburu-buru karena perbedaan titik kesuksesan.</p>\r\n\r\n<p><strong>2. Emotional approach method</strong></p>\r\n\r\n<p style="margin-left:35.45pt;"><em>Emotional approach method</em> adalah konsep pendekatan emosional, untuk menciptakan rasa suka dan bahagia dalam bekerja. Konsep pendekatan emosional ini untuk meningkatkan frekuensi cara berfikir positif serta meremajakan energi.</p>\r\n\r\n<p style="margin-left:35.45pt;">Berfikir positif merupakan salah satu faktor terbesar yang mempengaruhi performa kinerja karyawan.&nbsp; <em>Emotional approach method</em> dilakukan dengan cara menciptakan komunikasi yang baik. Sebenarnya banyak hal yang mampu diciptakan dari sebuah komunikasi. Salah satunya adalah &nbsp;menjalin <em>feelings communication</em> &nbsp;atau dikenal dengan istilah komunikasi perasaan.</p>\r\n\r\n<p style="margin-left:35.45pt;">Dalam riset yang saya lakukan, kebanyakan seorang pemimpin gagal dalam menjalin komunikasi perasaan terhadap karyawan, sehingga menyebabkan buruknya hubungan kerja sama tim. Hal ini tentu tidak menguntungkan bagi perusahaan, karena dapat merusak performa karyawan yang memiliki <em>passion</em> dan potensi yang baik.</p>\r\n\r\n<p style="margin-left:35.45pt;">Selama ini, sebagian besar seorang pemimpin fokus dalam pengembangan dari segi teknis dan mengabaikan <em>development feelings communication</em>. Ini tidaklah buruk sebenarnya, namun hal ini hanya akan memberikan dampak hanya 50% terhadap pengembangan diri karyawan.</p>\r\n\r\n<p style="margin-left:35.45pt;">Perasaan bukan soal fakta, angka maupun buku teori, melainkan tentang sebuah <em>instinct, </em>sebuah pemikiran baru untuk sebuah dorongan dari dalam diri, untuk menjadi sesuatu yang berbeda dari sebelumnya. Berbeda dalam artian sebuah perubahan baru menjadi versi yang lebih baik dari sebelumnya.</p>\r\n\r\n<p style="margin-left:35.45pt;">&ldquo;Makna kehidupan adalah untuk menemukan bakatmu dan tujuan hidup adalah untuk memberikannya&rdquo; Pablo piccaso.</p>\r\n\r\n<p style="margin-left:35.45pt;">Seperti apa yang dikatakan Pablo piccaso, bahwa kehidupan akan menjadi lebih baik ketika diri menemukan bakat dan tujuan. Seperti halnya bekerja, ada tujuan berarti ada alasan untuk merubah pola fikir bagaimana cara bekerja yang baik.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan:</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Seorang pemimpin harus menjadi pribadi <em>open mind, </em>dan menjadi pribadi lebih perhatian dengan menjadi karakter yang lebih sadar untuk mengamati realitas dari pada menjadi penonton. Dalam konteks ini, ada hal yang menjadi garis besar bahwa ada yang menjadi pembatas kesuksesan, ia adalah komunikasi yang buruk. Pemimpin harus menciptakan komunikasi yang baik dari level karyawan paling kecil dengan cara menjadi pendengar yang baik dan menjadi <em>the</em> <em>good respect for employee ideas.</em></p>\r\n\r\n<p><strong><em>3. Find a way to be a winner</em></strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Tidak mudah menjadi pribadi yang menginspirasi diperusahaan, pribadi yang mampu menjadi promotor perubahan. <em>Find a way to be a winner</em>,&nbsp; tentang sebuah perjalanan menuju pribadi pemenang.</p>\r\n\r\n<p style="margin-left:35.45pt;">Terkadang karyawan bekerja dengan <em>mindset </em>yang salah. Mereka hanya berfikir bagaimana caranya mendapatkan uang saja dan mengabaikan rasa produktifitas.</p>\r\n\r\n<p style="margin-left:35.45pt;">Banyak karyawan bekerja dengan <em>mindset</em> yang merelakan mimpinya, memilih untuk bekerja rata-rata, dan cara bekerja yang gampang. Itulah salah satu menjadi faktor terbesar yang membuat perusahaan tidak berkembang. Salah satu hal yang akan membuat perubahan yang besar adalah merevolusi sudut pandang karyawan dalam etika bekerja.</p>\r\n\r\n<p style="margin-left:35.45pt;">Seperti yang dikatakan Wayne Dyer, terkadang perlu mengubah cara pandang terhadap sesuatu, maka sesuatu yang kita lihat akan berubah.</p>\r\n\r\n<p style="margin-left:35.45pt;">AI bekerja dari segi perasaan untuk mendorong melahirkan potensi yang baru. Ada tiga hal yang akan merubah sudut pandang karyawan dalam pekerjaannya yakni waktu, alasan dan selamanya.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Waktu</strong>, seberapa jauh diri untuk menjelajah dan menemukan tingkat kepercayaan, harga diri, dan kesadaran&nbsp; yang baru. C.S Lewis berkata, &ldquo; Dirimu tidak mempunyai jiwa, tapi dirimu lah jiwa itu sendiri dan jiwa dirimulah yang memiliki tubuh&rdquo; . Ketika <em>mindset </em>perasaan kita bekerja untuk menyadari bahwa diri ini abadi, kekal, penuh pengetahuan, penuh kebahagiaan dan hidup dari ruang dimana kita mampu menerangi seluruh dunia, saat itulah diri ini menjadi seorang pemenang.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Alasan</strong>, sekuat apapun tantangan pekerjaan yang anda lalui, pasti anda akan menemukan satu titik alasan untuk bertahan, bahkan memicu diri untuk berevolusi menjadi sesuatu yang besar meski mengorbankan segalanya, dan mungkin alasannya adalah orang-orang yang anda cintai.</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Selamanya</strong>, tidak akan ada kata akhir dalam sebuah pekerjaan. Seorang karyawan sejati akan terus berkarya meski diri mereka terbuang. Mereka akan hanya memikirkan bagaimana caranya menciptakan karya di perusahaan. &nbsp;</p>\r\n\r\n<p style="margin-left:35.45pt;"><strong>Penerapan</strong></p>\r\n\r\n<p style="margin-left:35.45pt;">Dalam target pencapaian perusahaan terkadang banyak sekali hal-hal yang tidak tercapai. Seorang pemimpin harus mengajarkan pada karyawan bahwa tidak semua pencapaian harus ditentukan oleh angka, karena dalam kegagalan, akan menemukan kekuatan terbesar dalam diri. Sukses tidak dibangun diatas kesuksesan. Sukses dibangun diatas kegagalan, atas rasa frustasi, dan atas ketakutan yang harus dikalahkan. Tanamkan <em>mindset</em> rasa kepercayaan diri yang tangguh pada karyawan, bahwa saat gagal bukan berarti semua telah berakhir namun disitulah diri sedang diarahkan ke dalam sesuatu yang lebih baik. (Dhanavya_Enero,Okta_UMM)</p>\r\n\r\n<p style="margin-left:35.45pt;">&nbsp;</p>\r\n\r\n<p style="margin-left:18.0pt;">Sumber gambar : www.techno.id</p>\r\n\r\n<p style="margin-left:18.0pt;">Situs youtube jay shetty</p>\r\n	1	0	2019-03-29 16:39:53	http://ptpn10.co.id/uploads/artikel_menjadi_karyawan_terbaik.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kecerdasan-buatan-ai-inspirasi-menjadi-karyawan-versi-terbaik
133	B	Sulap Sampah Jadi Limbah	<p><span style="font-family:times new roman,times,serif;">PG Gempolkerep, Gedeg, Kabupaten Mojokerto, ikut terlibat menjaga kebersihan lingkungan kerja maupun masyarakat di sekitar perusahaannya. Salah satu buktinya, terlihat dari Budidaya Lalat BSF <em>(Black Soldier Fly).</em></span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Langkah budidaya ini merupakan salah satu visi PT. Perkebunan Nusantara X sebagai perusahaan agribisnis yang berwawasan lingkungan dan bertujuan untuk mewujudkan industri yang berkelanjutan dalam rangka efisiensi dan efektivitas penggunaan sumber daya alam. Sehingga, mampu menyelaraskan pembangunan industri dengan kelangsungan dan kelestarian fungsi lingkungan hidup dan memberikan manfaat bagi masyarakat. Perusahaan di bawah naungan PT. Perkebunan Nusantara X tersebut ikut menjaga kebersihan lingkungan kerja maupun masyarakat di sekitar perusahaan yang berada di Kabupaten Mojokerto, terkait dengan dampak pencemaran limbah sampah (rumah tangga maupun pasar). Ketika sampah tidak dikelola dengan baik, akan menjadi sumber malapetaka. Salah satunya adalah penyakit. Karena dengan sampah yang dibiarkan secara liar akan menjadi tempat berkumpulnya lalat hijau yang dalam ilmu kesehatan sebgai katalisator/penghubung kuman ke sebuah makanan maupun minuman yang dihinggapi. Tindakan selanjutnya biasanya sampah dibakar. Perlakuan tersebut mengakibatkan pencemaran udara akibat asap dari pembakaran.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Kegiatan Budidaya Lalat BSF sebagai pengurai sampah organik ini disambut baik oleh perangkat desa dan ibu-ibu tim penggerak PKK Desa Gempolkerep. Acara serah terima bantuan Biopon dan Magot ini dihadiri semua perangkat desa, <em>General Manager</em> Pabrik Gula Gempolkerep, H. Agus Minhandoko, S.P, M.M beserta semua jajaran manajer dan ketua umum serikat pekerja, perwakilan dari Kecamatan Gedeg, dan ibu-ibu tim penggerak PKK Desa Gempolkerep.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">&ldquo;Ini nantinya bisa membawa atau memberikan PAD untuk Desa Gempolkerep yang sedang giat-giatnya untuk menggali Pendapatan Asli Daerah,&rdquo; ujar Kepala Desa Gempolkerep, H. Jani Suprayogi.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Ia berharap, kegiatan ini bisa menimbulkan energi perkembangan Desa Gempolkerep sekaligus hubungan industri dengan perusahaan.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Di lokasi yang sama, <em>General Manager</em> PG Gempolkerep, H. Agus Minhandoko, S.P, M.M, menyampaikan manfaat magot bisa dikembangkan. Sehingga menjadi bentuk kepedulian pabrik gula terhadap lingkungan. Khususnya di Desa Gempolkerep dan lingkungan sekitarnya,&rdquo; paparnya.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Dengan fenomena terkait dampak salah satu limbah sampah, maka Pabrik Gula Gempolkerep dengan mengucap <em>Bismillahirrohmanirrohim </em>melakukan budidaya BSF atau Lalat Tentara Hitam sebagai solusi atas limbah sampah tersebut. Sehingga bisa mengubah sampah menjadi berkah. (dik/ron_GK_Put_Sekper)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n	18	0	2020-03-05 07:45:07	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-03-05_at_07.38.15.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sulap-sampah-jadi-limbah
131	B	PTPN X Adakan Assesment GCG Untuk Kemajuan Perusahaan	<p><span style="font-family:times new roman,times,serif;">Selama 1 bulan ke depan, Badan Pemeriksa Keuangan Perusahaan (BPKP) akan mengawal kegiatan <em>Entry Meeting Assesment Good Corporate</em> <em>Governance</em> (GCG) 2019 di PT. Perkebunan Nusantara (PTPN) X. Kegiatan yang dimulai dari hari Senin, 2 Maret 2020 hingga 2 April mendatang, resmi dilaksanakan dengan ditandai penyerahan surat tugas dari Bapak Yunaedi selaku Kepala Perwakilan BPKP Prov. Jawa Timur kepada masing-masing Direktur Utama PT. Perkebunan Nusantara X, XI, dan XII.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Kegiatan yang dihadiri oleh Dewan Komisaris dan Jajaran Direktur dari PT. Perkebunan Nusantara (PTPN) X, XI, dan XII, serta Kepala Perwakilan BPKP Prov. Jawa timur membahas mengenai materi <em>assesment</em> GCG yang dijelaskan secara mendetil tentang apa yang dimaksud dengan GCG dan apa tujuannya. <em>Good Corporate Governance </em>(GCG) merupakan prinsip-prinsip yang mendasari suatu proses dan mekanisme pengelolaan perusahaan berlandaskan peraturan perundang-undangan dan etika berusaha. Penerapan prinsip GCG / tata kelola perusahaan yang baik dapat meningkatkan kinerja perusahaan dan nilai ekonomi jangka panjang bagi para investor dan pemangku kepentingan (<em>stakeholder</em>).</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">&ldquo;Penerapan <em>Good Corporate Governance</em> (GCG) adalah keniscayaan yang harus dilaksanakan oleh setiap perusahaan, termasuk BUMN. Tujuannya satu, yakni terciptanya peningkatan <em>corporate value</em>. GCG bukan hanya soal <em>transparancy</em> dan <em>efficiency</em>, tapi juga soal profesionalitas, akuntabilitas serta tanggungjawab&nbsp; dalam menjalankan roda korporasi&rdquo;, ungkap Dwi Satrio Annurogo selaku Direktur Utama PT. Perkebunan Nusantara (PTPN) X.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">GCG juga bukan hanya soal <em>integrity </em>dan <em>fairness</em>, tapi di dalamnya juga ada kompetensi dan <em>managerial capacity</em>. Dengan penerapan GCG, eksekutif perusahaan tidak sekadar memenuhi&nbsp; kewajiban&nbsp; secara&nbsp; normatif kepada pemegang saham, tapi juga kepada <em>stakeholders</em>. Implementasi&nbsp; GCG bukan semata bentuk kepatuhan terhadap regulasi, tapi lebih kepada kebutuhan etik.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Maka dari itu dengan adanya kegiatan ini, yang merupakan tindak lanjut atas pertemuan di Bandung, Perkebunan Nusantara grup kembali meminta bantuan kepada Badan Pemeriksa Keuangan Perusahaan (BPKP) guna memberikan penilaian tahun 2020 agar penerapan GCG di PTPN lebih baik lagi. &ldquo;Sekali lagi, saya mewakili Jajaran Direksi mengucapkan selamat datang dan semoga penilaian bapak/ibu Tim <em>Assesment</em> BPKP menghasilkan putusan-putusan yang strategis guna kemajuan perusahaan kami ke depan&rdquo;, pungkas Dwi.</span></p>\r\n	19	1	2020-03-03 12:06:09	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-03-03_at_12.02.04.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-adakan-assesment-gcg-untuk-kemajuan-perusahaan
150	B	PTPN X Salurkan CSR Melalui Bedah Rumah   	<p style="text-align: justify;">Selasa (12/05), PT Perkebunan Nusantara (PTPN X) melaksanakan progam <em>Corporate Social Responsibility </em>(CSR) berupa Bedah Rumah Tidak Layak Huni (RTLH) di Desa Ketami dan Desa Tugurejo, berdekatan dengan Pabrik Gula Pesantren Baru Kota Kediri. Acara ini dihadiri secara langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo.</p>\r\n\r\n<p style="text-align: justify;">Sebanyak dua unit rumah yang terletak di Desa Ketami dan Desa Tugurejo telah selesai direnovasi, dimana proses pengerjaannya dilakukan oleh warga sekitar selama satu bulan. Dana CSR untuk kegiatan bedah rumah kali ini sebesar 60 juta rupiah.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapannya, program bedah rumah dapat memberikan manfaat bagi semua pihak, khususnya dalam hal peningkatan kesejahteraan masyarakat di sekitar wilayah pabrik gula. Kegiatan CSR ini merupakan wujud BUMN Untuk Indonesia, dimana PTPN X berupaya terus memberikan manfaat bagi masyarakat sekitar,&rdquo; terang Dwi.</p>\r\n\r\n<p style="text-align: justify;">Dikerjakan selama satu bulan dengan cara memberdayakan warga sekitar, program ini dimaksudkan agar tidak hanya pemilik rumah yang mendapatkan manfaat dari CSR PTPN X, tetapi warga sekitar juga turut merasakan.</p>\r\n\r\n<p style="text-align: justify;">Dwi juga menyampaikan terima kasih kepada warga di Desa Ketami dan Desa Tugurejo atas dukungannya selama ini kepada PG Pesantren Baru. Program CSR lainnya juga telah dilakukan oleh PTPN X khususnya di sekitar wilayah kerja, baik di pabrik gula maupun kebun tembakau. Contohnya, pengiriman tim tanggap bencana, pembangunan rumah ibadah, pembangunan irigasi, pemberian bantuan pengobatan, dan pelatihan kepada petani. (Sanggra_UB, CIN_Sekper)</p>\r\n	5	0	2020-05-12 13:49:55	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-05-12_at_1.44.31_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-salurkan-csr-melalui-bedah-rumah
24	B	PTPN X Bekerjasama dengan PT PP (Persero) Tbk. Gelar Pelatihan Petani Tebu Rakyat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X bekerjasama dengan PT Pembangunan Perumahan (Persero) Tbk. mengadakan pelatihan untuk para petani tebu milenial di Klub Bunga Butik Resort, Batu (5/12).</p>\r\n\r\n<p style="text-align: justify;">Dibuka langsung oleh Direktur Komersil PTPN X, Slamet Djumantoro, pelatihan ini diikuti oleh 35 orang petani muda tebu rakyat binaan pabrik gula PG Modjopanggoong. Menurut Slamet, industri gula membutuhkan sentuhan dan perhatian para generasi muda. Karena di tangan generasi mudalah perkembangan industri tebu ke depan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Anda semua merupakan pahlawan bagi Ketahanan Pangan Indonesia ke depan. Untuk itu diharapkan dengan pelatihan ini akan mampu menggerakkan minat generasi muda untuk lebih proaktif lagi sehingga dapat meningkatkan daya saing yang dimiliki, &quot; jelasnya.</p>\r\n\r\n<p style="text-align: justify;">Dijelaskan, bahwa masih banyak potensi yang belum digali dari industri tebu. Diharapkan dengan keterlibatan generasi muda yang mempunyai kreativitas semua potensi industri tebu dapat dimanfaatkan.</p>\r\n\r\n<p style="text-align: justify;">Di samping itu, Panji Decca Dunianto, Manajer Unit Program Kemitraan dan Bina Lingkungan (PKBL) PT PP (Persero) Tbk mengatakan bahwa&nbsp;bantuan yang diberikan merupakan bentuk kepedulian perusahaan terhadap lingkungan sekitar dan kali ini diperuntukkan untuk pelatihan bagi para petani milenial.</p>\r\n\r\n<p style="text-align: justify;">&quot;Diharapkan dengan adanya pelatihan ini sinergi antara PT PP dan PTPN X ini maka dapat meningkatkan kinerja dari kedua belah pihak dan dapat menjadi motor penggerak bagi para petani milenial untuk dapat meningkatkan daya saing yang ada &quot; jelas Panji.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Dalam pelatihan ini, beberapa materi pun diberikan antara lain motivasi dan spirit usaha, budidaya dan aplikasi, mekanisasi tanaman tebu, <em>core sampler</em>, <em>e-farming,</em> dan rendemen. (Red2, PUT_Sekper)</p>\r\n	3	0	2019-12-05 17:57:58	http://ptpn10.co.id/uploads/5de87d25-d9c8-4477-af12-1718e3e14fb4-web.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-bekerjasama-dengan-pt-pp-persero-tbk-gelar-pelatihan-petani-tebu-rakyat
163	B	PT Enero Resmi Produksi ENA Grade	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melalui anak usahanya, PT Energi Agro Nusantara (Enero) Mojokerto memulai operasional produksi Extra Neutral Alcohol (ENA) grade. Peresmian operasional ENA grad tersebut dilakukan secara langsung oleh Menteri Perdagangan RI, Agus Suparmanto, Rabu (29/7). Produksi ENA grade merupakan salah satu upaya hilirisasi dan diversifikasi yang dilakukan untuk meningkatkan daya saing dan profitabilitas perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Agus Suparmanto mengapresiasi dan mendukung penuh inovasi yang dilakukan PTPN X dan PT Enero guna menjawab persaingan dan permintaan pasar yang semakin kompetitif. Ia juga mendorong agar PT Enero bisa menembus pasar ekspor.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya mengapresiasi proses hilirisasi dan diversifikasi yang dilakukan oleh PT Enero. Harapannya supaya Enero dapat melakukan pelepasan produk ke pasar ekspor,&rdquo; tambah Agus.</p>\r\n\r\n<p style="text-align: justify;">Untuk menunjang operasional, PT Enero juga melakukan modernisasi pabrik meliputi modifikasi dan penambahan peralatan untuk&nbsp; meningkatkan&nbsp; efisiensi produksi. Selain itu PT Enero juga akan meningkatkan keberagaman produk, seperti memproduksi Technical Alcohol 96,5% untuk industri spiritus, Food Grade CO2 dengan kapasitas 50 ton/hari, dan sebagainya.</p>\r\n\r\n<p style="text-align: justify;">Inovasi lain yang juga dilakukan oleh PT Enero di tengah pandemi COVID-19 adalah dengan mengembangkan produk turunannya berupa <em>hand sanitizer</em> dengan nama dagang Caryz. Caryz telah teruji klinis dari laboratorium eksternal yang direkomendasikan Kementerian Kesehatan RI serta telah memenuhi persyaratan WHO dengan kadar alkohol<span dir="RTL">&plusmn; </span>75%. (Alma_UB, CIN_Sekper)</p>\r\n	0	0	2020-07-29 15:59:57	http://ptpn10.co.id/uploads/Peresmian_Operasional_Produksi_ENA_-_PT_Enero_.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pt-enero-resmi-produksi-ena-grade
82	G	Kunjungan dan Silaturahmi Direktur Utama PTPN X ke Mako Lanud Muljono Surabaya	<p>Rabu (8/1) Kunjungan Direktur Utama PTPN X didampingi oleh Direktur Operasional, Kepala Sekretaris Perusahaan, Kepala Bagian Budidaya, dan Kepala Biro Hukum kepada Komandan Lanud Muljono Surabaya diterima oleh Kol. Pnb. M. Somin S.sos.</p>\r\n<p>Kunjungan balasan kali ini dalam rangka membahas rencana sewa lahan milik TNI AU yang berada di Raci Pasuruan dan Lamongan untuk penanaman tebu.</p>	30	0	2020-01-09 15:14:13	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
104	G	Kunjungan Komisaris Utama Dalam Rangka Monitoring Kemajuan Pekerjaan Program PMN	<p>Direktur Operasional Aris Toharisman menerima kunjungan kerja dari Dewan Komisaris PT Perkebunan Nusantara III (Persero) yang dipimpin oleh Komisaris Utama Arif Satria dalam rangka monitoring kemajuan pekerjaan program PMN yang dilaksanakan di PTPN X, PTPN XI &amp; PTPN XII.</p>\r\n<p>Hadir juga dalam kegiatan tersebut Direktur beserta staff dari kedua PTPN tersebut. Dalam kesempatan ini juga disampaikan tentang program e-farming yang telah dilakukan oleh PTPN X untuk pengelolaan bahan baku tebu di lahan petani yang dilanjutkan dengan meninjau lokasi proyek PMN di PT Enero dan PG Gempolkrep. (31/1)</p>	22	0	2020-02-04 08:32:54	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
25	B	PTPN X Resmikan Hunian Bedah Rumah 	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menunjukkan kepeduliannya kepada masyarakat dengan menyalurkan&nbsp;<em>Corporate Social Responsibility</em>&nbsp;(CSR) melalui program bedah rumah. Acara kali ini merupakan penyerahan secara simbolis rumah yang telah selesai di renovasi kepada pemiliknya, Nursi&rsquo;ah pada Rabu, (4/12). Sebelumnya, PTPN X telah secara resmi memulai proses bedah rumah tersebut yang berada di Desa Kawangrejo, Kecamatan Mumbulsari, Jember pada 30 November lalu.</p>\r\n\r\n<p style="text-align: justify;">Penyerahan kali ini dihadiri oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo didampingi oleh Pejabat Puncak PTPN X dan GM Kebun Ajong Gayasan, Dwi Aprilia Sandi. Kehadiran Direktur Utama PTPN X ini untuk memastikan bahwa kegiatan CSR dalam pengerjaan rumah berjalan sesuai dengan ketentuan yang telah dibuat.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapannya, program bedah rumah dapat memberikan manfaat bagi pemilik rumah. Kehadiran PTPN X dalam acara bedah rumah ini sebagai wujud dari tanggungjawab dan kepedulian terhadap kesejahteraan masyarakat wilayah kerja Kebun Ajong Gayasan,&rdquo; ujar Dwi. (Valen_UWM, CIN_Sekper)</p>\r\n	7	0	2019-12-04 20:00:22	http://ptpn10.co.id/uploads/IMG_7253.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-resmikan-hunian-bedah-rumah
50	A	Ethanol Fuel Grade, Alternatif Baik Solusi Global Warming	<p style="text-align: justify;">Kebutuhan konsumsi Energi Baru Terbarukan (EBT) di Indonesia terus mengalami kenaikan seiring dengan berkurangnya cadangan bahan bakar fosil. Pada tahun 2025, kebutuhan akan EBT ditargetkan mencapai 23% dari total energi yang dibutuhkan (KESDM, 2015). Disisi lain kebutuhan energi di Indonesia khususnya bahan bakar minyak (BBM) terus mengalami kenaikan dari tahun ke tahun. Tingkat konsumsi rata-rata meningkat 6% setiap tahunnya, sementara cadangan dan produksi BBM mengalami penurunan 10%, setiap tahunnya (Kuncahyo dkk., 2013).</p>\r\n\r\n<p style="text-align: justify;">Salah satu dampak terbesar dari selalu digunakannya bahan bakar fosil adalah <em>global warming</em>. Pada tahun 2010 ada lebih dari 1 miliar kendaraan bermotor diseluruh dunia dan diproyeksikan akan terus mengalami peningkatan. Hal ini tentunya meningkatkan kadar emisi CO<sub>2</sub>&nbsp;dipermukaan bumi.</p>\r\n\r\n<p style="text-align: justify;">Karbondioksida di atmosfer mencapai level tertinggi tahun 2016. Kondisi ini membuat suhu bumi semakin panas dan berbahaya buat generasi mendatang.&nbsp;Hal ini disampaikan badan World Meteorological Organization (WMO). Menurut laporan tersebut, kadar&nbsp;karbondioksida mencapai rekor tertinggi dengan konsentrasi CO<sub>2</sub>&nbsp;di angka 403,3 bagian per juta (ppm) pada tahun&nbsp;2016, naik dari angka 400 bagian per juta (ppm) di tahun 2015. &ldquo;Tanpa upaya mengurangi kadar CO<sub>2</sub>&nbsp;dan emisi gas rumah kaca, kita akan berada di kondisi membahayakan akhir abad ini, melebihi target yang juga kita ingin capai dari kesepakatan Paris,&rdquo; ungkap Petteri Taalas, Sekjen WMO dalam pernyataan resminya seperti dilansir dari&nbsp;CNBC.</p>\r\n\r\n<p style="text-align: justify;"><em>Global warming</em> bisa menjadi salah satu penyebab masalah global yang kompleks apabila tidak ada langkah yang positif dan cara penanggulangan yang tepat. Dampak yang paling berbahaya dari <em>global warming </em>adalah lapisan ozon mulai menipis dimana fungsi utamanya menyelimuti bumi. Oleh karena itu pemerintah menyusun berbagai opsi pemanfaatan EBT, salah satunya adalah dengan memanfaatkan Bahan Bakar Nabati (BNN). Salah satu jenis BBN berbasis&nbsp;<em>biofuel</em>&nbsp;yang sudah diterapkan pemerintah sampai saat ini adalah bieotanol (BPPT, 2015).</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Ethanol merupakan terobosan bioteknologi yang bisa menjadi alternatif bahan bakar energi terbarukan yang ramah lingkungan. Ethanol dikembangkan dengan teknologi modern, salah satunya ethanol dari pengolahan bahan dasar molasses (tetes tebu) hingga tingkat kemurnian mencapai 99.5%.</p>\r\n\r\n<p style="text-align: justify;">Ethanol fuel grade 99.5% merupakan bio-energi yang mampu menjadi pengganti bahan bakar fosil. Salah satu keunggulan bahan bakar etanol yang paling jelas adalah</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Bahan bakar etanol merupakan sumber energi terbarukan, yang berarti bahwa bahan bakar etanol tidak terbatas seperti bahan bakar fosil.</li>\r\n\t<li style="text-align: justify;">Pembakaran etanol lebih bersih daripada bahan bakar fosil yang berarti mengurangi emisi gas rumah kaca. Hal ini merupakan keuntungan etanol yang paling signifikan bagi lingkungan dibandingkan dengan bahan bakar fosil.</li>\r\n\t<li style="text-align: justify;">Bioethanol memiliki nilai oktan yang lebih tinggi dengan nilai (110)</li>\r\n\t<li style="text-align: justify;">Bioethanol memiliki kadar emisi yang rendah, penurunan emisi NO sebanyak 25%-32%, penurunan emisi VOC sebanyak 20%, dan penurunan emisi CO 12%-24%. Emisi CO2 juga lebih rendah, karena setiap mol bioethanol hanya menghasilkan 2 mol CO2. Berbeda dengan bensin yang dapat menghasilkan hingga 8 mol CO2.</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Di era globalisasi sekarang sudah ada beberapa jalan keluar untuk hal ini, yang kita butuhkan sekarang adalah kemauan politik global dan respons akan kondisi darurat dan genting saat ini. Faktanya bahwa <em>bio-fuel grad</em>e ethanol mampu mengurangi kadar CO2 dipermukaan bumi apabila digunakan secara maksimal dalam segi bahan bakar, sehingga ethanol bisa menjadi salah satu alternatif yang baik untuk menjadi solusi mengatasi permasalahan isu global warming.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Referensi:</p>\r\n\r\n<p style="text-align: justify;">Rahman Indra.<strong>&rdquo;</strong>&nbsp;Kadar Karbon Dioksida di Atmosfer Capai Level Tertinggi&rdquo;.www.cnnindonesia.com. 31 November 2017.&nbsp;19 Desember 2018.https://www.cnnindonesia.com/gaya-hidup/20171031142925-255-252425/kadar-karbon-dioksida-di-atmosfer-capai-level-tertinggi</p>\r\n\r\n<p style="text-align: justify;">https://en.wikipedia.org/wiki/Alcohol_fuel</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: www.maxmanroe.com</p>\r\n\r\n<p>&nbsp;</p>\r\n	1	0	2019-02-07 16:58:53	http://ptpn10.co.id/uploads/gambar_artikel_etanol.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ethanol-fuel-grade-alternatif-baik-solusi-global-warming
118	A	Sumbangsih Enero pada Dunia Pendidikan Jember 	<p><strong>Mojokerto</strong>&nbsp;(3/2) &ndash; PT. Energi Agro Nusantara (Enero) kembali memberikan sumbangsih pada dunia pendidikan Indonesia pada umumnya, dan secara khusus di daerah Jember. Pada hari Senin tanggal 27 Januari 2020 lalu, Enero berpartisipasi dalam memperkenalkan pendidikan tinggi terutama dalam bidang Teknik Kimia di Universitas Jember (UNEJ). Acara tersebut selain dihadiri akademisi Universitas Jember, juga mengundang perwakilan siswa-siswi dan guru-guru SMA dan yang setara di daerah Jember, Jawa Timur. Acara yang bertemakan &ldquo;Pengenalan Program Studi S1 Rekayasa/Teknik Kimia Universitas Jember dalam rangka Mengelola Potensi Wilayah Jawa Timur&rdquo; tersebut berlangsung dengan dinamis dan meriah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Perwakilan dari PT. Enero yaitu Sam Alfian Yusuf Helmi (Manajer Proses dan Project) menyampaikan materi mengenai Pengenalan Teknik Kimia dan Proses Produksi Bioethanol. Materi Pengenalan Teknik Kimia menjelaskan secara umum tentang bidang Teknik Kimia, potensi karir dan manfaatnya dalam kehidupan sehari-hari. Sedangkan dalam Proses Produksi Bioethanol dijelaskan secara singkat dan padat agar dapat dimengerti oleh para siswa-siwi SMA yang menghadiri. Selain itu turut pula menghadiri Ariel Hidayat (Manajer Biogas dan Fertilizer Plant) sebagai perwakilan alumni Universitas Jember yang berkarir di PT. Enero.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Acara berjalan dengan interaktif serta terjalin diskusi yang cukup mendalam antara peserta dan pemateri. Banyak diantara peserta bertanya mengenai masa depan lulusan-lulusan Teknik Kimia. Pemateri dari Universitas Jember yaitu Kaprodi Teknik Kimia, Bp. Boy Arief Fachri, menjelaskan mengenai program studi Teknik Kimia, keahlian yang diperlukan dan kelengkapan fasilitas-fasilitas yang ada. Beliau menjelaskan bahwa, &lsquo;Kami berharap dengan adanya prodi Teknik Kimia ini bisa semakin melengkapi Universitas Jember, yang dikenal sebagai IPB-nya Indonesia bagian timur. Selain berfokus pada pertanian, dengan adanya industri-industri berbasis pertanian maka akan menjadi nilai tambah daerah Jember.&rdquo; (Sam Alfian YH_Enero, Put_Sekper)</p>\r\n	1	0	2020-02-04 09:02:31	http://ptpn10.co.id/uploads/5e38d043-d420-416d-9501-2b24e3e14fb4-Enero.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sumbangsih-enero-pada-dunia-pendidikan-jember
28	B	2020, Holding Perkebunan Targetkan PTPN Gula Sumbang Laba Rp 53 Milliar	<p style="text-align: justify;">Di penghujung tahun 2019, Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero) telah melakukan evaluasi kinerja seluruh PTPN gula. Banyak hal yang harus diperbaiki agar kinerja di musim giling tahun 2020 mendatang lebih baik dari kinerja tahun 2019, bahkan Holding Perkebunan Nusantara menargetkan PTPN Gula bisa menyumbang laba sebesar Rp 53 Milliar.</p>\r\n\r\n<p style="text-align: justify;">Direktur Produksi dan Pengembangan Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero), Mahmudi mengungkapkan optimisme di industri gula harus tetap terjaga apapun yang terjadi. Banyak aspek yang mempengaruhi kinerja industri gula bahkan aspek politis pun turut memberi warna. Namun, apapun aspek yang menghadang, industri gula harus terus maju dan berkembang.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kenyataan, kinerja keuangan industri gula dari tahun ke tahun tidak pernah berkontribusi positif,&quot; kata Mahmudi pada acara Evaluasi Giling Tahun 2019 dan Strategi Giling Tahun 2020 yang dihadiri seluruh direksi dan general manager pabrik gula PTPN Grup dan PT RNI di Kantor Pusat PTPN X, Sabtu (30/11).</p>\r\n\r\n<p style="text-align: justify;">Mahmudi mengungkapkan setiap tahun, Holding Perkebunan Nusantara merencanakan dan menargetkan industri gula profit tapi kenyataannya sejak tahun 2016 hingga 2019 ini masih merugi.</p>\r\n\r\n<p style="text-align: justify;">&quot;Untuk musik giling 2020, Holding Perkebunan Nusantara merencanakan PTPN Gula bisa profit sebesar Rp 53 Milliar,&quot; sebutnya.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Apa yang harus dilakukan agar profit, sambung Mahmudi, perencanaan di masing-masing PTPN harus terus di kawal, khususnya di aspek operasional.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Terobosan-terobosan operasional diharapkan akan ada untuk menjawab tantangan menjamur nya pabrik gula swasta dan menurunnya areal tebu,&quot; paparnya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Ditempat yang sama, Plt. Deputi Usaha Industri Agro dan Farmasi Kementerian BUMN, Imam Paryanto mengharapkan agar di musim giling Tahun 2020 mendatang, PTPN Gula dan PT RNI bisa menyumbang laba. Gempuran pabrik gula swasta tidak bisa dihindarkan mengingat jumlah produksi di dalam negeri belum memenuhi kebutuhan yang ada.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sebelum berakhir, seluruh direksi PTPN Gula dan PT RNI melakukan Penandatanganan komitmen pencapaian kinerja tahun 2020. (Red3, CIN_Sekper)</p>\r\n	5	0	2019-12-02 15:28:28	http://ptpn10.co.id/uploads/rapat_eval_giling_2019.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/2020-holding-perkebunan-targetkan-ptpn-gula-sumbang-laba-rp-53-milliar
42	B	PTPN X Raih Dua Penghargaan IBA 2019	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X meraih dua penghargaan dalam ajang Indonesia BusinessAward 2019. Penghargaan yang di terima langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo meliputi The Best CEO in Agro Industry 2019 dan The Best Corporate Performance in Agro Industry 2019. Ajang yang mengambil tema &lsquo;<em>Business Transformation for Excellence Performance&rsquo; </em>ini diselenggarakan di Gedung BPPT, Jakarta (11/6).</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X selalu memperbaiki kinerjanya setiap tahun. Penghargaan yang telah diraih ini merupakan sumbangsih dari seluruh karyawan PTPN X. Penghargaan ini tentunya juga didapatkan atas dukungan seluruh <em>stakeholder</em>,&rdquo; terang Dwi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Sebagai salah satu anak perusahaan dari PTPN III (Persero) dan juga sebagai&nbsp;<em>leading company</em>&nbsp;dalam industri gula di Indonesia, PTPN X selalu berupaya berkontribusi maksimal dalam meningkatkan kinerja perusahaan dan menjaga kesejahteraan <em>stakeholder</em>, khususnya petani tebu. Melalui beberapa program yang telah dilakukan antara lain: e-Farming, Pelatihan petani tebu milenial, pemberian bantuan pupuk dan bibit, hingga pemberian Kartu Tani Sehat kepada 6000 orang petani binaan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X akan terus bekerja dengan menjunjung nilai Sinergi, Integritas, dan Profesional sehingga target-target perusahaan dapat tercapai. Tentunya, diimbangi dengan kegiatan tanggung jawab sosial kepada masyarakat,&rdquo; tambah Dwi. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-11-07 20:02:51	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-07_at_12.59.03.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-raih-dua-penghargaan-iba-2019
29	B	PTPN X Salurkan CSR untuk Warga di Sekitar Kebun Klaten	<div dir="auto" style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: justify;">\r\n<p>PT Perkebunan Nusantara (PTPN) X bersama tiga BUMN lain yaitu PT Angkasa Pura (Persero), PT Kawasan Industri Wijayakusuma (Persero) dan PTPN IX menyalurkan Cuntuk warga di sekitar Kebun Klaten. Melalui bantuan yang diberikan diharapkan terjadi peningkatan kualitas sumber daya manusia di lingkungan tersebut.&nbsp;Bantuan yang diberikan berupa elektrifikasi, pembangunan sarana MCK (Mandi, Cuci, Kakus), beasiswa, bedah rumah, pembangunan sarana air bersih dan pasar murah.&nbsp;</p>\r\n\r\n<p>Direktur Utama PTPN X, Dwi Satriyo Annurogo mengatakan <em>Corporate Social Responsibility</em> (CSR) disalurkan untuk membantu masyarakat yang membutuhkan. &quot;Bagaimana masyarakat bisa lebih sehat agar dalam aktivitasnya sehari-hari tidak terkendala rumah bocor, MCK tidak sehat dan lain-lain,&quot; ujar Dwi saat memberikan sambutan pada acara penyerahan bantuan di Klaten, Jumat (29/11).</p>\r\n\r\n<p>Dengan individu yang sehat, akan terbentuk keluarga dan lingkungan yang sehat pula. Dan pada gilirannya akan menjadikan bangsa ini kuat.&nbsp;</p>\r\n\r\n<p>&quot;Ini adalah wujud bagaimana BUMN memberikan manfaat bagi masyarakat,&quot; sambung Dwi.&nbsp;</p>\r\n\r\n<p>Elektrifikasi diberikan ke 30 unit rumah mulai dari Desa Ngemplak, Birin, Balang, Ketitang dan lain-lain. Untuk bantuan MCK juga diberikan ke 30 unit rumah yang tersebar di beberapa desa, yaitu Karangasem, Ngriman, Jetak, Birit, dan lain-lain.&nbsp;</p>\r\n\r\n<p>Kegiatan CSR ini juga meliputi pemberian bantuan sarana air bersih di Desa Pandes. Untuk bantuan perbaikan rumah diberikan kepada 5 (lima) rumah, yang berada di Desa Bareng, Metuk lor, Kembang, dan Jetak.&nbsp;</p>\r\n\r\n<p>Yang terakhir, pemberian bantuan beasiswa diserahkan kepada 15 orang siswa baik SD, SMP, mapun SMK. Selain itu pada pekan sebelumnya juga diadakan pasar murah yang menyediakan 1.500 paket sembako untuk masyarakat. (Red1, CIN_Sekper)</p>\r\n</div>\r\n	0	0	2019-12-01 00:59:46	http://ptpn10.co.id/uploads/IMG_6678.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-salurkan-csr-untuk-warga-di-sekitar-kebun-klaten
51	A	9-Box Model Untuk Pengembangan Potensi dan Kinerja Karyawan	<p style="text-align: justify;">Terkadang hasil asesmen karyawan tidak sesuai dengan kinerja yang diinginkan perusahaan. Karyawan yang memiliki hasil asesmen baik, dalam beberapa kasus melaksanakan tanggung jawabnya kurang efektif ataupun sebaliknya. Sehingga menjadi pertanyaan apakah proses asesmen kurang memberikan gambaran karyawan yang sesuai?</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Pada dasarnya asesmen memang tidak mengukur kinerja, melainkan potensi karyawan. Namun asesmen memang diperlukan untuk mencari karyawan yang sesuai dengan kemampuannya, sehingga diharapkan menjadi <em>good</em> <em>performer</em> di perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Sebagai upaya untuk menjembatani hasil asesmen dengan kinerja, maka diperlukan alat atau metode untuk menilai kinerja karyawan serta mengembangkan potensinya untuk perusahaan. Salah satunya dengan <em>9-box matrix</em>. Metode ini dikembangkan pertama kali oleh McKinsey pada tahun 1960-an untuk membantu menilai potensi individu dalam bisnis milik GE.</p>\r\n\r\n<p style="text-align: justify;">Matriks ini bertujuan mengevaluasi kinerja dan merencanakan karyawan untuk &nbsp;menempati jabatan dan peran-peran strategis di perusahaan sesuai potensinya. Sehingga dimensi 9-box ada 2 (dua) yaitu performa karyawan pada masa lalu dan potensi karyawan di masa mendatang. Performa diwakili oleh sumbu X, sedangkan potensi diwakili oleh sumbu Y. Kombinasi dari sumbu X dan Y akan menentukan posisi suatu individu dan menempatkan individu pada kuadran yang berbeda-beda. Pada kuadaran kanan atas, kecenderungan nilai X dan Y akan tinggi, maka individu diidentifikasikan sebagai kandidat yang berpotensi tinggi dalam rencana suksesi perusahaan atau <em>succession</em> <em>planning</em> <em>candidate</em>.</p>\r\n\r\n<p style="text-align: justify;">Dalam penggunaannya, terdapat beberapa tahapan yang harus dilakukan antara lain:</p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;">Pelajari terlebih dahulu&nbsp; pengunaan metode 9-box dengan bantuan HR, independen konsultan dan pimpinan yang bertanggung jawab dalam <em>sucession</em> <em>planning</em></li>\r\n\t<li style="text-align: justify;">Rapat awal untuk memastikan kesamaan persepsi penggunaan 9-box sehingga masing-masing penilai memiliki pandangan yang sama</li>\r\n\t<li style="text-align: justify;">Dapatkan informasi-informasi tambahan terkait dengan individu yang dinilai, diluar penilaian formal</li>\r\n\t<li style="text-align: justify;">Gunakan <em>benchmark</em> untuk membandingkan hasil penilaian anda dengan hasil penilaian yang sudah ada dari perusahaan lain yang menerapkan 9-box</li>\r\n\t<li style="text-align: justify;">Diskusikan secara inten kandidat berdasar hasil penilaiannya dan coba tempatkan kandidat pada kuadran yang berbeda untuk mengetahui peluang lainnya</li>\r\n\t<li style="text-align: justify;">Diskusikan apa saja kebutuhan untuk pengembangan perusahaan dan tindak lanjut bagi karyawan yang dinilai</li>\r\n\t<li style="text-align: justify;">Evaluasi hasil penilaian secara berkala untuk mengetahui tingkat perkembangan karyawan</li>\r\n</ol>\r\n\r\n<p style="text-align: justify;">Dalam <em>talent</em> <em>management</em>, peran 9-box&nbsp; membantu perusahaan untuk memfokuskan kepada siapa fokus pengembangan individu diberikan. Penggunaan 9 box juga mengurangi penilaian secara subyektif membantu penerapan kriteria karyawan dan <em>low</em> <em>cost</em>. (Ariel_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber:</p>\r\n\r\n<p style="text-align: justify;">McCarthy, D, 2018,Thebalancecareers.com: The Nine-Box Matrix for Succession Planning and Developmnet</p>\r\n\r\n<p style="text-align: justify;">Kusnadi, M, 2015, SWA: Does Talent Assesment Matter?</p>\r\n\r\n<p>&nbsp;</p>\r\n	4	0	2018-09-10 16:45:20	http://ptpn10.co.id/uploads/pengembangan_potensi.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/9-box-model-untuk-pengembangan-potensi-dan-kinerja-karyawan
53	A	5 Bagian Waktu, Mindset Membangun Mimpi	<p style="text-align: justify;">Setiap orang pasti menginginkan dirinya untuk menjadi orang sukses dalam hidupnya. Dan untuk menjadi sukses sendiri, membutuhkan kerja keras, modal yang tidak sedikit dan tentunya sistem manajemen waktu yang baik.</p>\r\n\r\n<p style="text-align: justify;">Salah satu hal yang tidak bisa diulang kembali didunia ini adalah waktu. Sehingga anda butuh sistem manajemen waktu yang baik untuk semua agenda harian. Waktu merupakan elemen penting dalam mengakses sebuah impian besar dalam hidup. Jadi anda harus mempunyai sistem manajemen waktu yang professional bila anda ingin benar-benar ingin menjadi orang sukses dimasa depan.</p>\r\n\r\n<p style="text-align: justify;">Gunakan waktu untuk 5 hal, sebagai inspirasi anda untuk membangun sebuah kesuksesan di masa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>1. Take your time to make a small note about your dreams.</strong></p>\r\n\r\n<p style="text-align: justify;">Impian yang besar butuh persiapan yang matang. Anda perlu lebih awal untuk membuat perancangan sistem tentang tujuan anda dimasa yang akan datang. Dengan membuat catatan kecil, berarti anda sudah mempunanyai garis&nbsp;<em>start</em>&nbsp;untuk menuju kesuksesan. Sejatinya pecapaian sukses yang besar berawal dari sebuah mimpi.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>2.&nbsp;Take your time to visit new places.</strong></p>\r\n\r\n<p style="text-align: justify;">Setiap tempat mempunyai&nbsp;<em>history</em>&nbsp;dan keindahan yang berbeda. Keesotikan sebuah tempat adalah sumber inspirasi yang baik. &nbsp;Dengan mengunjungi banyak tempat, secara perlahan alam akan mengubah arah&nbsp;<em>mindset</em>&nbsp;yang anda miliki. Tentunya ini sangatlah baik untuk perkembangan emosional. Karena emosional yang baik akan mempengaruhi tingkat&nbsp;<em>respect social</em>&nbsp;terhadap hidup anda. Dizaman globalisasi sekarang,&nbsp;<em>respect social</em>&nbsp;menjadi salah satu kunci yang dominan untuk memperoleh kehidupan yang baik. Jika hal itu sudah sudah didapatkan, maka akan mudah membangun akses untuk impian anda dimasa depan.</p>\r\n\r\n<p style="text-align: justify;"><strong>3.&nbsp;Take your time to get to know more people.</strong></p>\r\n\r\n<p style="text-align: justify;">Dengan mengenal banyak orang, anda akan mempunyai jaringan yang luas untuk&nbsp;<em>exploring</em>&nbsp;banyak hal. Anda akan lebih mudah untuk mengakses informasi yang anda inginkan. Modal yang besar saja tidak akan cukup bila ingin menciptakan sesuatu yang besar. Anda memerlukan jangakauan informasi yang akurat untuk membangun strategi. Disisih lain, dengan mengenal lebih banyak orang, maka anda akan mempunyai banyak cerita baru untuk menambah semangat membangun mimpi.</p>\r\n\r\n<p style="text-align: justify;"><strong>4.Take your time to write.</strong></p>\r\n\r\n<p style="text-align: justify;">Buatlah tulisan yang menginspirasi banyak orang. Dengan menulis, maka dunia akan mengenalmu lebih baik.</p>\r\n\r\n<p style="text-align: justify;"><strong>5.&nbsp;Take time for your hobby</strong>.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;&rdquo;Pilihlah pekerjaan yang Anda sukai,&nbsp;dan Anda tidak akan perlu&nbsp;bekerja seumur&nbsp;hidup Anda.&rdquo;&nbsp;Kebanyakan dari kita melakukan pekerjaan yang tidak kita sukai. Akibatnya kita terus merasa tertekan dengan pekerjaan dan merasa bahwa pekerjaan kita semakin hari semakin sulit. Jika Anda tidak menginginkan keadaan terjebak pada pilihan yang salah, Anda sebaiknya mulai berjuang untuk pekerjaan yang Anda cintai, bukan pekerjaan yang mau menerima Anda apa adanya. Karena dengan bekerja pada hal yang Anda cintai, Anda tidak akan merasa tertekan. Bahkan Anda seolah merasa dibayar untuk melakukan hobi&rdquo;. Dari kutipan karya&nbsp;&nbsp;<em>Conficius</em>&nbsp;tersebut, maka luangkanlah waktu untuk hobi anda. Bisa jadi hobi anda adalah awal dari impian besar untuk kesuksesan yang sejati. (dnv)</p>\r\n	1	0	2018-08-27 18:13:51	http://ptpn10.co.id/uploads/5b837a5b-6984-4b42-add0-10b0e3e14fb4-dream.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/5-bagian-waktu-mindset-membangun-mimpi
52	A	Sinergi Enero-Mitra Tani 27: Aplikasi Pupuk Hayati Enero untuk Peningkatan Produksi Edamame (Model RAK)	<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="CA" style="font-family: Arial, sans-serif;">Kedelai Edamame merupakan produk unggulan dan berkualitas dari PT Mitra Tani Dua Tujuh (Mitra Tani 27) yang pangsa pasarnya tidak hanya untuk konsumsi domestik melainkan ekspor. Untuk mencapai kualitas yang baik maka perlu diperhatikan sistem budidaya sampai proses produksi dan pengolahannya. Terutama untuk aspek budidaya, selama ini Mitra Tani 27 masih menggunakan <i>full</i> pupuk anorganik dalam sistem budidayanya. Hal ini baik dalam meningkatkan produktivitas tanaman jangka pendek, namun menurunkan kualitas tanah dalam jangka panjang. Berdasarkan hal ini, diperlukan upaya pembenahan tanah sekaligus pengurangan pupuk anorganik dengan pemanfaatan pupuk hayati dalam sistem budidaya untuk mencapai hasil yang optimal.</span></span><span lang="CA" style="font-family: Arial, sans-serif;"></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span style="font-family: Arial, sans-serif;">Di sisi lain, PT Energi Agro Nusantara (Enero) sebagai pabrik bioethanol memiliki hasil samping </span><i style="color: black; font-family: Arial, sans-serif;">vinasse</i><span style="font-family: Arial, sans-serif;"> yang diolah menjadi pupuk hayati cair. Dalam rangka mengetahui efektivitas pupuk hayati tersebut maka diperlukan kerjasama penelitian antara Mitra Tani 27 dan Enero sebagai bentuk sinergi anak perusahaan dibawah PT Perkebunan Nusantara X (PTPN X). Selanjutnya penelitian dilaksanakan untuk mengetahui efektivitas pemupukan Pupuk Hayati enero (PHE) terhadap produksi kedelai edamame.</span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span style="font-family: Arial, sans-serif;"></span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="CA" style="font-family: Arial, sans-serif;">Penelitian dilaksanakan di lahan </span><span lang="CA" style="font-family: Arial, sans-serif;">sewa Mitra Tani 27 pada musim tanam 2018 dengan tanaman kedelai edamame dengan varietas EO54. Aplikasi telah dilaksanakan pada bulan Januari &ndash; April 2018, dengan durasi &plusmn; 70 hari.&nbsp; Luas total plot percobaan </span><span lang="CA" style="font-family: &quot;Times New Roman&quot;, serif;">&plusmn;</span><span lang="CA" style="font-family: Arial, sans-serif;"> 0,1 ha. Model penelitian dalam bentuk Rancangan Acak Kelompok (RAK), dimana dicoba berbagai perlakuan antara lain: (1) pupuk terpadu, enero + pupuk anorganik 80% (P1), (2) pupuk terpadu, enero + pupuk anorganik 75% (P2) dan pupuk terpadu, (3) enero up + pupuk anorganik 75% (P3), serta kontrol (perlakuan eksisting). Perlakuan dilakukan dengan 30 ulangan dengan jarak tanam 10 cm x 20 cm dan luas bedengan 10 m x 1 m. Proses pemupukan pada perlakuan dengan cara aplikasi pengocoran dengan dosis 16 liter per bedeng, sedangkan kontrol dengan cara pemupukan pada umumnya dengan ditabur diatas tanah.</span></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">Dari hasil penelitian vegetatif dan generatif didapatkan hasil secara umum, pupuk terpadu enero mampu meningkatkan produksi tanaman. Untuk analisa vegetatif, didapatkan hasil yang tidak berbeda nyata antara beragam perlakuan dan kontrol. Sedangkan untuk analisa generatif dan produksi, pupuk terpadu enero + anorganik memberikan rerata produksi sebesar 12.040 kg dibanding pupuk kontrol 10.880 kg. Dengan kata lain produksi meningkat 10,66%. Sedangkan untuk permintaan ekspor, produksi edamame dengan perlakuan pupuk enero + anorganik mencapai 7.108 kg, sedangkan kontrol hanya 5.655 kg. Dengan kata lain produksi ekspor meningkat 25,69%.</span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="font-family: Arial, sans-serif; color: rgb(0, 0, 0);">Ditinjau dari analisa biaya usaha taninya, terdapat selisih yang signifikan antara perlakuan dan kontrolnya. Pupuk terpadu, enero + anorganik (P3) memiliki analisa biaya produksi per unit kg paling rendah sebesar Rp. 8.267/kg, sedangkan kontrol Rp. 9.702/kg. Terdapat penurunan biaya produksi sebesar 17,36%. Dari hasil tersebut, pemupukan terpadu dengan pupuk enero dan pengurangan dosis pemupukan anorganik dapat dikatakan memberikan dampak yang lebih baik. Untuk tindak lanjut, diperlukan penelitian dalam skala lebih luas yaitu demplot untuk mengetahui perbedaan yang signifikan. (Ariel_Enero, CIN_Sekper)</span></p>\r\n\r\n<p class="MsoNormal" style="margin: 6pt 0cm 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="AF" style="font-size:10.0pt;line-height:115%;font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-ansi-language:AF">Sumber:</span></span><span lang="AF" style="font-size:10.0pt;line-height:115%;font-family:&quot;Segoe UI&quot;,sans-serif;\r\nmso-ansi-language:AF"></span></p>\r\n\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: justify;"><span style="color:#000000;"><span lang="AF" style="font-size:9.0pt;line-height:115%;mso-ansi-language:\r\nAF;mso-fareast-language:IN">Mitra Tani 27, 2018, Jember, Laporan Research &amp; Development, Laporan Penelitian &amp; Pengembangan Bidang: Budidaya: Aplikasi Pupuk enero untuk Meningkatkan Pertumbuhan dan Produksi Edamame</span></span></p>\r\n	1	0	2018-08-27 21:14:20	http://ptpn10.co.id/uploads/PHE.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sinergi-enero-mitra-tani-27-aplikasi-pupuk-hayati-enero-untuk-peningkatan-produksi-edamame-model-rak
117	B	Rayakan HUT ke 7,  PT NMU Launching New Corporate Culture	<p style="text-align: justify;">Tak terasa sudah Tujuh tahun, PT Nusantara Medika Utama (NMU) anak usaha PT Perkebunan Nusantara (PTPN) X yang bergerak di bidang layanan kesehatan hadir memenuhi kebutuhan kesehatan masyarakat Jawa Timur dan sekitarnya. Berbagai dinamika regulasipun mewarnai perjalanan bisnis PT NMU selama ini.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Di hadapan jajaran Dewan Komisaris, Dewan Direksi dan seluruh tamu undangan yang hadir dalam acara puncak peringatan Hari Ulang Tahun (HUT) PT NMU ke 7 yang mengangkat tema &#39;Achieve Exellent&#39; bertempat di Hotel Ayola, Mojokerto pada&nbsp;Kamis (23/1).&nbsp;Direktur Utama PT NMU, Ary Sylviati menyampaikan apresiasinya atas segala&nbsp; pencapaian PT NMU di usianya yang baru menginjak tujuh tahun tersebut.</p>\r\n\r\n<p style="text-align: justify;">Tantangan yang akan dihadapi kedepan tentu semakin berat. Untuk itu saya menghimbau seluruh&nbsp;karyawan bisa menghadirkan program-program unggulan dengan tujuan&nbsp;meningkatkan kualitas pelayanan terhadap konsumen.</p>\r\n\r\n<p style="text-align: justify;">&quot;Banyak sekali tantangan kedepan. Tapi saya yakin dengan kekuatan bersama sebagai salah satu anak usaha BUMN dan dengan dukungan seluruh jajaran pemilik saham, saya yakin semuanya bisa kita capai sesuai dengan harapan yang diamanahkan,&quot; ujar Ary.</p>\r\n\r\n<p style="text-align: justify;">Dalam acara tersebut juga di launching New Corporate Culture&nbsp;dari PT NMU yakni SPIRIT&nbsp;(Synergi, Professional,<br />\r\nIntegrity, Respect, Innovation dan Team work). &quot;Dengan SPIRIT&nbsp;ini mari kita tingkatkan kualitas pelayanan yang ada agar PT NMU bisa tetap menjadi pilihan terdepan bagi konsumen,&quot; ujar Ary sembari meresmikan New Corporate Culture tersebut. (Red2, PUT_Sekper)</p>\r\n	0	0	2020-01-24 08:41:11	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-01-24_at_08.11.42.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/rayakan-hut-ke-7-pt-nmu-launching-new-corporate-culture
30	B	Ada yang Spesial di Safety Riding Enero	<p style="text-align: justify;"><strong>Mojokerto </strong>&ndash; Safety Riding yang sedang menjadi program PT Energi Agro Nusantara (Enero), ditindaklanjuti aktivitas yang spesial beberapa waktu lalu. Jika biasanya Safety Riding disosialisasikan secara rutin di dalam perusahaan, kali ini dalam bentuk touring dan sosialisasi kemanfaatan Biofertlizer (pupuk hayati) di berikan kepada kalangan petani bawang daun serta diikuti oleh Enero Motoriders Club dan karyawan Enero lainnya. Acara tersebut diselenggarakan di Desa Kemiri, Kecamatan Pacet, Sabtu (16/11).</p>\r\n\r\n<p style="text-align: justify;">Acara dimulai dengan <em>briefing</em> terkait keamanan dan keselamatan selama berkendara sekaligus cek kondisi kendaraan. Setelah berkendara selama kurang lebih satu jam, agenda dilanjutkan dengan sosialisasi kemanfaatan biofertilizer pada petani bawang daun. Termasuk didalamnya dilakukan aplikasi percobaan biofertilizer skala kecil, yang membandingkan aplikasi biofertilizer dan aplikasi normal (full menggunakan pupuk anorganik). Nantinya, hasil aplikasi akan ditinjau perkembangannya sampai panen.</p>\r\n\r\n<p style="text-align: justify;">Petani menyambut baik inisiatif dari Enero ini. Harapan mereka, penggunaan pupuk anorganik dapat berkurang dan struktur serta kandungan tanah mengalami perbaikan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kami merasa senang dengan percobaan ini, semoga dampak biofertilizer bisa dirasakan pada tanah dan tanaman,&quot; tutur Nurul Huda, salah satu petani yang ikut sosialisasi.</p>\r\n\r\n<p style="text-align: justify;">Rangkaian aktivitas ditutup dengan wisata menikmati keindahan alam di area Pacet. Kedepannya, aktivitas safety riding akan di buat lebih menarik, dengan kunjungan industri ke unit dan anak perusahaan di lingkungan PTPN X atau <em>stakeholder</em> terkait lainnya.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Tidak hanya pengembangan wawasan berkendara bagi karyawan, aktivitas safety riding banyak manfaatnya seperti sarana edukasi dan sosialisasi produk perusahaan serta membangun relasi sosial dengan masyarakat dan pihak-pihak lain,&rdquo; ujar Direktur PT Enero, Dimas Eko Prasetyo. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n	1	0	2019-11-28 18:34:55	http://ptpn10.co.id/uploads/foto_web.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ada-yang-spesial-di-safety-riding-enero
32	B	Kuliah Tamu Enero, Akademisi Polinema Perdalam Proses Bioethanol	<p style="text-align: justify;">PT&nbsp;Energi Agro Nusantara (Enero) kembali menunjukkan komitmennya pada dunia pendidikan Indonesia. Jumat lalu (22/11), Enero mendapatkan kehormatan memberikan kuliah tamu di Politeknik Negeri Malang (Polinema), Malang dengan&nbsp;Sam Alfian Yusuf Helmi (Manajer Proses dan Project) dan Mochammad Dimas Khoirul Umam&nbsp;(Supervisor Proses) sebagai pembicara.</p>\r\n\r\n<p style="text-align: justify;">Kuliah yang bertajuk &ldquo;Proses Fermentasi dan Distilasi Produksi Bioethanol pada Skala Industri&rdquo; ini dihadiri para akademisi di Jurusan Teknik Kimia. Acara ini sendiri bertujuan memperdalam pengetahuan proses produksi bioethanol pada skala industri. Kuliah tamu dibuka dengan sambutan dari Kepala Jurusan Teknik Kimia Polinema, Eko Naryono, yang mengungkapkan harapan kerjasama antar kedua belah pihak.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kami mengharapkan, kerjasama dengan dunia industri semakin terjalin dan kedepannya bisa menjadikan Polinema sebagai <em>teaching factory</em> dan menghasilkan lulusan-lulusan yang siap pakai di dunia industri&rdquo; ujar Eko.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Acara dilanjutkan dengan penyampaian materi kuliah oleh Sam Alfian, tentang proses produksi bioethanol, standar spesifikasi produk sesuai Standar Nasional Indonesia (SNI) dan diskusi terkait skema pengolahan hasil samping produksi bioethanol. Setelah kuliah tamu, diikuti kunjungan laboratorium praktikum untuk melihat kelengkapan alat-alat <em>pilot plant</em>.</p>\r\n\r\n<p style="text-align: justify;">Sebagai bentuk keseriusan Polinema akan energi terbarukan, saat ini mereka memiliki <em>pilot plant</em> biodiesel, sebagai alat ajar para mahasiswa. <em>Plant </em>dilengkapi dengan peralatan yang lengkap dan diharapkan juga bisa menjadi <em>pilot plant</em> bioethanol di masa datang. (Ariel_Enero, CIN_Sekper)</p>\r\n	1	0	2019-11-28 15:34:15	http://ptpn10.co.id/uploads/Kuliah_Tamu_Enero.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kuliah-tamu-enero-akademisi-polinema-perdalam-proses-bioethanol
106	B	PTPN X Jual Kelebihan Listrik ke PLN	<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Kediri - PT Perkebunan Nusantara (PTPN) X menjual tenaga listrik ke&nbsp; PT Perusahaan Listrik Negara (PLN) (Persero). Listrik tersebut berasal dari ampas sisa pengolahan tebu yang diubah menjadi tenaga listrik.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Nantinya listrik yang disalurkan oleh PLN akan disalurkan kepada masyarakat sekitar. Kerja sama jual beli yang berjalan selama 2 tahun ini berkapasitas sebesar 3 MW (net) dengan harga Rp 545,-/kwh.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Kerja sama ini dimulai dengan penandatanganan nota kesepahaman lalu dilanjutkan dengan penandatanganan Perjanjian Jual Beli Listrik (PJBL) Kelebihan Tenaga Listrik antara PTPN X dengan PT PLN (Persero) yang diselenggarakan di PG Pesantren Baru, Kediri, Senin (3/2/2020).&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&ldquo;Harapannya potensial&nbsp;<em style="box-sizing: border-box;">excess power</em>&nbsp;di PG Pesantren Baru ini akan lebih maksimal selain digunakan untuk saving pengolahan gula berbasis tebu juga dapat menambah&nbsp;<em style="box-sizing: border-box;">revenue</em>&nbsp;perusahaan,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Dikatakan Dwi, penjualan listrik ini merupakan salah satu langkah diversifikasi yang dilakukan PTPN X. "Jadi tidak hanya gula saja tetapi juga bisa mendapatkan&nbsp;<em style="box-sizing: border-box;">revenue</em>&nbsp;dari listrik dan bioetanol," terang Dwi.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Nantinya tidak hanya PG Pesantren Baru yang bisa menghasilkan listrik dari&nbsp;<em style="box-sizing: border-box;">excess power</em>. PG Gempolkrep juga tengah disiapkan untuk bisa mengekspor listrik ke PLN dengan kapasitas 5-8MW.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Selain itu juga PG Kremboong di Sidoarjo yang memiliki potensi menghasilkan listrik 3-4 MW.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Selain penandatanganan PJBL,acara diawali dengan sambutan oleh Direktur Utama PTPN X dan dilanjutkan dengan melakukan&nbsp;<em style="box-sizing: border-box;">site visit</em>&nbsp; di PG Pesantren Baru untuk meninjau kesiapan alat&nbsp;<em style="box-sizing: border-box;">excess power</em>.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&ldquo;Saya mohon dukungan dari seluruh pihak, baik karyawan PTPN X maupun PT PLN (Persero) agar dapat memberikan kontribusi secara maksimal dalam proyek ini. Sehingga apa yang sudah kita sepakati bersama dapat terimplementasikan dengan baik,&rdquo; tutur Dwi.</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">General Manager PLN Unit Induk Distribusi Jawa Timur, Bob Saril menambahkan, Pembangkit Listrik Tenaga Biomassa (PLTBm) PG Pesantren Baru ini merupakan salah satu bentuk diversifikasi usaha PTPN X yang memanfaatkan limbah pengolahan tebu untuk energi pembangkitnya. Dan dalam hal ini, sejalan dengan komitmen PLN untuk meningkatkan penggunaan energi alternatif.&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">"Energi biomassa merupakan salah satu energi alternatif yang dapat digunakan untuk membangkitkan tenaga listrik dengan pemanfaatan limbah tebu, hal ini sejalan dengan upaya PLN untuk mengembangkan dan menggunakan EBT serta menjadi sebuah solusi untuk pengolahan limbah bagi PTPN X agar bermanfaat," jelas Bob dalam sambutannya.</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n<div style="box-sizing: border-box; font-size: 14px; background-color: #ffffff; color: #1d2228; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Kegiatan ini dihadiri juga oleh&nbsp; General Manager PG Pesantren Baru, Bambang Hari Nugroho beserta jajaran dan dari pihak PT PLN (Persero) yaitu Direktur Bisnis Regional Jawa, Madura, dan Bali, Haryanto WS serta EVP Operasi Bisnis Regional Jawa Timur, Madura dan Bali, Paraining. (RED1, Put_Sekper)</div>	15	0	2020-02-05 08:54:06	images/news/web4.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
164	B	Peringati Hari Raya Idul Adha, PTPN X Salurkan 9 Hewan Kurban	<p style="text-align: justify;">Dalam merayakan Hari Raya Idul Adha 1441 H, PT Perkebunan Nusantara (PTPN) X menyerahkan hewan kurban kepada beberapa yayasan di wilayah kerjanya, Rabu (29/7). Sejumlah sembilan ekor kambing diserahkan kepada sembilan yayasan dan pondok pesantren. Acara penyerahan hewan kurban tersebut dihadiri langsung oleh Direktur PTPN X, Aris Toharisman.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Semoga hewan kurban ini dapat tersalurkan tepat sasaran dan bermanfaat bagi masyarakat yang membutuhkan,&rdquo; terang Aris.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Tiap tahunnya, pemilihan yayasan dilakukan berdasarkan survey oleh panitia supaya penyaluran hewan kurban dapat menyasar masyarakat yang benar-benar membutuhkan, khususnya di masa pandemi COVID-19. Kali ini, sembilan yayasan tersebut antara lain Yayasan Pondok Pesantren Darul Rahman, Yayasan Mukasyafatul Qulub, Panti Asuhan Rodhiyatul Jannah. (CIN_Sekper, PUT_Sekper)</p>\r\n	1	0	2020-07-29 15:30:56	http://ptpn10.co.id/uploads/web_id_adha.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/peringati-hari-raya-idul-adha-ptpn-x-salurkan-9-hewan-kurban
22	B	IGG Kunjungi PTPN X	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X mendapatkan kunjungan dari Industri Gula Glenmore (IGG) di Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya (16-17/12). Kunjungan ini dalam rangka studi banding mengenai penerapan <em>Quality Assurance </em>di Pabrik Gula milik PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas kunjungan ke PTPN X. Semoga kunjungan hari ini dapat memberikan pengetahuan dan ilmu yang bermanfaat bagi kedua belah pihak tentunya dalam bidang QA baik <em>on farm</em> maupun <em>off farm</em>,&rdquo; ujar Kepala Urusan <em>Off Farm</em> QA PTPN X, Budi Cahyono.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan ini berupa <em>sharing session</em> dan tanya jawab mengenai proses <em>on farm</em> dan <em>off farm </em>yang diikuti oleh 5 perwakilan dari IGG dan kepala urusan QA Kantor Pusat PTPN X. Hal-hal yang dibahas antara lain proses pengolahan gula dari awal tebu masuk ke pabrik hingga proses pengiriman gula serta SOP dari tiap-tiap prosesnya. (Valen_UWM, CIN_Sekper)</p>\r\n	14	0	2019-12-16 20:37:47	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-12-16_at_13.28.05.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/igg-kunjungi-ptpn-x
38	B	PTPN X Kunjungi PT Semen Indonesia 	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan kunjungan ke Pabrik Tuban, PT Semen Indonesia yang terletak di Desa Sumberarum, Kecamatan Kerek, Kabupaten Tuban, Jawa Timur pada (21/11). Kunjungan ini dalam rangka studi banding mengenai Sistem Manajemen dan Teknologi Persediaan Hasil Produksi PT Semen Indonesia.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan diikuti oleh 13 orang perwakilan bagian dari PTPN X dan manajemen PT Semen Indonesia. Adanya studi banding tersebut diharapkan dapat menambah wawasan baru bagi karyawan PTPN X untuk lebih lagi meningkatkan kinerja hasil produksi dan teknik-teknik manajemen terbaru. Sehingga dapat diimplementasi di lingkup PTPN X khususnya Pabrik Gula.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas penerimaan yang baik dari PT Semen Indonesia. Harapan kami studi banding ini dapat menjadi jembatan baru kerjasama antara PTPN X dan PT Semen Indonesia, dan juga saling memberikan <em>benefit </em>antar kedua belah pihak,&rdquo; terang Andika Dhyta Vernanda, Kepala Urusan TI PTPN X.</p>\r\n\r\n<p style="text-align: justify;">Kegiatan ini diawali dengan pemutaran video <em>company profile</em> PT Semen Indonesia, dilanjutkan dengan sambutan dari perwakilan perusahaan. Sesi dimulai dengan pemaparan presentasi dari perwakilan PT Semen Indonesia mengenai proses pengemasan barang hingga proses barang keluar dari pabrik lalu dan ditutup dengan <em>plant tour</em>. (Valen_UWM, CIN_Sekper)</p>\r\n	4	0	2019-11-22 21:41:06	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-22_at_14.38.21.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-kunjungi-pt-semen-indonesia
37	B	Smart Riders Community Touring ke Lahan HGU Ngusri	<p style="text-align: justify;">Jumat-Sabtu (22-23/11) karyawan Kantor Pusat PTPN X yang tergabung dalam Smart Riders Community (SRC) melakukan kegiatan <em>touring</em> ke Kebun HGU Ngusri Blitar. <em>Touring </em>ini diikuti oleh 45 orang karyawan dengan Suprobo dari Bagian Keuangan selaku koordinator. Pemilihan Kebun HGU Ngusri Blitar sebagai tujuan <em>touring</em> supaya karyawan mengetahui potensi lahan HGU baru milik PTPN X tersebut.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Selama kegiatan berlangsung, karyawan berkeliling lahan Ngusri sambil melihat keindahan pemandangan yang ditawarkan. Anggota SRC juga berkesempatan bermalam di rumah dinas yang berada di sekitar lahan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kegiatan touring ini rutin dilakukan dan memberikan pengalaman baru kepada seluruh anggota SRC. Untuk touring kali ini, kami bisa mengetahui tentang potensi lahan HGU baru milik PTPN X,&rdquo; terang Aldino Ary, karyawan Bagian Pemasaran. (CIN_Sekper, PUT_Sekper)</p>\r\n	1	0	2019-11-25 17:37:32	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-25_at_10.28.24.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/smart-riders-community-touring-ke-lahan-hgu-ngusri
34	B	Komisaris Holding Perkebunan Nusantara Tinjau Kebun Tembakau dan Anak Perusahaan PTPN X di Jember	<p style="text-align: justify;">Setelah sebelumnya mengunjungi Pabrik Gula (PG) Gempolkrep dan PT Enero, Dewan Komisari Holding Perkebunan Nusantara meninjau gudang pengolah tembakau di Ajong Gayasan, Selasa (26/11). Kunjungan ke Ajong Gayasan ini untuk melihat proses sortasi daun tembakau hingga pengemasan.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan dilanjutkan ke Industri Bobbin untuk melihat proses pemotongan atau <em>cutting</em> daun tembakau dan pembuatan cigarillos. Kunjungan didampingi langsung oleh Direktur Operasional PTPN X Aris Toharisman dan Kepala Bagian Tembakau Aris Handoyo.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Hasil diskusi dalam kunjungan ini supaya menjadi masukan untuk mempersiapkan tantangan di 2020, sehingga dapat memastikan ketercapaian target produksi PTPN X baik di sektor tebu maupun tembakau,&rdquo; terang Muhammad Syakir, Komisaris Holding Perkebunan Nusantara.</p>\r\n\r\n<p style="text-align: justify;">Sebagai penutup kunjungannya, rombongan meninjau PT Mitratani Dua Tujuh mulai dari lokasi tanam hingga pabrik pengolahan edamame di daerah Mangli, Jember. (PUT_Sekper, CIN_Sekper)</p>\r\n	5	0	2019-11-26 21:24:10	http://ptpn10.co.id/uploads/DSC00734.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisaris-holding-perkebunan-nusantara-tinjau-kebun-tembakau-dan-anak-perusahaan-ptpn-x-di-jember
88	B	Jaga Ekosistem, PG Gempolkrep Tanam 150 Pohon	<p style="text-align: justify;">Komitmen PG Gempolkrep dalam menjaga lingkungan dan ekosistem yang ada tidak perlu diragukan lagi. Pabrik gula milik PT Perkebunan Nusantara (PTPN) X&nbsp;ini kembali melakukan kegiatan menanam pohon di awal tahun 2020. Sedikitnya 150 pohon mahoni ditanam di sekitar emplasemen tebu agar lingkungan tetap terjaga.</p>\r\n\r\n<p style="text-align: justify;">General Manager PG Gempolkrep, Agus Minhandoko mengatakan kegiatan menanam pohon ini merupakan salah satu bentuk nyata&nbsp; PG Gempolkrep untuk perbaikan lingkungan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kelihatan memang kegiatan ringan, namun manfaat sangat besar bagi lingkungan,&quot; kata Agus ditemui usai melakukan tanam Pohon Mahoni di Emplasemen Tebu PG Gempolkrep, Jumat (10/01).</p>\r\n\r\n<p style="text-align: justify;">Agus menambahkan rencana akan ada 150 Pohon Mahoni yang akan ditanam dan dipelihara dengan baik di areal emplasemen tebu yang memiliki luas kurang lebih 25 hektar. Penanaman 150 Pohon Mahoni ini dilakukan secara bertahap, tahap satu ini dilakukan penanaman sebanyak 50 pohon.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Pemilihan Pohon Mahoni bukan tanpa sebab, sambung Agus, Pohon Mahoni di pilih, selain Pohon Mahoni merupakan tanaman keras dan cepat besar, Pohon Mahoni juga digunakan sebagai media untuk menyaring debu tebu yang dihasilkan saat proses produksi. Selain itu, Pohon Mahoni juga diharapkan bisa menjadi media untuk menjaga dan mempertahankan ekosistem yang selama ini ada di dalam Emplasemen Tebu PG Gempolkrep.</p>\r\n\r\n<p style="text-align: justify;">&quot;Di emplasemen tebu, setiap musim penghujan seperti ini, ada 4 sampai 5 spesies burung kuntul yang bertelur di sini. Saat musim giling mereka akan bermigrasi ke tempat lain,&quot; jelas Agus.</p>\r\n\r\n<p style="text-align: justify;">Selain menjaga ekosistem, sambung Agus, dengan rindangnya lokasi emplasemen tebu hal itu juga berdampak positif terhadap kesegaran tebu-tebu yang harus antri untuk masuk ke dalam stasiun gilingan. (Red3, PUT_Sekper)</p>\r\n	20	0	2020-01-10 12:21:11	http://ptpn10.co.id/uploads/Berita_2.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/jaga-ekosistem-pg-gempolkrep-tanam-150-pohon
112	B	PTPN X Tuan Rumah Millenial Planters Model	<p style="text-align: justify;">Millenial PTPN Group kembali hadir dengan ide-ide baru dan segar. Dengan tetap mengusung budaya perusahaan SIPro, Millennial PTPN Group berkomitmen membentuk sebuah wadah yang dinamakan Millenial Planters Model. Harapannya Millenial Planter Model ini bisa melihat secara objektif pandangan dan harapan dari karyawan milenial serta pandangan perusahaan untuk bersinergi membangun budaya planters (budaya SIPro) yang ideal di lingkungan Perkebunan Nusantara Group.&nbsp; Kegiatan ini dilaksanakan di Kantor Pusat PT Perkebunan Nusantara X selama 2 hari mulai dari tanggal 13 &ndash; 14 Februari 2020 dengan mengundang milenial-milenial muda dari PTPN I sampai dengan XIV, PT Kharisma Pemasaran Bersama Nusantara, PT Riset Perkebunan Nusantara, PT LPP Agro Nusantara. (Put_Sekper)</p>	13	0	2020-02-18 13:25:55	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tuan-rumah-millenial-planters-model
3	A	Smart People Millennial	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Ada yang akan menjadi orang tersisihkan jika tidak siap menghadapi perubahan&rdquo;</em>, itulah yang terbesit di generasi teknologi millennial saat ini. Dimana masa generasi ini di sebut-sebut sebagai generasi perubahan. Pada era ini, semua berkembang seolah-olah menjadi fenomena yang&nbsp;<em style="box-sizing: border-box;">absurd.</em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial diyakini akan sangat berpengaruh dalam kemajuan peradapan teknologi masa depan, karena mereka memegang kendali dan memainkan peran penting dalam perkembangan dunia digitalisasi. Generasi ini lahir di tengah-tengah peradapan teknologi yang canggih dan&nbsp;<em style="box-sizing: border-box;">modern</em>. Hal ini membuat generasi ini sangat dekat dengan teknologi, sehingga berhasil menyulap globalisasi yang mempunyai interaksi tanpa batas dibelahan dunia.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial merupakan generasi pertama yang tumbuh subur dengan perangkat elektronik dan jaringan akses internet. Pada masa ini, setiap orang sangat fasih terhadap penggunaan teknologi. Kemajuan sains teknologi ini mendorong generasi millennial untuk melakukan aktivitas lebih banyak dari pada generasi sebelumnya.&nbsp; Selain itu mereka lebih mudah untuk mempelajari&nbsp;<em style="box-sizing: border-box;">platform digital</em>&nbsp;dengan cepat dan menggabungkan kedalam seni kehidupan mereka.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Akan tetapi semua fenomena kecanggihan itu membawa dampak yang sangat mengerikan. Mobilitas antar negara semakin tinggi, peradapan dunia semakin kejam dan penuh dengan tantangan baru dari segala aspek. Belum lagi tingginya grafik inflasi yang terus naik membuat kebutuhan sulit di jangkau.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Anda sebagai generasi millennial harus manjadi pribadi yang kental akan inovatif, aktif dan kreatif agar mampu mengisi&nbsp;<em style="box-sizing: border-box;">millennial times&nbsp;</em>dengan baik.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Kemajuan tidaklah mungkin tanpa perubahan, dan orang yang tidak mengubah pikirannya takkan mampu mengubah apapun&rdquo;,&nbsp;</em>(Sepositif). Bagi anda yang sekarang berada di generasi muda millennial, anda harus menjadi pribadi yang profokatif dalam banyak hal (positif), karena sejatinya perubahan membutuhkan pengendalian&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;yang bagus. Nah, bagian yang bingung mau ngapain di generasi millennial ini, ada tips yang saya tulis sebagai inspirasi, agar anda menjadi&nbsp;<em style="box-sizing: border-box;">smart people millennial.&nbsp;</em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">A2 (<em style="box-sizing: border-box;">Active Action)</em></span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial bisa menjadi generasi emas dalam sejarah. Dalam konteks generasi ini merupakan generasi peralihan dalam peradaban teknologi. Millennial lebih dominan menjadi &lsquo;generasi pengubah&rsquo;, bukan berkarakter sebagai &lsquo;generasi penerus&rsquo;. Untuk mengisi peradapan millennial ini, anda sebagai energi jiwa muda di era ini harus memiliki&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;A2&nbsp;<em style="box-sizing: border-box;">(Active Action)</em>, yakni aktif aksi dalam membuat revolusi perubahan, karena energi muda millennial identik dengan ide-ide segar dan pemikiran baru. A2 bisa diwujudkan dengan aktifitas sebagai berikut:</p>\r\n<ol style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam penggunaan teknologi untuk penyebaran kegiatan yang positif.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam berinovasi dan membuat gagasan kreatif yang sangat bermanfaat bagi kelangsungan teknologi dan mekanisasi pertanian.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam membangun ide dan gagasan baru di tempat kerja.</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam merubah pola dan gaya hidup</li>\r\n<li style="box-sizing: border-box; text-align: justify;">Aktif dalam kegiatan sosialisme dan memodernisasi informasi secara cepat, tepat, akurat dan kekinian.</li>\r\n</ol>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">Internet&nbsp;<em style="box-sizing: border-box;">Positive Of Thinks</em></span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Teknologi tumbuh sangat baik di generasi millennial. Media digitalisasi berkembang dengan cepat membuat interaksi sosial tanpa batas memungkinkan semua dilakukan dengan mudah. Pada konteks komunikasi sosial media berhasil menyulap dan melampaui harapan penggunanya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dilansir dari situs kompas.com, bahwa media sosial dan perkembangan teknologi digital ternyata menyimpan lubang gelap, meski pada titik yang sama menghadirkan kesempatan untuk mempermudah manusia. Pengguna internet di Indonesia adalah terbesar ke-4 di Asia. Dari riset internet&nbsp;<em style="box-sizing: border-box;">World Stats</em>&nbsp;pada 2016, pengakses teknologi internet di negeri ini berjumlah sekitar 78 juta. Adapun penetrasi atau rasio pengguna internet di Indonesia ditaksir sekitar 30,5 persen. Di kawasan Asia, pengguna internet terbesar yakni Cina (674 juta/49,5 persen populasi), India (375 juta/30 persen), Jepang (115 juta/90,6 persen), dan kemudian Indonesia.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Dari fenomena tersebut, apabila tidak ada pengendalian dan kebijakan diri yang baik, tentu hal ini akan memicu timbulnya dampak yang negatif seperti pendirian situs pornografi, membangun komunitas radikalisme, atau penyebaran hoaks.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Perubahan&nbsp;<em style="box-sizing: border-box;">platform</em>&nbsp;teknologi mempengaruhi interaksi manusia di peradapan manusia yang selanjutnya. Nah, sebagai generasi millennial yang cerdas, kita harus menjadi &lsquo;<em style="box-sizing: border-box;">internet positive of thinks&rsquo;&nbsp;</em>artinya, menggunakan internet dengan sehat dan untuk hal yang positif.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;"><span style="box-sizing: border-box; font-weight: bold;">Make Future Projects</span></em></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Di peradapan global di masa sekarang sangat tidak cukup bermodalkan pandai beropini. Untuk mengisi generasi millennial dengan cerdas, anda harus membuat dunia menjadi tempat yang lebih baik dari sebelumnya. Anda adalah arsitek dari seni kehidupan anda sendiri, buatlah desain yang menarik untuk gagas revolusi perubahan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial adalah generasi jeniusme. Generasi dimana waktu dan tempatnya dapat di gali berbagai hal-hal baru.Sebagai generasi millennial anda harus mempunyai stabilitas diri yang baik. Bukan hanya sekedar tentang&nbsp;<em style="box-sizing: border-box;">to-do-list&nbsp;</em>tapi lebih&nbsp;<em style="box-sizing: border-box;">focus</em>&nbsp;menuju &shy;<em style="box-sizing: border-box;">to-be-list</em>. Memang bagus berfikir tentang apa, tapi akan terlihat lebih hebat apabila anda lebih berfikir ingin menjadi apa untuk membuat apa.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">95% dari hidup kita berasal dari progam kehidupan.&nbsp;<em style="box-sizing: border-box;">Make Future Projects,&nbsp;</em>mulailah membuat hal kecil setelah membaca artikel ini. Karena generasi di masa depan bisa saja berubah dan berevolusi menjadi lebih baik dari apa yang kita ciptakan hari ini.</p>	32	2	2019-09-25 10:07:09	images/news/pict_web.jpg	admin@ptpn10.co.id	muh.rizal@ptpn10.co.id	published	\N
107	G	Kunjungan Kerja Direktur Komersil ke PG Ngadiredjo - Direksi Menyapa Karyawan 	<p>Kunjungan Kerja Direktur Komersil, PT Perkebunan Nusantara (PTPN) X ke PG Ngadiredjo (6/2) adalah dalam rangkaian kegiatan Direksi Menyapa Karyawan.</p>\r\n<p>Dalam acara tersebut Direktur Komersil melakukan kunjungan ke Pabrik, memberikan perspektif dan arahan kepada semua karyawan di PG Ngadiredjo. Menyampaikan hasil evaluasi kinerja 2019 dan target korporasi di tahun 2020.</p>	14	0	2020-02-10 10:04:20	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
41	B	Berbagi Ilmu, Mahasiswa UNIDHA Kunjungi PTPN X	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X mendapat kunjungan dari mahasiswa Fakultas Ekonomi &amp; Bisnis, Universitas Wisnuwardhana Malang di Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya (11/11). Kunjungan ini merupakan <em>sharing session</em> mengenai dunia bisnis PTPN X terhadap generasi muda, khususnya mahasiswa tingkat akhir yang akan masuk dalam dunia kerja.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan diikuti oleh 28 mahasiswa yang mayoritas berasal dari NTT dan 2 dosen pembimbing. Beberapa materi yang disampaikan langsung oleh Direktur Operasional PTPN X, Aris Toharisman antara lain proses produksi gula di PTPN X, kondisi VUCA dan Strategi menghadapi kondisi VUCA, serta revolusi industry 4.0.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Hal terpenting dalam menghadapi era VUCA adalah melakukan eksekusi akan setiap permasalahan. Untuk mengurangi resiko kegagalan, perlu adanya studi-studi kelayakan,&rdquo; terang Aris.</p>\r\n\r\n<p style="text-align: justify;">Acara di mulai dengan pemutaran video company profile PTPN X, di sambung penyampaian terima kasih oleh Bapak Mohammad Rosyidi selaku dosen pembimbing dan di tutup dengan pemaparan kuliah teori Pengambilan Keputusan oleh Direktur Operasional PTPN X. (Valen_UWM, CIN_Sekper).</p>\r\n	0	0	2019-11-12 23:11:15	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-12_at_15.36.56.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/berbagi-ilmu-mahasiswa-unidha-kunjungi-ptpn-x
40	B	PTPN X Hadiri HUT Memorandum	<p style="text-align: justify;">Dalam rangka meningkatkan hubungan baik dengan media, PT Perkebunan Nusantara (PTPN) X turut hadir dalam acara perayaan HUT ke-50 Surat Kabar Harian (SKH) Memorandum. Acara ini diselenggarakan di Kantor Redaksi Memorandum, Jalan Ketintang Baru 3/91, Surabaya pada (11/11).</p>\r\n\r\n<p style="text-align: justify;">Suryanto selaku Sekper &amp; PKBL PTPN X berkesempatan hadir secara langsung pada acara ini sebagai bentuk dukungan kepada SKH Memorandum.</p>\r\n\r\n<p style="text-align: justify;">Memorandum merupakan surat kabar&nbsp;pagi yang terbit di&nbsp;Kota Surabaya,&nbsp;Jawa Timur. Pada perayaan HUT ke-50 ini juga dihadiri oleh Wakil Gubenur Jawa Timur, Emil Elestianto Dardak dan Sahat Tua Simanjuntak, selaku Wakil Ketua DPRD Jawa Timur.</p>\r\n\r\n<p style="text-align: justify;">Di usia emas koran Memorandum dan 1 tahun <em>memorandum.co.id</em> diharapkan dapat menjadi media penyaji berita aktual masa kini khususnya bagi masyarakat Surabaya dan sekitarnya. Selain itu, adanya SKH Memorandum dapat mendukung pemberitaan terkini mengenai PTPN X atau industri gula di tanah air. (Valen_UWM, CIN_Sekper)</p>\r\n	1	0	2019-11-13 00:20:24	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-12_at_17.03.36.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-hadiri-hut-memorandum
55	A	Seni Profesionalisme Dalam Pekerjaan	<p style="text-align: justify;">Profesionalisme dalam pekerjaan merupakan salah satu seni dalam bekerja. Semua orang bisa melakukan pekerjaan, namun tidak semua orang mampu bekerja secara profesional. Profesionalisme merupakan&nbsp;<em>mindset</em>&nbsp;untuk melakukan sesuatu dengan pemahaman yang luas, teknik <em>modern </em>serta&nbsp;<em>passion</em>&nbsp;terbaik untuk menyelesaikan pekerjaan.</p>\r\n\r\n<p style="text-align: justify;">Dalam dunia kerja, tentunya kompetensi terjadi begitu ketat dan keras. Kompetensi internal sampai tingkat kompetensi individu dalam perusahaan akan&nbsp;profesionalisme menjadi satu hal mutlak yang harus anda miliki jika ingin menjadi yang terbaik ditempat anda bekerja.</p>\r\n\r\n<p style="text-align: justify;">Ada lima prinsip profesionalisme yang mungkin bisa menjadi inspirasi untuk anda dalam pengembangan karir anda diperusahaan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki sains khusus yang menjadikan diri anda berbeda dengan yang lain.</strong></p>\r\n\r\n<p style="text-align: justify;">Jadilah pribadi yang unik,&nbsp;buatlah diri anda mempunyai karakter yang berbeda dengan orang lain. Anda harus lebih aktif menonjolkan bakat yang anda miliki, tunjukkan bahwa diri anda bisa menjadi yang terbaik untuk perusahaan. Yang paling penting adalah buat semua orang mengenal anda melalui bakat yang anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki seni kompetensi yang baru</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam perkembangan dunia kerja di sebuah perusahaan, anda tidak akan terlepas dari aktivitas kompetensi. Buatlah seni kompetensi yang ideal dan proporsional. Bagaimana caranya? Pertama, anda harus mempunyai jiwa inovatif dan kreatif untuk mengendalikan irama kompetensi yang sedang berlangsung. Pandai membaca peluang serta cerdas dalam memberi solusi. Kedua, anda harus mempunyai satu langkah lebih cepat dari rekan kerja anda dalam pengembangan kinerja perusahaan dengan lebih cermat dalam pemilihan gagasan.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki tujuan yang luas</strong></p>\r\n\r\n<p style="text-align: justify;">Dalam bekerja, miliki tujuan yang luas. Disamping memikirkan target perusahaan, anda harus mempunyai tujuan untuk diri sendiri. &nbsp;Bangunlah sebuah tujuan yang besar untuk mimpi anda di masa depan. Jangan sampai impian dan tujuan hidup anda tergadaikan karena terlalu sibuk membangun mimpi perusahaan orang lain.</p>\r\n\r\n<p style="text-align: justify;"><strong>Berikan sesuatu yang menarik untuk</strong>&nbsp;<em><strong>stakeholder</strong></em></p>\r\n\r\n<p style="text-align: justify;">Adakalanya hidup perlu berbagi, namun berbagi tidak harus dengan nilai materi. Berbagi bisa dilakukan dengan sebuah hasil kinerja yang baik dan karya mampu membuat perusahaan tempat anda bekerja lebih dikenal publik karena sebuah karya atau produk yang menginspirasi.</p>\r\n\r\n<p style="text-align: justify;"><strong>Miliki</strong>&nbsp;<em><strong>mindset</strong></em>&nbsp;<strong>untuk ikhlas dalam segala aspek kehidupan.</strong></p>\r\n\r\n<p style="text-align: justify;">Ikhlas merupakan&nbsp;<em>power of feeling</em>&nbsp;dalam segala aspek kehidupan. Anda akan mendapatkan segala apa yang anda inginkan apabila anda memiliki rasa penerimaan yang lebih dalam hidup. Lakukan pekerjaan anda dengan penuh rasa keikhlasan, karena sesuatu yang besar berawal dari sebuah ketulusan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: kreativa.co.id</p>\r\n	0	0	2018-08-27 17:54:14	http://ptpn10.co.id/uploads/5b8374be-6178-4523-a08d-0f38e3e14fb4-seni.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/seni-profesionalisme-dalam-pekerjaan
136	B	PTPN X Bagikan Sembako Untuk Ponpes Bumi Shalawat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X terus menunjukan kepedulian sosialnya, Rabu (11/3) PTPN X berpartisipasi dalam pembagian sembako di Pondok Pesantren Bumi Shalawat Sidoarjo bersama Kapolresta Sidoarjo.</p>\r\n\r\n<p style="text-align: justify;">Sembako diserahkan secara langsung oleh Sekper &amp; PKBL, Suryanto bersama Kabaharkam Polri Komjenpol Agus Andrianto dan Kombespol Sumardji dari Kapolresta Sidoarjo. Sembako yang dibagikan antara lain berupa gula produksi PTPN X, Dasa Manis.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Semoga sembako bermanfaat bagi Pondok Pesantren Bumi Shalawat dan semoga PTPN X dapat terus berbagi dengan lingkungan sekitar,&rdquo; ujar Suryanto.</p>\r\n\r\n<p style="text-align: justify;">Pembagian sembako ini juga merupakan wujud BUMN Hadir Untuk Negeri, dimana PTPN X sebagai anak perusahaan BUMN harus hadir dan bermanfaat bagi masyarakat. (CIN_Sekper, PUT_Sekper)</p>\r\n	24	0	2020-03-11 11:39:35	http://ptpn10.co.id/uploads/Sembako_Ponpes_Bumi_Shalawat.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-bagikan-sembako-untuk-ponpes-bumi-shalawat
108	G	Kunjungan Kerja CEO Uttam Sucrotech International Pvt, Ltd ke Kantor Pusat PTPN X	<p>Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo dan Direktur Operasional, Aris Toharisman menerima kunjungan kerja CEO Uttam Sucrotech International Pvt, Ltd Rajan Adlakha dari India dalam rangka memperkenalkan teknologi terbaru di pabrik gula. (6/2)</p>	15	0	2020-02-10 10:08:13	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
56	A	Menjadi Pribadi Inspirasi	<p style="text-align: justify;">Menjadi pribadi inspirasi merupakan konsep revolusi <em>mindset</em> bagaimana menciptakan seorang pemimpin yang ideal dalam suatu perusahaan. Pada dasarnya yang menjadi <em>key of changes </em>dalam perusahaan adalah seni kepemimpinan.</p>\r\n\r\n<p style="text-align: justify;">Dalam manajemen organisasi, peran pemimpin memiliki <em>value </em>yang besar dalam mencapai titik puncak visi dan misi perusahaan. Profesionalisme pemimpin adalah dasar revolusi perubahan.</p>\r\n\r\n<p style="text-align: justify;"><em>The leader&rsquo;s revolution </em>merupakan konsep dasar untuk membentuk karakter pribadi yang menginspirasi jika anda adalah seorang pemimpin di perusahaan, dan apabila anda bukan terlahir sebagai &ldquo;<em>Natural born leader&rdquo;, </em>maka konsep ini bisa dijadikan tips untuk membangun jiwa kepemimpinan dalam diri anda.</p>\r\n\r\n<p style="text-align: justify;"><strong>Personal Respect</strong></p>\r\n\r\n<p style="text-align: justify;"><em>First, Personal respect </em>merupakan hal yang paling dasar dalam <em>leader revolution.</em> Sebelum anda melangkah lebih jauh menjadi seorang pemimpin., anda harus mempunyai pemahaman yang baik tentang <em>personal respect.</em> Dibalik <em>personal respect </em>ada 3 kunci yang harus anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><em>Good manners </em></p>\r\n\r\n<p style="text-align: justify;">Akhlak memang secara umum merupakan hal yang mudah dan terlihat lebih sederhana, namun justru sebaliknya akhlak merupakan awal dari sebuah perubahan yang besar. Jika anda menjadi seorang pemimpin jadilah pribadi yang berakhlak baik. Jadilah pribadi yang <em>respect</em> terhadap <em>user </em>yang bekerja dibawah anda. Hargai kinerja dan hasil keringat karya mereka walau di mata anda itu buruk atau tidak bernilai. Beri dukungan, saran dan kritik yang mendukung. Sebagai pemimpin yang baik, anda harus menjadi orang pertama yang mampu menjadi sumber semangat dan motivasi untuk mereka. &nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>Strong of Feelings </em></p>\r\n\r\n<p style="text-align: justify;">Salah satu membangun <em>good work relationship </em>adalah dengan menjalin hubungan yang baik terhadap semua <em>user</em> yang ada dalam perusahaan. Sebagai pemimpin anda harus mempunyai ikatan perasaan yang kuat terhadap semua rekan kerja anda. Jadilah seorang atasan kerja yang baik dengan selalu memberi <em>attention</em>, <em>feeling support, </em>dan menjadi <em>source of inspiration change.</em></p>\r\n\r\n<p style="text-align: justify;"><em>Emotional</em></p>\r\n\r\n<p style="text-align: justify;">Mencapai impian perusahaan yang besar tidak cukup dengan duduk manis dengan sejuta harapan. Anda harus mempunyai tingkat emosional yang kuat agar mampu merasakan dan memahami arah <em>mindset</em> <em>user </em>dibawah anda. Dengan tingkat emosional yang baik, anda akan memiliki perasaan yang kuat dan hal itu akan membuat seni kepemimpinan anda lebih berkarakter. Salah satu kunci<em>&nbsp;</em>dalam membangun kerjasama dan tingkat kepercayaan tim yang baik adalah keseimbangan pengendalian perasaan.</p>\r\n\r\n<p style="text-align: justify;"><strong>Passion for Change</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Second,</em> selanjutnya adalah <em>passion for Change </em>atau semangat yang tinggi untuk berubah. Hakikatnya tanpa semangat, maka jiwa akan terasa mati. Semboyang Dalam bisnis adalah &ldquo;inovasi harga mati&rdquo;. Sebagai pemimpin, anda harus <em>smart and response in new terms. </em>Berilah inspirasi dan tanamkan jiwa semangat pada seluruh bawahan anda. Anda akan lebih bisa menikmati jatidiri sebagai pemimpin jika semangat tumbuh kembang dalam perusahaan.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>The Soul of a Hero</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Third, </em>jiwa pahlawan harus menjadi karakter seorang pemimpin. Semangat kepahlawanan secara tidak langsung akan menjadi sumber inspirasi untuk semua karyawan yang bekerja dibawah anda. Jiwa pahlawan akan membentuk ketahanan emosional dalam menghadapi beragam permasalahan. Konsep <em>the soul of a hero </em>harus tumbuh dalam jiwa seorang pemimpin. Dengan demikian semua karyawan akan merasa damai, nyaman dan tentram tanpa dihantui perasaan akan kehilangan pekerjaan, dengan begitu keseimbangan alam bawah sadar karyawan akan terbentuk dan hal itu nantinya akan menggali potensi dalam diri mereka. &nbsp;</p>\r\n\r\n<p style="text-align: justify;"><strong>Understanding Feelings</strong></p>\r\n\r\n<p style="text-align: justify;"><em>Fourth, </em>dan yang terakhir adalah <em>understanding feelings </em>atau dikenal dengan istilah pemahaman perasaan. Tingkat kesuksesan seni kepemimpinan anda berada pada kurva <em>point </em>ini. <em>Understanding feelings</em> merupakan <em>value </em>paling tinggi dalam konsep ini. Jika anda tidak memiliki hal ini, bisa jadi anda adalah seorang pemimpin yang gagal. Karena dalam hal ini menentukan suka atau tidak suka seorang bawahan terhadap anda. Pada dasarnya hasil semua pekerjaan tidak ada yang sempurna. Anda sebagai seorang pemimpin harus mempunyai pemahaman perasaan yang lebih terhadap hasil kinerja dari bawahan anda. Mempunyai jiwa <em>perfectionist </em>itu boleh saja, tapi jangan menilai <em>just one eye</em> hasil kinerja tim anda, karena itu akan menghambat mereka &nbsp;untuk berkembang. &ldquo;<em>Jadilah pribadi yang menginspirasi tanpa menggurui&rdquo;. </em>Hakikatnya kesempurnaan pekerjaan berada digaris kerjasama tim yang baik. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: cdn.yourarticlelibrary.com</p>\r\n	0	0	2018-07-19 21:37:15	http://ptpn10.co.id/uploads/pribadi_menginspirasi.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/menjadi-pribadi-inspirasi
78	G	PTPN X Terima Program Australia Indonesia Youth Exchange Program	<p>Dirut PTPN X menerima 2 Duta Pemuda atas nama Miss Ayu Barry (Australia) &amp; Miss Tika (Indonesia).&nbsp;</p>\r\n<p>2 Mahasiswa ini ada Pemuda yang tergabung dalam Program Australia Indonesia Youth Exchange. Program yang merupakan bagian dari program kerjasama bilateral antara Kemenpora RI &amp; Australia. Direncanakan 2 Mahasiswa ini akan Magang di PTPN X selama 2 minggu terhitung mulai tgl 6 Januari 2020 utk mempelajari budaya dan working industry di PTPN X.</p>	51	0	2020-01-08 07:25:05	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
138	B	Flights and Maps bersama Pilot Drone PTPN X	<p>Villa De Nussa, 5 &ndash; 6 Maret 2020, sebanyak 25 peserta dari seluruh pabrik gula serta Puslit Gula Djengkol didampingi perwakilan dari kantor pusat dilatih oleh <em>Scomtech</em> bersama <em>Drone Pilot Academy (DPA)</em> agar lihai menggunakan salah satu teknologi <em>Remote Sensing&nbsp;</em>yang tengah naik daun.</p>\r\n\r\n<p>Ialah <em>Drone</em> atau dikenal juga dengan nama <em>Unmanned Aerial Vechicle</em> (UAV). Merupakan sebuah wahana/pesawat yang diterbangkan tanpa awak mengikuti hukum aerodinamika, dikendalikan jarak jauh oleh pilot dengan menggunakan <em>computer/remote controller</em> serta mampu mengendalikan dirinya sendiri, membawa muatan baik kamera, senjata, maupun muatan lainnya.</p>\r\n\r\n<p>Dengan banyak keistimewaan menjadikan alat <em>multipurpose</em> ini layak untuk digunakan perusahaan dalam memetakan kebun tebu, me-<em>monitoring</em>, mengevaluasi, bahkan melaksanakan pekerjaan kebun dan menjadikan produktivitas kebun secara optimal serta mengefisienkan biaya produksi gula dalam hal waktu dan tenaga kerja.</p>\r\n\r\n<p>&nbsp;&ldquo;Kesempatan belajar ini harus dioptimalkan, dimanfaatkan semaksimal mungkin agar masing-masing dapat memberikan nilai tambah baik untuk diri sendiri juga bagi perusahaan sejalan dengan salah satu semboyan PTPN Grup yaitu Sinergi&rdquo;, sambut Bambang Setyawan kepala urusan <em>Quality Assurance</em> dalam pembukaan pelatihan.</p>\r\n\r\n<p>Di hari pertama pelatihan, peserta memperoleh pengetahuan dasar mengenai <em>drone</em> dan kelengkapannya, peraturan pemerintah Indonesia untuk mengatur penggunaan <em>drone</em>, serta kegunaan <em>drone</em> untuk berbagai bidang. Pada hari kedua peserta terbagi menjadi dua kelompok yaitu pengoperasi <em>drone</em> dan pendamping operasional atau dikenal dengan pilot dan <em>observer</em> <em>drone</em>, serta pengolah hasil <em>drone</em> atau dikenal dengan sebutan <em>Mapper</em>. Tidak berbeda jauh dengan kelompok penerbang, di ruang terpisah kelompok <em>mapper</em> juga diberikan materi khusus dalam menangani data hasil <em>drone</em> berupa foto udara.</p>\r\n\r\n<p>&ldquo;Ada banyak aplikasi tersedia untuk mengolah hasil dari <em>drone</em>, salah satu yang dapat digunakan adalah <em>Agisoft</em>, dengan aplikasi ini dan aplikasi pemetaan lainnya, pengguna <em>drone</em> dapat memperoleh informasi kenampakan visual kebun, <em>Digital Elevation Model</em> (DEM) dan menganalisis sampai dengan kontur. Hasil yang diperoleh sangat presisi, yaitu 8 cm untuk DEM, dan 2 cm untuk kenampakan visual, dan akan lebih presisi lagi jika data yang akan diolah dilengkapi dengan <em>Ground Control Point (GCP)</em>,&rdquo; ujar Ramadhan Adi selaku pemateri dari DPA. (Gina_QA, CIN_Sekper)</p>\r\n	28	0	2020-03-12 11:21:56	http://ptpn10.co.id/uploads/h.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/flights-and-maps-bersama-pilot-drone-ptpn-x
180	B	Cegah Korupsi, PTPN X Terapkan Sistem Manajemen Anti Penyuapan 	<p style="text-align: justify;">Sebagai bagian dari Kementerian BUMN dan anak perusahaan PT Perkebunan Nusantara (PTPN) III Holding, PT Perkebunan Nusantara (PTPN) X berkomitmen untuk menerapkan tata kelola perusahaan yang baik (<em>Good Corporate Governance</em>) salah satunya dengan menerapkan Sertifikasi ISO 37001:2016 tentang Sistem Manajemen Anti Penyuapan. Implementasi ISO tersebut ditandai dengan <em>Kick Off Meeting </em>yang dihadiri oleh Direktur PTPN X Aris Toharisman, SEVP Operation Dimas Eko Prasetyo, SEVP Business Support Septo Kustwitjahjono, beserta manajemen dan seluruh karyawan PTPN X, Kamis (12/11). Selain seluruh karyawan Kantor Pusat, <em>Kick Off Meeting</em> yang dilakukan secara virtual ini juga dihadiri oleh seluruh Direktur dan SEVP anak perusahaan PTPN X.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Pada <em>kick off meeting </em>ini, seluruh karyawan diberikan pemahaman penerapan Sistem Manajemen Anti Penyuapan, mulai dari manfaat, ruang lingkup, hingga tahapan implementasi. Aris menyampaikan bahwa pengimplementasian ISO 37001:2016 di PTPN X mengacu pada arahan dari Kementerian BUMN yang mewajibkan penerapan ISO tersebut di seluruh BUMN dan anak perusahaannya.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Hal yang terpenting bukanlah sertifikasinya yang kita kejar, namun Sistem Manajemen Anti Penyuapan harus diimplementasikan dalam setiap proses bisnis di PTPN X,&rdquo; tambah Aris.</p>\r\n\r\n<p style="text-align: justify;">Manfaat penerapan Sistem Manajemen Anti Suap ini salah satunya adalah meminimalisir risiko aspek legal, meningkatkan efisiensi biaya, meningkatkan daya saing perusahaan, dan meningkatkan moral serta motivasi karyawan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Dengan penerapan ISO 370001:2016, PTPN X dapat menjalankan proses bisnis yang efektif dan efisien serta lebih dipercaya oleh <em>stakeholder</em>,&rdquo; terang Aris.</p>\r\n\r\n<p style="text-align: justify;">Aris juga menjelaskan bahwa anti penyuapan sudah tercermin pada <em>corporate value </em>Kementerian BUMN yaitu AKHLAK (Amanah, Kompeten, Harmonis, Loyal, Adaptif, dan Kolaboratif). <em>Corporate value</em> tersebut akan menjadi budaya perusahaan yang tentunya akan dilakukan secara kolektif oleh seluruh karyawan. (CIN_Sekper, PUT_Sekper)</p>\r\n	1	0	2020-11-12 14:17:57	http://ptpn10.co.id\t\t/uploads/Kick_Off_Meeting_Implementasi_ISO_37001_-_web.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/cegah-korupsi-ptpn-x-terapkan-sistem-manajemen-anti-penyuapan
58	A	Pupuk Hayati Cair 	<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Pupuk cair hayati atau disebut dengan<em> biofertilizer</em> merupakan pupuk yang mengandung mikroorganisme fungsional (bakteri, fungi, dan actomycetes). Apapun namanya pupuk hayati bisa diartikan sebagai pupuk yang hidup. Pupuk hayati selain mengandung mikroba dapat juga unsur&nbsp;nitrogen (N), fosfor (P) dan kalium (K) serta unsur mikro lainnya. Kandungan pupuk hayati adalah mikroorganisme yang memiliki peranan positif bagi tanaman. Kelompok mikroba yang sering digunakan adalah mikroba-mikroba yang menambat N dari udara, mikroba yang melarutkan hara (terutama P dan K), mikroba-mikroba yang merangsang pertumbuhan tanaman.</span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Istilah pupuk hayati digunakan sebagai nama kolektif untuk semua kelompok fungsional mikroba tanah yang dapat berfungsi sebagai penyedia hara dalam tanah, sehingga dapat tersedia bagi tanaman. Pemakaian istilah ini relatif baru dibandingkan dengan saat penggunaan salah satu jenis pupuk hayati komersial pertama di dunia yaitu inokulan<em> Rhizobium</em> yang sudah lebih dari 100 tahun yang lalu.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Pupuk hayati dapat didefinisikan sebagai inokulan berbahan aktif organisme hidup yang berfungsi untuk menambat hara tertentu atau memfasilitasi tersedianya hara dalam tanah bagi tanaman. Memfasilitasi tersedianya hara ini dapat berlangsung melalui peningkatan akses tanaman terhadap hara misalnya oleh cendawan mikoriza arbuskuler, pelarutan oleh mikroba pelarut fosfat, maupun perombakan oleh fungi, aktinomiset atau cacing tanah. Penyediaan hara ini berlangsung melalui hubungan simbiotis atau nonsimbiotis.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color: rgb(255, 255, 255);">Permentan No.70 tahun 2011, menggolongkan pupuk hayati kedalam pupuk organik. Dalam pengertiannya pupuk hayati berfungsi meningkatkan efisiensi pemupukan, kesuburan dan kesehatan tanah. Formulasi pupuk hayati adalah komposisi mikroba dan bahan pembawa penyusun pupuk hayati. Untuk menjadi pupuk hayati yang terdaftar resmi perlu diuji kandungannya dan efektifitas dilahan.</span><span style="background-color:#FFFFFF;"></span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Beradasarkan peraturan tersebut, kualitas pupuk hayati bisa dilihat dari parameter berikut:</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">1) Jumlah populasi mikroorganisme, jumlah mikroorganisme hidup yang terdapat dalam pupuk harus terukur.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">2)&nbsp;</span></span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Efektivitas mikroorganisme, tidak semua mikroorganisme memberikan pengaruh positif pada tanaman. Fungsi pupuk hayati sebagai &nbsp;penambat N, pelarut P, Penghasil fitur hormone dan perombak bahan organik.</span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">3) Bahan pembawa, fungsinya sebagai media tempat mikroorganisme tersebut hidup.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">4) Masa kadaluarsa, sebagai mana mahluk hidup lainnya mikroorganisme tersebut memiliki siklus hidup.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">5) Patogenitas negatif, kontaminan dan logam berat nihil</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Pupuk hayati cair mempunyai banyak manfaat untuk memperbaiki struktur tanah dan membantu perkembangan tanaman. Ada beberapa fungsi pupuk hayati cair, sebagai berikut:</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">1) Sebagai dekomposer atau meningkatkan kesuburan tanaman</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">2) Memperbaiki dan meningkatkan kualitas kandungan organik di dalam tanah.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">3) Menjaga ketersediaan unsur hara di dalam tanah.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">4) Memperbaiki PH dan membantu penambatan nitrogen pada tanah.</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">Jadi dari segi spesifikasi serta perbedaan pupuk cair hayati dan jenis pupuk lainnya terletak pada kandungan mikroorganisme didalamnya. Mikroorganisme inilah yang datang membawa berbagai manfaat positif untuk perbaikan struktur pada tanah</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span lang="EN-US" style="font-family:&quot;Arial&quot;,sans-serif;color:#626262"><span style="background-color:#FFFFFF;">PT Energi Agro Nusantara menghasilkan pupuk hayati cair berbahan baku vinase hasil samping produksi pabrik bioethanol. Pupuk ini terdaftar dengan nama dagang pupuk enero. Didalamnya mengandung mikroba fungsional yang berguna untuk tanaman dan tanah. Selama ini telah banyak petani yang merasakan manfaat pupuk ini. Pupuk ini telah diaplikasikan diberbagai jenis tanaman seperti tanaman tebu, nanas, hortikultura, palawija dan tanaman keras. (Dhanaviya_Enero, CIN_Sekper)</span></span></p>\r\n\r\n<p style="margin: 0cm 0cm 11.25pt; background: rgb(252, 252, 252); vertical-align: baseline; text-align: justify;"><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">(Sumber:&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">alamtani.com ;&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif;">Permentan No 70 ;&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(98, 98, 98); font-family: Arial, sans-serif; font-size: 10.5pt;">andhinitirtaagro.com)</span></p>\r\n	3	0	2018-06-11 16:34:51	http://ptpn10.co.id/uploads/phc.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pupuk-hayati-cair
77	B	Sambut Natal, PTPN X Gelar Bakti Sosial	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menggelar kegiatan bakti sosial dalam rangkaian Natal tahun 2019. Kegiatan bakti sosial tersebut dipusatkan di wilayah kerja Pabrik Gula (PG) Ngadiredjo yakni di Pare, Kediri.</p>\r\n\r\n<p style="text-align: justify;">Menurut Ketua Panitia acara, Ramlan Silvester Sinaga mengutarakan bahwa kegiatan bakti sosial seperti ini telah menjadi rutinitas setiap tahunnya dalam menyambut Natal.</p>\r\n\r\n<p style="text-align: justify;">&quot;Baksos kali ini kami memberikan bantuan kepada tiga tempat yakni Panti Jompo Dinsos Pare,&nbsp; Panti Asuhan Kasih Karunia Pare, dan Karyawan HGU Ngusri. Dan bantuan yang diberikan berupa sembako, uang, dan segala sesuatu yang dibutuhkan tempat tersebut,&quot; jelas pria yang juga menjabat sebagai Pjs. Kepala Bagian Teknik &amp; Pengolahan PTPN X tersebut.</p>\r\n\r\n<p style="text-align: justify;">Di samping itu, tambahnya melalui kegiatan ini, pihaknya diingatkan kembali akan pentingnya kegiatan berbagi kepada mereka yang membutuhkan, dan menunjukkan sukacita Natal kepada sesama.</p>\r\n\r\n<p style="text-align: justify;">Sementara itu hadir dalam kesempatan yang sama, Direktur Komersil PTPN X, Slamet Djumantoro berharap bahwa dengan dilaksanakannya kegiatan ini akan memberikan kebahagiaan bagi seluruh masyarakat warga di lingkungan PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&quot;Melalui bakti sosial ini kita dapat melihat tidak hanya masyarakat yang selalu dalam kondisi normal saja, ternyata masih banyak di antara kita dalam kondisi di luar yang biasa kita pikirkan,&rdquo; ucap Slamet.</p>\r\n\r\n<p style="text-align: justify;">Untuk itu, ia berpesan bahwa dengan momen Natal ini kita harus berbagi. Natal itu harus dapat memberikan manfaat kepada sesama terutama mereka yang membutuhkan. (Red2, PUT_Sekper)</p>\r\n	8	0	2019-12-22 10:01:14	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-12-21_at_17.14.48.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sambut-natal-ptpn-x-gelar-bakti-sosial
57	A	Filosofi Kerja	<p style="text-align: justify;">Istilah kerja sudah tak asing lagi bagi kita. Apalagi jaman sekarang, begitu banyak pemuda sukses bermunculan. Tapi jangan salah, tentunya mereka mempunyai cara kerja yang berbeda pada umumnya.</p>\r\n\r\n<p style="text-align: justify;">Kerja sudah menjadi separuh kehidupan bagi manusia. Beragam aktivitas dilakukan untuk melakukan sebuah pekerjaan. Meski begitu, tidak semua orang tahu apa sebenarnya hakikat dari sebuah pekerjaan. Beberapa orang menilai sebuah pekerjaan hanya dari segi gaji atau jabatan, sedangkan sebagian persen lainya menilai sebuah pekerjaan dari segi kepuasan hati.</p>\r\n\r\n<p style="text-align: justify;">Sebenarnya ada filosofi besar dibalik kata &lsquo;kerja&rsquo;. Kerja bukan hanya sekedar insting untuk mencari materi. Namun pekerjaan bisa menjadi sumber kebahagiaan yang besar jika kita mampu mengendalikannya.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya melihat orang yang bekerja kantoran tapi tidak sesuai dengan minat mereka itu seperti seekor ubur-ubur lembur. Lemah, lunglai hanya hidup mengikuti arus. Lembur sampai malam, tapi tidak bahagia. Tidak menemukan sesuatu yang membuat hidup mereka punya arti&rdquo; (Raditya Dika). Dari kutipan karya Raditya Dika tersebut, itu merupakan sebuah fenomena&nbsp;<em>pathetic</em>&nbsp;yang banyak terjadi sekarang ini. Sebagai manusia yang mempunyai jatidiri sebagai makhluk yang sempurna, seharusnya bisa melakukan pekerjaan dengan nilai lebih. Lantas apa filosofi kerja itu? Sebenarnya filosofi kerja itu hanya sebatas bagaimana cara kita bekerja, namun selain kita mendapatkan materi, kita juga bisa merasa bahagia. Kebahagiaan inilah yang menjadi&nbsp;<em>point</em>&nbsp;besar dalam filosofi kerja.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;"><em>First, working on the field</em>. Jika ingin lebih bisa menikmati sebuah pekerjaan. Bekerjalah sesuai bidang yang anda sukai. Karena rasa suka adalah bagian dari cinta, dan cinta adalah komponen utama dalam meraih kebahagiaan.</p>\r\n\r\n<p style="text-align: justify;"><em>Second, Work to achieve your dream</em>. Jangan hanya sekedar bekerja. Bekerja di perusahaan orang lain itu tidak jadi masalah. Yang jadi masalah adalah ketika kita terlalu sibuk membangun mimpi orang lain dan melupakan mimpi kita sendiri.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><em>Third, Work smart.</em>&nbsp;Bekerjalah dengan cerdas. Pandai bergaul dengan rekan kerja, inovatif dan kreatif. Jangan membiasakan bekerja dengan cara yang sama setiap hari, tapi ciptakan metode dan teknik baru, agar apa yang kita hasilkan bisa menginspirasi banyak orang.</p>\r\n\r\n<p style="text-align: justify;"><em>Fourth,</em>&nbsp;<em>work with a sincere heart</em>. Apapun pekerjaan Anda, lakukan dengan tulus dan penuh penerimaan hati yang ikhlas. Karena dari ketulusan, apa yang kita hasilkan dari pekerjaan akan membuat sebuah perubahan baru.</p>\r\n\r\n<p style="text-align: justify;">Itulah 4 konsep makna filosofi kerja yang mungkin belum Anda ketahui selama ini. Terkadang kita perlu pemahaman yang lebih untuk melakukan pekerjaan yang baik. Membangun sebuah rasa pendalaman untuk menyatu dengan pekerjaan. Karena pada dasarnya, pekerjaan yang besar hanya mampu dilakukan oleh orang yang tahu apa makna dari sebuah pekerjaan.&nbsp;(Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar : entrepreneurshiplife.com</p>\r\n	4	0	2018-06-20 15:03:18	http://ptpn10.co.id/uploads/filosofi_kerja.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/filosofi-kerja
60	A	Eksistensi PTPN X di bidang on Farm melalui Teknologi Foto Udara	<p style="text-align: justify;">Jika kita mempelajari pada peta (<em>google maps</em>) begitu luasnya sebaran areal PTPN X. Sebanyak <u>+</u> 70.000 Ha lahan perkebunan tebu milik petani binaan 10 Pabrik Gula, yang tersebar di 19 Kabupaten, 240 Kecamatan, dan 2.175 Desa.</p>\r\n\r\n<p style="text-align: justify;">Beberapa adopsi teknologi sudah di lakukan PTPN X melalui aplikasi <em>e-farming</em> berbasis GIS yang dapat diakses melalui <em>web</em> maupun <em>mobile</em>. Teknologi ini terus dilakukan pembaruan sampai dengan saat ini. Beberapa fitur pada aplikasi tersebut sudah cukup membantu petugas untuk memverifikasi pendaftaran areal.</p>\r\n\r\n<p style="text-align: justify;">Ada beberapa temuan, salah satunya adalah kondisi sosial ekonomi petani mempengaruhi minat menanam tebu. Jika pendapatan petani meningkat, muncul lahan &ndash; lahan baru yang ditanami tebu dimana sebelumnya merupakan tanaman padi dan palawija. Sebaliknya, jika pendapatan petani menurun, lahan yang semula ditanami tebu beralih komoditi menjadi tanaman lain atau bahkan beralih fungsi menjadi bangunan.</p>\r\n\r\n<p style="text-align: justify;">Melihat realita di atas, tentunya tidak mudah untuk mengelola data lahan secara <em>real</em> dikarenakan sering terjadi perubahan fungsi lahan secara dinamis. Oleh karena itu, dibutuhkan teknologi tepat guna untuk mengetahui kondisi lahan terkini, khususnya berkaitan dengan perubahan tata guna lahan maupun produktivitas tanaman. Teknologi yang saat ini digunakan adalah pengolahan data citra dari hasil foto udara dengan <em>drone</em>.</p>\r\n\r\n<p style="text-align: justify;">Saat ini penggunaan <em>drone</em> sudah banyak dimanfaatkan di kalangan pertanian di Indonesia, termasuk di pabrik gula PTPN X guna membantu dalam hal <em>monitoring</em> lahan, mengingat keterbatasan jangkauan indera penglihatan manusia yang tidak mungkin mencakup kondisi lahan yang sebarannya sangat luas.</p>\r\n\r\n<p style="text-align: justify;">Dengan memanfaatkan<em> drone</em>, satu kali pengamatan/terbang mampu meng-<em>cover</em> areal rata-rata seluas (500 x 500 m) atau 25 Ha secara utuh. Sejauh ini, hasil dari foto udara kemudian diolah dan dianalisis secara <em>tematik</em> apakah ada petak yang beralih komoditi/ beralih fungsi lahan serta untuk melihat homogenitas pertumbuhan tanaman yang digunakan sebagai dasar perkiraan potensi produksi.</p>\r\n\r\n<p><strong><em>Alur pembuatan peta tematik dari data foto udara :</em></strong></p>\r\n\r\n<p></p>\r\n\r\n<p><strong><em>Analisis tata guna lahan :</em></strong></p>\r\n\r\n<p></p>\r\n\r\n<p><strong><em>Analisis homogenitas pertumbuhan tanaman :</em></strong></p>\r\n\r\n<p><strong><em></em></strong></p>\r\n\r\n<p>Sedangkan negara-negara dengan pertanian yang maju seperti Australia telah memanfaatkan teknologi tersebut untuk berbagai hal antara lain pemantauan kesehatan tanaman, penyebaran pias, pemantauan pekerjaan lahan &amp; irigasi, identifikasi gulma dan kesuburan tanah. Hal semacam ini bukan tidak mungkin dapat terealisasi di PTPN X ke depan dengan secara konsisten melakukan <em>update</em> informasi dan inovasi teknologi. (Isda_PG Tjoekir, CIN_Sekper)</p>\r\n	5	0	2018-03-26 18:00:20	http://ptpn10.co.id/uploads/drone_1.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/eksistensi-ptpn-x-di-bidang-on-farm-melalui-teknologi-foto-udara
96	B	Sukseskan Giling 2020, PTPN X Adakan Gathering	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Memasuki Giling 2020, PT Perkebunan Nusantara (PTPN) X mengadakan kegiatan Gathering bersama Mitra. Gathering ini dihadiri oleh Direktur Operasional PTPN X, Aris Toharisman beserta Kabag Budidaya &amp; Sarpram, Kabag Pemasaran, Kabag Keuangan &amp; Akuntansi beserta jajarannya dan dihadiri oleh 15 pelanggan mitra Gula dan Tetes. Acara tersebut diselenggarakan di Hotel Santika Premier Gubeng, Surabaya pada Selasa (21/1).</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;<em style="box-sizing: border-box;">Alhamdulillah</em>, giling tahun 2019 telah terselesaikan dengan baik. Saya sangat berterima kasih dan mengapresiasi tinggi terhadap seluruh pihak yang telah membantu kelancaran giling 2019. &nbsp;Harapan saya hal tersebut dapat menjadi semangat untuk meningkatkan lebih lagi sinergi pada musim giling 2020,&rdquo; ujar Aris dalam sambutannya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dari hasil diskusi tersebut diharapkan dapat menumbuhkan hubungan baik antara mitra dan PTPN X untuk meningkatkan kerjasama khususnya dalam peningkatan kinerja Operasional dan pelayanan terhadap&nbsp;<em style="box-sizing: border-box;">stakeholder</em>&nbsp;maupun&nbsp;<em style="box-sizing: border-box;">shareholder</em>&nbsp;pada musim giling 2020 di semua Pabrik Gula milik PTPN X. (Valen_UWM, PUT_Sekper).</p>	18	0	2020-01-23 18:16:34	images/news/WhatsApp_Image_2020-01-23_at_07_22_24.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
67	A	Leadership Adalah Tentang Persetujuan Dari Yang Dipimpin	<p></p>\r\n\r\n<p>Leadership membutuhkan persetujuan dari bawahan sebagai sosok yang dipimpin. Mengapa demikian?&nbsp; Tanpa adanya persetujuan dari yang dipimpin, maka seorang pemimpin akan mendapatkan kesulitan dalam mengarahkan bawahannya. Sehingga mengakibatkan program yang sudah dicanangkan tidak dapat berjalan dengan baik.</p>\r\n\r\n<p>Karena itu seorang pemimpin harus dapat menunjukkan ke bawahannya, bahwa mereka adalah sosok yang pantas untuk memimpin dan memberi arahan untuk menuju arah yang lebih baik lagi.</p>\r\n\r\n<p>Seorang bawahan membutuhkan <em>role model</em> yang tepat dalam menjalankan pekerjaannya. Dan itu harus mereka dapatkan dari sosok pemimpinnya. Jika seorang pemimpin tidak dapat menjadi <em>role model </em>yang baik, bisa dipastikan bawahannya tidak akan patuh 100%. Mereka akan memiliki anggapan, &quot;<em>lha wong</em> pimpinanku aja seperti itu, maka normal saja saya juga tidak akan bekerja dengan baik&quot; atau &quot;untuk apa menuruti perintah pimpinan yang integritasnya juga tidak ada, capek sendiri&quot;.</p>\r\n\r\n<p>Nah, sebagai seorang pemimpin, bagaimana cara yang terbaik untuk memimpin? Menurut seorang pakar kepemimpinan, rahasia termudah untuk menjadi pemimpin yang baik adalah dengan <strong>Get Trust dan Ask.</strong></p>\r\n\r\n<p><strong>Get Trust</strong></p>\r\n\r\n<p>Sebelum memulai melaksanakan tugas sebagai seorang pemimpin, mereka harus menceritakan terlebih dahulu siapa mereka, bagaimana cara mereka memimpin dan apa harapan mereka kepada bawahannya.</p>\r\n\r\n<p>Ketika seorang pemimpin melakukannya, maka bawahan mereka akan menganggap pemimpinnya adalah orang yang open mind atau terbuka. Dampaknya adalah mereka akan menjadi lebih terbuka dalam menyuarakan ide dan aspirasinya</p>\r\n\r\n<p>Dalam kondisi tersebut suasana bekerja di dalam sebuah Perusahaan akan menjadi semakin kondusif. Hal ini diharapkan dapat meningkatkan produktivitas di dalam pekerjaan. Bukankah salah satu peran dari seorang pemimpin adalah untuk meningkatkan produktivitas kerja dari bawahannya.</p>\r\n\r\n<p><strong>Ask</strong></p>\r\n\r\n<p>Seorang pemimpin perlu menanyakan kepada bawahannya tentang apa yang dapat membuat mereka bisa bekerja dengan optimal.</p>\r\n\r\n<p>Tentu maksud dari pertanyaan ini bukanlah untuk membuat seorang bawahan dapat menyampaikan permintaannya melebihi dari peraturan yang sudah ditetapkan oleh perusahaan. Selalu ada batas yang sudah ditetapkan dan digarisbawahi dari peraturan yang sudah dikeluarkan oleh Perusahaan.</p>\r\n\r\n<p>Tetapi maksud dari pertanyaan ini adalah supaya setiap karyawan dapat bekerja dengan nyaman dan optimal dengan tujuan akhir adalah mencapai target yang sudah dicanangkan oleh perusahaan.</p>\r\n\r\n<p>Berikut adalah beberapa contoh pertanyaan yang bisa dikemukakan kepada bawahan:</p>\r\n\r\n<ol>\r\n\t<li>Apa yang harus kami lakukan yang belum kami lakukan saat ini, yang dapat meningkatkan performa Anda dalam bekerja?</li>\r\n\t<li>&nbsp;Apa yang harus kami hentikan yang sudah kami lakukan saat ini, yang dapat menghambat Anda mencapai performa maksimal dalam bekerja?</li>\r\n\t<li>Apa yang harus tetap kami lakukan dalam memimpin Anda, supaya Anda dan divisi Anda dapat mencapai performa terbaik?</li>\r\n</ol>\r\n\r\n<p>Selain kedua cara di atas <strong>ask &amp; get trust, </strong>ada metode yang dapat meningkatkan persetujuan dari seorang bawahan untuk dipimpin oleh pemimpinnya. Yaitu dengan <strong>membuat daftar hitam dan putih</strong>.</p>\r\n\r\n<p>Buatlah sebuah daftar yang berisikan hal-hal yang kita sukai dari pemimpin kita dan lakukan kepada bawahan kita. Kemudian buatlah daftar lainnya yang berisikan hal-hal yang tidak kita sukai dari pemimpin kita dan hindari melakukannya kepada bawahan kita.</p>\r\n\r\n<p>Setiap dari kita tentu pernah berinteraksi dengan seorang pemimpin. Dan harus diakui ada hal-hal yang kita sukai dan tidak. Daftar yang kita buat di atas sangat bermanfaat saat kita menjadi seorang pemimpin. Apakah kita akan melakukan hal yang kita sendiri tidak menyukainya saat menjadi seorang bawahan?</p>\r\n\r\n<p>Semoga setiap pemimpin semakin memahami bahwa untuk memimpin seseorang membutuhkan persetujuan dari yang dipimpin. Dan mendapatkan kepercayaan dari bawahan merupakan langkah awal untuk memimpin dan mengarahkan mereka sejalan dengan target yang telah ditetapkan oleh Perusahaan. (Rehandy Prismawan</p>\r\n\r\n<p>_ENERO)</p>\r\n\r\n<p>Sumber Penulisan:</p>\r\n\r\n<p>Internal training karyawan,&nbsp; &quot;Mindset Building For Organizational Development&quot;.</p>\r\n	4	0	2017-01-18 19:23:18	http://ptpn10.co.id/uploads/gaya-kepemimpinan-dalam-organisasi1.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/leadership-adalah-tentang-persetujuan-dari-yang-dipimpin
62	A	BBN Masih Jalan di Tempat	<p></p>\r\n\r\n<p>Realisasi Bahan Bakar Nabati (BBN) untuk tahun ini masih jalan di tempat. Rencana pemasaran, PT Energi Agro Nusantara selaku produsen <em>ethanol</em> untuk BBN masih didominasi kebutuhan <em>raw ethanol</em> untuk industri. Hal ini diungkapkan Dimas Eko Prasetyo, Direktur PT Energi Agro Nusantara kemarin (7/6) pada saat ditemui di Main Office PT Energi Agro Nusantara, Mojokerto.</p>\r\n\r\n<p>&ldquo;Rencana produksi kami lebih diarahkan pada <em>raw ethanol</em> untuk pasar industri, sementara permintaan ethanol untuk BBN masih nihil&rdquo; ujar Dimas</p>\r\n\r\n<p>Hal ini sangat disayangkan karena konsumsi BBN sudah menjadi mandatori dari Pemerintah. Sebagaimana tercantum dalam kebijakan pemerintah yaitu UU No. 30 Tahun 2007 tentang Energi dimana Badan Usaha diwajibkan untuk menggunakan BBN sebagai energi baru terbarukan. Selain itu aturan turunan lainnya sudah ada seperti PP, Kepres sampai Permen.</p>\r\n\r\n<p>Terakhir kali <em>ethanol</em> untuk BBN digunakan pada tahun lalu oleh Pertamina namun porsinya sangat kecil sekitar 8.000 liter untuk Pertamax Racing. Sedangkan kapasitas produksi dari PT Energi Agro Nusantara saja mencapai 100 Kl per hari atau 100.000 liter <em>ethanol</em> per hari.</p>\r\n\r\n<p>Perkembangan terakhir, aplikasi BBN terkendala pada fasilitas <em>blending</em> (pencampuran) <em>ethanol</em> dengan Bahan Bakar Minyak (BBM) untuk dijadikan BBN. Fasilitas tersebut sudah dipenuhi oleh PT Pertamina di Surabaya, Ujung Berung dan Balongan. Sedangkan badan usaha lainnya masih dalam tahap pembangunan sarana fasilitas<em> blending</em>.</p>\r\n\r\n<p>Selama ini badan usaha pembeli BBN memang masih mencampur <em>bioethanol </em>secara bersama dalam tangki <em>comingle system</em> atau tangki dengan beberapa kepemilikan. Kondisi seperti ini tidak dipersyaratkan oleh pemerintah, sehingga tiap badan usaha diminta membangun fasilitas blending sendiri-sendiri.</p>\r\n\r\n<p>Melihat kondisi aktual tersebut, PT Energi Agro Nusantara saat ini masih menunggu pengadaan bioethanol untuk BBN yang direncanakan Pertamina bulan Mei lalu dan pengadaan ethanol dari badan usaha lainnya. Berdasarkan rapat implementasi mandatori bioethanol Februari lalu, Kebutuhan ethanol untuk BBN sebesar 2% dengan rincian PT Pertamina (Persero) sekitar 47.567 Kl/tahun, PT Shell indonesia 9.500 Kl/tahun, PT Total Oil Indonesia sekitar 700 Kl/tahun dan PT NEPI sekitar 120 Kl/tahun dan PT AKR 1000 Kl/tahun.</p>\r\n\r\n<p>&ldquo;Jika program mandatori tetap terealisasi maka ini menjadi kabar baik baik bagi kami, namun demikian kami tetap mencari peluang pasar lainnya untuk keberlangsungan perusahaan&rdquo; lanjut Dimas</p>\r\n\r\n<p>Pada tahun ini, PT Energi Agro Nusantara menargetkan produksi <em>ethanol</em> sebesar 13.350 Kl dengan waktu produksi dimulai bulan Juni lalu sampai Desember. Selain PT Energi Agro Nusantara, produsen <em>ethanol</em> lainnya yang masih eksis antara lain Molindo Raya, Indo Acidatama, Indonesia Ethanol Industry, Ethanol Ceria Abadi dan PT Madubaru. Total kapasitas produsen ethanol tersebut mampu menyuplai 212.200 Kl per tahun. Sedangkan kebutuhan BBN 1% saja dari total BBM telah mencapai 300.000 KL. Sehingga usaha ini masih prospektif karena suplai ethanol untuk BBN masih kurang dari kebutuhan BBN nasional.</p>\r\n\r\n<p>Seperti kita ketahui bersama BBN dari <em>ethanol</em> yang dicampur dengan BBM adalah program pemerintah terkait energi terbarukan yang sangat diharapkan untuk mengurangi ketergantungan konsumsi BBM murni. Di negara-negara sekitar seperti Thailand dan Filipina, sudah menggunakan BBN sebagai kebutuhan bahan bakar kendaraan mereka. Perhatian terhadap penggunaan BBN semakin meningkat dari tahun ke tahun. Dari tahun 2015 sampai 2016 saja, kebutuhan BBN di regional asia dan Oceania meningkat 12% dan diprediksi terus meningkat dari tahun ke tahun seiring dengan pemahaman pentingnya BBN untuk kelangsungan energi jangka panjang &nbsp;(ARH_Enero, FIR_Sekper).</p>\r\n	2	0	2017-07-17 16:33:10	http://ptpn10.co.id/uploads/enero_pabrik_1.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/bbn-masih-jalan-di-tempat
64	A	Pengembangan dan Energy Balance Ethanol di Brazil	<p></p>\r\n\r\n<p>Perkembangan bioethanol di Brazil menjadi tolok ukur kesuksesan industri ethanol&nbsp;dunia. Sebagai <em>role model,</em> informasi pengembangan ethanol di Brazil perlu diketahui bersama terlebih fungsinya untuk campuran bahan bakar konvensional atau fosil. Selain itu, perlu diketahui juga keefektifan pemanfaatan ethanol dari <em>energy balance</em>-nya.</p>\r\n\r\n<p><strong>Perkembangan Industri Gula di Brazil</strong></p>\r\n\r\n<p>Sumber biomassa terbesar di Brazil adalah tanaman tebu dan residu hasil hutan. Industri gula di Brazil sudah ada sejak negara tersebut dibentuk. Berawal dari produksi secara tradisional dan berkembang sejak tahun 1930, ketika Get&uacute;lio Vargas, presiden Brazil saat itu, membentuk The Sugar and Alcohol Institute (IAA). Namun, perubahan drastis terjadi ketika Pemerintah Brazil menetapkan Pro&aacute;lcool (Program Alkohol Nasional) pada tahun 1970-an dan selanjutnya industri gula disana berkembang secara masif.</p>\r\n\r\n<p>Saat ini, Brazil adalah produsen tebu terbesar di dunia yang menyuplai 25% produksi tebu dunia, 13,5% produksi gula dunia dan 55% produksi ethanol dunia. Penanaman tebu mencapai 5 juta ha. Produksi tebu mencapai 340 juta, 25&nbsp; juta gula dan lebih dari 14 miliar liter ethanol. Sedangkan, industri ethanol sendiri telah menyediakan Bahan Bakar Nabati (BBN) untuk 4 juta kendaraan. Industri gula dan ethanol telah menghasilkan 12 miliar dollar atau setara 156 triliun rupiah dan menciptakan 600.000 jenis aktivitas pekerjaan yang terkait. Hampir seluruh penanaman tebu disana didedikasikan untuk produksi ethanol.</p>\r\n\r\n<p><strong>Ethanol sebagai Bahan Bakar </strong></p>\r\n\r\n<p>Khusus untuk ethanol, sebagai bahan bakar kendaraan, kualitasnya jauh lebih baik dari bahan bakar konvensional atau fosil. Ethanol memiliki <em>oxygen</em> <em>content</em> tinggi, tingkat pembakaran sempurna, meningkatkan performa mesin dan mengurangi emisi karbon.&nbsp; Berdasar pada Brazilian <em>Development Bank&nbsp;and Centre for Strategic Studies and Management Science, Technology and Innovation</em> (BNDES), penggunaan bioethanol di Brazil dimulai sejak 1931. Dengan tujuan mengurangi konsumsi BBM dengan pemanfaatan diversifikasi produk gula.</p>\r\n\r\n<p>Dimulai dari pencampuran ethanol 5% pada bahan bakar fosil, selanjutnya Pro&aacute;lcool menetapkan konsumsi untuk 3 miliar liter bioethanol dan memberikan insentif untuk pengembangan produksi dan konsumsi bioethanol di Brazil. Sebagai suatu program, melalui Pro&aacute;lcool Pemerintah Brazil mengambil kebijakan:</p>\r\n\r\n<ol>\r\n\t<li>Tiap tahunnya penggunaan ethanol pada BBM harus meningkat secara bertahap</li>\r\n\t<li>Penetapan harga terjangkau bagi konsumen dan bersaing dengan harga bahan bakar fosil</li>\r\n\t<li>Penjaminan harga kompetitif bagi produsen ethanol dalam bentuk subsidi</li>\r\n\t<li>Penyediaan kredit dengan berbagai tingkatan untuk pabrik gula dengan tujuan&nbsp; meningkatkan kapasitas produksi</li>\r\n\t<li>Pengurangan pajak kendaraan berbahan bakar ethanol, mewajibkan ketersediaan ethanol di tiap-tiap POM Bensin, memonitoring stok ethanol untuk memastikan suplai ethanol selalu terpenuhi</li>\r\n</ol>\r\n\r\n<p>Perkembangan program yang baik diikuti pula beberapa inovasi seperti kehadiran <em>flex</em> <em>vehicles</em> (kendaraan berbahan bakar campuran ethanol dan atau bahan bakar fosil). Teknologi ini diterima sangat luar biasa oleh masyarakat di Brazil dan menstimulasi <em>industri</em> <em>fuel</em> <em>ethanol</em> untuk berkembang pesat. Puncak perkembangan terlihat pada tahun 2009 saja, dimana industri gula di Brazil berhasil memproduksi 25 juta m<sup>3</sup> ethanol.</p>\r\n\r\n<p><strong>Energy Balance</strong></p>\r\n\r\n<p>Sedangkan dilihat dari efisiensinya, perlu diperhatikan <em>Energy</em> <em>Balance</em> dari penggunaan ethanol. Energy Balance atau kesetimbangan energi, biasanya dipresentasikan oleh <em>Net Energy Ratio</em> (NER), dimana hasil dari energi terbarukan dari biofuel dan produk sampingnya dibagi dengan input dari energi konvensional (fosil) dalam seluruh rangkaian rantai produksi. NER memberikan indikasi yang baik atas kapasitas dari biofuel dalam mengurangi ketergantungan energi fosil. Kesetimbangan energi ethanol di Brazil sudah dianalisa sejak tahun 1980-an dan di-<em>update </em>pada tahun 2006 dengan hasil sebagai berikut:</p>\r\n\r\n<ul>\r\n\t<li>Produksi dan transportasi tebu: 210,2 MJ/ton tebu</li>\r\n\t<li>Pengolahan menjadi ethanol: 23,6 MJ/ton tebu</li>\r\n\t<li>Input energi fosil atas poin a dan b: 233,8 MJ/ton tebu</li>\r\n\t<li>Energi terbarukan yang dihasilkan atas poin a dan b: 2185,2 MJ/ton tebu</li>\r\n\t<li>Energi dari ethanol yang dihasilkan: 1.926,4 MJ/ton tebu</li>\r\n\t<li>Surplus ampas tebu: 176 MJ/ton tebu</li>\r\n\t<li>Surplus listrik: 82,8 MJ/ ton tebu</li>\r\n\t<li>NER (<em>Renewable</em> <em>output</em>: ethanol + ampas tebu)/input energi fosil 9 MJ/ton tebu</li>\r\n\t<li>NER (<em>Renewable</em> <em>output</em>: ethanol + ampas tebu + listrik)/input energi fosil 9,3 MJ/ton tebu</li>\r\n</ul>\r\n\r\n<p>Dapat diartikan rasio nilai energi dari ethanol dan surplus ampas tebu adalah 9 kali lebih besar dari input energi fosil, apabila ethanol, surplus ampas tebu ditambahkan dengan surplus listrik maka nilai energi dari pengolahan ethanol dan produk samping adalah 9,3 kali lebih besar dari yang dihasilkan oleh input energi fosil.</p>\r\n\r\n<p>Bahkan menurut Peter Zuuber dalam buku <em>Sugarcane Ethanol, contributions to climate change mitigation and environment</em>, pengembangan industri ethanol secara konsisten, akan memberikan energi rasio 12 kali lebih baik daripada energi fosil. Selain lebih baik, ethanol juga ramah lingkungan, seperti dilansir dari penelitian BNDES, ethanol mengurangi 90% emisi atas efek rumah kaca, berkontribusi dalam mitigasi perubahan iklim dan setiap m<sup>3</sup> ethanol yang dicampur dengan BBM akan mengurangi 1,9 mn t CO2 yang merusak atmosfer.</p>\r\n\r\n<p>Dari bahasan di atas, Indonesia sudah selayaknya berkaca pada Brazil atas pengembangan ethanol. Jika sumber, sarana prasarana, kebijakan sudah tersedia, hanyalah konsistensi yang dibutuhkan saat ini. (ARH_Enero, FIR_Sekper)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sumber: </strong></p>\r\n\r\n<p>Zuuber P., van de Vooren J., 2008: <em>Sugarcane Ethanol, contributions to climate change mitigation and environment, </em>Wageningen Academic Publishers</p>\r\n\r\n<p>Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens KG</p>\r\n	2	0	2017-04-19 15:53:40	http://ptpn10.co.id/uploads/bioethanol_brazil.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pengembangan-dan-energy-balance-ethanol-di-brazil
185	B	Board of Management PTPN X Tinjau Aset di Klaten	<p>Salah satu fokus dari Board of Management (BOM) PT Perkebunan Nusantara (PTPN) X adalah optimalisasi aset di beberapa wilayah. Hal tersebut ditindaklanjuti dengan kunjungan SEVP Operation, Dimas Eko Prasetyo dan SEVP Bussiness Support, Septo Kuswitjahjono ke Klaten, Sabtu (24/10). Kunjungan ini dalam rangka penyusunan strategi optimalisasi aset yang diharapkan mampu memberikan nilai tambah dan profitabilitas bagi perusahaan.&nbsp;</p>\r\n\r\n<p>Dalam kunjungan ini BOM juga berdiskusi dengan jajaran manajemen lainnya mengenai potensi aset tersebut. Sehingga, nantinya optimalisasi aset dapat berjalan secara tepat.&nbsp;</p>\r\n\r\n<p>&ldquo;Optimalisasi aset merupakan hal yang mutlak dilakukan. Sehingga, perusahaan akan mendapatkan nilai tambah yang berdampak pada peningkatan profitabilitas,&rdquo; pungkas Septo. (Silvi_PMMB, Put_Sekper)</p>\r\n	4	0	2020-10-26 13:15:24	http://ptpn10.co.id/uploads/5f96693f-54d8-4126-921f-7308e3e14fb4-Aset.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/board-of-management-ptpn-x-tinjau-aset-di-klaten
102	B	Mengawali Tahun 2020, PTPN X Raih Penghargaan SMK3	<p>PT Perkebunan Nusantara (PTPN) X meraih penghargaan dalam kegiatan Bulan K3 Nasional Tahun 2020. Melalui unit usaha Pabrik Gula (PG) Pesantren Baru, PG Ngadirejo, PG Tjoekir dan PG Kremboong berhasil meraih kategori dalam penerapan Sistem Manajemen Keselamatan dan Kesehatan Kerja (SMK3) di unit usaha dengan hasil pencapaian 89,16%. Mengusung tema ‘Optimalisasi Kemandirian Masyarakat Berbudaya K3 Pada Era Revolusi Industri 4.0 Berbasis Teknologi Informasi’ acara Apel Pembukaan Bulan K3 Nasional Dinas Ketenagakerjaan Provinsi Jatim diselenggarakan di Lapangan Kawasan SIER, Surabaya (13/1).</p>\r\n<p> </p>\r\n<p>Penghargaan tersebut diserahkan langsung oleh Gubenur Jatim, Khofifah Indar Parawansa dan dihadiri oleh Direktur Operasional PTPN X, Aris Toharisman beserta General Manager PG. PTPN X menerima penghargaan Kategori Emas SMK3 yang diwakili oleh General Manager PG Pesantren Baru,  Bambang Hari Nugroho. Peringatan Bulan K3 tahun ini merupakan peringatan ke-50 sejak diterbitkannya Undang Undang Nomor 1 Tahun 1970 tentang Keselamatan Kerja. Kegiatan diselenggarakan mengacu pada Kepmenaker RI Nomor 328 Tahun 2019 tentang Petunjuk Pelaksanaan Bulan K3 Nasional Tahun 2020.</p>\r\n<p> </p>\r\n<p>Seluruh unit usaha PTPN X sekarang telah menerapkan SMK3 baik di unit usaha PG maupun Kebun guna menjamin keselamatan dan kesehatan kerja seluruh karyawan PTPN X. Penghargaan tersebut diberikan terhadap perusahaan dan instansi di Jawa Timur yang telah berhasil menerapkan SMK3 dengan baik. Selain pemberian penghargaan, kegiatan juga dilanjutkan dengan pemaparan Simulasi Tanggap Darurat dan Simulasi Rambu Kecelakaan dan Kebakaran. (Valen_UWM, PUT_Sekper).</p>	16	1	2020-01-31 09:56:13	images/news/5e30da85-10bc-45ce-9a77-1bcce3e14fb4-WhatsApp_Image_2020-01-14_at_08_21_24.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
63	A	Pemanfaatan Vinasse sebagai Pupuk Hayati Cair	<p></p>\r\n\r\n<p>Vinasse, biasa juga disebut sebagai <em>stillage</em> merupakan hasil samping akhir dari proses pengolahan ethanol. Sebelum dihasilkan vinasse hasil samping lainnya dapat dimanfaatkan sebagai diversifikasi proses ethanol seperti <em>yeast</em> <em>mud</em>, biogas, CO<sub>2</sub> dll. Penampakan <em>vinasse</em> berupa cairan kecoklatan dengan massa jenis lebih besar daripada air atau sekitar 1,042 g/cm<sup>3</sup><strong>. </strong>Menurut Meeyer (2013), di beberapa negara, vinasse mengandung nutrisi tinggi terutama potasium dan baik digunakan sebagai pupuk.&nbsp;</p>\r\n\r\n<p>Komposisi Vinasse</p>\r\n\r\n<p>Komposisi vinasse bergantung pada bahan baku proses ethanol, model pengolahan ethanol bahkan pemanfaatan hasil samping lainnya. Namun, sebagian besar vinasse bersifat organik karena bahan baku dan pembantunya juga berasal dari bahan organik. Kandungan vinasse (berbahan baku molasses), sebagai contoh studi di Brazil yaitu unsur-unsur makro dan mikro N, P, K, Ca Mg dan S yang nilainya berkisar dari 0,04-6,5 g/L, serta pH kisaran 4-5. Sedangkan kandungan vinasse di Kolombia berupa N, P, K, Ca Mg dan S berkisar dari 0,01-3,52 g/L, serta pH sekitar 5. Sedangkan karakteristik vinasse dari pengolahan ethanol di PT Energi Agro Nusantara, kandungan unsur-unsur makro sudah berkurang dikarenakan telah terpakai dalam proses biomethanasi yang merubah material organik menjadi energi dalam bentuk biogas. Walaupun demikian vinasse masih menjadi media yang baik karena sifatnya yang organik dan pH-nya yang netral.</p>\r\n\r\n<p><strong>Pemanfaatan Vinasse sebagai Pupuk Hayati Cair</strong></p>\r\n\r\n<p>Dikarenakan sifatnya yang organik, vinasse baik diaplikasikan di tanah. Di negara-negara maju seperti Brazil, vinasse dimanfaatkan langsung sebagai irigasi tanaman. Vinasse berfungsi sebagai pengganti air dan pembenah tanah. Melalui saluran air sepanjang 25 km, vinasse dialirkan ke lahan-lahan tebu. Alternatif lainnya diaplikasikan melalui truk tangki. Sedangkan di PT Energi Agro Nusantara, vinasse diolah terlebih dahulu dengan mikroba fungsional dalam bentuk konsorsium untuk menambah kemanfaatannya. Hasil akhirnya berupa pupuk hayati cair. Aplikasi yang saat ini dilakukan dengan pengisian pupuk hayati cair ke truk tangki dengan kapasitas 5.000-40.000 liter. Dosis bervariasi bergantung pada jenis tanaman, tanah dan keperuntukannya. Biasanya berkisar dari 15.000 liter-200.000 liter per ha. Aplikasi baik dilakukan pada tanaman tebu dan tanaman sejenis, dikarenakan karakteristiknya yang membutuhkan asupan air dalam jumlah besar. Sedangkan bagi tanah, akan membantu membenah unsur-unsur dalam tanah.</p>\r\n\r\n<p>Spesifikasi vinasse sebagai pupuk hayati cair pada intinya sebagai pembenah tanah. Kandungan mikroba pada pupuk akan bekerja sebagai penambat N dan pelarut P dalam tanah. Ragam mikroba antara lain <em>Azospirilum</em> sp., <em>Azetobacter</em> sp., <em>Bacillus</em> sp., <em>Pseudomonas</em> sp. dll.</p>\r\n\r\n<p>Dalam proses penambatan unsur N, tumbuhan tidak dapat memanfaatkan unsur N secara bebas sehingga perlu diubah terlebih dahulu melalui bantuan mikroba fungsional menjadi senyawa organik yang dibutuhkan tumbuhan. Sebagai contoh pada tanaman kacang-kacangan (Leguminosae), mikroba akan membentuk benjolan pada akar dan dibantu enzim nitrogenase yang akan menambat N langsung dari udara. Selanjutnya N dirubah menjadi N organik seperti polipepida dan asam amino.</p>\r\n\r\n<p>Dalam proses pelarutan unsur P, tanaman dibantu mikroba pelarut P. Dalam tanah, P masih terikat dengan unsur lainnya, sehingga perlu dilepaskan mikroba supaya dapat dikonsumsi oleh tanaman.</p>\r\n\r\n<p><strong>Dampak Pupuk Hayati Cair berbahan baku Vinasse bagi Tanah </strong></p>\r\n\r\n<p>Berdasarkan penelitian Penatti (2005), aplikasi vinasse tanpa perlakuan apapun saja dapat meningkatkan konsentrasi K di dalam tanah. Beberapa unsur makro lain juga meningkat seperti N, P Ca, Mg dan S serta unsur-unsur mikro lainnya. Karena sifatyna yang organik, maka akan membantu meningkatkan senyawa organik dalam tanah dan membantu memperbaiki struktur tanah, peningkatan kapasitas tukar kation serta memberi ketahanan terhadap air. Sedangkan dampaknya bagi tanaman, vinasse akan membantu perbaikan akar tanaman.</p>\r\n\r\n<p>Pada demplot yang dilakukan di lahan tebu HGU PG Pesantren Baru dan lahan TS PG Gempolkrep, aplikasi pupuk hayati berbahan baku vinasse menunjukkan hasil yang positif. Sebagai contoh pada kebun HGU, formula pupuk hayati cair sebanyak 50.000 liter/ha dan pupuk anorganik 100% akan meningkatkan jumlah batang per juring 108a cm dan tinggi batang 278a cm dibanding hanya menggunakan pupuk organik dimana jumlah batang per juring hanya mencapai &nbsp;76a cm dan tinggi batang 249a cm. Adapun untuk diameter tidak berbeda secara signifikan. Hasil eksperimen lainnya, pencampuran pupuk hayati dengan pupuk anorganik menunjukkan hasil lebih baik dibanding jika hanya dipupuk anorganik saja.</p>\r\n\r\n<p>Berdasarkan pada penjelasan diatas, secara umum dapat disimpulkan aplikasi pupuk hayati cair direkomendasikan bagi tanaman tebu. Kondisi tanah diharapkan kembali subur secara bertahap, dengan penambahan mikroba fungsional di dalam tanah yang akan membantu mengembalikan unsur-unsur makro dan mikro yang dibutuhkan tanah. Dalam jangka panjang. (Ariel Hidayat_Enero, FIR_Sekper)</p>\r\n\r\n<p><strong>Sumber: </strong></p>\r\n\r\n<p>Penatti CP., De Araujo JV., Donzelli JL, De Souza SAV., Forti JA., and Ribeiro R., 2005: <em>Vinasse &ndash; a liquid fertilizer. </em>Proc. Int. Soc. Sugar Cane Technol.</p>\r\n\r\n<p>Meeyer J., Rein P., Turner P., Mahtias K., 2013: <em>Good Management Practices for the Cane Sugar Industry, </em>Verlag Dr. Albert Bartens KG</p>\r\n	1	0	2017-06-12 16:31:30	http://ptpn10.co.id/uploads/vinasse_ariel.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pemanfaatan-vinasse-sebagai-pupuk-hayati-cair
89	B	Awal 2020, PG Gempolkrep Kembali Raih Proper Hijau	<p style="text-align: justify;">Selama empat tahun berturut-turut, Pabrik Gula Gempolkrep berhasil meraih Penghargaan Program Penilaian Peringkat Perusahaan (Proper) dalam pengelolaan lingkungan. Keberhasilan unit usaha milik PT Perkebunan Nusantara X ini tidak lain karena kuatnya komitmen seluruh karyawan dalam menjaga performance pabrik dan tanpa melupakan pelestarian lingkungan.</p>\r\n\r\n<p style="text-align: justify;">General Manager PG Gempolkrep, Agus Minhandoko mengungkapkan keberhasilan PG Gempolkrep meraih Proper Hijau untuk keempat kalinya ini adalah keberhasilan seluruh karyawan. Sebab,tanpa kekuatan dan kepedulian serta rasa memiliki yang tinggi dari seluruh karyawan maka akan sangat sulit bagi PG Gempolkrep untuk mempertahankan prestasi yang sudah berhasil diukir selama ini.</p>\r\n\r\n<p style="text-align: justify;">&quot;Alhamdulillah, tanggal 8 Januari kemarin, kami kembali menerima penghargaan proper hijau di Istana Wakil Presiden yang diberikan langsung oleh Menteri Lingkungan Hidup dan Kehutanan Republik Indonesia, Ibu Siti Nurbaya,&quot; kata Agus ditemui di ruang kerjanya di Gedek, Mojokerto.</p>\r\n\r\n<p style="text-align: justify;">Pria yang juga pernah menjadi GM&nbsp;PG Kremboong ini menambahkan penilaian proper periode 2018-2019 ini dilakukan oleh tim evaluator terhadap 2.045 perusahaan di seluruh Indonesia. Dari hasil evaluator tersebut, 25 perusahaan memperoleh Proper emas, 147 perusahaan memperoleh Proper hijau, 1.507 perusahaan memperoleh Proper biru, 303 perusahaan memperoleh Proper merah dan dua perusahaan memperoleh Proper hitam.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Selama empat tahun ini, PG Gempolkrep masih menjadi satu-satunya pabrik gula milik BUMN yang memperoleh Proper Hijau,&quot; ujarnya.</p>\r\n\r\n<p style="text-align: justify;">Agus menambahkan tim evaluator proper menilai bahwa PG Gempolkrep telah melakukan pengelolaan lingkungan lebih dari yang dipersyaratkan dalam peraturan melalui pelaksanaan sistem pengelolaan lingkungan dan memanfaatkan sumber daya secara efisien serta melaksanakan tanggung jawab sosial dengan baik. (Red3, PUT_Sekper)</p>\r\n	13	0	2020-01-10 12:14:19	http://ptpn10.co.id/uploads/Berita_1.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/awal-2020-pg-gempolkrep-kembali-raih-proper-hijau
66	A	The Power of Positive Feeling: Hati Yang Ikhlas, Untuk Dunia Tanpa Batas	<p align="center">&nbsp;</p>\r\n\r\n<p align="center"></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Mungkin di luar sana banyak orang yang menganggap bahwa kekuatan perasaan dalam hati itu hanya sesuatu yang <em>non-primary issue</em>. Percaya atau tidak, jangan meremehkan tentang hal ini, karena pada dasarnya kekuatan perasaan dalam hati itu kekuatanya 5.000 kali kekuatan pikiran.</span></pre>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>The power of positive feeling</em>, salah satunya adalah ikhlas. Ada apa dengan ikhlas? Dunia ini adalah tempat kesedihan sehingga Tuhan menciptkan ikhlas dalam hati manusia yang bertujuan untuk mengkalibrasi emosional di kala kehidupan sedang terpuruk. Perasaan dalam hati merupakan sebuah indikator penting bagaimana keadaan emosional dalam diri kita, apakah positif atau negatif. Dengan <em>the power of positive feeling </em>otomatis <em>positive thinking</em> akan mengikuti. Dan apabila keduanya bersinergi hasilnya akan sangat luar biasa. Perasaan dalam hati akan didominasi oleh kebaikan tanpa batas.</span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Kenapa hidup itu perlu yang namanya ikhlas? Dunia ini sangatlah luas. Hamparan samudera, langit, dan dataran itulah sebuah penciptaan mahakarya Tuhan yang luar biasa. Di balik keindahan itu semua, Tuhan juga menciptakan kegelisahan, kesedihan dan hal yang buruk lainya. Semuanya itu terkonsep dalam satuan yang dinamakan takdir. Disinilah ikhlas akan bekerja maksimal bagi seseorang yang berfikir.</span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>Bahwa hidup harus menerima, penerimaan yang indah. Bahwa hidup harus dimengerti, pengertian yang benar. Bahwa hidup harus memahami pemahaman yang tulus. Lihatlah daun yang jatuh tak pernah membenci angin. Dia membiarkan dirinya jatuh begitu saja. Tak melawan. Mengikhlaskan semuanya (Tere Liye).</em></span></p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Apa hubungannya ikhlas dengan dunia tanpa batas? Dari contoh konsep <em>positive feeling </em>yang dibuat oleh Tere Liye tersebut, kunci pemahaman dalam konteks dunia yang tanpa batas ini adalah sejauh mana diri ini mengenal apa itu keikhlasan hidup. Yang artinya, bila seseorang hatinya sudah menguasai rasa ikhlas, maka dialah orang yang termasuk dari golongan yang beruntung. Hanya orang yang ikhlas saja yang mampu menterjemahkan apa saja yang ada di dunia ini. Disamping itu bahwa orang yang hatinya sudah tertanam rasa ikhlas, ia akan mampu menggenggam dunia beserta isinya ini dalam pandangan mata dan lingkupan kedua tangannya.</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Ada suatu keindahan yang didapatkan oleh seseorang yang berhasil menanamkan rasa ikhlas di dalam dirinya. Hal itu dirangkum dalam <em>four advantage in the world.</em></span></pre>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;"><em>1. Get to know the world more</em> (Bisa mengenal dunia lebih jauh)</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">2.&nbsp;<em>Know the meaning of real success</em> (Bisa mengetahui arti sukses yang sejati)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">3.&nbsp;<em>Get to know what the true meaning of happiness (</em>Bisa mengenal apa arti kebahagiaan yang sesungguhnya)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">4.&nbsp;<em>Accept</em><em>ing</em><em> destiny</em><em> easily</em> (Mudah menerima takdir)</span></pre>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;">Hidup ini adalah tentang belajar. Sejauh mana hati bisa memaknai ketulusan, disitulah keindahan hidup akan kita rasakan. Sejauh mana mata memandang, disitulah awal dunia yang baru. Dan sejauh mana kita mengenal keikhlasan, disitulah Tuhan akan memberi kenikmatan yang besar. (Moh Dhanavia_Enero, FIR_Sekper)</span></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:courier new,courier,monospace;">Sumber:</span></p>\r\n\r\n<pre>\r\n<span style="font-family:courier new,courier,monospace;"><em>The power of positive feeling:</em> Presentasi pada sharing session oleh Dimaz Anandito</span></pre>\r\n	3	0	2017-03-08 16:42:34	http://ptpn10.co.id/uploads/ikhlas.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/the-power-of-positive-feeling-hati-yang-ikhlas-untuk-dunia-tanpa-batas
182	B	PTPN X Raih Penghargaan BUMN Branding and Marketing Award 2020	<p>PT Perkebunan Nusantara (PTPN) X kembali meraih penghargaan dalam ajang penghargaan nasional. Kali ini PTPN X mendapatkan penghargaan pada kategori International Collaboration for Branding and Marketing (anak perusahaan BUMN) dalam ajang BUMN Branding &amp; Marketing Award 2020, Kamis (5/11).</p>\r\n\r\n<p>Pada tahun ini, BUMN Branding &amp; Marketing Award memasuki tahun ke-8 dan mengusung tema <em>&ldquo;Optimizing Omni Channel on Branding and Marketing</em><em>&rdquo;</em>. Ajang ini sebagai wadah apresiasi kepada perusahaan yang telah berkinerja unggul dan berkompetisi di pasar global melalui inovasi branding&nbsp;dan marketing dengan optimalisasi Omni Channel.</p>\r\n\r\n<p>Sebagai salah satu anak perusahaan dari PTPN III (Persero) dan juga sebagai&nbsp;<em>leading company</em>&nbsp;dalam industri gula di Indonesia, PTPN X selalu berupaya berkontribusi optimal dalam menjalankan kinerjanya. Sehingga, inovasi juga giat dilakukan dalam menjalankan setiap proses bisnisnya. &nbsp;</p>\r\n\r\n<p>&ldquo;Penghargaan ini merupakan hasil dari kerja keras seluruh karyawan PTPN X dan merupakan bukti bahwa PTPN X selalu berusaha memberikan kinerja terbaiknya,&rdquo; ujar Aris.</p>\r\n\r\n<p>Pada tahun 2020, PTPN X telah berhasil meraih beberapa penghargaan, salah satunya Bronze Winner &ndash; Video Profile di ajang PR Indonesia Awards 2020, TOP Corporate Performance In Agro Industry di ajang TOP Digital Innovation Award 2020, dan Second Runner Up - Business Strategy di ajang Millennial Innovation Summit 2020. Ke depannya, PTPN X akan terus bekerja dengan menjunjung tinggi <em>corporate value </em>AKHLAK (Amanah, Kompeten, Harmonis, Loyal, Adaptif, dan Kolaboratif) dalam menjalankan proses bisnisnya. &nbsp;Sehingga target-target perusahaan dapat tercapai dengan optimal. (Silvi_PMMB, Put_Sekper)</p>\r\n	0	0	2020-11-06 13:46:45	http://ptpn10.co.id/uploads/Award.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-raih-penghargaan-bumn-branding-and-marketing-award-2020
65	A	Cara Mudah Menjadi Penulis Artikel Dan Berita Dengan Kecerdasan Buatan	<p></p>\r\n\r\n<p>Di modernisasi global saat ini, dimana teknologi informasi semakin maju khususnya dipengelolaan konten <em>website</em> perusahaan. Disamping didukung oleh desain dan tema web yang <em>elegant</em>, harus didukung pula dengan <em>konten</em> <em>writer</em> handal yang mempunyai jiwa kreatif dan inovatif. Pada dasarnya nyawa kehidupan dari sebuah konten <em>website</em> adalah artikel dan berita yang menarik pembaca. <em>Konten writer</em> sebagai salah satu strategi yang paling efisien sebagai sarana pemasaran produk-produk perusahaan dan sebagai <em>public relation. </em>Disinilah sebenarnya yang menjadi <em>key success</em> dari beranda sistem manajemen pemasaran.</p>\r\n\r\n<p>Tentunya perlu sedikit biaya yang mahal bila perusahaan menggunakan jasa <em>content writer.</em> Disini saya akan memberikan tips bagaimana cara mudah menjadi seorang <em>konten writer </em>profesional, sehingga semua staf perusahaan mempunyai keinginan bisa menjadi <em>konten writer</em> yang nantinya bisa memberikan kontribusi maksimal untuk menuangkan idenya berupa tulisan-tulisan (artikel dan berita) menarik untuk mengisi konten <em>website</em> diperusahaan. Dengan <em>konten writer </em>yang handal, sebuah perusahaan akan lebih memiliki nilai seni dan citra filosofi.</p>\r\n\r\n<p>Begitu banyak orang yang ingin menjadi penulis namun akhirnya memutuskan aktifitas menulisnya dengan alasan tidak ada inspirasi. Bagaimana caranya menjadi penulis <em>konten writer </em>yang disukai banyak orang?. Sebetulnya menjadi seorang penulis itu tidaklah rumit dan saya yakin bahwa semua orang bisa menulis. Asal ada pemahaman niat yang baik atas apa yang anda tuliskan. Seni menulis itu soal <em>passion. </em>Jika ingin memutuskan untuk menjadi seorang penulis, maka menulislah tanpa ada rasa bosan. Sesibuk apapun aktifitas yang anda kerjakan, sempatkanlah menulis walau hanya sebatas catatan kecil. Teruslah melangkah mencari tempat-tempat sebagai sumber inspirasi.</p>\r\n\r\n<p></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ada beberapa cara yang harus anda lakukan agar bisa menjadi seorang penulis <em>konten writer</em>, dalam artian sebagai cara mudah menulis artikel dan berita yang baik dengan kecerdasan buatan. Kecerdasan buatan adalah sebuah rekayasa perasaan yang sengaja saya kembangkan dalam diri seseorang dengan tujuan membuat seseorang menjadi lebih pintar, memahami apa itu kecerdasan dan membuat pemikiran lebih hidup dalam kejeniusan. Berikut adalah teknik kecerdasan buatan yang saya buat sebagai media untuk merekayasa pemikiran dan perasaaan untuk memudahkan seseorang menemukan <em>passion </em>menulis menuju <em>konten writer </em>professional diperusahaan. Dimana nanti seseorang akan mudah dalam melakukan aktifitas menulis artikel dan berita secara kreatif.</p>\r\n\r\n<p><em>1. Power of feeling </em></p>\r\n\r\n<p>Tidak dapat dipungkiri bahwa semua sumber kekuatan untuk menulis adalah dari kekuatan perasaan. Semua penulis harus mempunyai ketenangan jiwa yang dalam untuk menulis sebuah tulisan menarik. Maka dari itu asah kemampuan kuatnya perasaan anda dengan cara lebih banyak membuka diri untuk bersahabat dan menerima cerita keluh kesah dari orang lain (mudah berbagi). Tanpa sadar anda akan memiliki kekuatan perasaan yang kuat. Inilah yang nantinya akan menjadi <em>power of positive feeling.</em></p>\r\n\r\n<p><em>2. Do a long trip</em></p>\r\n\r\n<p>Setiap tempat sejatinya memiliki sebuah cerita tersendiri. Kunjungilah tempat-tempat yang jauh dan bersejarah dikehidupan anda, disitulah nanti anda akan menemukan inspirasi yang baik untuk membantu menyelsaikan <em>project</em> tulisan-tulisan anda dengan mudah. Jangan menutup diri dari dunia jika ingin menjadi seorang penulis.</p>\r\n\r\n<p>Hakikatnya inspirasi hanya milik alam semesta dan mengalir melalui emosional. Suasana alam yang tenang dan damai akan mengantarkanmu ke dalam dunia menulis. Percayalah, semakin banyak anda mengunjungi suatu tempat maka anda akan cinderung mempunyai kebiasaan yang kuat untuk mengabadikan kenangan itu dalam cerita catatan kecil. Inilah awal bahwa anda akan terbiasa menulis.</p>\r\n\r\n<p><em>3. Along with people</em></p>\r\n\r\n<p>Kunjungilah tempat dimana banyak orang yang mempunyai hobi seni menulis. Lakukan pendekatan emosional yang nantinya mereka akan berbagi pengalaman hidup. Disinilah yang menjadi <em>point &nbsp;</em>penting, karena anda akan mendapatkan sumber-sumber inspirasi yang hebat untuk merangsang keinginan aktifitas menulis. Jika anda berteman dengan seorang penulis, anda akan menerima dorongan yang positif. Mereka cenderung mengajak anda ke dalam aktifitas yang mereka sukai. Secara tidak langsung perasaan pola fikir anda akan terbawa kedalam dunia mereka. Tanpa disadari perlahan anda akan menjadi seorang penulis.</p>\r\n\r\n<p><em>4. Cultivate a sense of love to read</em></p>\r\n\r\n<p>Membaca adalah <em>window of the world.</em> Perbanyaklah membaca karena itu adalah langkah awal untuk menyatu dengan dunia ini. Kanvas alam akan memberikan cerita yang menarik untuk anda tulis. Maka membacalah sebanyak mungkin karena dengan itu anda akan lebih memiliki kosa kata yang luas untuk membentuk tulisan-tulisan yang ideal. Dengan banyak membaca maka fikiran dan perasaan seseorang akan bergejolak. Ia &nbsp;merasa terhipnoterapi dan terangsang untuk meniru atas apa yang dibaca. Rangsangan inilah yang nantinya menumbuhkan <em>passion</em> menulis dalam jiwa seseorang.</p>\r\n\r\n<p><em>5. Deepen the side and around the information technology</em></p>\r\n\r\n<p>Hidup dijaman sekarang tidak lepas dari teknologi informasi. Sebelum anda memulai menulis, pastikan dulu anda sudah mengetahui apa saja atau hal-hal yang menjadi <em>trending topic </em>ter-<em>update </em>didunia informasi. Nantinya itu bisa membantu mempermudah dalam menyajikan tulisan yang ingin anda tulis. <em>Enter and live in the world of information</em>. Bila punya lebih waktu luang, tidak ada salahnya nongkronglah didunia <em>online</em> sedikit lebih lama. Banyak sekali kisah-kisah inspiratif yang akan membantu anda melangkah untuk perubahan. Dunia seakan ada dalam genggaman. Disitulah nanti seseorang akan menemukan rahasia jati diri untuk memulai goresan pena dalam kanvas seni menulis. &nbsp;Dalam konsep ini, akan ada sesuatu yang berbeda dalam diri seseorang, ia akan lebih mempunyai keinginan yang kuat menulis untuk dunia.</p>\r\n\r\n<p>Itulah lima tips yang perlu anda coba dan lakukan bila ingin menjadi seorang c<em>ontent writer.</em> &nbsp;Konsep itu akan membantu anda untuk menemukan <em>passion</em> bagaimana cara menulis artikel dan berita dengan mudah. Menulis hanya mampu dilakukan oleh seseorang yang mempunyai jiwa yang baik dan mepunyai kekuatan perasaan yang kuat. Maka metode kecerdasan buatan yang saya tulis ini diharapkan mampu merekayasa perasaan untuk menciptakan <em>power of feeling</em> &nbsp;dan membuat revolusi cara menulis. (M. Dhanavia_Enero, FIR_Sekper)</p>\r\n\r\n<p align="right"><em>Dengan menulis</em>, <em>dunia akan mengenalmu lebih baik (dhanavia)</em></p>\r\n	4	0	2017-03-22 17:19:35	http://ptpn10.co.id/uploads/konten_writer_2.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/cara-mudah-menjadi-penulis-artikel-dan-berita-dengan-kecerdasan-buatan
69	A	Mikoriza, Agen Hayati Tanaman Tembakau PTPN X	<p style="text-align: justify;">Mikoriza berasal dari kata <em>m</em><em>yco</em>&nbsp;yang berarti jamur dan <em>r</em><em>hizo</em>&nbsp;yang berarti akar. Mikoriza merupakan jamur yang hidup secara simbiosis pada sistem perakaran tanaman. Pertumbuhan mikoriza pada akar tumbuhan bermanfaat untuk meningkatkan penyerapan unsur hara dan air serta dapat melindungi tembakau dari beberapa jenis penyakit. Secara&nbsp;alamiah, akar tanaman tembakau sudah ditumbuhi mikoriza namun dengan jumlah yang sangat sedikit. Jenis mikoriza pada akar tembakau di&nbsp;setiap daerah berbeda-beda bergantung pada jenis tanah pada wilayah tersebut. Khusus mikroriza pada akar tembakau di Kabupaten&nbsp;Jember berjenis <em>Glomus </em><em>s</em><em>p.</em>&nbsp;Menurut Yulianitha (2012), beberapa karakteristik dari <em>Glomus sp</em><em>.</em>&nbsp;yaitu hanya memiliki satu jenis dinding spora yang berwarna merah sampai cokelat, Permukaan dinding spora halus tanpa dan berjumlah satu, serta seluruh lapisan yang ada pada dinding spora berasal dari dinding hifa&nbsp;(benang)&nbsp;pembawa. Terbatasnya jumlah mikoriza pada akar tanaman tembakau cukup mempengaruhi&nbsp;pertumbuhan tembakau sehingga mikoriza perlu dibudidayakan&nbsp;khusus agar sistem perakaran pada tanaman tembakau bekerja lebih baik.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Salah satu metode yang bisa diterapkan untuk perkembangbiakan&nbsp;mikoriza adalah menggunakan media tanam dengan batuan zeolit. Batu zeolit yang berbentuk granula memiliki kondisi unsur hara yang sesuai sehingga sangat cocok untuk perkembangbiakan mikoriza. Selain granula zeolit, akar tanaman jagung yang berbentuk serabut juga digunakan sebagai tempat menempelnya&nbsp;mikoriza.</p>\r\n\r\n<p style="text-align: justify;">Proses perkembangbiakan khusus jamur mikoriza dilakukan beberapa tahapan yaitu mulai dari tahap ekplorasi dan dilanjutkan dengan tahap pemeliharaan.&nbsp;Pada tahap ekplorasi, langkah awal yang dilakukan adalah mengambil sampel mikoriza yang secara alamiah menempel pada tanaman tembakau&nbsp;dan ditempelkan pada akar jagung. Selanjutnya adalah&nbsp;membuat media tanam dengan dasar granula zeolit yang sebelumnya telah diberikan pupuk fosfat. Tanaman jagung yang akarnya telah tertempel spora mikoriza kemudian ditanam pada media granula zeolit. Jarak antar tanaman selebar 5 cm. Berikutnya adalah&nbsp;tahap pemeliharaan yaitu tanaman dipelihara dengan pemberian air setiap hari dan pemberian pupuk majemuk mikro setiap dua minggu sekali sampai 2 bulan. Setelah dua bulan berlangsung, tanaman jagung dibiarkan tidak disiram dan tidak diberi pupuk selama 1 bulan agar terbentuk biji spora yang tertempel pada granula zeolit. Granula zeolite&nbsp;yang sudah mengandung mikoriza&nbsp;tersebut kemudian dipindahkan dan digunakan sebagai media tanam pada tahap pembibitan serta penanaman pada lahan tanaman tembakau.&nbsp;(Mohamad Wawan S._Penelitian Tembakau Jember, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">Referensi:</p>\r\n\r\n<p style="text-align: justify;">Yulianitha, Nurhidayati, &nbsp;Trisnawati, 2012.&nbsp;<strong>Komposisi Jenis Mikoriza </strong><strong>d</strong><strong>ari Perakaran Tembakau (</strong><strong><em>Nicotiana Tabaccum</em></strong><strong>) </strong><strong>d</strong><strong>i Desa Bajur </strong><strong>d</strong><strong>an Orai Pamekasan Madura</strong>. &nbsp;Jurusan Biologi, Fakultas Matematika Dan Ilmu Pengetahuan Alam Institut Teknologi Sepuluh Nopember Surabaya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p align="justify">&nbsp;</p>\r\n	10	0	2016-12-30 17:19:57	http://ptpn10.co.id/uploads/5864cbf5-80d0-4139-92ae-1ba8e3e14fb4-pic_artic3b.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/hayati-tanaman-tembakau-ptpn-x
76	B	Gelar Reuni, Pensiunan Doakan Kejayaan PTPN X	<p style="text-align: justify;">Ratusan pensiunan PT Perkebunan Nusantara (PTPN) XXI - XXII (Persero) dan PTPN X menggelar doa untuk kejayaan PTPN X dalam acara Reuni/Silaturahim Melebur Dosa yang digelar di Graha Djombang Baru, Sabtu (21/12). Ajang reuni merupakan kegiatan yang selalu dinanti oleh para pensiunan karena mereka bisa kembali bertemu dan bercanda dengan teman seperjuangan dalam membangun perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Ketua P3GI, Jumairi mengatakan pihaknya sangat berterimakasih kepada pabrik gula yang telah memberikan bantuan berupa uang tunai untuk terselenggaranya kegiatan ini.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kami juga berterima kasih kepada PT Nusantara Medika Utama yang tidak hanya memberikan bantuan berupa pemeriksaan kesehatan gratis tetapi juga memberi bantuan berupa uang tunai,&quot; kata Jumairi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Selain dari iuran seluruh anggota, sambung Jumairi, panitia juga menyebarkan proposal permohonan bantuan dana untuk acara ini. Sehingga terkumpul dana sebesar Rp 52.350.000 dan untuk pembiayaan kegiatan hari ini menghabiskan dana sebesar Rp 51.600.000.</p>\r\n\r\n<p style="text-align: justify;">Jumairi menambahkan dari dana yang terkumpul tersebut juga akan diberikan penghargaan kepada 10 pensiunan dengan kriteria umur yang panjang, sehat dan semangat. Para penerima penghargaan tersebut rata-rata berusia 80 tahun lebih bahkan ada yang mencapai usia 94 tahun.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kepada Dirut PTPN X, kami para pensiunan berharap dan berdoa agar kedepan tidak ada lagi pabrik gula yang ditutup,&quot; imbuhnya.</p>\r\n\r\n<p style="text-align: justify;">Di tempat yang sama, Direktur Utama PTPN X, Dwi Satriyo Annurogo menyampaikan di tahun 2019 ini, banyak penghargaan yang diperoleh PTPN X. Bahkan, PTPN X pun telah didapuk sebagai kordinator PTPN Gula oleh Holding Perkebunan Nusantara PT Perkebunan Nusantara III (Persero).</p>\r\n\r\n<p style="text-align: justify;">&quot;Apa yang kami peroleh saat ini merupakan buah rintisan dan pondasi yang telah bapak ibu bangun,&quot; kata Dwi.</p>\r\n\r\n<p style="text-align: justify;">Dwi menambahkan pihaknya akan terus membangun dan meningkatkan kejayaan PTPN X. (Red3, PUT_Sekper)</p>\r\n	12	0	2019-12-23 08:15:47	http://ptpn10.co.id/uploads/IMG_8519.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/gelar-reuni-pensiunan-doakan-kejayaan-ptpn-x
73	B	Sambut Tahun Baru, PTPN X Luncurkan Berbagai Inovasi Baru	<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">Memasuki tahun baru 2020, Perkebunan Nusantara (PTPN) X yang merupakan anak perusahaan dari Holding Perkebunan PT Perkebunan Nusantara III (Persero) menggelar perayaan Tahun Baru pada (2/1). Bertempat di Ruang Pandu, Kantor Pusat PTPN X, Jalan Jembatan Merah 3-11, Surabaya.&nbsp;<span style="font-family: inherit;">Acara yang dihadiri Direksi PTPN X, Ketua dan Pengurus APTRI, Perwakilan Petani, Ketua dan Pengurus Serikat Pekerja PTPN X, Pimpinan Perbankan,&nbsp;Anak Perusahaan dan seluruh karyawan PTPN X.&nbsp;</span></div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;"></div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">Direktur Utama PTPN X, Dwi Satriyo Annurogo mengatakan bahwa tahun 2020 merupakan tahun yang penuh tantangan, maka dari itu pihaknya telah menetapkan tahun 2020 sebagai tahun inovasi, dimana setiap karyawan dituntut untuk bisa melahirkan inovasi terbaru yang merupakan solusi bagi permasalahan-permasalahan di masa datang.</div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">&quot;Pada kesempatan kali ini saya ingin berterima kasih kepada semua karyawan atas kinerja perusahaan di tahun 2019, yang berhasil mempertahankan prestasi PTPN X sebagai leader industri gula dan mampu meraih laba, dan saya optimis bahwa target tahun 2020 akan tercapai. Ditunjang dengan perbaikan di sisi SDM yang selalu berpedoman pada corporate value SIPro (Sinergi, Integritas, dan Profesional), &quot; ungkapnya.</div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">Terlebih PTPN X telah menyusun sasaran kerja, sehingga kontribusi dan kinerja masing-masing karyawan dapat terukur. Hal tersebut juga ditunjang dengan kompetensi unggul dari masing-masing karyawan. Dalam acara tersebut juga di launching, beberapa inovasi terbaru dari PTPN X yakni Digimagz PTPN X dan Office Automation guna kelancaran administrasi dan informasi serta melakukan program paperless juga launching Cerutu Golden Boy produksi dari PTPN X.</div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(34, 34, 34); font-size: small; font-family: inherit; margin-top: 0px; margin-bottom: 0px; text-align: justify;">Cerutu Golden Boy sendiri merupakan Cerutu High Class Premium, produk Unit Tembakau Jember yang bercita rasa Internasional. Cerutu ini dibuat dengan bahan-bahan pilihan yaitu tembakau dekblad kualitas premium dan dikerjakan oleh tenaga ahli dibidang cerutu. Sementara itu pasar yang dituju adalah kelas menengah ke atas dan pasar luar negeri. (Red2, PUT_Sekper).</div>\r\n	20	0	2020-01-02 13:34:27	http://ptpn10.co.id/uploads/IMG_9166.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sambut-tahun-baru-ptpn-x-luncurkan-berbagai-inovasi-baru
101	B	PTPN X Tingkatkan Kemampuan Petani Muda	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">PT Perkebunan Nusantara (PTPN) X melalui sinergi dengan PT Biofarma (Persero) mengadakan pelatihan petani tebu generasi milenial. Melalui pelatihan ini diharapkan mampu meningkatkan kemampuan petani muda. Pelatihan dengan tema 'Dalam Rangka Meningkatkan Motivasi dan Transfer Knowledge Budidaya Tebu kepada Petani Milenial untuk Meningkatkan Produktivitas dan Daya Saing di Wilayah Kerja PTPN X' dilangsungkan selama dua hari, Senin-Selasa (27-28/1) di Kota Batu. Selain mendapatkan materi mengenai budidaya dan aplikasi mekanisasi, peserta pelatihan juga akan mendapatkan motivasi mengenai spirit usaha dari motivator, Lisa Nurjanti.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Kepala Sekretaris Perusahaan &amp; PKBL, Suryanto mengatakan pelatihan angkatan pertama di tahun 2020 ini diikuti oleh 30 petani binaan Pabrik Gula (PG) Pesantren Baru. "Pelatihan ini bekerjasama dengan PT Biofarma yang sudah menyalurkan dana kemitraan untuk petani PG Pesantren Baru," ujarnya.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam kesempatan yang sama mengatakan, pada tahun 2020 PTPN X akan mengoperasikan sembilan PG. Dan ini tentunya butuh dukungan dari petani.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dari sisi produksi gula, PTPN X menargetkan bisa menghasilkan 330 ribu ton. Meningkat 8 persen dari produksi tahun lalu sebesar 305 ribu ton.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Ia juga mengingatkan, bahwa di tahun ini tantangan yang dihadapi industri gula akan semakin berat. Namun petani tebu diharapkan bisa tetap semangat.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Ini merupakan sumbangsih kita kepada negara. Jika ada yang bertanya, apa yang sudah kau berikan kepada negaramu? Anda sekalian bisa menjawab, saya adalah petani tebu. Saya menyiapkan lahan saya untuk memproduksi komoditas strategis nasional yaitu gula. Semangat ini harus kita bangun dan tentunya perlu diisi dengan skill serta knowledge," tutur Dwi. (Red1, PUT_Sekper).</p>	11	1	2020-01-31 09:35:09	images/news/WhatsApp_Image_2020-01-28_at_07_09_05.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
111	B	Dirut PTPN X Resmikan Plengsengan Kali Giling Tulungagung	<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">TULUNGAGUNG - Direktur Utama PT Perkebunan Nusantara (PTPN) X meresmikan plengsengan di Kali Giling, Desa Panggungrejo, Kecamatan Kauman, Kabupaten Tulungagung. Hingga saat ini PTPN X sudah membangun plengsengan sepanjang 300 meter di sungai tersebut.&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Yang akan diresmikan ini adalah CSR ketiga. Pertama tahun 2002 sepanjang 100 meter, kemudian pada 2018 kembali dibangun plengsengan sejauh 100 meter dan sekarang 100 meter lagi. Total 300 meter," kata General Manager PG Modjopanggoong, Haryo Gunawan Wibisono, Jumat (14/2/2020).</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Direktur Utama PTPN X Dwi Satriyo Annurogo pada kesempatan yang sama mengatakan, PTPN X sebagai bagian dari BUMN memiliki tugas sebagai agent of development sehingga sebagian dari keuntungan yang didapatkan perusahaan harus dialokasikan untuk masyarakat. "Kami akan mendukung kelanjutan program ini maupun program-program yang lain seperti pemberdayaan BUMDes, meningkatkan kesejahteraan masyarakat, pembangunan infrastruktur serta pendidikan," ujarnya.&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Ia menambahkan, lebih dari 90 persen bahan baku yang dipasok ke PG Modjopanggoong berasal dari petani. Karena itu kolaborasi dengan petani dan pihak-pihak yang lain mutlak dilakukan.&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Tahun lalu PG Modjopanggoong berhasil membukukan prestasi sebagai PG dengan rendemen terbaik. Namun sayangnya dari sisi volume bahan baku belum optimal.</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dalam kesempatan tersebut, Dirut PTPN X, GM PG Modjopanggong, Sekper dan PKBL PTPN X serta perangkat Desa Panggungrejo melakukan pengguntingan pita sebagai tanda peresmian&nbsp; plengsengan di Sungai Giling. (RED1, Put_Sekper</div>	30	1	2020-02-18 13:33:41	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/dirut-ptpn-x-resmikan-plengsengan-kali-giling-tulungagung
97	G	Bincang-bincang Gejolak Harga Gula di Jawa Timur 	<p>Direktur Komersil, Slamet Djumantoro didampingi Kepala Bagian Pemasaran menghadiri Bincang-bincang Gejolak Harga Gula di Jawa Timur yang diadakan oleh Tim Pengendali Inflasi Provinsi Jawa Timur di Ruang Oasis Hotel JW Marriot Surabaya. (24/1)</p>\r\n<p>Dalam Bincang pagi kali ini dimoderatori oleh Kepala Kanwil BI Jawa Timur dihadiri oleh Wagub dan Wakapolda Jawa Timur dengan mengundang instansi pemerintahan, produsen gula dalam hal ini PTPN Gula di Jawa Timur dan para Distributor/Pedagang gula Jawa Timur dalam rangka mencari solusi atas harga gula yang cenderung naik.</p>	18	0	2020-01-24 11:25:31	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
84	B	PTPN X Pasang Rumah Burung Hantu untuk Kendalikan Hama Tikus	<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">JOMBANG - Keberadaan tikus menjadi musuh besar bagi petani karena bisa merusak tanaman yang dirawat. Salah satu yang bisa diandalkan untuk mengendalikan atau membasmi tikus adalah burung hantu.&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Karena itu, PT Perkebunan Nusantara (PTPN) X membantu petani membagikan 26 unit rumah burung hantu untuk petani tebu di 12 desa yang berada di Kecamatan Perak, Jombang. Ke-12 desa tersebut adalah Desa Keplaksari, Trawasan, Jogoloyo, Kepuhdoko, Jatiwates dan Plosogenuk. Selain itu juga Desa Banjarsari, Sukorejo, Kampung Baru, Gebang Bunder, Plabuhan dan Kabuh.&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Direktur Utama PTPN X, Dwi Satriyo Annurogo mengatakan ia sangat antusias dengan CSR yang dijalankan ini. &quot;Tikus adalah hama yang paling sulit dikendalikan. Tikus ini binatang yang pintar dan burung hantu merupakan salah satu pengendali tikus,&quot; kata Dwi saat Peresmian Bantuan CSR PTPN X Pemasangan Rumah Burung Hantu di Desa Plosogenuk, Sabtu (11/1).&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Dikatakannya, jangkauan burung hantu bisa mencapai 10 ha. Tidak hanya untuk tebu namun keberadaannya juga bisa dirasakan oleh petani tanaman lain seperti padi.&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Bantuan ini memang baru pertama kali dilakukan PTPN X. &quot;Jika memang efektif, bisa dikembangkan ke wilayah-wilayah lain,&quot; sambungnya.</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Anggota Komisi 4 DPR RI, Emma Umiyatul Chusna menyampaikan apresiasinya atas perhatian yang diberikan PTPN X kepada masyarakat Jombang. &quot;Kalau memang efektif saya harapkan tidak hanya di 26 titik ini saja tapi bisa ditambah,&quot; ujar anggota dewan yang akrab disapa Ning Emma ini. (Red1, PUT_Sekper)</div>\r\n	27	0	2020-01-13 15:00:56	http://ptpn10.co.id/uploads/10.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-pasang-rumah-burung-hantu-untuk-kendalikan-hama-tikus
100	B	Jadi Keynote Speaker, Dirut PTPN X Berbagi Pengalaman	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Untuk kali pertama, Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo menjadi&nbsp;<em style="box-sizing: border-box;">Keynote Speaker&nbsp;</em>pada acara Rapat Kerja Tahunan PT Barata Indonesia (Persero). Di depan jajaran direksi dan karyawan PT Barata Indonesia (Persero), Dwi berbagi pengalaman bagaimana dirinya bersama jajaran direksi PTPN X dan seluruh karyawan PTPN X mengatasi perusahaan yang mengalami krisis.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Saat saya masuk ke PTPN X tahun 2016 lalu, PTPN X mengalami kerugian sebesar 155 Millar," kata Dwi di depan jajaran direksi dan karyawan PT Barata Indonesia (Persero) pada acara Rapat Kerja Tahunan dan Penandatanganan Kontrak Manajemen PT Barata Indonesia (Persero) di Hotel Surya, Tretes pada Selasa (28/01).</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dwi menambahkan dua hari setelah dilantik, dirinya bertemu dengan Menteri BUMN dan memberikan ultimatum bahwa PTPN X harus laba dan tidak boleh rugi.&nbsp; Sebagai orang baru di Industri gula, dirinya harus cepat mempelajari kondisi perusahaan dan mencari solusi.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Tahun 2017, ada obligasi 200 Milliar yg sudah jatuh tempo dan banyak tantangan lainnya," ungkapnya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Langkah pertama, sambung Dwi yang dilakukan adalah mensosialisasikan ke seluruh karyawan dan komisaris bahwa kondisi perusahaan tengah krisis sehingga diharapkan agar seluruh karyawan bisa memahami kondisi perusahaan. Langkah selanjutnya adalah menerapkan tiga langkah strategis untuk mengatasi perusahaan yang krisis.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Tiga strategi tersebut adalah restrukturisasi keuangan, restrukturisasi portofolio perusahaan dan restrukturisasi perusahaan," sebutnya. (Red3, PUT_Sekper).</p>	8	0	2020-01-31 09:34:34	images/news/WhatsApp_Image_2020-01-28_at_11_15_45.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
128	B	PG Meritjan,  Salurkan CSR melalui Bedah Rumah Tidak Layak Huni 	<p>PG Meritjan, unit usaha dari PTPN X menunjukkan kepeduliannya kepada masyarakat kurang mampu dengan menyalurkan CSR nya melalui program bedah rumah. Kegiatan ini diperuntukan guna membantu masyarakat sekitar yang memerlukan dan untuk meningkatkan kualitas hidup dan kesejahteraan.</p>\r\n\r\n<p>General Manager PG Meritjan, Syahrial Koto mengungkapkan bahwa kegiatan ini merupakan bentuk tanggung jawab sosial perusahaan terutama kepada masyarakat sekitar pabrik. &nbsp;Dan bantuan kali ini diterima langsung oleh Ibu Sugiarti dari Desa Dermo, Kecamatan Mojoroto, Kediri.</p>\r\n\r\n<p>&quot;Kita memberikan bantuan kepada warga kurang mampu dalam bentuk menjadikan rumah mereka yang semula tidak layak huni menjadi rumah idaman. Mudah-mudahan dengan program bedah rumah ini, warga kurang mampu dapat terbantu dan merasakan keberadaan di daerah ini,&quot; tandasnya.</p>\r\n\r\n<p>Dijelaskan Syahrial, bedah rumah dengan ukuran 12,5 meter dan 13,5 meter ini dilaksanakan selama satu bulan. Pengerjaannya terus dikebut &nbsp;karena kondisi rumah yang sudah tidak layak lagi untuk di tinggali oleh Ibu Sugiarti.</p>\r\n\r\n<p>&ldquo; Alhamdullilah , berkat kerjasama dari semua pihak pengerjaan bedah rumah ibu Sugiarti dapat berjalan dengan lancar dan sesuai waktu yang diharapkan,&rdquo; jelasnya.</p>\r\n\r\n<p>Sementara itu, dalam kesempatan tersebut hadir pula Direktur Komersil PTPN X, Slamet Djumantoro. Dalam sambutannya ia mengucap syukur yang tak terkira bahwa program CSR Bedah Rumah di lingkungan Pabrik Gula Meritjan dapat berjalan dengan lancar. Ia pun berharap bahwa dengan adanya program ini silaturahmi antara PG Meritjan dan warga sekitar dapat berjalan dengan baik.</p>\r\n\r\n<p></p>\r\n\r\n<p>&nbsp;&quot;Perusahaan juga memiliki tanggung jawab untuk membantu meningkatkan kesejahteraan warga desa yang ada di sekitar perusahaan. Untuk itu bedah rumah ini diharapkan mampu dapat menolong mereka terutama bagi yang membutuhkan,&quot; jelasnya. (RED2, Put_Sekper)</p>\r\n	5	0	2020-02-10 11:43:12	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-02-06_at_11.43.24_AM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-meritjan-salurkan-csr-melalui-bedah-rumah-tidak-layak-huni
93	B	Direksi dan Serikat Pekerja PTPN X Tanda Tangani PKB 	<p style="text-align: justify;">Dalam rangka menciptakan hubungan kerja yang harmonis dan terciptanya iklim kerja yang kondusif, Direksi dan Serikat Pekerja (SP) PT Perkebunan Nusantara (PTPN) X pada Kamis (16/1) telah menandatangani kesepakatan Perjanjian Kerja Bersama (PKB) periode 2020 -2021 di LPP Convention Hall, Yogyakarta. Acara penandatanganan ini dihadiri oleh Direksi PTPN X Pengurus SP- PTPN X dan perwakilan para karyawan.</p>\r\n\r\n<p style="text-align: justify;">Sejak tiga bulan yang lalu, tim PKB SP - PTPN X dan tim PKB Manajemen telah melakukan perundingan, kedua belah pihak melaksanakan perundingan dengan itikad baik dan berusaha keras untuk mencapai kesepakatan yang juga mempertimbangkan kondisi industri dan perusahaan saat ini.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Slamet Djumantoro, selaku Direktur Komersil PTPN X sangat mengapresiasi pembahasan PKB yang berjalan lancar. &ldquo;Kesepakatan yang dibuat ini merupakan bukti telah terciptanya trust antara serikat pekerja dengan manajemen. Kami berharap trust yang telah terbangun ini dapat terus ditingkatkan. Ini merupakan kemenangan kita semua, karena manajemen dan serikat pekerja adalah satu tim. Kita harus bahu-membahu dan bekerja keras untuk memajukan perusahaan,&rdquo; jelasnya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sementara itu, Amier Hasanoedin selaku ketua SP-PTPN X dalam sambutannya mengatakan dukungannya terhadap manajemen untuk memajukan perusahaan serbagai sarana dalam meningkatkan kesejahteraan karyawan.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Kami siap mendukung hubungan industrial dan secara penuh memberikan dukungan agar PTPN X mampu bersaing dan menjadi leader di industri gula,&quot; ujarnya.</p>\r\n\r\n<p style="text-align: justify;">Dengan ditandatanganinya PKB ini diharapkan dapat meningkatkan kenyamanan dalam hubungan industrial, sehingga tercipta kondisi yang kondusif dan harmonis yang pada gilirannya dapat meningkatkan kualitas produk dan produktivitas perusahaan. (Red2, PUT_Sekper).</p>\r\n	14	0	2020-01-17 11:34:32	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-01-17_at_11.28.12.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/direksi-dan-serikat-pekerja-ptpn-x-tanda-tangani-pkb
44	B	PTPN X Resmikan Masjid AL-Fitrah Jember	<p style="text-align: justify;">Rabu (30/10), PT Perkebunan Nusantara (PTPN) X meresmikan masjid Al Fitrah yang berada di wilayah kerja Kebun Ajong Gayasan, Jember. Acara dihadiri langsung oleh Direktur Utama PTPN X,&nbsp;Dwi Satriyo Annurogo, Direktur Komersil PTPN X, Slamet Djumantoro, dan beberapa pejabat puncak PTPN X.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Sebagai anak perusahaan dari PTPN III (Persero), PTPN X senantiasa memberikan manfaat kepada masyarakat sekitar sebagai wujud BUMN Hadir Untuk Negeri. Masjid Al-Fitrah ini dibangun kurang lebih sekitar satu tahun dimana dananya berasal dari PKBL PTPN X dan sumbangan dari para donatur.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya berharap keberadaan masjid Al-Fitrah dapat meningkatkan kegiatan keagamaan dan ketaqwaan karyawan serta masyarakat sekitar,&rdquo; terang Dwi dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, program CSR juga telah dilakukan oleh PTPN X khususnya di sekitar wilayah kerja, baik di pabrik gula maupun kebun tembakau. Contohnya, pengiriman tim tanggap bencana, pembangunan irigasi, pemberian bantuan pengobatan, dan pelatihan kepada petani. (CIN_Sekper, PUT_Sekper)</p>\r\n	1	0	2019-10-30 22:34:53	http://ptpn10.co.id/uploads/foto_web.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-resmikan-masjid-al-fitrah-jember
98	B	Rayakan HUT ke 7, PT NMU Launching New Corporate Culture	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Tak terasa sudah Tujuh tahun, PT Nusantara Medika Utama (NMU) anak usaha PT Perkebunan Nusantara (PTPN) X yang bergerak di bidang layanan kesehatan hadir memenuhi kebutuhan kesehatan masyarakat Jawa Timur dan sekitarnya. Berbagai dinamika regulasipun mewarnai perjalanan bisnis PT NMU selama ini.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Di hadapan jajaran Dewan Komisaris, Dewan Direksi dan seluruh tamu undangan yang hadir dalam acara puncak peringatan Hari Ulang Tahun (HUT) PT NMU ke 7 yang mengangkat tema 'Achieve Exellent' bertempat di Hotel Ayola, Mojokerto pada Kamis (23/1). Direktur Utama PT NMU, Ary Sylviati menyampaikan apresiasinya atas segala&nbsp; pencapaian PT NMU di usianya yang baru menginjak tujuh tahun tersebut.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Tantangan yang akan dihadapi kedepan tentu semakin berat. Untuk itu saya menghimbau seluruh&nbsp;karyawan bisa menghadirkan program-program unggulan dengan tujuan&nbsp;meningkatkan kualitas pelayanan terhadap konsumen.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Banyak sekali tantangan kedepan. Tapi saya yakin dengan kekuatan bersama sebagai salah satu anak usaha BUMN dan dengan dukungan seluruh jajaran pemilik saham, saya yakin semuanya bisa kita capai sesuai dengan harapan yang diamanahkan," ujar Ary.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dalam acara tersebut juga di launching New Corporate Culture&nbsp;dari PT NMU yakni SPIRIT&nbsp;(Synergi, Professional,<br style="box-sizing: border-box;" />Integrity, Respect, Innovation dan Team work). "Dengan SPIRIT ini mari kita tingkatkan kualitas pelayanan yang ada agar PT NMU bisa tetap menjadi pilihan terdepan bagi konsumen," ujar Ary sembari meresmikan New Corporate Culture tersebut. (Red2, PUT_Sekper)</p>	13	0	2020-01-25 11:14:18	images/news/web2.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
75	B	Menteri Pertanian Lepas Ekspor Edamame Senilai Rp 2,6 Milliar	<p style="text-align: justify;">Menteri Pertanian Republik Indonesia, Syahrul Yasin Limpo melepas kontainer berisi edamame produksi PT Mitratani Dua Tujuh (M27) anak perusahaan PT Perkebunan Nusantara (PTPN) X yang siap di ekspor ke Jepang. Di penghujung tahun 2019 ini, perusahaan yang berlokasi di Mangli, Jember tersebut akan mengekspor edamame senilai USD 185.200 atau 2,6 milliar rupiah.</p>\r\n\r\n<p style="text-align: justify;">Direktur utama PTPN&nbsp;X, Dwi Satriyo Annurogo menyampaikan permintaan Jepang akan edamame sebesar 7.500 ton sedangkan Indonesia baru bisa memenuhi kebutuhan tersebut sebanyak 4.500 ton.</p>\r\n\r\n<p style="text-align: justify;">Edamame, sambung Dwi, memang banyak diproduksi oleh negara lain, sebut saja China, Taiwan dan beberapa negara lainnya. Namun, pasar Jepang lebih menyukai edamame asal Jember ini karena kualitasnya yang terjamin dan cita rasa yang khas dibandingkan dengan edamame dari negara lain.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kapasitas produksi M27&nbsp;ini sudah hampir penuh. Untuk itu, di tahun 2020 mendatang, pihaknya akan melakukan ekspansi dengan rencana produksi mencapai 5.000 ton/tahun,&quot; papar Dwi.</p>\r\n\r\n<p style="text-align: justify;">Selain di Jepang, Dwi mengungkapkan pasar Edamame masih sangat luas seperti di negara-negara di Timur Tengah dan Eropa.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Di tempat yang sama, Syahrul&nbsp;mengatakan produk edamame asal Jember yang menjadi produk primadona bagi masyarakat Jepang merupakan salah satu contoh bahwa Indonesia adalah negara yang hebat.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Edamame jadi contoh yang bisa menjadi kekuatan bangsa Indonesia untuk mensejahterakan rakyatnya,&quot; katanya.</p>\r\n\r\n<p style="text-align: justify;">Syahrul&nbsp;menambahkan pekerjaan&nbsp;Indonesia ini masih banyak untuk mengentaskan seluruh rakyat dari jerat kemiskinan. Produk edamame dari Jember ini merupakan masa depan.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Pertanian itu bicara negara, bicara tenaga kerja dan bicara soal masa depan. Saya akan lapor ke Erick Thohir (Menteri BUMN) kalau ada sesuatu yang menarik di M27&nbsp;ini,&quot; tegasnya.</p>\r\n\r\n<p style="text-align: justify;">Usai memberikan pemaparan, Menteri Pertanian didampingi Direktur Utama PTPN X, Direktur Utama PT M27&nbsp;dan sejumlah undangan memecahkan kendi tanda dilepaskannya kontainer yang siap membawa edamame ke Negeri Sakura. (Red3, PUT_Sekper).</p>\r\n	2	0	2019-12-27 11:01:16	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-12-27_at_10.36.33.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/menteri-pertanian-lepas-ekspor-edamame-senilai-rp-26-milliar
94	B	PTPN X Dukung Operasi Pasar Pemprov Jatim	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">PT Perkebunan Nusantara (PTPN) X mendukung upaya Pemerintah Provinsi Jawa Timur untuk menstabilkan harga gula di pasar melalui Operasi Pasar (OP). OP kali ini dilakukan di dua lokasi yaitu Pasar Ngaban Tanggulangin dan Pasar Baru Gresik.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">OP di Tanggulangin dilaksanakan pada Sabtu (18/1) sedangkan di Gresik pada&nbsp;Minggu (19/1). Untuk pelaksanaan OP tersebut PTPN X menyiapkan 2 ton gula Dasa Manis.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Konsumen bisa membeli gula Dasa Manis produksi PTPN X dengan harga Rp 11.500/kg. Satu paket terdiri dari dua gula kemasan 1kg atau senilai Rp 23.000/paket.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Harga ini jauh lebih murah dibandingkan dengan harga gula di pasar yang mencapai Rp 13.500 - Rp 14.000/kg. Tidak heran jika gula yang disediakan PTPN X ludes dalam waktu singkat.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Gubernur Jawa Timur, Khofifah Indar Parawansa mengatakan&nbsp;Pemprov Jatim mengajak PTPN X, Bulog dan perusahaan gula swasta untuk melakukan operasi pasar. "Kami lihat ini harga gula ada kenaikan sampai Rp 2.000 per kg. Di sebagian besar wilayah di Jatim ada kekurangan stok dan kenaikan harga. Maka sejak Selasa lalu, setiap hari ada operasi pasar," ujarnya di Gresik.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Ia menuturkan, stok gula mulai Januari sampai dengan Mei ada 185.000&nbsp;ton. Sedangkan kebutuhan gula di Jatim hingga periode tersebut hanya 175.000 ton. Artinya ada surplus 10.000 ton.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Tapi kenapa di lapangan ada kekurangan suplai hingga harga meningkat. Karena itu kami minta tim satgas pangan dan KPPU untuk melihat di gudang-gudang Bulog, PTPN dan perusahaan swasta lainnya, kalau ada sisa giling untuk bisa dimaksimalkan saat ini," tutur Khofifah. (Red1, PUT_Sekper).</p>	16	0	2020-01-21 07:09:21	images/news/web1.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
119	B	PTPN X  Magz Sabet Silver Winner di Inma 2020	<p>Media internal PTPN X, yakni&nbsp; PTPN X Magz kembali berhasil menyabet prestasi membanggakan dalam perhelatan Indonesia Inhouse Magazine Awards (InMA) 2020 Kategori BUMN.</p>\r\n\r\n<p>Kali ini PTPN X Magz mempersembahkan Silver Winner melalui cover majalah Edisi 31 Januari - Maret 2019 di ajang tahunan yang digelar oleh Serikat Perusahaan Pers (SPS) dalam momentum peringatan Hari Pers Nasional (HPN). Malam penghargaan yang dihadiri oleh ratusan pimpinan perusahaan pers se-Indonesia, tokoh pers nasional, pimpinan humas korporasi, dan lembaga pemerintah ini digelar di Hotel Mercure, Banjarmasin, Jumat (7/2/2020). Trofi dan sertifikat diterima langsung oleh Soetono Effendi, Kaur Humas PTPN X. &nbsp;</p>\r\n\r\n<p>&ldquo;Kami mengucapkan terima kasih atas apresiasi yang diberikan oleh SPS kepada PTPN X Magz. Sebuah kebanggaan tersendiri bahwa majalah internal yang kami kerjakan ini mampu membuahkan hasil yang baik, bahkan secara berturut-turut dalam beberapa tahun terakhir berhasil memperoleh penghargaan. Penghargaan inipun menjadi pelecut semangat agar kami tetap konsisten dalam menghadirkan informasi korporat bagi seluruh insan PTPN X,&rdquo; ujarnya.&nbsp;</p>\r\n\r\n<p>Perlu diketahui, malam penghargaan InMa merupakan acara puncak tahunan ajang penghargaan tertinggi yang diberikan oleh SPS Pusat bagi para kreator majalah. Acara yang mengusung tema besar &lsquo;Kreasi yang Menginspirasi Negeri&rsquo; sekaligus dilakukan dalam memperingati Hari Pers Nasional Indonesia 2020 ini dibuka oleh Ketua Harian SPS Pusat, Januar Primadi Ruswita. ⁣⁣⁣⁣<br />\r\n⁣⁣⁣⁣<br />\r\nInMA juga merupakan wahana mengukur pencapaian karya jurnalistik media cetak yang dituntut untuk lebih kreatif dan inovatif mengemas konten, termasuk menciptakan cover yang menarik di tengah perubahan tren pola konsumsi media di Indonesia yang cenderung mulai bergeser dari media cetak ke media digital dan online. &nbsp;Di ajang ini selain BUMN, juga diikuti peserta dari universitas, media, Instansi pemerintah pusat dan daerah serta swasta.</p>\r\n	9	0	2020-02-11 11:21:06	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-02-07_at_8.22.21_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-magz-sabet-silver-winner-di-inma-2020
121	B	PTPN X Jual Kelebihan Listrik  ke PLN	<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Kediri - PT Perkebunan Nusantara (PTPN) X menjual tenaga listrik ke&nbsp; PT Perusahaan Listrik Negara (PLN) (Persero). Listrik tersebut berasal dari ampas sisa pengolahan tebu yang diubah menjadi tenaga listrik.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Nantinya listrik yang disalurkan oleh PLN akan disalurkan kepada masyarakat sekitar. Kerja sama jual beli yang berjalan selama 2 tahun ini berkapasitas sebesar 3 MW (net) dengan harga Rp 545,-/kwh.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Kerja sama ini dimulai dengan penandatanganan nota kesepahaman lalu dilanjutkan dengan penandatanganan Perjanjian Jual Beli Listrik (PJBL) Kelebihan Tenaga Listrik antara PTPN X dengan PT PLN (Persero) yang diselenggarakan di PG Pesantren Baru, Kediri, Senin (3/2/2020).&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&ldquo;Harapannya potensial <em>excess power</em> di PG Pesantren Baru ini akan lebih maksimal selain digunakan untuk saving pengolahan gula berbasis tebu juga dapat menambah <em>revenue</em> perusahaan,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Dikatakan Dwi, penjualan listrik ini merupakan salah satu langkah diversifikasi yang dilakukan PTPN X. &quot;Jadi tidak hanya gula saja tetapi juga bisa mendapatkan <em>revenue</em> dari listrik dan bioetanol,&quot; terang Dwi.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Nantinya tidak hanya PG Pesantren Baru yang bisa menghasilkan listrik dari <em>excess power</em>. PG Gempolkrep juga tengah disiapkan untuk bisa mengekspor listrik ke PLN dengan kapasitas 5-8MW.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Selain itu juga PG Kremboong di Sidoarjo yang memiliki potensi menghasilkan listrik 3-4 MW.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Selain penandatanganan PJBL,acara diawali dengan sambutan oleh Direktur Utama PTPN X dan dilanjutkan dengan melakukan <em>site visit</em>&nbsp; di PG Pesantren Baru untuk meninjau kesiapan alat <em>excess power</em>.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&ldquo;Saya mohon dukungan dari seluruh pihak, baik karyawan PTPN X maupun PT PLN (Persero) agar dapat memberikan kontribusi secara maksimal dalam proyek ini. Sehingga apa yang sudah kita sepakati bersama dapat terimplementasikan dengan baik,&rdquo; tutur Dwi.</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">General Manager PLN Unit Induk Distribusi Jawa Timur, Bob Saril menambahkan, Pembangkit Listrik Tenaga Biomassa (PLTBm) PG Pesantren Baru ini merupakan salah satu bentuk diversifikasi usaha PTPN X yang memanfaatkan limbah pengolahan tebu untuk energi pembangkitnya. Dan dalam hal ini, sejalan dengan komitmen PLN untuk meningkatkan penggunaan energi alternatif.&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&quot;Energi biomassa merupakan salah satu energi alternatif yang dapat digunakan untuk membangkitkan tenaga listrik dengan pemanfaatan limbah tebu, hal ini sejalan dengan upaya PLN untuk mengembangkan dan menggunakan EBT serta menjadi sebuah solusi untuk pengolahan limbah bagi PTPN X agar bermanfaat,&quot; jelas Bob dalam sambutannya.</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp;</div>\r\n\r\n<div style="color: rgb(29, 34, 40); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">Kegiatan ini dihadiri juga oleh&nbsp; General Manager PG Pesantren Baru, Bambang Hari Nugroho beserta jajaran dan dari pihak PT PLN (Persero) yaitu Direktur Bisnis Regional Jawa, Madura, dan Bali, Haryanto WS serta EVP Operasi Bisnis Regional Jawa Timur, Madura dan Bali, Paraining. (RED1, Put_Sekper)</div>\r\n	20	0	2020-02-05 08:47:28	http://ptpn10.co.id/uploads/PLN.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-jual-kelebihan-listrik-ke-pln
139	B	Pencegahan Inveksi Virus Corona Untuk Karyawan PTPN	<p></p>\r\n	15	0	2020-03-13 14:57:49	http://ptpn10.co.id/uploads/covid19.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pencegahan-inveksi-virus-corona-untuk-karyawan-ptpn
35	B	Komisaris Holding Perkebunan Nusantara Kunjungi PG Gempolkrep dan PT Enero	<p style="text-align: justify;">Komisaris Holding Perkebunan Nusantara, Muhamad Syakir melakukan kunjungan kerja ke Pabrik Gula (PG) Gempolkrep pada (25/11). Kunjungan pertamanya sebagai Dekom Holding Perkebunan Nusantara yang baru ini dalam rangka memastikan target produksi di PTPN X dan pendapatan yang diterima perusahaan dari tebu dan tembakau.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan didampingi oleh Direktur Operasional PTPN X, Aris Toharisman, Tim Komite Audit PG Gempolkrep, dan Jajaran Pejabat Puncak PTPN X. Lawatannya ini memberikan semangat baru bagi PTPN X, pasalnya Muhamad Syakir mengatakan bahwa PTPN X secara komoditas masih masuk dalam 6 besar pemberi keuntungan, yaitu 102% dari RKAP.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas penerimaan yang baik dari PT Perkebunan Nusantara (PTPN) X. Harapan saya dalam musim giling mendatang PTPN X bisa mencapai target atau bahkan melampaui RKAP yang sudah disepakati. Saya yakin dengan kemampuan pasok BBT yang baik di dukung dengan SDM yang kompeten dan berakhlak baik pula, sukses giling tahun 2020 ada di depan mata,&rdquo; terang Syakir.</p>\r\n\r\n<p style="text-align: justify;">Disela-sela kunjungan ini, rombongan menyempatkan untuk meninjau Proyek PMN. Sakir berpesan agar Proyek PMN ini terus dimonitor sehingga <em>timeline project</em> bisa berjalan seluruhnya. Selain itu, rombongan juga meninjau langsung PT Enero yang yang terintegrasi dengan PG Gempolkrep. (PUT_Sekper, CIN_Sekper)</p>\r\n	4	0	2019-11-26 20:47:34	http://ptpn10.co.id/uploads/DSC00669.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisaris-holding-perkebunan-nusantara-kunjungi-pg-gempolkrep-dan-pt-enero
186	B	Persiapkan Giling 2021, PTPN X Tanda Tangani Pengikatan Perjanjian Pembelian Lahan Baru	<p>PT Perkebunan Nusantara X menandatangani Ikatan Jual Beli lahan milik PT Sumbersari Petung, Kamis (22/10). Penandatanganan ini dilakukan langsung oleh Direktur PT Perkebunan Nusantara X, Aris Toharisman dengan Yahya Taufik, Direktur PT Sumbersari Petung. Lahan yang dibeli seluas 258 Ha yang terletak di Kecamatan Ngancar, Kabupaten Kediri, Jawa Timur. Lahan tersebut nantinya akan dikelola langsung oleh PG Pesantren Baru Kediri dan seluruh tebunya akan di pabrik gula tersebut.</p>\r\n\r\n<p>&ldquo;Pembelian lahan ini untuk menjamin pasokan tebu yang berkualitas bagi PTPN X. Lahan tersebut juga diharapkan dapat meningkatkan proses giling tebu yang saat ini hanya mencapai 80% dari nominal yang telah ditargetkan.&rdquo; ungkap Aris.</p>\r\n\r\n<p>Harapannya dengan hadirnya HGU ini, dapat meningkatkan pasok BBT dan juga menjamin kualitas BBT yang masuk ke pabrik gula PTPN X. Sehingga angka-angka produksi juga akan meningkat secara signifikan.(Silvi_PMMB, Put_Sekper)</p>\r\n	1	0	2020-10-22 15:55:02	http://ptpn10.co.id/uploads/5f913d42-363c-4685-b2c9-6474e3e14fb4-sumber_sari_petung_1.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/persiapkan-giling-2021-ptpn-x-tanda-tangani-pengikatan-perjanjian-pembelian-lahan-baru
31	B	Terus Ukir Prestasi, PTPN X Kembali Raih Tiga Penghargaan	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X kembali meraih penghargaan. Kali ini, PTPN X menyabet tiga penghargaan sekaligus dalam ajang TOP Digital Award 2019. Penghargaan diterima langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Direktur Operasional PTPN X, Aris Toharisman, di Jakarta (27/11). Tiga penghargaan yakni Top Leader on Digital Implementation 2019, Top Digital Implementation on Agriculture Sector 2019 Level Star 4, dan Top Digital on Agriculture &ndash; <em>e-Farming</em> &amp; Investani.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;PTPN X selalu memperbaiki kinerjanya setiap tahun. Penghargaan ini merupakan hasil kerja keras dan usaha dari seluruh karyawan PTPN X dan juga dukungan dari seluruh&nbsp;<em>stakeholder</em>. Kami mengucapkan terima kasih atas apresiasi dan kepercayaan yang diberikan kepada PTPN X,&rdquo; terang Dwi.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Berhasilnya PTPN X dalam menyabet Top Digital on Agriculture &ndash; e-Farming dan Investani, merupakan salah satu bukti bahwa PTPN X selalu berusaha memberikan kemudahan pelayanan kepada <em>stakeholder</em> khususnya petani. Melalui beberapa program unggulan antara lain e-Farming dan Investani. e-Farming adalah aplikasi pendaftaran lahan dan<em>&nbsp;monitoring</em> kemajuan pekerjaan kebun melalui website dan&nbsp;<em>mobile application</em>&nbsp;(android) yang didukung dengan teknologi GIS dan satelit.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, PTPN X juga memiliki program terbaru yakni Investani. Investani merupakan program investasi dalam bentuk lahan perkebunan wilayah kerja PTPN X. Para investornya adalah karyawan internal dan anggota koperasi karyawan PTPN X, serta Holding Perkebunan Nusantara. Program Investani dan e-Farming ini menjadi langkah awal PTPN X untuk memasuki era industry 4.0.</p>\r\n\r\n<p style="text-align: justify;">&quot;PTPN X senantiasa fokus pada pada perkembangan teknologi informasi sebagai bentuk peningkatan SDM dan komitmen kami untuk mewujudkan SDM yang unggul dan Indonesia yang lebih maju,&quot; tambah Dwi.</p>\r\n	4	0	2019-11-28 17:10:02	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-27_at_8.17.10_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/terus-ukir-prestasi-ptpn-x-kembali-raih-tiga-penghargaan
70	G	Buka Tahun 2020 PTPN X	<p><span style="color: #212529; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 16px; background-color: #ffffff;">Perayaan Tahun Baru PTPN X yang dibuka oleh Direktur Utama PTPN X</span></p>	129	0	2020-01-02 09:37:43	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
86	B	Berharap Bisa Beri Kontribusi Positif ke Perusahaan	<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Perayaan Natal Bersama PT Perkebunan Nusantara (PTPN) X berlangsung dalam suasana penuh kegembiraan. Sekitar 500 umat kristiani di lingkungan PTPN X baik yang berasal dari unit pabrik gula, tembakau serta anak usaha berkumpul bersama di Grha Djombang Baru, Sabtu (11/1).&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Ketua Panitia Perayaan Natal Bersama PTPN X, Ramlan Silvester Sinaga mengatakan, tema perayaan kali ini adalah &#39;Hiduplah Sebagai Sahabat Bagi Semua Orang&#39; yang berasal dari Yohanes 15:14-15. &quot;Tema ini kami ambil dari tema natal secara nasional yang menurut kami waktunya tepat. Kita semua waktunya untuk recovery. Di lingkungan perusahaan, kami dari rukun nasrani PTPN X berharap bisa berkontribusi positif untuk PTPN&nbsp;X,&quot; ujar Naga.&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Ia memaparkan, bahwa rangkaian perayaan Natal di PTPN X didahului dengan bakti sosial di Dinas Sosial dan panti asuhan di Pare serta di HGU Ngusri.&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&quot;Dalam kesempatan ini kami laporkan bahwa kegiatan ini bersifat mandiri dari perusahaan dan karyawan serta pensiunan,&quot; ujarnya.&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Direktur PTPN X, Dwi Satriyo Annurogo pada kesempatan yang sama menyampaikan bahwa tema yang diangkat pada tahun ini membuatnya teringat pada kisah perjalanan Yesus bersama murid-muridnya di kota Yerikho. Dalam perjalanan tersebut Yesus membantu dua orang buta yang membutuhkan pertolongan. Sementara di Kota Yerikho sendiri Yesus menunjukkan kuasanya dengan mengubah seseorang yang kejam dan tiran menjadi seorang yang pemurah.</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(38, 40, 42); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">&quot;Terkait dengan tema tadi, saya harap&nbsp;mata dan telinga kita ini bisa digunakan untuk melihat kesulitan dan kesusahan orang lain serta membantu mereka yang membutuhkan,&quot; tutur Dwi. (Red1, PUT_Sekper).</div>\r\n	18	0	2020-01-13 14:45:44	http://ptpn10.co.id/uploads/7.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/berharap-bisa-beri-kontribusi-positif-ke-perusahaan
184	B	Amankan Aset, PTPN X Lakukan Audiensi ke Polda Jatim	<p>Board of Management (BOM) PT Perkebunan Nusantara (PTPN) X bersama BOM PTPN XI dan PTPN XII melakukan auidensi ke Polda Jawa Timur, Selasa (3/11). Audiensi ini sebagai upaya peningkatan pengamanan aset HGU dan produksi yang dimiliki PTPN Group di wilayah Jawa Timut. Aris Toharisman, Direktur PTPN X bersama rombongan disambut langsung oleh Kapolda Jatim Irjen Pol Muhammad Fadil Imran.</p>\r\n\r\n<p>&ldquo;Ke depannya, audiensi ini akan ditindaklanjuti dengan agenda penandatanganan MOU terkait kerjasama peningkatan pengamanan aset dan produksi serta penegakan hukum antara PTPN X dengan Polda Jawa Timur,&rdquo; terang Aris.</p>\r\n\r\n<h3><span style="font-size: 13px;">Aris juga menambahkan bahwa adanya sinergi ini diharapkan membuat pihaknya dapat mempertahankan status kepemilikan, fungsi dan peruntukan aset perusahaan. Selain itu juga dapat menjaga kondisi menjadi lebih aman dan kondusif selama menjalankan proses bisnis di wilayah Jawa Timur, khususnya ketika musim giling.</span></h3>\r\n\r\n<p>Kapolda Jatim menyambut baik audiensi dari PTPN Group wilayah Jawa Timur ini. Pihaknya menawarkan patroli rutin untuk mengawasi lahan-lahan milik PTPN Grup, sehingga aset yang dimiliki dapat terjaga dan dioptimalkan dengan baik.</p>\r\n\r\n<p>&ldquo;Sebagai pengayom masyarakat, kami siap membantu siapa saja yang memang perlu mendapatkan pengamanan dari Polda Jatim. Kami siap membantu pengamanan aset-aset yang dimaksud,&rdquo; terang Fadil. (Silvi_PMMB, Put_Sekper)</p>\r\n	1	0	2020-11-04 09:51:43	http://ptpn10.co.id/uploads/Polda.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/amankan-aset-ptpn-x-lakukan-audiensi-ke-polda-jatim
125	G	Kunjungan IIK Holding Nusantara	<p><span style="color: #212529; font-family: 'times new roman', times, serif; font-size: 16px; background-color: #ffffff;">IIKB PTPN X dipimpin oleh Ibu Atik Dwi Satriyo menerima kunjungan dari IIK Holding Nusantara yang dipimpin oleh Ibu Riskiyah Abdul Gani dalam rangka silaturahmi dengan Anak Perusahaan Perkebunan yang berada di Jawa Timur. Kunjungan ini dilakukan dengan mengunjungi TK Sakanira 2 HGU Sumber Lumbu dengan memberikan bantuan alat tulis dan alat peraga bagi para siswa, selain itu juga melihat hasil kreativitas siswa TK tersebut. Acara ditutup dengan melakukan penanaman pohon sebagai bentuk kepedulian IIK Holding Nusantara dan IIKB PTPN X terhadap penghijauan dan kelestararian alam. (26/2)</span></p>	20	0	2020-02-27 09:11:04	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
39	B	PTPN X Tanam Lahan Agroforestry di Desa Jelu Bojonegoro	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan penanaman tebu di lahan Agroforestry Desa Jelu, Kecamatan Ngasem, Kabupaten Bojonegoro seluas 50,643 Ha, Jumat (15/11). Program ini bekerjasama dengan Kesatuan Pengelolaan Hutan (KPH) Perum Perhutani Bojonegoro. Lahan tersebut akan ditanami varietas NX 01 dengan potensi rendemen 9,9% dan produktivitas 124 Ton/Ha.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, lahan agroforestry tebu yang telah tertanam seluas 223,63 Ha tersebar di KPH Mojokerto, KPH Bojonegoro, dan KPH Jombang. Tahun 2019, ada penambahan penanaman seluas 40 Ha di KPH Jombang di bulan Oktober lalu dan 50 Ha di KPH Bojonegoro. Kali ini, penanaman akan direncanakan seluas 50,643 Ha, terdiri dari 4 (empat) petak yang terbagi di Desa Jelu, RPH Prajegan 2 (dua) petak seluas 26,178 Ha dan di Desa Dukuh Kidul BKPH Sendang Serong 2 (dua) petak seluas 24,465 Ha kecamatan Ngasem, Kabupaten Bojonegoro. Nantinya, tebu-tebu tersebut akan di kelola langsung oleh PG Djombang Baru untuk menjaga keajegan pasok BBT pada Musim Giling 2020.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kerjasama ini merupakan sinergi BUMN dengan Perum Perhutani dan merupakan tugas Negara berdasarkan SKB 4 Menteri sebagai wujud BUMN Hadir Untuk Negeri, karena kegiatan Agroforestry tebu memberikan peluang lapangan pekerjaan bagi masyarakat sekitar untuk bersama-sama membangun, melindungi, dan memanfaatkan sumberdaya hutan sebagai penggerak ekonomi di pedesaan,&rdquo; ujar Aris Toharisman, Direktur Operasional PTPN X dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Tanam perdana ini merupakan tindak lanjut dari kerjasama antara PTPN X dengan Perum Perhutani Divisi Regional Jawa Timur untuk melakukan pemanfaatan kawasan hutan berupa kegiatan budidaya tanaman tebu guna mendukung ketahanan pangan. (Valen_UWM, CIN_Sekper)</p>\r\n	1	0	2019-11-15 18:32:04	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-15_at_11.16.39.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tanam-lahan-agroforestry-di-desa-jelu-bojonegoro
79	A	Work as Calling	<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Bicara tentang pekerjaan, hampir semua orang dibelahan dunia memiliki pekerjaan yang beraneka ragam. Namun pada kenyataanya tidak semua orang mengerti apa makna pekerjaan bagi diri mereka. Mereka hanya mengejar dari segi puing materi, tanpa tahu filosofi secara luas dari apa yang sedang mereka kerjakan pada pekerjaanya.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Banyak orang yang bilang &ldquo;nggak penting jenis pekerjaannya itu apa, yang penting kerja, kerja dan kerja, terus dapat duit&rdquo;. Kalimat seperti ini sudah menjadi sebuah sugesti&nbsp;yang dianggap benar di kalangan masyarakat, dan seolah-olah hal tersebut adalah sebuah kepercayaan yang baik untuk generasi penerusnya. Namun, sebenarnya <em>mindset</em> seperti inilah yang menjadi&nbsp; salah satu faktor terbesar penyebab generasi muda sulit mengembangkan potensi dalam dirinya atau mungkin bisa dibilang bekerja tanpa <em>passion</em>.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Memang apa sih pentingnya ngerti filosofi pekerjaan?&nbsp;Bukanya memang tujuan bekerja adalah untuk mendapatkan uang!&nbsp;Bill Gates, Jack Ma, Mark Zuckerberg, Nadiem Makarim, Harlan Sanders adalah beberapa nama yang sudah tidak asing lagi disebut dan didengar sebagai orang yang berhasil dalam bidangnya. Lantas apa yang membuat mereka berada dipuncak kesuksesan?&nbsp;Apa bedanya cara bekerja mereka dengan kita?</span></p>\r\n<pre style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Nah mari kita ulas. <em>Guys, we work as they do</em>, Namun pernahkan dibenak anda terbesit bahwa kita sama-sama bekerja namun hasilnya berbeda. Dimana letak perbedaan cara bekerja mereka dengan kita? Nah dari sini kita mulai berfikir dan belajar bahwa cara bekerja akan mempengaruhi efektifitas kehidupan. Tulisan ini dibuat tidak untuk membandingkan diri anda dengan siapapun didunia ini, karena saya yakin bahwa Tuhan menciptakan takdir yang berbeda disetiap ciptaanya untuk membuat keaneragaman dibumi. Setidaknya tulisan ini mampu memberi mindset baru bahwa cara bekerja yang unik (menyenangkan) akan memberikan kehidupan yang lebih baik untuk diri anda dimasa depan. </span></pre>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;"><em>&ldquo;Develop the winning edge. Small differences in your performance can lead to large differences in your results&rdquo;-Brian Tracy. </em></span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Saya tertarik dengan tulisan Brian Tracy diatas yang bermakna &ldquo;Kembangkanlah sikap untuk selalu menjadi lebih baik. Membuat perbedaan yang kecil dalam tindakan (Pekerjaan) akan menghasilkan perbedaan yang besar dalam hasil yang diperoleh&rdquo;.&nbsp;&nbsp;</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Saya berfikir mungkin salah satu yang menjadi perbedaan terbesarnya adalah bahwa mereka selalu memperlakukan setiap pekerjaanya dengan tindakan yang sangat baik, dalam artian mereka bekerja sebagai panggilan hidup (<em>Work as a calling</em>), bukan bekerja sebagai upaya bertahan hidup (<em>Work as a job)</em>. Mereka tahu arti dan tujuan dari pekerjaanya. Tidak hanya sekedar bekerja, mereka paham betul tentang konsep <em>work is a calculation</em>. Mereka selalu berharap bahwa hasil dari pekerjaanya mampu menjadi inspirasi dan solusi terhadap permasalahan global dimasa depan.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;"><em>What kind of life do you want at work?</em>. Begitu banyak harapan yang mendorong kita dalam skenario kehidupan tertentu.&nbsp; Kadang manusia terlalu fokus pada pola kehidupan terhadap apa yang diinginkan dalam pekerjaanya, bukan pada ingin menjadi siapa kita dalam pekerjaan. Jangan kau tukar siapa dirimu dengan apa yang menurutmu dibutuhkan dunia, karena dunia membutuhkanmu untuk menjadi dirimu sendiri.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Percayalah setelah anda mengerti makna dari sebuah pekerjaan, anda tidak akan sekedar bekerja untuk materi, anda akan lebih mengerjar bagaimana caranya membuat jiwa menjadi bahagia saat bekerja dan anda akan lebih memikirkan bagaimana caranya, apa yang anda hasilkan dari pekerjaan itu bermanfaat untuk orang lain. Lantas, bagaimana cara menemukan filosofi dalam pekerjaan?&nbsp;Ada 5 (lima) tips yang mungkin bisa anda coba sebagai upaya atau membantu dalam menemukan apa arti pekerjaan (pekerjaan yang sedang anda miliki sekarang ini) dalam hidup anda.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">&nbsp;1. Apapun pekerjaan anda, cintailah. Jangan risau apapun pekerjaan yang anda miliki sekarang, walaupun itu tidak membuatmu kaya, setidaknya ia membuatmu hidup.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">2. Bekerjalah dengan hati yang gembira. Dengan perasaan yang positif, anda akan mampu menikmati proses dari sebuah pekerjaan.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">3.&nbsp; Miliki rasa penerimaan yang besar terhadap pekerjaan. Dengan hal itu anda akan belajar bersyukur disetiap momen pekerjaan.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">4.&nbsp; Berpetualanglah dalam pekerjaan. Lakukan hal-hal baru bersama teman-teman kerja anda, perbanyak relasi dan buatlah dunia kerja anda semenarik mungkin.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">5. Anggaplah pekerjaan anda sebagai media untuk berbagi dan hal yang dapat mendekatkan diri kepada Tuhan.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Jangan sampai anda mengorbankan pencarian arti hidup hanya mengejar slip gaji,&nbsp; menyerah terhadap impian, tercemar oleh keraguan dan benar-benar terjebak dalam rutinitas. Berbicara tentang kesuksesan dalam pekerjaan, semestinya tidak harus dinilai dari seberapa banyak materi yang berhasil didapat, tapi seberapa bahagia jiwa dalam menyelesaikan tupoksinya.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: arial,helvetica,sans-serif;">Saya yakin anda pasti memiliki gairah, anda memiliki kejeniusan dalam diri dan memiliki potensi. <em>Come back stronger, work as a calling</em>. Bekerjalan dengan bahagia bersama&nbsp; <em>passion</em> yang anda sukai. Apapun pekerjaan anda sekarang ini, nikmati dan bersenang-senanglah dengan pekerjaan anda, karena itu adalah anugerah dari Tuhan untuk mu. (Dhanaviya_Enero, PUT_Sekper)</span></p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p>&nbsp;</p>	23	0	2020-01-07 11:47:17	http://ptpn10.co.id/uploads/work-as-calling.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/work-as-calling
105	A	Sumbangsih Enero pada Dunia Pendidikan Jember	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">Mojokerto</span>&nbsp;(3/2) &ndash; PT. Energi Agro Nusantara (Enero) kembali memberikan sumbangsih pada dunia pendidikan Indonesia pada umumnya, dan secara khusus di daerah Jember. Pada hari Senin tanggal 27 Januari 2020 lalu, Enero berpartisipasi dalam memperkenalkan pendidikan tinggi terutama dalam bidang Teknik Kimia di Universitas Jember (UNEJ). Acara tersebut selain dihadiri akademisi Universitas Jember, juga mengundang perwakilan siswa-siswi dan guru-guru SMA dan yang setara di daerah Jember, Jawa Timur. Acara yang bertemakan &ldquo;Pengenalan Program Studi S1 Rekayasa/Teknik Kimia Universitas Jember dalam rangka Mengelola Potensi Wilayah Jawa Timur&rdquo; tersebut berlangsung dengan dinamis dan meriah.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">Perwakilan dari PT. Enero yaitu Sam Alfian Yusuf Helmi (Manajer Proses dan Project) menyampaikan materi mengenai Pengenalan Teknik Kimia dan Proses Produksi Bioethanol. Materi Pengenalan Teknik Kimia menjelaskan secara umum tentang bidang Teknik Kimia, potensi karir dan manfaatnya dalam kehidupan sehari-hari. Sedangkan dalam Proses Produksi Bioethanol dijelaskan secara singkat dan padat agar dapat dimengerti oleh para siswa-siwi SMA yang menghadiri. Selain itu turut pula menghadiri Ariel Hidayat (Manajer Biogas dan Fertilizer Plant) sebagai perwakilan alumni Universitas Jember yang berkarir di PT. Enero.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">Acara berjalan dengan interaktif serta terjalin diskusi yang cukup mendalam antara peserta dan pemateri. Banyak diantara peserta bertanya mengenai masa depan lulusan-lulusan Teknik Kimia. Pemateri dari Universitas Jember yaitu Kaprodi Teknik Kimia, Bp. Boy Arief Fachri, menjelaskan mengenai program studi Teknik Kimia, keahlian yang diperlukan dan kelengkapan fasilitas-fasilitas yang ada. Beliau menjelaskan bahwa, &lsquo;Kami berharap dengan adanya prodi Teknik Kimia ini bisa semakin melengkapi Universitas Jember, yang dikenal sebagai IPB-nya Indonesia bagian timur. Selain berfokus pada pertanian, dengan adanya industri-industri berbasis pertanian maka akan menjadi nilai tambah daerah Jember.&rdquo; (Sam Alfian YH_Enero, Put_Sekper)</p>	9	0	2020-02-05 08:44:51	images/news/web3.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
134	B	Antisipasi Wabah Corona Virus, PG Modjopanggoong Lakukan Sosialisasi	<p><strong>Tak perlu resah, namun tetap wajib diwaspadai.</strong> Penyakit yang kini kian melambung namanya Covid-19 pada dasarnya tidak begitu berbeda dengan penyakit flu lainnya. Pada umumnya manusia sudah sejak lama memiliki penangkalnya, yakni imunitas tubuh yang kuat. Umumnya penyebaran virus ini adalah melalui air liur ataupun cairan dari tubuh orang yang telah terinfeksi.</p>\r\n\r\n<p><br />\r\n&ldquo;Tak perlu takut, namun harus tetap mawas diri. Maka dari itu bagi seluruh karyawan PG. Modjopanggung harap menjaga kesehatan tubuh dengan memperhatikan kebersihan dan pola hidup yang sehat, mengkonsumsi makanan yang bergizi, dan cukup istirahat sehingga imunitas tubuh selalu terjaga&rdquo;, ujar Haryo Gunawan Wibisono selaku General Manager PG. Modjopanggung.</p>\r\n\r\n<p>Sebagaimana yang&nbsp; diketahui, virus tidaklah bisa berkembang dengan cepat. Salah satu faktornya adalah daya tahan tubuh yang bagus membuat virus akan semakin melemah. PT Perkebunan Nusantara (PTPN) X pun menghimbau kepada seluruh karyawannya melakukan tindakan pencegahan penyebaran virus dengan cara menghindari berpergian ke daerah yang terkena wabah virus Covid-19, memastikan keadan tempat kerja selalu bersih, menggunakan masker saat di lingkungan kerja, melaksanakan cuci tangan atau menggunakan <em>hand sanitizer </em>secara rutin, meminimalisir kontak langsung dengan orang lain, dan menjaga daya tahan tubuh dengan olahraga serta menjaga pola makan.</p>\r\n\r\n<p>Tanda dan gejala umum infeksi Coronavirus antara lain gejala gangguan pernapasan akut seperti demam, batuk dan sesak napas. Apabila terdapat karyawan yang mengalami gejala batuk ringan dan demam (37,3 C atau lebih) agar melapor ke atasan langsung, serta disarankan untuk bekerja dari rumah, dan segera konsultasi dengan dokter setempat.</p>\r\n\r\n<p>&ldquo;Saya berharap agar karyawan tetap tenang menghadapi isu yang beredar dan selalu memperhatikan kesehatan pribadi guna melakukan kegiatan persiapan giling 2020&rdquo;, pungkas Haryo. (Alma_UBR, Put_Sekper)</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n	28	1	2020-03-06 13:56:22	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-03-06_at_1.19.20_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/antisipasi-wabah-corona-virus-pg-modjopanggoong-lakukan-sosialisasi
71	G	 PT Nusa Medika Utama Turut Meriahkan Buka Tahun 2020	<p>PT Nusa Medika Utama Sebagai Anak Usaha PTPN X Menampilkan Pemenang Talent JFC Jember 2019 dan Tari Jember La Spanyola Dalam Acara Buka Tahun 2020 di Kantor Pusat PTPN X Surabaya</p>	27	0	2020-01-02 14:15:22	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
188	B	Peduli Covid-19, Kebun Ajong Gayasan Bagi Masker 	<p>Masa pandemi Covid-19 masih belum berakhir. Sebagai bentuk kepedulian akan penyebaran Covid-19, Kebun Ajong Gayasan membagi 250 masker, Rabu (14/10). Dalam kegiatan ini, Kebun Ajong Gayasan bekerjasama dengan Bank Mandiri dan Polsek Ajong Jember.&nbsp; Masker dibagikan kepada penjemput tenaga kerja dan masyarakat umum yang melintas di sekitaran gudang pengolahan kebun Ajong Gayasan.</p>\r\n\r\n<p>&ldquo;Adanya pembagian masker ini sebagai bentuk kepedulian Kebun Ajong Gayasan terhadap penyebaran Covid-19. Sehingga manajemen Kebun Ajong Gayasan bersama pihak Bank Mandiri dan Polsek Ajong secara langsung turun untuk membagikan masker,&rdquo; terang Dwi Aprilia Sandi, GM Kebun Ajong Gayasan.</p>\r\n\r\n<p>Tak hanya membagi masker, manajemen Kebun Ajong Gayasan juga secara aktif menginfokan kepada penerima masker untuk tetap memperhatikan protokol kesehatan dalam beraktivitas. Sehingga angka penyebaran Covid-19 di Jember diharapkan terus menurun. Kegiatan pembagian masker secara rutin dilakukan oleh Kebun Ajong Gayasan. Ke depannya, kegiatan-kegiatan yang berkaitan dengan penerapan protokol kesehatan juga akan terus dilakukan oleh manajemen, baik untuk karyawan maupun masyarakat sekitar wilayah kerja. (Silvi_PMMB, CIN_Sekper)</p>\r\n	0	0	2020-10-15 12:53:07	http://ptpn10.co.id/uploads/Web.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/peduli-covid-19-kebun-ajong-gayasan-bagi-masker
21	B	PT Mitratani Dua Tujuh Ekspor Sweet Potatoes ke Jepang	<p style="text-align: justify;">PT Mitratani Dua Tujuh, anak perusahaan PT Perkebunan Nusantara (PTPN) X kian mengembangkan pasar ekspornya. Kali ini untuk pertama kali PT Mitratani Dua Tujuh mengekspor <em>sweet potatoes </em>ke Jepang sebanyak 23 ton.<em> Launching</em> ekspor tersebut dihadiri langsung oleh Direktur Operasional, Aris Toharisman, Senin (16/12).</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Adanya ekspor ini diharapkan mampu memberikan nilai tambah bagi PT Mitratani Dua Tujuh dan juga langkah awal untuk ekspor selanjutnya,&rdquo; ungkap Aris.</p>\r\n\r\n<p style="text-align: justify;">Hingga tahun 2020, direncanakan PT Mitratani Dua Tujuh akan rutin ekspor sebesar 300 ton ke Jepang. Ke depannya, angka ekspor ini akan terus meningkat karena kebutuhan pasar Jepang sendiri mencapai 35.000 ton per tahunnya.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, Aris juga menghimbau untuk memanfaatkan lahan-lahan <em>idle </em>milik PTPN X dalam hal produksi produk-produk <em>frozen vegetables</em>. Sehingga, lahan <em>idle</em> dapat teroptimalisasi dengan maksimal.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, PT Mitratani Dua Tujuh telah merambah beberapa negara untuk produk <em>frozen vegetables</em> lainnya yaitu edamame, okra, dan lain-lain. (CIN_Sekper, PUT_Sekper)</p>\r\n	32	0	2019-12-16 22:32:18	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-12-16_at_15.27.38.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pt-mitratani-dua-tujuh-ekspor-sweet-potatoes-ke-jepang
17	B	Dirut PTPN X Kunjungi Lahan Agroforestry Tebu di Bojonegoro	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">BOJONEGORO</span>&nbsp;&ndash; Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo, lakukan kunjungan ke Lahan Perum Perhutani BKPH Celangap, KPH Bojonegoro pada Kamis (3/10). Kunjungan ini menindaklanjuti adanya kerjasama penggunaan dan pemanfaatan kawasan hutan untuk kegiatan budidaya tanaman tebu dengan Perum Perhutani yang telah berlangsung sejak Oktober 2017.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Kerjasama yang bertujuan untuk mendukung ketahanan pangan ini terkait di antaranya pengerjaan lahan Perum Perhutani untuk kegiatan penanaman Agroforestry tebu seluas 5.661,5 Ha yang mana telah mendapat persetujuan Kementerian Lingkungan Hidup dan Kehutanan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Seluas 52,3 Ha lahan Perhutani di kawasan KPH Bojonegoro akan ditanami tebu dan dikelola langsung oleh Pabrik Gula (PG) Djombang Baru. Lahan ini nantinya akan ditanami varietas unggul baru, dengan potensi produksi 80 Ton/ Ha dan rendemen 9%.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kerjasama terkait pengerjaan lahan Agroforestry tebu ini sebagai upaya dari PTPN X untuk memastikan keajegan pasok BBT ke pabrik gula pada masa giling tahun 2020,&rdquo;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya di tahun 2019 ini akan ada pengerjaan seluas 423 Ha. Sebelumnya, lahan yang telah dikerjakan berada di kawasan KPH Jombang seluas 108 Ha yang dikelola oleh PG Lestari. Selanjutnya, akan ada pengerjaan lahan di kawasan KPH Mojokerto seluas 253 Ha yang akan dikelola oleh PG Gempolkrep. (Ella_Unair, CIN_Sekper)</p>	9	0	2019-10-22 07:20:41	images/news/agrofore1.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
143	B	Enero Luncurkan Corporate Culture PASTI	<p style="margin-left:13.7pt;">Dalam membangun karakter perusahaan, PT Energi Agro Nusantara (Enero) luncurkan <em>corporate</em> <em>culture</em> (budaya perusahaan) kepada seluruh karyawan di Aula PT Enero, kemarin (18/3).</p>\r\n\r\n<p style="margin-left:13.7pt;">Direktur PT Enero, Dimas Eko Prasetyo menyampaikan budaya perusahaan diperlukan sebagai panduan bagi seluruh karyawan dalam operasional perusahaan. Nilai-nilai yang terkandung diharapkan bisa dipahami dan diimplementasikan para karyawan.</p>\r\n\r\n<p style="margin-left:13.7pt;">&ldquo;<em>Corporate</em> <em>culture</em> diharapkan dapat diimplementasikan seluruh karyawan dan menciptakan karakter perusahaan yang baik serta selaras dengan visi dan misi perusahaan&rdquo; ujar Dimas</p>\r\n\r\n<p style="margin-left:13.7pt;"><em>Corporate</em> <em>culture</em> PT Enero yaitu PASTI. Singkatan dari P<em>rofessional, Aware, Synergy, Tough </em>dan<em> Integrity</em>. Sebagian unsur <em>corporate</em> <em>culture</em> ini mengadopsi <em>corporate</em> <em>culture</em> dari induk perusahaan, Sinergi, Profesional dan Integritas. Adapun penjelasan masing-masing unsur sebagai berikut:</p>\r\n\r\n<p style="margin-left:13.7pt;">1. <em>Professional</em> atau Profesional</p>\r\n\r\n<p style="margin-left:13.7pt;">Melakukan tugas sebaik-baiknya (<em>beyond</em> <em>expectations</em>), berkompeten, bertanggung jawab dan selalu mengembangkan diri (inovatif)</p>\r\n\r\n<p style="margin-left:13.7pt;">2. <em>Aware</em> atau Kesadaran</p>\r\n\r\n<p style="margin-left:13.7pt;">Kesadaran diri dalam mendukung visi misi perusahaan, berperan aktif dalam menciptakan keselamatan dan kesehatan kerja serta budaya <em>continuous</em> <em>improvement</em></p>\r\n\r\n<p style="margin-left:13.7pt;">3. <em>Synergy</em> atau Sinergi</p>\r\n\r\n<p style="margin-left:13.7pt;">Menciptakan dan meningkatkan kerjasama dengan mengedepankan kepercayaan untuk memberikan nilai tambah yang optimal</p>\r\n\r\n<p style="margin-left:13.7pt;">4. <em>Tough</em> atau Tangguh</p>\r\n\r\n<p style="margin-left:13.7pt;">Tangguh dalam menghadapi tantangan, pantang menyerah untuk mencapai tujuan</p>\r\n\r\n<p style="margin-left:13.7pt;">5. <em>Integrity</em> atau Integritas</p>\r\n\r\n<p style="margin-left:13.7pt;">Merupakan prinsip dalam menjalankan tugas dengan menjunjung tinggi kejujuran, konsisten dan keteladanan berdasar pada <em>Good</em> <em>Corporate</em> <em>Governance</em> dan <em>Business</em> <em>Principle</em> (ARH_Enero, Put_Sekper).</p>\r\n	7	0	2020-03-19 12:34:33	http://ptpn10.co.id/uploads/Foto_Enero_2.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/enero-luncurkan-corporate-culture-pasti
113	B	Serikat Pekerja PT Perkebunan Nusantara X Silaturahmi Dengan Komisaris Utama PTPN X	<p style="text-align: justify;">Untuk kali pertama, perwakilan Serikat Pekerja PT Perkebunan Nusantara (PTPN)&nbsp;X bertemu dengan Komisaris Utama PTPN X, Saifullah Yusuf. Bertempat di Wisata Pintu Langit, Perwakilan SP PTPN X menyampaikan pendapat dan harapan para pekerja untuk kemajuan perusahaan di masa depan.</p>\r\n<p style="text-align: justify;">"Kedatangan teman-teman SP ini untuk memberikan masukan-masukan untuk Direksi dan Komisaris," kata Gus Ipul usai menerima perwakilan Serikat Pekerja, Rabu (12/02).</p>\r\n<p style="text-align: justify;">Gus Ipul menjelaskan masukan-masukan yang disampaikan teman-teman SP ini dalam rangka mempercepat kemajuan perusahaan yang berdasarkan pengalaman dan hal-hal yang dilihat, didengar dan dirasakan oleh karyawan.</p>\r\n<p style="text-align: justify;">"Industri gula ini menghadapi kondisi dan tantangan yang luar biasa," ungkapnya.</p>\r\n<p style="text-align: justify;">Mantan Wakil Gubernur Jawa Timur ini menyebutkan harga gula, persaingan antara pabrik gula baik milik BUMN maupun milik swasta dan tantangan lainnya.</p>\r\n<p style="text-align: justify;">"Saya apresiasi masukan dari teman-teman SP ini dan akan saya kordinasikan dengan direksi demi kemajuan perusahaan," imbuhnya.</p>\r\n<p style="text-align: justify;">Ditempat yang sama, Ketua SP PTPN X, Amir Hasanudin mengungkapkan ini adalah kunjungan dalam rangka menjalin silaturahmi perwakilan SP dengan komisaris utama PTPN X yang selama ini belum pernah duduk bareng mengingat kesibukan masing-masing.</p>\r\n<p style="text-align: justify;">"Alhamdulillah, hari ini Gus Ipul ada waktu dan kami pun juga waktu sehingga bisa bertemu dan ngobrol di Pintu Langit milik Gus Ipul," imbuhnya.</p>\r\n<p style="text-align: justify;">Amir menambahkan dengan pengalaman Gus Ipul yang pernah menjabat sebagai wakil gubernur hingga menteri, tentunya figur beliau akan mampu menjadi bapak bagi teman-teman SP yang semata-mata seluruh anggota SP PTPN X menginginkan kemajuan perusahaan di masa depan. (RED3, Put_Sekper)</p>	8	0	2020-02-18 13:15:31	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/serikat-pekerja-pt-perkebunan-nusantara-x-bertemu-dengan-komisaris-utama-ptpn-x
72	G	PTPN X Luncurkan Cerutu Seharga 1 Juta per Batang 	<p>Idang Rasjidi sebagai maestro musik jazz Indonesia dan pencinta cerutu mengatakan bahwa Cerutu PTPN X memiliki rasa dan berkelas Internasional.</p>	94	0	2020-01-03 07:25:59	\N	\N	admin@ptpn10.co.id	published	\N
123	A	Kenalkan Produk Organik pada  Gapoktan Tulungagung	<p><strong>Tulungagung </strong>&ndash; PT. Energi Agro Nusantara (Enero) terus berupaya mengembangkan diversifikasi produknya. Terutama pemanfaatan hasil samping produk organik yang dihasilkan pabrik bioethanol ini. Upaya ini tercermin dari aktivitas sosialisasi Enero pada Gabungan Kelompok Tani (Gapoktan) minggu lalu di Mbale Kopi Ketanon Keungwaru, Tulungagung. Selain Penyuluh Pertanian Tulungagung yang menggagas acara ini dan perwakilan Enero selaku pemateri, hadir pula beberapa kelompok tani dan perwakilan Pemerintah Daerah.</p>\r\n\r\n<p>Dalam acara inti, Enero mencoba mengenalkan dan mendorong peserta untuk pemanfaatan produk organiknya. Selain bioethanol sebagai produk utama, terdapat hasil samping yang bisa dimanfaatkan seperti <em>vinasse</em>, <em>yeast</em> <em>mud, </em>dan <em>sludge</em> <em>anaerobic</em>. Dengan kapasitas produksi yang besar, produk samping berpotensial untuk dimanfaatkan dalam skala masif.</p>\r\n\r\n<p>Sebagai contoh <em>vinasse</em> sebagai <em>biofertilizer </em>yang baik untuk fertigasi (pemupukan sekaligus pengairan) pada tanaman dan pengurangan penggunaan pupuk kimia, <em>yeast mud, </em>baik untuk campuran pakan ternak seperti sapi, kambing, dan unggas serta <em>sludge</em> <em>anaerobic</em> sebagai <em>bio</em>-<em>slurry </em>untuk pupuk organik.</p>\r\n\r\n<p>Peserta merespon baik acara sosialisasi ini. Terlebih terkait kondisi tanah di wilayah Tulungagung yang mengalami degradasi unsur hara dan potensi alternatif sumber pakan. Sebagai tindak lanjut, peserta mendorong untuk diujicobakan produk organik tersebut dalam skala penelitian telebih dahulu.</p>\r\n\r\n<p>&ldquo;Dengan potensi yang ada, baiknya diujicobakan <em>biofertilizer </em>pada tanaman khususnya hortikultura, sebelum dikembangkan pada area yang lebih luas, termasuk ujicoba untuk <em>yeast </em>bagi ternak sapi atau kambing. Kami optimis hasilnya baik, didasarkan kandungan dan proses produksi bioethanol yang ramah lingkungan&rdquo; ujar Timour, Ketua Presidium Tenaga bantu Penyuluh Pertanian Tulungagung yang hadir pada acara tersebut.</p>\r\n\r\n<p>Sebelum acara ini terlaksana, sebelumnya gabungan penyuluh pertanian wilayah Tulungagung juga sudah berkunjung ke Enero untuk mengetahui proses industri bioethanol.(ARH_Sanggra_PMMB)</p>\r\n	9	0	2020-02-26 10:04:41	http://ptpn10.co.id/uploads/Enero_-_Copy.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kenalkan-produk-organik-pada-gapoktan-tulungagung
61	A	Joss Berkat Kompos	<h2></h2>\r\n\r\n<p>Kompos merupakan hasil penguraian parsial dari campuran bahan-bahan organik yang dapat dipercepat secara buatan oleh beragam mikroba dalam kondisi lingkungan yang hangat dan lembab. Organisme pengurai atau dekomposer dapat berupa mikroorganisme atau makroorganisme. Sedangkan pengomposan adalah proses dimana bahan organik mengalami penguraian secara biologis, khususnya oleh mikroba-mikroba yang memanfaatkan bahan organik sebagai sumber energi.</p>\r\n\r\n<p>Menurut Kepala Sie Kesuburan Tanah dan Laboratorium Penelitian Tembakau Jember Subagio, kompos berfungsi untuk memperbaiki struktur tanah, mendongkrak kemampuan tanah untuk mempertahankan kandungan air (tanah tidak mudah kering), sumber hara tanaman, media tumbuh untuk tanaman serta memacu pertumbuhan dan perkembangan tanaman.</p>\r\n\r\n<p>&ldquo;Kompos dapat diproses dengan metode aerob (dengan udara) dan anaerob (tanpa udara). Kedua metode tersebut menghasilkan kompos dengan kualitas yang sama, hanya saja bentuk fisiknya sedikit berbeda,&rdquo; ujar penggemar olahraga menembak ini.</p>\r\n\r\n<p>Dalam kaitannya dengan limbah organ tembakau di lahan, lanjut Bagio, semuanya berpeluang dijadikan sebagai bahan baku kompos. Namun yang perlu diingat, kandungan senyawa kimia, ketersediaan bahan, kecepatan diurai oleh dekomposer, serta harga produksi yang terbentuk harus menjadi pertimbangan dan parameter karena akan mempengaruhi kualitas, harga, dan daya saing kompos limbah tembakau yang dihasilkan.</p>\r\n\r\n<p>&ldquo;Silahkan diuji coba, dianalisis., dan dibandingkan. Mana yang akan menjadi primadona: kompos kuncup tembakau, kompos daun tembakau, kompos batang tembakau, atau bahkan kompos akar tembakau?&rdquo; pungkas Bagio. (OPI_Penelitian Tembakau Jember, FIR_Sekper)</p>\r\n	8	0	2018-03-19 21:02:34	http://ptpn10.co.id/uploads/kompos.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/joss-berkat-kompos
103	B	PTPN X Launching Convention Hall Multi Fungsi di Toelangan	<p>PT Perkebunan Nusantara (PTPN) X mengumumkan pembukaan Convention Hall Multifungsi terbarunya , yakni Grha Toelangan, di Sidoarjo pada Kamis, 30 Januari 2020. Gedung ini menjadi salah satu bagian program optimalisasi aset yang tengah dilakukan oleh PTPN X.</p>\r\n<p>Selain Grand Launching, kesempatan kali ini juga dijadikan momentum penandatanganan kerjasama pengelolaan bersama Grha Toelangan dengan Mahar Agung Event Organizer, selaku mitra pengelola.</p>\r\n<p>Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam sambutannya mengatakan bahwa Grha Toelangan ini dibangun sejak enam bulan lalu dan merupakan bekas kantor AKU PG Toelangan&nbsp; yang sudah tidak dioperasikan lagi. Sehingga pihaknya berinisiatif untuk membuat gedung pertemuan yang dapat dimanfaatkan baik PTPN X atau pihak eksternal perusahaan, sehingga nantinya dapat memberikan nilai tambah.</p>\r\n<p>" Seharusnya convention hall ini sudah dapat dilaunching di awal tahun lalu. Namun karena ada satu dan lain hal, launching baru bisa terlaksana pada hari ini. Kendati itu saya tetap bersyukur bahwa akhirnya Grha Toelangan ini dapat dilaunching dan diperkenalkan sehingga dapat bermanfaat kepada masyarakat umum," ungkapnya.</p>\r\n<p>Menurut dia, Convention Hall saat ini merupakan tren terbaru untuk dipakai semua kegiatan, seperti pernikahan, pameran, pertemuan bisnis, maupun acara sosial.&nbsp;</p>\r\n<p>Untuk itu, ia berharap bahwa kedepan Grha Toelangan dapat menjadi icon warga Toelangan dan Sidoarjo. Yang ingin menggelar acara yang lebih memorable dan indah. Baik itu pernikahan, expo ataupun acara lainnya.&nbsp;</p>\r\n<p>Seperti diketahui, bahwa Grha Toelangan berada di kawasan PG Toelangan yang sangat strategis dari manapun. Convention Hall ini mampu menampung tamu undangan sebesar 700 orang dan parkir yang bisa menampung 150 unit kendaraan. (RED2, PUT_Sekper)</p>	25	1	2020-01-31 10:03:34	images/news/WhatsApp_Image_2020-01-30_at_10_45_54_AM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
129	B	PTPN X Sabet Piala Emas dalam Bidang CSR 	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X terus mengukirkan prestasinya, kali ini di bidang Corporate Social Responsibility (CSR). PTPN X menyabet <em>Gold Award</em> dalam ajang&nbsp;Iconomics CSR Brand Equity 2020 &amp; 10 Indonesian Philanthropist Recognition Award 2020 yang dihelat di Ayana Midplaza Jakarta.</p>\r\n\r\n<p style="text-align: justify;">Award tersebut didapatkan melalui riset ke berbagai perusahaan di Indonesia yang bergiat dan berkontribusi dalam Pelaksanaan CSR. Survei ini telah dilakukan pada Januari 2020 dan telah melibatkan lebih dari 10.000 responden.</p>\r\n\r\n<p style="text-align: justify;">Penghargaan yang diterima merupakan wujud dari konsistensinya program CSR yang dilaksanakan oleh PTPN X. Kegiatan CSR PTPN X meliputi pembuatan saluran irigasi, pemberian bantuan bibit varietas unggul kepada petani, mengadakan pelatihan petani tebu milenial, memberikan Kartu Tani Sehat kepada 6.000 orang petani binaan dan keluarganya, mengirimkan tim Tanggap Bencana ke Ponorogo, Pacitan, Lombok, dan Palu. Seluruh kegiatan tersebut merupakan bentuk tanggung jawab perusahaan kepada masyarakat sekitar.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;<em>Alhamdulillah</em>, penghargaan di bidang CSR ini sebagai pelecut semangat bagi seluruh manajemen untuk terus memberikan manfaat sebesar-besarnya kepada masyarakat,&rdquo; ujar Dwi Satriyo Annurogo, Direktur Utama PTPN X.&nbsp;(Sanggra_UBR, CIN_Sekper)</p>\r\n	16	0	2020-02-28 13:19:15	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-02-28_at_7.14.54_AM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-sabet-piala-emas-dalam-bidang-csr
92	B	Direksi dan Serikat Pekerja PTPN X Tanda Tangani PKB	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dalam rangka menciptakan hubungan kerja yang harmonis dan terciptanya iklim kerja yang kondusif, Direksi dan Serikat Pekerja (SP) PT Perkebunan Nusantara (PTPN) X pada Kamis (16/1) telah menandatangani kesepakatan Perjanjian Kerja Bersama (PKB) periode 2020 -2021 di LPP Convention Hall, Yogyakarta. Acara penandatanganan ini dihadiri oleh Direksi PTPN X Pengurus SP- PTPN X dan perwakilan para karyawan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Sejak tiga bulan yang lalu, tim PKB SP - PTPN X dan tim PKB Manajemen telah melakukan perundingan, kedua belah pihak melaksanakan perundingan dengan itikad baik dan berusaha keras untuk mencapai kesepakatan yang juga mempertimbangkan kondisi industri dan perusahaan saat ini.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Slamet Djumantoro, selaku Direktur Komersil PTPN X sangat mengapresiasi pembahasan PKB yang berjalan lancar. &ldquo;Kesepakatan yang dibuat ini merupakan bukti telah terciptanya trust antara serikat pekerja dengan manajemen. Kami berharap trust yang telah terbangun ini dapat terus ditingkatkan. Ini merupakan kemenangan kita semua, karena manajemen dan serikat pekerja adalah satu tim. Kita harus bahu-membahu dan bekerja keras untuk memajukan perusahaan,&rdquo; jelasnya.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Sementara itu, Amier Hasanoedin selaku ketua SP-PTPN X dalam sambutannya mengatakan dukungannya terhadap manajemen untuk memajukan perusahaan serbagai sarana dalam meningkatkan kesejahteraan karyawan.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Kami siap mendukung hubungan industrial dan secara penuh memberikan dukungan agar PTPN X mampu bersaing dan menjadi leader di industri gula," ujarnya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dengan ditandatanganinya PKB ini diharapkan dapat meningkatkan kenyamanan dalam hubungan industrial, sehingga tercipta kondisi yang kondusif dan harmonis yang pada gilirannya dapat meningkatkan kualitas produk dan produktivitas perusahaan. (Red2, PUT_Sekper).</p>	26	0	2020-01-17 14:18:00	images/news/WhatsApp_Image_2020-01-17_at_11_28_12.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
99	G	 Pelatihan Petani Tebu Generasi Millenial Bentuk Sinergi PTPN X Dengan PT Biofarma (Persero)	<p>Direktur Utama Dwi Satriyo Annurogo didampingi oleh Sekretaris Perusahaan &amp; PKBL PT Perkebunan Nusantara (PTPN) X dan General Manager PG Pesantren Baru menghadiri serta membuka pelatihan petani tebu generasi millenial angkatan pertama di tahun 2020 sebagai bentuk sinergi antara PTPN X dan PT Biofarma yang dilaksanakan di Hotel Holland Golden Tulip Batu pada tanggal 27 - 28 Januari 2020.</p>\r\n<p>Tema pelatihan kali ini adalah "Dalam rangka meningkatkan motivasi dan transfer knowledge budidaya tebu kepada petani millenial untuk meningkatkan produktivitas dan daya saing di wilayah kerja PTPN X" (27/1)</p>	22	0	2020-01-28 08:25:15	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
43	B	PTPN X Tanam Perdana Lahan Agroforestry di Ngunjung Barat	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X melakukan penanaman tebu di lahan Agroforestry Ngunjung Barat, Nganjuk pada Kamis (31/10). Lahan tersebut akan ditanami varietas unggul baru, dengan potensi produksi 80 Ton/ Ha dan rendemen 9%. Program Agroforestry kali ini merupakan bekerjasama dengan Kesatuan Pengelolaan Hutan (KPH) Jombang dalam melakukan pemanfaatan kawasan hutan untuk kegiatan budidaya tanaman tebu guna mendukung ketahanan pangan.</p>\r\n\r\n<p style="text-align: justify;">Kali ini rencananya akan dilakukan penanaman lahan seluas 40,275 Ha, yang terdiri dari tiga petak yang tersebar di RPH Ngujung, BKPH Ngujung Barat, dan KPH Jombang, Kebun Sanggrahan, Ds. Sanggrahan, Kec. Gondang, Kab. Nganjuk. Nantinya hasil dari program Agroforestry di Nganjuk ini akan dikelola langsung ke PG Lestari pada musim giling tahun 2020.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Dengan adanya program Agroforestry ini diharapkan mampu memberdayakan masyarakat sekitar, untuk bersama-sama membangun, melindungi, dan memanfaatkan sumberdaya hutan sebagai penggerak ekonomi di pedesaan,&rdquo; ujar Aris Toharisman, Direktur Operasional PTPN X dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Berdasarkan hasil evaluasi pelaksanaan BUMN Sinergi Agroforestry Tebu musim giling 2019, PG Lestari telah menorehkan cacatan dengan hasil produksi sebesar 72,2 Ton/ Ha dengan Rendemen 8,64%. Diharapkan hasil lahan ini mampu meningkatkan produktivitas tebu PG Lestari pada musim giling mendatang. (Valen_UWM, CIN_Sekper)</p>\r\n	0	0	2019-10-31 21:47:37	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-01_at_07.05.53.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tanam-perdana-lahan-agroforestry-di-ngujung-barat
135	B	Kelola Sampah Lewat Budidaya Lalat BSF	<p><span style="font-family:times new roman,times,serif;">PG Gempolkerep, Gedeg, Kabupaten Mojokerto, ikut terlibat menjaga kebersihan lingkungan kerja maupun masyarakat di sekitar perusahaannya. Salah satu buktinya, terlihat dari Budidaya Lalat BSF <em>(Black Soldier Fly).</em></span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Langkah budidaya ini merupakan salah satu visi PT. Perkebunan Nusantara X sebagai perusahaan agribisnis yang berwawasan lingkungan dan bertujuan untuk mewujudkan industri yang berkelanjutan dalam rangka efisiensi dan efektivitas penggunaan sumber daya alam. Sehingga, mampu menyelaraskan pembangunan industri dengan kelangsungan dan kelestarian fungsi lingkungan hidup dan memberikan manfaat bagi masyarakat. Perusahaan di bawah naungan PT. Perkebunan Nusantara X tersebut ikut menjaga kebersihan lingkungan kerja maupun masyarakat di sekitar perusahaan yang berada di Kabupaten Mojokerto, terkait dengan dampak pencemaran limbah sampah (rumah tangga maupun pasar). Ketika sampah tidak dikelola dengan baik, akan menjadi sumber malapetaka. Salah satunya adalah penyakit. Karena dengan sampah yang dibiarkan secara liar akan menjadi tempat berkumpulnya lalat hijau yang dalam ilmu kesehatan sebgai katalisator/penghubung kuman ke sebuah makanan maupun minuman yang dihinggapi. Tindakan selanjutnya biasanya sampah dibakar. Perlakuan tersebut mengakibatkan pencemaran udara akibat asap dari pembakaran.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Kegiatan Budidaya Lalat BSF sebagai pengurai sampah organik ini disambut baik oleh perangkat desa dan ibu-ibu tim penggerak PKK Desa Gempolkerep. Acara serah terima bantuan Biopon dan Magot ini dihadiri semua perangkat desa, <em>General Manager</em> Pabrik Gula Gempolkerep, H. Agus Minhandoko, S.P, M.M beserta semua jajaran manajer dan ketua umum serikat pekerja, perwakilan dari Kecamatan Gedeg, dan ibu-ibu tim penggerak PKK Desa Gempolkerep.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">&ldquo;Ini nantinya bisa membawa atau memberikan PAD untuk Desa Gempolkerep yang sedang giat-giatnya untuk menggali Pendapatan Asli Daerah,&rdquo; ujar Kepala Desa Gempolkerep, H. Jani Suprayogi.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Ia berharap, kegiatan ini bisa menimbulkan energi perkembangan Desa Gempolkerep sekaligus hubungan industri dengan perusahaan.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Di lokasi yang sama, <em>General Manager</em> PG Gempolkerep, H. Agus Minhandoko, S.P, M.M, menyampaikan manfaat magot bisa dikembangkan. Sehingga menjadi bentuk kepedulian pabrik gula terhadap lingkungan. Khususnya di Desa Gempolkerep dan lingkungan sekitarnya,&rdquo; paparnya.</span></p>\r\n\r\n<p><span style="font-family:times new roman,times,serif;">Dengan fenomena terkait dampak salah satu limbah sampah, maka Pabrik Gula Gempolkerep dengan mengucap <em>Bismillahirrohmanirrohim </em>melakukan budidaya BSF atau Lalat Tentara Hitam sebagai solusi atas limbah sampah tersebut. Sehingga bisa mengubah sampah menjadi berkah. (dik/ron_GK_Put_Sekper)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n	12	0	2020-03-05 07:45:07	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-03-05_at_07.38.15.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kelola-sampah-lewat-budidaya-lalat-bsf
126	G	PT Perkebunan Nusantara (PTPN) X Ikut Meramaikan HUT ke 19 Radar Surabaya	<p><span style="box-sizing: border-box; font-family: 'times new roman', times, serif; font-size: 13pt; line-height: 18.5467px; background: white;">Perayaan Hari Ulang Tahun (HUT) ke-19 Radar Surabaya berlangsung meriah di Jalan Kembang Jepun 167-169, Surabaya, Senin (24/2) berlangsung meriah. Open House yang dimulai pukul 09.00 ini dihadiri rekanan dari berbagai kalangan.</span><span style="color: #212529; font-family: 'times new roman', times, serif; font-size: 16px; background-color: #ffffff;">&nbsp;PT Perkebunan Nusantara (PTPN) X yang sudah menjadi mitra sejak lama pun turut hadir untuk meramaikan suasana.</span></p>	21	0	2020-02-27 13:20:29	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
68	A	Pentingnya Menggali Value Karyawan	<p></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Value</em> adalah nilai diri yang menjadi tolok ukur karyawan di dalam perusahaan. <em>Value</em> harus digali supaya setiap karyawan sadar akan perannya terhadap keberlangsungan operasional perusahaan. Untuk menggali <em>self-awareness</em> dari setiap karyawan bisa dimulai dengan bertanya, &ldquo;Siapakah Anda bagi perusahaan ini?&rdquo;.&nbsp;</p>\r\n\r\n<p>Ketika diberikan pertanyaan tersebut, jawaban yang muncul akan beragam. Namun sesungguhnya jawaban terbaik adalah saya merupakan bagian dari perusahaan ini.</p>\r\n\r\n<p>Jawaban itu menandakan bahwa karyawan tersebut sudah sadar bahwa perusahaan memiliki peran yang sangat penting bagi kehidupannya dan dia memiliki bagian dari perjalanan dari perusahaan untuk mencapai visi misi yang telah dicanangkan.</p>\r\n\r\n<p><strong>Mengapa menggali value setiap karyawan ini menjadi penting?</strong></p>\r\n\r\n<p><strong>Yang pertama</strong> adalah untuk menumbuhkan <em>sense of belonging </em>terhadap Perusahaan. <em>Sense of belonging </em>adalah kesadaran atau rasa memiliki terhadap Perusahaan. <em>Sense of belonging </em>ini akan membuat karyawan &quot;merelakan&quot; visi misinya melebur menjadi satu dengan visi misi perusahaan.</p>\r\n\r\n<p><strong>Yang kedua</strong> adalah untuk menumbuhkan <em>self awareness </em>terhadap dirinya sendiri. Setiap karyawan akan menjadi &quot;sadar&quot; akan posisi mereka di dalam perusahaan. Akibatnya adalah mereka bisa memberikan nilai ukur terhadap hal-hal yang diharapkan perusahaan kepada dirinya. Apakah performa yang selama ini ditunjukkan sudah sesuai dengan harapan perusahaan?</p>\r\n\r\n<p>Dua hal tersebut merupakan pondasi dasar dalam bekerja.</p>\r\n\r\n<p>Sedangkan jika dilihat dari sudut pandang karyawan, usaha perusahaan untuk&nbsp;menggali value mereka&nbsp;akan membuat mereka merasa diperlakukan dengan baik. Bahwa perusahaan selalu memiliki harapan untuk setiap karyawan dapat berkembang lebih baik, <em>hardskill</em> maupun <em>softskill</em>. Dengan mendapatkan perhatian yang baik dari perusahaan, mereka akan menjadi loyal.</p>\r\n\r\n<p>Di dalam sebuah survey yang dilakukan oleh Saylor Foundation, penyebab terjadinya <em>turn over</em> atau hengkangnya seorang karyawan ke perusahaan lain adalah karena tidak diperlakukan dan diperhatikan dengan baik.</p>\r\n\r\n<p>Dengan Perusahaan menggali value ini, dapat dikatakan bahwa perusahaan sedang melakukan strategi <em>retention </em>untuk mencegah terjadinya <em>turn over </em>yang tinggi. Perusahaan menyadari bahwa ketika terjadi <em>turn over</em>, Perusahaan akan mengalami kerugian. Baik itu dari sisi <em>recruitment cost </em>sampai dengan <em>time gap </em>supaya karyawan baru dapat memberikan performa seperti yang diharapkan.</p>\r\n\r\n<p>Karena itu, jika perusahaan belum melakukan usaha menggali <em>value </em>setiap karyawan, agar segera dilakukan. Demi kemajuan bersama, perusahaan dan karyawannya. (Rehandy Prismawan_ENERO)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber Penulisan:</p>\r\n\r\n<p>Internal training PT Energi Agro Nusantara, &quot;Mindset Building For Organizational Development&quot;</p>\r\n	9	0	2017-01-18 19:07:13	http://ptpn10.co.id/uploads/ValueCustomer.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pentingnya-menggali-value-karyawan
127	G	PTPN X Ikut Ramaikan HUT Kabar Bisnis Surabaya ke-11	<p><span style="font-family: 'times new roman', times, serif;">PT. Perkebunan Nusantara (PTPN) X turut memeriahkan perayaan Hari Ulang Tahun (HUT) ke-11 Kabar Bisnis, Kamis (27/2). Kegiatan ini merupakan bentuk media visit guna terus menjaga hubungan baik dengan rekan-rekan media yang sudah terjalin selama ini.</span></p>	27	0	2020-02-27 14:51:18	\N	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
74	B	Sambut 2020, PTPN X Rundingkan PK	<p style="text-align: justify;">Menyambut tahun baru 2020, PT Perkebunan Nusantara (PTPN) X&nbsp; kembali adakan Perundingan Perjanjian Kerja Bersama (PKB) dengan Serikat Pekerja PTPN X. Perundingan yang dibuka oleh Direktur Komersil, Slamet Djumantoro tersebut berlangsung di Hotel Arcadia Surabaya, pada (27-28/12).</p>\r\n\r\n<p style="text-align: justify;">Acara dimulai dengan menyanyikan lagu Indonesia Raya, sambutan dari Ketua Umum Serikat Pekerja PTPN X, M. Amier Hasanoedin, dilanjutkan dengan sambutan dari Direktur Komersil PTPN X, Slamet Djumantoro yang sekaligus membuka acara Perundingan PKB.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Besar harapan saya perundingan ini dapat menjadi ajang untuk bertukar pikiran dan menambah informasi tentang kondisi perusahaan. Agar ke depannya kita sebagai pemilik perusahaan, dalam hal ini tidak hanya Direksi tapi seluruh karyawan <em>aware</em> dengan kondisi perusahaan dan memiliki semangat juang, bersama-sama membangun dan bekerja untuk kejayaan PTPN X&rdquo;, ujar Slamet.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Adanya perundingan PKB ini tentunya juga akan meningkatkan sinergi antara manajemen dengan Serikat Pekerja PTPN X. Sinergi tersebut tentunya mampu membawa PTPN X ke arah yang lebih baik. (PUT_Sekper, CIN_Sekper)</p>\r\n	10	0	2019-12-27 13:30:48	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-12-27_at_13.27.40.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sambut-2020-ptpn-x-rundingkan-pk
187	B	Bahas Kerjasama, Bupati Lumajang Kunjungi PTPN X	<p style="text-align: justify;">Bupati Lumajang, Thoriqul Haq, beserta jajaran mengunjungi Kantor Pusat PT Perkebunan Nusantara (PTPN) X, Rabu (21/10). Rombongan disambut langsung oleh Direktur PTPN X, Aris Toharisman.&nbsp; Kunjungan ini bertujuan untuk membahas potensi kerjasama pemanfaatan lahan yang terletak di Desa Sumbersuko, Kecamatan Sumbersuko, Kabupaten Lumajang.</p>\r\n\r\n<p style="text-align: justify;">Diatas lahan seluas 6 Ha tersebut nantinya akan didirikan terminal <em>stockpile</em> pasir terpadu. Rencana kerjasama tersebut disambut baik oleh PTPN X, sehingga aset miliknya dapat dioptimalkan dengan baik. Aris menjelaskan bahwa PTPN X sangat terbuka dengan adanya peluang kerjasama tersebut, melalui sistem sewa ataupun jual beli.<br />\r\n<br />\r\n&ldquo;Rencana Pemkab Lumajang merupakan tujuan yang baik dan dapat mengangkat perekonomian warga, sehingga tentunya akan kami support. Rencana tersebut juga merupakan bentuk pengamanan aset PTPN X ditunjang dengan dukungan dari pemerintah daerah setempat,&rdquo; terang Aris.</p>\r\n\r\n<p style="text-align: justify;">Pada kesempatan yang sama, Thoriqul menyampaikan harapannya kerjasama antara Pemkab Lumajang dengan PTPN X dapat terjalin. Sehingga nantinya akan terwujud tata kelola pertambangan pasir yang lebih baik di Lumajang dan menjadi prototipe bagi pengelolaan pertambangan pasir di daerah lain. (CIN_Sekper, PUT_Sekper)</p>\r\n	2	0	2020-10-21 14:52:54	http://ptpn10.co.id/uploads/web_lumajang.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/bahas-kerjasama-bupati-lumajang-kunjungi-ptpn-x
181	B	Kebun Kertosari Salurkan CSR Bedah Rumah 	<p>PT Perkebunan Nusantara (PTPN) X melalui unit usahanya Kebun Kartosari di Jember kembali melakukan aksi Corporate Social Responsibilty (CSR) Bedah Rumah Tidak Layak Huni (RTLH), Jumat (6/11). Dalam CSR kali ini, rumah milik lansia bernama Kasmiati, warga Kelurahan Gebang, Kecamatan Patrang, Jember&nbsp;Jawa Timur direnovasi. Tak kurang dari 3 minggu, renovasi rumah rampung dikerjakan.</p>\r\n\r\n<p>Prosesi penyerahan bedah rumah dilakukan secara langsung oleh GM Kebun Kertosari, Syaifudin Zuhri dan perwakilan dari Kelurahan Gebeng. Zuhri mengatakan bahwa PTPN X menggelontorkan dana CSR sebesar 45 Juta rupiah.</p>\r\n\r\n<p>&ldquo;Mudah-mudahan bantuan yang kita berikan ini bermanfaat bagi mereka dan dapat meningkatkan kesejahteraan pemilik rumah&rdquo; ungkap Zuhri.</p>\r\n\r\n<p>Diketahui, program CSR bedah rumah RTLH ini sebagai bentuk rasa terimakasih Manajemen kepada warga desa atas dukungannya selama ini, sehingga Kebun Kertosari bisa tetap beroperasi hingga saat ini dan dapat memberikan manfaat yang sebesar-besarnya untuk lingkungan sekitar.</p>\r\n\r\n<p>Ke depanya, program CSR akan secara rutin dilakukan oleh Kebun Kertosari. Harapannya program CSR dapat meringankan beban masyarakat, khsuusnya di sekitar wilayah kerja (Silvi_PMMB, Put_Sekper)</p>\r\n	1	0	2020-11-09 13:27:42	http://ptpn10.co.id/uploads/Bedah_Rumah.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kebun-kertosari-salurkan-csr-bedah-rumah
26	B	Pacu Transformasi Bisnis, PTPN X Rombak Jajaran Komisaris PT Dasaplast Nusantara dan Enero	<p style="text-align: justify;">Guna memacu performa anak perusahaannya, PTPN X melakukan perombakan di jajaran komisaris. Tantangan dan dinamika bisnis yang sangat dinamis, menuntut perusahaan untuk bekerja lebih inovatif dan produktif agar mampu bertahan menjadi yang terbaik.</p>\r\n\r\n<p style="text-align: justify;">&rdquo;Kepada Dewan Komisaris yang baru dilantik saya ucapkan selamat bertugas. Saya harapkan ke depannya bisa menghadirkan semangat dan ide-ide baru untuk terobosan dan inovasi perusahaan. Mengantarkan anak perusahaan PT Dasaplast Nusantara dan PT Energi Agro Nusantara (Enero) menjadi <em>leader</em> di masing-masing bidang bisnisnya,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi ini menurutnya sebagai langkah awal menghadapi tantangan di tahun 2020. Proyek PMN yang ditargetkan selesai di tahun 2020 diharapkan bisa menjadi langkah-langkah inisiasi untuk kelancaran PT Enero.&nbsp; Sehingga PT Enero dapat menjadi <em>leader </em>dan <em>pioneer </em>untuk perusahaan Energi Baru Terbarukan.</p>\r\n\r\n<p style="text-align: justify;">Untuk PT Dasaplast Nusantara sendiri, Dwi melihat banyak sekali pangsa pasar yang luas, dan belum dijajaki. Harapannya, PT Dasaplast Nusantara bersama jajaran komisaris yang baru mampu mengambil kesempatan tersebut dengan membentuk tim <em>marketing</em> yang handal dan merajai pangsa pasar yang terbuka.</p>\r\n\r\n<p style="text-align: justify;">Dalam kesempatan tersebut Direktur Utama PTPN X juga kembali mengingatkan tentang budaya kerja Sinergi, Integritas, dan Profesional (SIPro), dimana kita harus terus menerapkan nilai-nilai semangat tersebut, dan akhlak yang baik sehingga membawa PTPN Group ini selaras dengan dinamika bekerja sehari-hari.</p>\r\n\r\n<p style="text-align: justify;">Berikut nama-nama dewan komisaris anak perusahaan PTPN X yang dilantik:</p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;">Suryanto sebagai&nbsp;Komisaris Utama PT Dasaplast Nusantara</li>\r\n\t<li style="text-align: justify;">Arif Suhariadi sebagai&nbsp;Komisaris PT Dasaplast Nusantara</li>\r\n\t<li style="text-align: justify;">Wakhyu Priyadi Siswosumarto&nbsp;sebagai Komisaris Utama PT Enero</li>\r\n\t<li style="text-align: justify;">Agus Minhandoko sebagai Komisaris PT Enero</li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">(PUT_Sekper, CIN_Sekper)</p>\r\n	8	0	2019-12-02 23:14:45	http://ptpn10.co.id/uploads/web_sertijab_komisaris_anper.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pacu-transformasi-bisnis-ptpn-x-rombak-jajaran-komisaris-pt-dasaplast-nusantara-dan-enero
33	B	PG Kremboong, Salurkan CSR melalui Program Bedah Rumah	<div style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; text-align: justify;">\r\n<p>Pabrik Gula (PG) Kremboong, unit usaha dari PT Perkebunan Nusantara (PTPN) X menunjukkan kepeduliannya kepada masyarakat kurang mampu dengan menyalurkan <em>Corporate Social Responsibility</em> (CSR) melalui program bedah rumah. Kegiatan ini diperuntukan guna membantu masyarakat sekitar yang memang memerlukan dan untuk meningkatkan kualitas hidup dengan menciptakan lingkungan yang asri dan nyaman.</p>\r\n\r\n<p>Direktur Komersil PTPN X, Slamet Djumantoro yang hadir dalam kesempatan tersebut mengatakan bahwa bedah rumah ini diberikan semata-mata sebagai perwujudan kepedulian perusahaan sebagai Badan Usaha Milik Negara (BUMN) kepada warga masyarakat sekitar.</p>\r\n\r\n<p>&quot;Perusahaan juga memiliki tanggungjawab untuk membantu meningkatkan kesejahteraan warga desa yang ada di sekitar perusahaan. Untuk itu bedah rumah ini diharapkan mampu dapat menolong mereka terutama bagi yang membutuhkan,&quot; jelas Slamet.</p>\r\n\r\n<p>Sementara itu, General Manager PG Kremboong, Agus Minhandoko mengungkapkan bahwa bantuan kali ini diterima langsung oleh Ibu Ponisah dari Desa Kremboong.</p>\r\n\r\n<p>&quot;Semoga dengan bedah rumah ini bisa bermanfaat untuk Keluarga Ibu Ponisah. Karena ibu Ponisah ini sudah tua renta, janda dan tidak berpenghasilan. Untuk itu diharapkan melalui CSR ini dapat meringankan beban beliau,&quot; tandasnya.</p>\r\n\r\n<p>Dijelaskan Agus, bedah rumah dengan lebar enam meter dan panjang enam meter ini dilaksanakan selama satu bulan.</p>\r\n\r\n<p>&quot;Semua dibangun total dari program CSR dari PKBL dan dibantu secara gotong royong oleh karyawan,&quot; pungkasnya.</p>\r\n\r\n<p>Sementara itu, Ibu Ponisah, pemilik rumah yang dibangun sangat berterima kasih pada PTPN X yang telah membangun rumahnya. Sebelumnya rumahnya memang tidak layak huni.</p>\r\n\r\n<p>&ldquo;Alhamdulillah senang sekali, saya berterima kasih pada PG Kremboong. Dulu kalau hujan rumah saya banjir tidur saja di lantai. Sekali lagi terima kasih,&rdquo; pungkasnya. (Red2, CIN_Sekper)</p>\r\n</div>\r\n	2	0	2019-11-27 22:52:35	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-27_at_15.41.29.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-kremboong-salurkan-csr-melalui-program-bedah-rumah
91	B	Bioetanol Sumber Kekuatan Hilirisasi Tebu	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Holding Perkebunan PT Perkebunan Nusantara (PTPN) III (Persero) tengah gencar mengembangkan program hilirisasi semua komoditas yang ada. Untuk itu, Direktorat Pengembangan Produksi dan Pengembangan Holding Perkebunan melakukan kunjungan kerja ke beberapa PTPN, salah satunya PTPN X.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Direktur Produksi dan Pengembangan Holding PT Perkebunan Nusantara III (Persero), Mahmudi mengatakan hilirisasi menjadi program kerja di holding dimana hilirisasi ini akan dikembangkan di seluruh komoditas.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Untuk hilirisasi komoditas tebu ini yang sudah eksisting adalah tebu yaitu biothanol dan PTPN X sudah mendirikan pabrik bioetanol yaitu PT Energi Agro Nusantara (Enero)," kata Mahmudi ditemui disela-sela kegiatan Rapat Kerja Direktur Pengembangan Produksi dan Pengembangan Holding PTPN III (Persero) di PT Enero, Program Pengembangan Produk Hilirisasi, Kamis (16/01)</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Mahmudi mengungkapkan kunjungannya ke PT Enero ini tidak lain untuk melihat kondisi dan potensi PT Enero dalam memproduksi bioetanol.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Potensi produksi PT Enero masih besar dan selama ini baru setengah dari kapasitas," tambahnya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Untuk itu, sambung Mahmudi, pihaknya akan mendorong PT Enero untuk meningkatkan performa dan kinerja yang selama ini sudah bagus. Dimana PT Enero ini akan menjadi pilot projek bagi komunitas tebu.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">"Program hilirisasi akan menjadi kekuatan di kemudian hari," tandasnya. (Red3, PUT_Sekper).</p>	14	0	2020-01-17 14:17:03	images/news/WhatsApp_Image_2020-01-17_at_11_10_44.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
59	A	Ethanol 99.5% dari Tetes Tebu	<p style="text-align: justify;">Ethanol merupakan jenis utama dari alkohol yang mempunyai&nbsp; struktur CH<sub>3</sub>CH<sub>2</sub>OH atau sering disingkat C<sub>2</sub>H<sub>5</sub>OH atau C<sub>2</sub>H<sub>6</sub>O. Ada beberapa senyawa alam yang mampu diolah untuk menghasilkan&nbsp;<em>ethanol</em>.&nbsp;Salah satunya&nbsp;dari&nbsp;<em>molasses,</em>&nbsp;yakni sisa pengolahan industri gula.</p>\r\n\r\n<p style="text-align: justify;">PT Energi Agro Nusantara (Enero) merupakan perusahaan energi terbarukan yang mengolah molasses (tetes tebu) menjadi&nbsp;<em>ethanol</em>&nbsp;dengan tingkat kemurnian 99.5%.&nbsp; Pabrik ini dirancang khusus untuk memproduksi&nbsp;<em>ethanol fuel grade</em>&nbsp;dengan kapasitas produksi 100 kl/hari. Pembuatan&nbsp;<em>ethanol</em>&nbsp;di PT Enero melalui tahap propagasi, fermentasi, evaporasi, distilasi dan dehidrasi.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><strong>Propagasi</strong>, merupakan proses awal dalam pembuatan&nbsp;<em>ethanol</em>. Dalam tahap propagasi ini, molasses akan&nbsp;melalui proses dilusi serta penambahan Urea dan NPK sebagai nutisi. Kemudian dilakukan&nbsp;<em>inokulasi yeast</em>&nbsp;(ragi) &nbsp;<em>Saccharomyces Cerevisiae.&nbsp;</em></p>\r\n\r\n<p style="text-align: justify;"><strong>Fermentasi</strong>, dalam tahap ini membutuhkan waktu beberapa jam untuk proses respirasi anaerobik.&nbsp; Gula yang terkandung akan diproses menjadi&nbsp;<em>ethanol</em>, karbondioksida dan komponen kimia lainnya.</p>\r\n\r\n<p style="text-align: justify;"><strong>Evaporasi</strong>, setelah proses fermentasi selesai cairan akan dialirkan ke evaporator dengan 4 stage (tahap). Pada evaporator tersebut senyawa&nbsp;<em>ethanol</em>&nbsp;akan menguap dan dialirkan ke kolom distilasi.</p>\r\n\r\n<p style="text-align: justify;"><strong>Distilasi</strong>, Proses distilasi dilakukan untuk memisahkan ethanol dari komponen kimia lainnya yang menjadi&nbsp;<em>impurities</em>&nbsp;(pengotor) berdasarkan titik didihnya, sampai kadar&nbsp;<em>ethanol&nbsp;</em>mencapai 90-92%.</p>\r\n\r\n<p style="text-align: justify;"><strong>Dehidrasi</strong>, setelah kadar mencapai 90-92%, akan dilakukan proses akhir dengan menghilangkan kadar air atau disebut dengan dehidrasi hingga kadar ethanol mencapai 99.5%.</p>\r\n\r\n<p style="text-align: justify;">Ethanol merupakan zat yang mengandung banyak manfaat untuk kehidupan. Untuk penggunaan terbesar saat ini,&nbsp;<em>ethanol</em>&nbsp;dijadikan sebagai&nbsp; energi bahan bakar, kebutuhan medis, serta untuk kebutuhan industri.</p>\r\n\r\n<p style="text-align: justify;">PT Enero akan terus mengembangkan produk&nbsp;<em>bioethanol</em>&nbsp;dalam negeri, mengingat persediaan bahan bakar fosil yang semakin menipis.&nbsp;<em>Bioethanol</em>&nbsp;sendiri merupakan bahan bakar energi terbarukan yang ramah lingkungan,&nbsp;dimana&nbsp;<em>ethanol</em>&nbsp;ini akan menjadikan ketahanan energi yang baik dimasa depan. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n	5	0	2018-06-08 16:40:47	http://ptpn10.co.id/uploads/LT_4.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ethanol-995-dari-tetes-tebu
18	B	Dirut PTPN X Tinjau Langsung Lahan Agroforestry	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo melakukan kunjungan ke beberapa lahan tebu milik PG Lestari, Rabu (18/9).&nbsp; Kunjungan ini bertujuan untuk meninjau secara langsung program agroforestry yang dilakukan antara PTPN X dengan Perum Perhutani KPH Jombang. Kunjungan dilakukan di lahan Ngujung, Pandean,&nbsp;dan Ngasem.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Penyediaan pengairan dan saprodi untuk lahan tersebut juga telah disediakan guna mendukung pengelolaan&nbsp;<em style="box-sizing: border-box;">on farmn</em>-nya. Dwi menghimbau untuk segera melakukan pekerjaan persiapan pembuatan sumber air guna pengairan, sehingga dapat segera melaksanakan kegiatan pemupukan. Kualitas dan mutu pekerjaan juga harus menjadi perhatian.&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kebutuhan biaya pengerjaan segera disusun dan diajukan, sehingga pengairan dan saprodi segera tersedia dan dapat dilanjutkan dengan kegiatan pupuk,&rdquo; terang Dwi lebih lanjut.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya, lahan-lahan ini akan ditanami tebu dengan varietas Cening dan Bululawang. Lahan Ngasem sendiri telah tanam di bulan Mei 2019 dan lahan Ngujung telah tanam di bulan Agustus 2019. Sedangkan untuk lahan Pandean dijadwalkan tanam pada bulan Oktober 2019. (CIN_Sekper, BSA_Sekper)</p>	12	0	2019-10-22 07:22:28	images/news/agro2.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
54	A	6 Tips Menjadi Karyawan Berprestasi Di Perusahaan	<p style="text-align: justify;">Sukses merupakan impian semua orang didunia ini. Sejatinya sukses berawal dari sebuah perubahan diri karena tujuan yang besar. Setiap orang pada dasarnya adalah pemenang kehidupan. Tergantung dari mana anda memulai langkah untuk mewujudkannya. Hidup adalah sebuah perjuangan, sehingga memerlukan modernisasi teori kehidupan agar anda menjadi <em>human renewable.</em>&nbsp; &nbsp;</p>\r\n\r\n<p style="text-align: justify;">Ada sejuta cara untuk menjadi pribadi yang sukses, salah satunya adalah menjadi karyawan berprestasi di perusahaan. Tidaklah mudah menjadi <em>user achievement </em>dalam perusahaan. Anda harus benar-benar mempunyai potensi yang besar untuk <em>survive </em>dalam kurva kompetensi sumber daya manusia perusahaan.</p>\r\n\r\n<p style="text-align: justify;">Ada beberapa tips untuk diri anda, sebagai inspirasi untuk menjadi <em>user achievement </em>diperusahaan:</p>\r\n\r\n<p style="text-align: justify;">1. Maksimalkan <em>Passion </em>yang anda miliki.</p>\r\n\r\n<p style="text-align: justify;"><em>Passion </em>adalah kualitas diri. Hal ini yang akan membuat diri anda berbeda dengan orang lain. Temukan <em>passion </em>terbaik dalam diri anda, karena dengan <em>passion </em>yang hebat akan membuat diri anda lebih berkarakter. &nbsp;&nbsp;</p>\r\n\r\n<p style="text-align: justify;">2. Miliki jiwa yang penuh dengan impian</p>\r\n\r\n<p style="text-align: justify;">Sukses adalah milik seseorang yang mempunyai impian besar dimasa depan. Miliki sejuta impian ditempat perusahaan anda bekerja, hal itu akan membawa pada tujuan terbesar dalam hidup anda.</p>\r\n\r\n<p style="text-align: justify;">3. Bekerjalah dengan penuh keyakinan</p>\r\n\r\n<p style="text-align: justify;">Keyakinan adalah hal paling dasar dalam tingkat emosional. Dengan keyakinan yang kuat anda akan membuat keajaiban dan perubahan yang besar.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">4. Jadilah pribadi yang menginspirasi</p>\r\n\r\n<p style="text-align: justify;">Segala sesuatu dalam hidup terjadi sesuai waktu anda dan segalanya terjadi sesuai dengan kecepatan masing-masing. &ldquo;Tidak semua yang diperhitungkan dapat dihitung, dan tidak semua yang bisa dihitung bisa diperhitungkan&rdquo; (Einstein). Anda harus menciptakan hidup yang bermakna, bertujuan dan memberikan inspirasi kebahagiaan bagi semua rekan kerja anda, dan belajarlah cara menggunakannya untuk memberikan pengaruh dan perbedaan buat hidup orang lain, itulah sukses yang sejati.</p>\r\n\r\n<p style="text-align: justify;">5. Tunjukkan kepribadian yang menarik</p>\r\n\r\n<p style="text-align: justify;">Jadilah pribadi yang menyenangkan terhadap rekan kerja anda. Saling memberi motivasi, <em>respect </em>dan saling tolong-menolong. Mempunyai kepribadian yang menarik akan membuat rekan kerja anda nyaman bekerja bersama anda. Secara tidak langsung hal itu akan membuat pekerjaan anda lebih mudah.</p>\r\n\r\n<p style="text-align: justify;">6. Berbagilah cerita tentang pengalaman hidup anda</p>\r\n\r\n<p style="text-align: justify;">Berbagilah cerita tentang perjalanan hidup anda, karena terkadang hanya sekedar dari sebuah cerita, seseorang akan termotivasi untuk melakukan suatu hal baru yang sebelumnya belum mereka coba. Jadilah motivator untuk rekan kerja anda, karena kesuksesan yang besar akan anda dapatkan ketika orang disekeliling anda terinspirasi oleh <em>mindset </em>anda. (Dhanaviya_Enero, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Sumber gambar: dailysocial.id</p>\r\n	6	0	2018-08-27 18:10:51	http://ptpn10.co.id/uploads/5b83799f-d464-4401-9da9-10b0e3e14fb4-kary_berprestasi.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/6-tips-menjadi-karyawan-berprestasi-di-perusahaan
27	B	Lakukan Restrukturisasi, PTPN X Lakukan Sertijab Pejabat Puncak	<p style="text-align: justify;">Sebagai langkah restrukturisasi, PT Perkebunan Nusantara (PTPN) X melakukan serah terima jabatan pada beberapa posisi pejabat puncak. Restrukturisasi organisasi diharapkan akan memberikan penyegaran dalam atmosfer kerja di PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&rdquo;Kepada pejabat yang baru dilantik saya ucapkan selamat bertugas. Saya harapkan pejabat yang hari ini dilantik bisa bertugas secara professional dan memberikan kontribusi terhadap perusahaan,&rdquo; kata Direktur Utama PTPN X, Dwi Satriyo Annurogo dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi ini menurutnya akan memberikan penyegaran dalam atmoser kerja di PTPN X. Tidak hanya penyegaran semata, restrukturisasi organisasi juga akan memicu penciptaan inovasi-inovasi strategis untuk perkembangan korporat ke depan.</p>\r\n\r\n<p style="text-align: justify;">Adanya restrukturisasi organisasi ini berdampak pada jumlah pejabat puncak yang sebelumnya 16 posisi menjadi 13 posisi. &rdquo;Berkurangnya jumlah ini tentunya akan membuat korporasi menjadi lebih lincah dan sinergi lebih kuat dalam upaya pencapaian target perusahaan,&rdquo; ujarnya.</p>\r\n\r\n<p style="text-align: justify;">Dalam kesempatan tersebut Direktur Utama PTPN X juga menyampaikan ucapan terima kasih dan apresiasi kepada dua pejabat puncak yang sudah memasuki masa bebas tugas yaitu Alan Purwandiarto dan Benny Basuki Suryo.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Berikut nama-nama 13 pejabat puncak di Kantor Pusat yang dilantik:</p>\r\n\r\n<ul>\r\n\t<li>Moh.&nbsp;Afif Fauzi sebagai&nbsp;Plt. Kepala Satuan Pengawasan Intern</li>\r\n\t<li>Arif Suhariadi sebagai&nbsp;Kepala Bagian Keuangan dan Akuntansi</li>\r\n\t<li>Herman sebagai&nbsp;Kepala Bagian SDM dan Umum</li>\r\n\t<li>Tri Ari Sulistyawan sebagai&nbsp;Kepala Bagian Hukum dan Pengembangan Aset</li>\r\n\t<li>Wakhyu Priyadi Siswosumarto sebagai&nbsp;Kepala Bagian Perencanaan Strategis</li>\r\n\t<li>Edwin Risananto sebagai&nbsp;Kepala Bagian Pengadaan Barang dan Jasa</li>\r\n\t<li>Ramlan Silvester Sinaga sebagai&nbsp;Pjs. Kepala Bagian Teknik dan Pengolahan</li>\r\n\t<li>Arisson Sianipar sebagai&nbsp;Pjs. General Manager PG Kremboong</li>\r\n\t<li>Agus Mihandoko sebagai&nbsp;General Manager PG Gempolkrep</li>\r\n\t<li>Erwin Budianto sebagai&nbsp;Pjs. General Manager PG Djombang Baru</li>\r\n\t<li>Marshal Gerard Pattiasina&nbsp;sebagai&nbsp;General Manager PG Lestari</li>\r\n\t<li>Bambang Hari Nugroho sebagai&nbsp;General Manager PG Pesantren Baru</li>\r\n\t<li>Miftakhul Munir sebagai&nbsp;General Manager PG Modjopanggoong.</li>\r\n</ul>\r\n\r\n<p><span style="text-align: justify;">(Red1, CIN_Sekper)</span></p>\r\n	11	0	2019-12-02 18:48:24	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-12-02_at_11.19.28.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/lakukan-restrukturisasi-ptpn-x-lakukan-sertijab-pejabat-puncak
167	B	Menteri Perdagangan Resmikan Modernisasi Enero	<p style="text-align: justify;">Menteri Perdagangan Republik Indonesia (RI), Agus Suparmanto meresmikan modernisasi Pabrik Bioethanol, PT Energi Agro Nusantara (Enero) pada Rabu, (29/7) via aplikasi <em>video conference</em>. Acara ini mengundang juga berbagai instansi terkait, seperti Direktorat Jenderal Industri Kimia, Farmasi dan Tekstil, Kementerian Perindustrian RI, Induk Perusahaan Perkebunan Nusantara, Perkebunan Nusantara X, Asosiasi Ethanol dan Spiritus Indonesia dan perusahaan mitra lainnya.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Dalam <em>keynote</em> <em>speech</em>, Agus, menyampaikan selamat sekaligus mengapresiasi upaya modernisasi pabrik bioethanol PT Enero.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kami mengucapkan selamat pada PT Enero yang berupaya bangkit untuk menjadi industri strategis dengan modernisasi dan hilirisasi produk ethanol yang berkualitas sehingga berpeluang untuk dipasarkan di industri farmasi, hand sanitizer dan disinfektan. Sekaligus kami mengapresiasi upaya dan perannya selama pandemi COVID-19, termasuk langkah ke depan untuk ekspansi ekspor&rdquo; ujar Agus</p>\r\n\r\n<p style="text-align: justify;">Melalui program Penyertaan Modal Negara (PMN), PT Enero memperoleh bantuan peralatan untuk modernisasi pabrik dari Pemerintah yang meliputi modifikasi dan penambahan peralatan untuk efisiensi penggunaan bahan baku serta hiliriasasi produk dengan kualitas tinggi diantaranya High Quality Neutral Alcohol (HQNA) kadar 99,5%, Extra Neutral Alcohol (ENA) kadar 96,5%, Fuel Grade kadar 99,5%, Technical Alcohol 96,5%, Food Grade CO<sub>2</sub> dengan kapasitas 50 ton/hari, serta hand sanitizer &ldquo;Caryz&rdquo; yang telah terlisensi dengan kapasitas 10.000-30.000 liter per hari.</p>\r\n\r\n<p style="text-align: justify;">Dengan adanya modernisasi pabrik ini, PT Enero akan menjadi industri vital penghasil ethanol terkemuka di Indonesia dengan kapasitas produksi &nbsp;100 kl per hari. PT Enero yang diisi oleh putra-putri terbaik bangsa akan mendedikasikan produk untuk kebutuhan domestik dan ekspor, terutama mendukung program Pemerintah dalam penanggulangan pandemi COVID-19.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Adanya modernisasi ini, menunjukkan bahwa Indonesia mampu bersaing dengan negara-negara lain, memproduksi ethanol dengan kualitas tinggi, tanpa bergantung pada impor, terlebih surplus produksi ethanol dalam negeri bisa menjadikan peluang untuk ekspor ethanol ke negara lain&rdquo; ujar Izmirta Rachman, Direktur PT Enero dalam sambutannya.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Tidak lupa, dalam penutupan sambutannya, Izmirta juga mengucapkan terima kasih&nbsp;atas dukungan selama ini kepada Pemerintah antara lain Kementerian Perindustrian RI, Kementerian BUMN RI, Kementerian Perdagangan RI, termasuk induk perusahaan PTPN X, Perkebunan Nusantara, serta pihak-pihak lainnya yang telah mewujudkan modernisasi pabrik bioethanol ini. (Dimas_Enero, CIN_Sekper)</p>\r\n	4	0	2020-07-30 08:39:42	http://ptpn10.co.id/uploads/peresmian_ena_grade.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/menteri-perdagangan-resmikan-modernisasi-enero
130	B	IKBI Holding Perkebunan Lakukan Kunjungan ke HGU Sumber Lumbu PTPN X	<p>Istri Dirut Holding Perkebunan yang juga Ketua IKBI Holding Perkebunan , Rizkiyah Abdul Gani melakukan kunjungan ke HGU Sumber Lumbu PTPN X pada Kamis (27/2). Bersama jajaran pengurus IKBI lainnya seperti Sri Romyati Seger Budiarjo, Dewi Denaldy, Erfi Iswahyudi , dan Hestu Puri Wing Antariksa yang disambut langsung Ketua IIKB PTPN X , Atik Dwi Satriyo Annurogo.</p>\r\n\r\n<p>Kunjungan tersebut &nbsp;diperuntukkan guna menyambung silaturahmi dan kekompakan, para Ikatan Istri Perkebunan baik yang ada di pusat hingga yang ada di daerah. Menurutnya, acara seperti ini sangat penting untuk dilakukan bahkan seharusnya rutin untuk dilakukan.</p>\r\n\r\n<p>&ldquo; Terima kasih atas sambutan yang begitu hangat dari para pengurus IIKB di Jawa Timur. Senang sekali saya dan rombongan disambut dengan begitu baik. Semoga silaturahmi ini dapat terus terjaga dengan baik dan terus bekelanjutan,&rdquo; ungkap</p>\r\n\r\n<p>Rizkiyahpun berpesan agar sebagai istri, kita diwajibkan untuk terus memberikan dukungan dan pendampingan kepada suami dan juga anak. Kendati kita harus dipindahtugaskan di tempat yang jauh dan terpelosok, kita harus tetap menjadi penerang bagi keluarga.</p>\r\n\r\n<p>&ldquo; Sudah menjadi resiko bagi insan perkebunan jika harus dipindah tugaskan kedaerah yang terperosok dan juga terpencil. Untuk itu, sebagai istri kita harus mendukung langkah suami kita tersebut salah satunya dengan terus memberikan support tiada henti meski dengan keterbatasan yang ada,&rdquo; pungkasnya.</p>\r\n\r\n<p>Kunjungan tersebut juga di warnai dengan sejumlah agenda lain seperti &nbsp;skunjungan ke TK Sakanira II, Pemetikan tanaman hidroponik dan juga penanaman pohon di Kebun Rojo yang terletak dikawasan HGU Sumber Lumbu, Kediri. (RED2, Put_Sekper)</p>\r\n	8	0	2020-03-02 13:56:24	http://ptpn10.co.id/uploads/Web_IIKB.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ikbi-holding-perkebunan-lakukan-kunjungan-ke-hgu-sumber-lumbu-ptpn-x
147	B	PTPN X Group Dukung Pemkab Mojokerto dengan Program CSR Disinfektan	<p><strong>Mojokerto</strong> &ndash; PT Perkebunan Nusantara(PTPN) X Group diwakili PG Gempolkrep, unit usaha PTPN X dan PT Energi Agro Nusantara (Enero), anak perusahaan PTPN X, memberikan bantuan <em>Corporate Social Responsibility</em> (CSR) berupa suplai 3.500 disinfektan kepada Pemerintah Kabupaten (Pemkab) Mojokerto pada Senin, (31/3) di Pendapa Pemerintah Kabupaten (Pemkab) Mojokerto.</p>\r\n\r\n<p>Pemberian bantuan secara simbolis diberikan oleh Agus Minhandoko, General Manager PG Gempolkrep sekaligus Komisaris PT Enero dan Izmirta Rachman, Direktur Utama PT Enero kepada Pihak Pemkab yang diwakili Pungkasiadi, Bupati Mojokerto dan pejabat-pejabat lainnya di lingkungan Pemkab Mojokerto.</p>\r\n\r\n<p>Bantuan ini diharapkan bisa membantu Pemkab dalam mencegah sebaran COVID-19. Hal ini disampaikan oleh Agus Minhandoko.</p>\r\n\r\n<p>&ldquo;Kami berharap bantuan dari PTPN X Group ini dapat membantu Pemerintah Daerah dalam mencegah sebaran COVID-19 di area Mojokerto dan bermanfaat bagi lingkungan masyarakat dan pihak yang membutuhkan&rdquo; ujar Agus</p>\r\n\r\n<p>Disisi lain, Pemkab juga mengucapkan terima kasih atas bantuan ini. Pemkab berharap semua elemen terus bergerak selama masa-masa kritis ini, terutama para stakeholder penyuplai logistik pencegahan COVID-19. Seperti cairan disinfektan dan <em>hand</em> <em>sanitizer</em> yang ketersediaannya sudah sangat langka di pasaran. Bantuan berupa cairan disinfektan dirasa sangat baik dalam mendukung kegiatan Pemkab Mojokerto yang berupaya serius memberikan keselamatan dan kesehatan warganya. Selain, himbauan kepada masyarakat untuk terus menerapkan perilaku hidup bersih dan sehat.</p>\r\n\r\n<p>Acara ceremonial yang dihadiri pejabat di lingkungan Pemkab Mojokerto ini, juga mendoakan agar wabah COVID-19 segera berakhir dan ikhtiar yang dilakukan selama ini bermanfaat (MJF/ARH_Enero, Put_Sekper).</p>\r\n	4	0	2020-03-31 12:16:07	http://ptpn10.co.id/uploads/CSR_Enero_1.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-group-dukung-pemkab-mojokerto-dengan-program-csr-disinfektan
109	B	 PG Meritjan, Salurkan CSR melalui Bedah Rumah Tidak Layak Huni	<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">PG Meritjan, unit usaha dari PTPN X menunjukkan kepeduliannya kepada masyarakat kurang mampu dengan menyalurkan CSR nya melalui program bedah rumah. Kegiatan ini diperuntukan guna membantu masyarakat sekitar yang memerlukan dan untuk meningkatkan kualitas hidup dan kesejahteraan.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">General Manager PG Meritjan, Syahrial Koto mengungkapkan bahwa kegiatan ini merupakan bentuk tanggung jawab sosial perusahaan terutama kepada masyarakat sekitar pabrik. &nbsp;Dan bantuan kali ini diterima langsung oleh Ibu Sugiarti dari Desa Dermo, Kecamatan Mojoroto, Kediri.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">"Kita memberikan bantuan kepada warga kurang mampu dalam bentuk menjadikan rumah mereka yang semula tidak layak huni menjadi rumah idaman. Mudah-mudahan dengan program bedah rumah ini, warga kurang mampu dapat terbantu dan merasakan keberadaan di daerah ini," tandasnya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">Dijelaskan Syahrial, bedah rumah dengan ukuran 12,5 meter dan 13,5 meter ini dilaksanakan selama satu bulan. Pengerjaannya terus dikebut &nbsp;karena kondisi rumah yang sudah tidak layak lagi untuk di tinggali oleh Ibu Sugiarti.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">&ldquo; Alhamdullilah , berkat kerjasama dari semua pihak pengerjaan bedah rumah ibu Sugiarti dapat berjalan dengan lancar dan sesuai waktu yang diharapkan,&rdquo; jelasnya.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">Sementara itu, dalam kesempatan tersebut hadir pula Direktur Komersil PTPN X, Slamet Djumantoro. Dalam sambutannya ia mengucap syukur yang tak terkira bahwa program CSR Bedah Rumah di lingkungan Pabrik Gula Meritjan dapat berjalan dengan lancar. Ia pun berharap bahwa dengan adanya program ini silaturahmi antara PG Meritjan dan warga sekitar dapat berjalan dengan baik.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;"Perusahaan juga memiliki tanggung jawab untuk membantu meningkatkan kesejahteraan warga desa yang ada di sekitar perusahaan. Untuk itu bedah rumah ini diharapkan mampu dapat menolong mereka terutama bagi yang membutuhkan," jelasnya. (RED2, Put_Sekper)</p>	11	0	2020-02-11 07:40:47	images/news/web5.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	\N
132	B	Sinergi Milenial, PTPN X Hadiri Milennial & Leaders Gathering Chapter Surabaya	<p>Dalam beberapa tahun belakangan ini, milenial menjadi isu hangat dalam dunia kerja. Tak dipungkiri, pelan tapi pasti karyawan yang tergolong generasi milenial mulai membanjiri dunia kerja. Peran milenial kian bertambah dan terus berkolaborasi dengan Generasi X dan mulai menggantikan Baby Boomers. Hal itu pula yang saat ini terjadi di PT Perkebunan Nusantara (PTPN) X yang merupakan anak perusahaan dari Holding Perkebunan. Dengan pemikiran yang segar, para milenial muda ini berkomitmen untuk membawa perusahaan ke arah yang lebih baik.</p>\r\n\r\n<p>Sabtu, 29 Februari 2020 lalu bertempat di Menara Mandiri Surabaya para milenial muda ini berkumpul dalam acara Milennial &amp; Leaders Gathering Chapter Jawa Timur yang diadakan oleh Kementerian BUMN. Acara ini digelar di Menara Mandiri Tunjungan Plaza dan diikuti oleh pimpinan serta karyawan milennial dari 44 BUMN yang berada di Jawa Timur. Gathering ini dimaksudkan untuk menyatukan dan mensinergikan seluruh BUMN yang ada di Indonesia khususnya&nbsp; Jawa Timur sehingga terjalin sinergi dan komunikasi antar BUMN di Wilayah Jawa Timur untuk meningkatkan kerjasama yang lebih menguntungkan bagi sesame BUMN. Staf Khusus III Menteri BUMN, Arya Sinulingga pun berkesempatan hadir dan menyampaikan sharing serta berdiskusi dengan millennial dengan suasana hangat, rileks, dan komprehensif berkaitan dengan kebijakan dan arah masa depan BUMN.&nbsp;</p>\r\n\r\n<p>Beliau menyampaikan bahwa &ldquo;40-60 persen pegawai BUMN saat ini diisi oleh millenial. Semua kita punya, Indonesia punya semuanya. Jika BUMN ini digerakkan dengan benar, Indonesia akan semakin maju dan bangkit. Jadi anda semua harus optimis, anda bekerja di tempat yang benar saat ini.&rdquo; (Put_Sekper_Put_Sekper)</p>\r\n	15	0	2020-03-04 10:26:29	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-02-29_at_9.01.10_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sinergi-milenial-ptpn-x-hadiri-milennial-leaders-gathering-chapter-surabaya
148	A	Improve Oneself	<p style="text-align: justify;"><span style="font-family: &quot;times new roman&quot;, times, serif; font-size: 12px;">Era globalisasi baru, generasi millennial hidup di zona dunia selalu berubah dan tidak pernah berhenti. Hal tersebut membuat millennial secara tidak langsung dituntut untuk selalu ada perubahan dalam aspek sumber daya manusia (SDM), terutama bila anda adalah seorang karyawan disebuah perusahaan. Perubahan dirasa sangat penting bagi karyawan agar lebih mudah beradaptasi dan tangguh dalam menghadapi tuntutan yang harus dijalani dalam setiap pekerjaan.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>&ldquo;Pasar berubah, selera berubah, begitu juga perusahaan-perusahaan dan individu-individu yang memilih bersaing di pasar itu harus berubah.&rdquo; &ndash; An Wang.</em></span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Teori perubahan Wang menjelaskan bahwa semua aspek dalam kehidupan manusia bisa berubah setiap saat karena arus globalisasi yang berkembang&nbsp;<em>absurd</em>. Hal itulah yang sekarang ini membuat faktor&nbsp;<em>change</em>&nbsp;menjadi pilihan terbaik untuk revolusi SDM millennial.&nbsp;</span></span><em style="font-family: &quot;times new roman&quot;, times, serif; font-size: 12px;">Improve oneself</em><span style="font-family: &quot;times new roman&quot;, times, serif; font-size: 12px;">&nbsp;merupakan perilaku khusus yang sengaja dibuat dan dilakukan dengan konsep tertentu untuk melakukan sebuah perubahan.&nbsp; &nbsp;</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>Max DePree&nbsp;</em>mengatakan<em>&ldquo;Dunia kompetitif memiliki 2 kemungkinan, yaitu gagal atau menang. Jika ingin menang, maka anda harus berubah.&rdquo;.&nbsp;</em>Max benar, perihal perubahan kita akan dihadapkan oleh dua pilihan, bergerak untuk tetap hidup, atau diam tergerus oleh arus global. Maka dari itu&nbsp;perubahan yang cepat sangat diperlukan, apalagi di era keterbukaan informasi seperti saat ini. Dalam hal ini&nbsp;<em>improve oneself</em>&nbsp;&nbsp;bisa menjadi ide baru sebagai konsep untuk &nbsp;merevolusi SDM yang bisa diterapkan disegala aspek kehidupan, salah satunya dalam&nbsp;<em>career aspect</em>.</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Bagi anda para kaum millennial yang ingin menerapkan konsep&nbsp;<em>Improve oneself&nbsp;</em>dalam pekerjaan, ikuti 4 tahapan sebagai berikut sebagai tips langkah mudah untuk merubah diri.</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><strong><em>First, promise yourself</em></strong></span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Untuk tahapan yang paling dasar adalah berjanjilah pada diri sendiri, berkomitmen untuk merubah cara bekerja anda. Pada tahap ini ketekunan yang berkelanjutan menjadi kunci utama. Mengubah cara berfikir berarti dengan melakukan perjalanan ke dalam diri sendiri, mengetahui serta memahami seluruhnya siapa diri anda sebenarnya, termasuk hal-hal yang menjadi penunjang pekerjaan pada diri anda. Mengubah pikiran secara sehat akan berpengaruh terhadap perbaikan keadaan mental saat bekerja. Untuk mengawali tahap ini dengan sebuah tindakan, pertama-tama anda harus lebih mengenali karakter diri sendiri dan memulai 5 hal baru ini:</span></span></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>Nothing impossible</em></span></span></li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Buatlah perubahan yang positif ditempat kerja anda. Terapkan&nbsp;<em>mindset</em>&nbsp;&ldquo;pasti bisa&rdquo;, dalam artian bahwa semua yang anda lakukan ditempat kerja, anda pasti bisa melakukannya dengan hasil yang baik.</span></span></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;" value="2"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>Whatever the job, give the best</em></span></span></li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Apapun pekerjaanya, berikan yang terbaik untuknya. Bekerjalah tanpa mengharapkan pujian orang lain. siapa tahu pekerjaan itu adalah jalan pintas dari Tuhan untuk mencapai impian anda selama ini.</span></span></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;" value="3"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>Don&#39;t underestimate the abilities of coworkers</em></span></span></li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>&ldquo;Do not take for granted the things closest to your heart. Cling to them as you would with your life, for without them, life is meaningless&rdquo; - Chinese Proverbs</em>Bawalah perubahan yang baik dengan tidak memandang sebelah mata keahlian rekan kerja anda. Perlakukan mereka sebaik mungkin, karena ia adalah jembatan menuju sukses.</span></span></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;" value="4"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>Give your best talent</em></span></span></li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Tunjukkan&nbsp;<em>passion&nbsp;</em>terbaik yang anda miliki dan bekerjalah dengan hati yang bahagia.</span></span></p>\r\n\r\n<ol>\r\n\t<li style="text-align: justify;" value="5"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><em>Forgive coworkers&#39; mistakes</em></span></span></li>\r\n</ol>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Belajarlah menerima semua kekurangan dan kelebihan rekan kerja anda, jadilah pemaaf.&nbsp;<em>Bring a good</em>&nbsp;<em>feeling</em>, Ciptakan lingkungan kerja yang kondusif dengan sikap tidak saling menjatuhkan antar rekan kerja.</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><strong>Second, work&nbsp;<em>schedule</em></strong></span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Untuk lebih memudahkan, buatlah agenda atau rencana yang ingin anda lakukan. Dalam tahap ini, buatlah&nbsp;<em>point list</em>&nbsp;tentang apa saja yang ingin anda rubah untuk menyusun rencana yang efektif. &nbsp;Misalnya beberapa contoh bagian catatan di antaranya adalah:</span></span></p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Catatan gagasan/ide-ide baru</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Narasumber</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Jadwal/agenda harian</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Jadwal/agenda mingguan</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Jadwal/agenda bulanan</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Hasil pencapaian yang berhasil dan gagal</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Penelitian</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Tindak lanjut/ keterkaian variabel</span></span></li>\r\n\t<li style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Kontak/individu yang terlibat</span></span></li>\r\n</ul>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><strong><em>Third</em></strong><strong>,&nbsp;<em>set</em>&nbsp;<em>goals</em>&nbsp;<em>for</em>&nbsp;<em>change</em></strong></span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Dalam konsep&nbsp;<em>improve oneself</em>, jangan mencoba membuat perubahan secara singkat. Anda harus melakukannya secara bertahap, berkelanjutan dan saling keterkaitan. Setiap agenda yang telah anda tulis wujudkan menjadi tindakan-tindakan kecil, Tentukan&nbsp;<em>goal&nbsp;</em>disetiap prosesnya. Pada tahap ini tanamkan&nbsp;<em>mindset</em>, bahwa anda harus terus belajar, tumbuh, dan berkembang dalam setiap kesempatan yang ada.</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;"><strong><em>Fourth</em></strong><strong>,&nbsp;<em>step</em>&nbsp;<em>evaluation</em></strong></span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Tahap terakhir adalah proses evaluasi dan lakukan analisa dari semua tahapan yang telah anda lakukan. Dari sini anda akan memperoleh simpulan data atau grafik dari semua tahapan yang sudah anda jadwalkan. Lakukan dengan cara terstruktur, sistematis, dan masif.</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Warna globalisasi akan terus berubah, namun hal itu bukan tujuan akhir dari hidup, akan tetapi siap berubah dan mengembangkan diri dalam setiap keadaan itu adalah pilihan terbaik.</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Sekecil apapun perubahan yang anda lakukan asalkan ke arah yang lebih baik akan membantu hidup anda menjadi lebih baik. Dengan melakukan perubahan kecil secara rutin dan dengan usaha yang tulus akan membuat sebuah perubahan yang besar pada kehidupan anda dibandingkan tidak melakukan perubahan sama sekali. Ingat, bahwa sekecil apapun tindakan yang membuat kehidupan anda semakin positif akan membawa dampak besar di masa depan.</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Tidak ada hal yang setara dengan kehidupan di dunia ini, tapi hidup ini terus dan harus berlanjut.&nbsp;<em>&ldquo;Hanya Aku yang bisa mengubah hidupku. Tidak ada seorang pun yang bisa melakukannya untukku.&rdquo; &ndash; Carol Burnett.</em>&nbsp;Sebelum mengubah sesuatu yang besar, mulailah dari hal kecil, yakni merubah diri kita sendiri dan yang mampu melakukannya adalah diri anda sendiri.&nbsp;<em>Be a winner</em>. (Dhanaviya_Enero, CIN_Sekper)</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: &quot;times new roman&quot;, times, serif; font-size: 12px;">Daftar Pustaka:</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Sumber gambar: picture by beritagar.id , pinterest, republicsmetoolkit.com</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">3 Hal Yang Dapat Mempengaruhi Konsep Diri,&nbsp;<a href="http://www.zahiraccounting.com/">www.zahiraccounting.com</a>, 19 September 2016, 07 April 2020,<a href="http://www.zahiraccounting.com/id/blog/3-hal-dapat-mempengaruhi-konsep-diri">www.zahiraccounting.com/id/blog/3-hal-dapat-mempengaruhi-konsep-diri</a></span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Menyusun Rencana Kerja yang Efektif,&nbsp;<a href="http://www.id.wikihow.com/">www.id.wikihow.com</a>, 8 April 2020, &lt;<a href="http://www.id.wikihow.com/Menyusun-Rencana-Kerja-yang-Efektif">www.id.wikihow.com/Menyusun-Rencana-Kerja-yang-Efektif</a>&gt;</span></span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: 12px;"><span style="font-family: &quot;times new roman&quot;, times, serif;">Dewanto Kennardi, 2020,Kata Kata Motivasi Hidup Terbaik untuk Buat Hidup Kamu Lebih Semangat,www.cermati.com,10 Februari 2020</span></span></p>\r\n	13	0	2020-04-15 13:31:43	http://ptpn10.co.id/uploads/alma.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/improve-oneself
169	B	Tutup Tahun 2020, PTPN X Resmi Memperoleh Sertifikat ISO 37001:2016	<p style="text-align: justify;">Pada akhir tahun 2020, PT Perkebunan Nusantara (PTPN) X membuktikan komitmennya untuk menerapkan budaya anti suap dalam setiap proses bisnisnya. Hal tersebut dibuktikan dengan diperolehnya Sertifikat ISO 37001:2016 tentang Sistem Manajemen Anti Penyuapan (SMAP) pada 28 Desember 2020.</p>\r\n\r\n<p style="text-align: justify;">Proses penerapan SMAP di PTPN X dimulai dengan komitmen kuat dari Manajemen Puncak yang dituangkan dalam Kebijakan Anti Penyuapan dan ditindaklanjuti dengan dilakukannya <em>Kick Off Meeting</em> pada 12 November lalu yang dihadiri langsung oleh Direktur PTPN X Aris Toharisman, SEVP Operation Dimas EkoPrasetyo, SEVP Business Support Septo Kustwitjahjono, beserta manajemen dan seluruh karyawan PTPN X. Implementasi ISO 37001:2016 di PTPN X mengartikan beberapa poin penting yaitu seluruh manajemen dan karyawan PTPN X berkomitmen secara konsisten untuk menciptakan lingkungan dan budaya anti penyuapan; menerapkan Sistem Manajemen Anti Penyuapan dalam upaya mencapai tujuan perusahaan; menyediakan kerangka kerja untuk menetapkan, mengkaji, dan mencapai sasaran anti penyuapan; serta memenuhi persyaratan Sistem Manajemen Anti Penyuapan.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Selainitu, PTPN X juga mendorong peningkatan kepedulian terhadap tindakan anti penyuapan; secara berkala dan berkesinambungan menyempurnakan kebijakan, sasaran, dan perangkat Sistem Manajemen Anti Penyuapan; menjamin keberadaan wewenang dan kemandirian fungsi kepatuhan anti penyuapan; menerapkan sanksi dan konsekuensi bagi yang tidak mematuhi kebijakan anti penyuapan; serta menyediakan, mensosialisasikan, serta mengkomunikasikan kebijakan, sasaran, dan perangkat Sistem Manajemen Anti Penyuapan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Sembilan poin penting terkait penerapan ISO 37001:2016 tersebut akan secara konsisten dilakukan di lingkungan kerja PTPN X sebagai wujud bahwa kami bukan semata-mata mengejar sertifikatnya saja, melainkan fokus pada pengimplementasian Sistem Manajemen Anti Penyuapan,&rdquo; tegas Aris Toharisman.</p>\r\n\r\n<p style="text-align: justify;">Kedepannya, penerapan ISO 37001:2016 akan menjadikan proses bisnis PTPN X berjalan lebih efektif dan efisien, disamping akan meningkatkan kepercayaan seluruh pemangku kepentingan <em>(stakeholder)</em>. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2021-01-04 10:15:16	http://ptpn10.co.id/uploads/Sertifikasi_ISO.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tutup-tahun-2020-ptpn-x-resmi-memperoleh-sertifikat-iso-370012016
168	B	Hadapi 2021, PTPN X Siapkan Strategi	<p style="text-align: justify;">Mengawali tahun 2021, PT Perkebunan Nusantara (PTPN) X mengadakan acara Penyampaian Strategi Tahun 2021 di Kantor Pusat, Senin (4/1). Acara ini dihadiri oleh seluruh jajaran manajemen dan perwakilan karyawan baik di unit usaha maupun anak perusahaan. Direktur PTPN X, Aris Toharisman menjelaskan mengenai tantangan yang dihadapi PTPN X pada tahun lalu dan strategi yang menjadi fokus perusahaan pada tahun ini.</p>\r\n\r\n<p style="text-align: justify;">Aris menjelaskan bahwa tantangan di tahun 2020 telah berhasil dilalui dengan baik dan dievaluasi. Evaluasi tersebut akan dijadikan perbaikan untuk kinerja di tahun ini. Ada 3 sasaran yang akan dicapai, yaitu sinergy &amp; profitability; operational excellence; dan ekspansi lahan.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Sedangkan untuk inisiatif utama yang akan dilakukan adalah optimalisasi aset, intensifikasi, dan ekstensifikasi,&rdquo; terang Aris.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, PTPN X juga akan melakukan <em>cost reduction program (CRP) </em>yang terintegrasi dengan lean six sigma. CRP adalah mengurangi biaya yang tidak memberikan keuntungan bisnis, namun tanpa memberikan dampak negatif terhadap kualitas.</p>\r\n\r\n<p style="text-align: justify;">Di sisi anak perusahaan, Aris meminta untuk terus melakukan optimalisasi kapasitas produksi dan evaluasi terhadap proses bisnis. Harapannya, masing-masing anak perusahaan akan memberikan kontribusi kepada PTPN X. (CIN_Sekper, PUT_Sekper)</p>\r\n	5	0	2021-01-04 14:33:49	http://ptpn10.co.id/uploads/Acara_Tahun_Baru_2021.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/hadapi-2021-ptpn-x-siapkan-strategi
157	B	PTPN X Langsungkan Panen Perdana Tembakau	<p style="text-align: justify;">Meski di tengah pandemi COVID-19, Kebon Kertosari, unit usaha PT Perkebunan Nusantara (PTPN) X, menunjukkan kinerjanya dengan melaksanakan Panen Perdana Tembakau, Sabtu (20/06), sesuai dengan protokol kesehatan yang berlaku. Acara ini dihadiri oleh Komisaris PTPN X Arif Afandi, Direktur PTPN X Aris Toharisman, SEVP Operation PTPN X Dimas Eko Prasetyo, dan GM Kebun Kertosari Syaifuddin Zuhri beserta jajaran Manajamen lainnya.</p>\r\n\r\n<p style="text-align: justify;">Panen tembakau berlangsung di Blok Yamaha Bagian TBN VII,&nbsp; Penataran/Kemandoran Ajung Pring seluas 4,759 hektar, yang mulai ditanam pada 9 Mei 2020. Target produksi di lahan ini adalah sebesar 17.750 Kg/Ha. Selain itu, Kebun Kertosari menargetkan kualitas DO 90%, <em>filler</em> di bawah 10%, dan keutuhan daun 85%.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya yakin, GM Kebun Kertosari beserta jajaran telah mempersiapkan perencanaan matang guna mencapai target-target yang telah ditentukan tersebut,&rdquo; ujar Aris.</p>\r\n\r\n<p style="text-align: justify;">Manajemen menaruh harapan besar untuk Kebon Kertosari dapat menunjukkan prestasi terbaiknya meski sedang dalam kondisi wabah Covid-19. Sinergi antara pihak yang terlibat juga sangat dibutuhkan agar tembakau hasil produksi Kebon Kertosari potensial di pasar nasional maupun internasional.</p>\r\n\r\n<p style="text-align: justify;">Direktur PTPN X, Aris Toharisman, juga menghimbau untuk tetap memperhatikan protokol kesehatan dalam bekerja, mulai dari rajin mencuci tangan hingga selalu menggunakan masker. Selain itu, tetap memperhatikan jarak antar karyawan dalam beraktivitas. Sehingga kesehatan tetap terjaga dan terhindar dari virus COVID-19. (Sanggra_UB, CIN_Sekper)</p>\r\n	11	0	2020-06-23 09:02:34	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-06-23_at_8.59.46_AM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-langsungkan-panen-perdana-tembakau
171	B	Tingkatkan Inovasi, PTPN X Jalin Kerjasama dengan LIPI	<p style="text-align: justify;">Guna memanfaatkan semua elemen produksi, termasuk produk samping tanaman tebu dan pabrik gula, PT Perkebunan Nusantara (PTPN) X menjalin kerjasama riset dengan Pusat Penelitian Biomaterial LIPI. Kerjasama ini ditandai dengan <em>kick off meeting</em> yang dihadiri oleh SEVP Operation, Dimas Eko Prasetyo, Kepala Bagian Perencanaan Strategis Wayan Mei Purwono, Ketua Pusat Penelitian Biomaterial LIPI Iman Hidayat, dan Ketua Tim Pelaksanaan Kerjasama&nbsp; Prof. Dr. Euis Hermiati, Selasa (22/12). Kerjasama ini terkait penelitian dan pengembangan bioproduk berbasis daduk tebu dan abu boiler pabrik gula, serta pembuatan dan pengujian prototipe bioproduk xilitol dan <em>paving block</em>.</p>\r\n\r\n<p style="text-align: justify;">Produk xilitol ini merupakan komoditi yang belum pernah diproduksi di dalam negeri dan selama ini kebutuhan <em>demand </em>produk tersebut dipenuhi melalui impor dari luar negeri. Melalui penelitian ini diharapkan LIPI bersama PTPN X menjadi pioner dalam inovasi diversivikasi produk turunan gula di Indonesia.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Adanya kerjasama ini membuat produk samping dari aktivitas produksi pabrik Gula di &nbsp;PTPN X dapat termanfaatkan dengan baik. Selain itu, pengembangan pembuatan bioproduk xilitol juga merupakan inovasi yang terus dilakukan oleh PTPN X,&rdquo; terang Wayan.</p>\r\n\r\n<p style="text-align: justify;">Rencananya, penelitian akan dimulai pada tahun 2021 dengan melakukan pembuatan dan optimasi paving block berbahan abu boiler. Kemudian pada tahun 2022 akan dilanjutkan dengan kajian tekno ekonomi dan <em>scaling up paving block<strong>. </strong></em>Pada 2023 akan dilakukan penerapan <em>paving block </em>skala pilot dan standardisasi produk.</p>\r\n\r\n<p style="text-align: justify;">Harapannya, kerjasama ini dapat berjalan sesuai dengan perencanaan, sehingga dapat memberikan nilai tambah bagi kedua pihak. Di sisi lain, inovasi-inovasi juga akan terus dilakukan oleh PTPN X guna meningkatkan kinerja. (Silvi_PMMB, CIN_Sekper)</p>\r\n	0	0	2020-12-23 10:33:07	http://ptpn10.co.id/uploads/KERJASAMA_DG_LIPI.JPG	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tingkatkan-inovasi-ptpn-x-jalin-kerjasama-dengan-lipi
166	B	Komisaris PTPN X Kunjungi Unit Usaha dan Anak Perusahaan	<p style="text-align: justify;">Dalam rangka supervisi keberlangsungan produksi Unit Usaha serta Anak Perusahaan, Komisaris Utama PT Perkebunan Nusantara (PTPN) X, Wahyu Widodo melakukan kunjungan kerja mulai 25 Juli hingga 28 Juli 2020. Wahyu berkunjung ke PG Gempolkrep, PT Energi Agro Nusantara (Enero), PT NMU, Kebun Ajong, Industri Bobbin, PT Mitratani Dua Tujuh, dan PG Pesantren Baru. Kunjungan ini didampingi oleh Direktur PTPN X Aris Toharisman, SEVP Operation Dimas Eko Prasetyo, dan SEVP Business Support Slamet Djumantoro.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Hari pertama kunjungan, Wahyu melihat secara langsung proses produksi di Pabrik Gula (PG) Gempolkrep. Dilanjutkan dengan mengunjungi PT Energi Agro Nusantara (Enero) untuk melihat produksi. Kunjungan hari pertama ditutup dengan berdisuksi bersama Board of Management (BoM) PT Nusantara Medika Utama (NMU) terkait kinerja RS. &nbsp;</p>\r\n\r\n<p style="text-align: justify;">Kunjungan hari kedua, Wahyu melihat proses pengelolaan tembakau, mulai dari lahan hingga gudang pengering dan pengolahan di Kebun Ajong Gayasan dan Kebun&nbsp; Kertosari. Kemudian, kunjungan dilanjutkan ke PT Mitratani Dua Tujuh untuk melihat proses produksi edamame, okra, dan sweet potato. Wahyu mengapresiasi kinerja PT Mitratani Dua Tujuh karena keberhasilannya menembus pasar ekspor.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya sangat mengapresiasi karena produk-produk anak perusahaan PTPN&nbsp; X mampu menjangkau pangsa internasional,&rdquo; terang Wahyu.</p>\r\n\r\n<p style="text-align: justify;">Kunjungan hari terakhir ke PG Pesantren Baru untuk melihat proses produksi gula dan produksi ritel. Seluruh rangkaian kunjungan tersebut dengan tetap memperhatikan protokol kesehatan COVID-19. (Sanggra_UB, CIN_Sekper)</p>\r\n\r\n<p>&nbsp;</p>\r\n	4	0	2020-07-30 09:08:47	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-07-30_at_09.07.37.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/komisaris-ptpn-x-kunjungi-unit-usaha-dan-anak-perusahaan
172	B	Tanam Perdana Agroforestry Dengan Perum Perhutani (KPH Blitar)	<p>Guna menjaga keajegan pasok Bahan Baku Tebu (BBT), PT Perkebunan Nusantara (PTPN) X secara kontinyu menggarap program Agroforestry dengan Perum Perhutani Divisi Regional Jawa Timur selama empat tahun terakhir. Rabu (16/12), PTPN X kembali melakukan tanam perdana dengan rencana luas 31 Ha di Kebun Kepek, Desa Wonotirto, Kecamatan Lodoyo Barat, Kab Blitar, yang dihadiri oleh Komisaris PTPN X Arif Affandi, SEVP Operation PTPN X Dimas Eko Prasetyo, General Manager PG Modjopanggoong Haryo Gunawan Wibisono dan Administratur KPH Blitar Teguh Jati Waloyo.</p>\r\n\r\n<p>Program Agroforestry telah terbukti memberikan tambahan pasok Bahan Baku Tebu (BBT) secara siginifikan ke pabrik gula PTPN X pada Musim Giling Tahun 2020 ini. Salah satunya adalah tambahan pasok BBT sebesar 2.712 Ton untuk PG Modjopanggong. Harapannya, penambahan pasok BBT secara signifikan tersebut akan kembali terjadi pada Musim Giling Tahun 2021.</p>\r\n\r\n<p>&ldquo;Program Agroforestry memberikan dampak signifikan untuk penambahan pasok BBT ke pabrik gula dengan rendemen antara 7-8%. Selain itu, program Agroforestry ini juga sebagai salah satu upaya memberdayakan masyarakat desa hutan untuk bersinergi memanfaatkan sumberdaya hutan,&rdquo; terang Arif</p>\r\n\r\n<p>Varietas yang ditanam pada di Kebun Kepek adalah Bululawang, dimana nantinya akan digilingkan seluruhnya ke Pabrik Gula (PG) Modjopanggoong pada musim giling mendatang. Sebagai upaya tindak lanjut tanam perdana ini, PTPN X juga akan melakukan&nbsp;<em>monitoring&nbsp;</em>untuk melihat ketepatan perawatan tanaman tebu.</p>\r\n\r\n<p>Total luasan Agroforestry yang telah tertanam adalah sebesar 201,494 Ha untuk PG Gempolkrep dengan KPH Mojokerto, 60,067 Ha untuk PG Djombang Baru dengan KPH Bojonegoro, dan 53,815 Ha untuk PG Lestari dengan KPH Jombang. Ke depannya, akan diadakan penanaman tanaman tebu kembali pada lahan seluas 128,7 Ha untuk PG Modjopanggoong dengan KPH Blitar. (Put_Sekper, Cin_Sekper)</p>\r\n	2	0	2020-12-21 08:42:02	http://ptpn10.co.id/uploads/Agroforestry.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tanam-perdana-agroforestry-dengan-perum-perhutani-kph-blitar
189	B	Menteri Koperasi dan UKM, Teten Masduki Kunjungi PT Mitratani Dua Tujuh	<p style="text-align: justify;">Kementerian Koperasi dan Usaha Kecil dan Menengah (UKM) RI melakukan kunjungan kerja ke PT Mitratani Dua Tujuh, anak perusahaan PT Perkebunan Nusantara (PTPN) X, Kamis (1/10). Kunjungan ini dihadiri langsung oleh Menteri Koperasi dan UKM, Teten Masduki dan Deputi Kelembagaan, Rulli Nuryanto. Rombongan disambut langsung oleh Plt. Bupati Jember, KH. A. Muqiet Arif, Direktur PTPN X, Aris Toharisman, dan Direktur PT Mitratani Dua Tujuh, Untung Mulyono. Kunjungan ini guna melihat lahan edamame dan proses produksi <em>frozen vegetables</em>. Kunjungan diisi dengan tanam dan panen edamame di lokasi Deminik bersama dengan para petani mitra Koperasi Serba Usaha (KSU) Keluarga Mitratani, peletakan batu pertama pembangunan <em>cold storage</em>, dan pelepasan ekspor edamame ke Jepang secara simbolis.</p>\r\n\r\n<p style="text-align: justify;">PT Mitratani Dua Tujuh adalah anak perusahaan PTPN X yang memproduksi <em>frozen vegetables</em>, yaitu edamame, okra, dan <em>sweet potatoes</em>. Dari keseluruhan produksi tersebut, sekitar 80 persen diantaranya diekspor ke Jepang dan sebagian lainnya dipasarkan ke Asia Tengah, Timur Tengah, Australia, Belanda serta memenuhi pasar lokal.</p>\r\n\r\n<p style="text-align: justify;">Teten mengapresiasi kinerja dan model bisnis PT Mitratani Dua Tujuh karena terus berupaya mencapai target-target produksinya dan memanfaatkan kemitraan dengan Koperasi dalam memberdayakan petani untuk skala bisnis. PT Mitratani Dua Tujuh sendiri menargetkan produksi edamame sebesar 9.022 ton dan okra sebesar 4.149 ton di tahun 2020.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Saya mengapresiasi model bisnis di Mitratani karena bermitra dengan Koperasi dalam pemberdayaan petani, sehingga petani dapat fokus dalam kegiatan budidaya karena pemasaran produk sudah terjamin. Kedepannnya diharapkan KSU Keluarga Mitratani dapat memperluas keanggotaannya dan mengajak lebih banyak petani untuk bergabung,&rdquo; terang Teten.</p>\r\n\r\n<p style="text-align: justify;">Teten bersama rombongan juga berkesempatan untuk merasakan minuman Jusme. Jusme merupakan minuman pengembangan produk dari edamame yang selama ini menjadi komoditas andalan PT Mitratani Dua Tujuh. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2020-10-02 09:05:49	http://ptpn10.co.id/uploads/Kunjungan_Menteri_Koperasi_ke_PT_Mitratani_Dua_Tujuh_(3).jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/menteri-koperasi-dan-ukm-teten-masduki-kunjungi-pt-mitratani-dua-tujuh
193	B	PTPN X Gelar Acara Peduli Kasih Natal	<p style="margin-left:5.6pt;">PT Perkebunan Nusantara (PTPN) X menggelar acara Peduli Kasih Natal PTPN X., Jumat (8-9/1). Mengingat kondisi pandemi saat ini, maka perayaan Natal tahun 2020 dilaksanakan secara lebih sederhana dengan berbagi kasih dan damai natal melalui bakti sosial. Bantuan&nbsp; diberikan kepada 4 lokasi di wilayah kerja PTPN X, yaitu Surabaya, Tulungagung, Kediri, dan Klaten.</p>\r\n\r\n<p style="margin-left:5.6pt;">Bantuan yang diberikan berupa natura, yakni sembako, Hand sanitizer Caryz, dan masker kain PTPN X. Selain itu, sejumlah 25 buah Meja, 44 buah Kursi juga disalurkan SD Kanisius Kerten Klaten.</p>\r\n\r\n<p style="margin-left:5.6pt;"><span dir="RTL">&ldquo;</span>Saya berharap pelaksanaan bakti sosial ini dapat bermanfaat untuk seluruh penerima bantuan. Semoga ke depannya PTPN X dapat terus memberikan manfaat bagi lingkungan sekitar,&rdquo; ujar Aris Toharisman, Direktur PTPN X.</p>\r\n\r\n<p style="margin-left:5.6pt;">Pada kesempatan yang sama, Aris kembali mengajak karyawan dan karyawati PTPN X untuk membumikan semangat tema kasih ke dalam perusahaan. Saling bersinergi dan membantu antar karyawan merupakan pondasi kuat untuk mencapai target kinerja tahun 2021. (Put_Sekper, Cin_Sekper)</p>\r\n	3	0	2021-01-08 14:55:44	http://ptpn10.co.id/uploads/WhatsApp_Image_2021-01-08_at_11.19.33.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-gelar-acara-peduli-kasih-natal
165	B	Bahas Giling, Komisi B DPRD Provinsi Jawa Timur Kunjungi PG Tjoekir	<p>Komisi B DPRD Provinsi Jawa Timur&nbsp; melakukan kunjungan kerja ke Pabrik Gula (PG) Tjoekir yang merupakan salah satu unit usaha PT Perkebunan Nusantara (PTPN) X pada (24/7) guna melakukan <em>supervisi</em> giling tahun 2020 dan meninjau produktivitas gula di Jawa Timur dalam masa pandemi Covid-19 ini. Rombongan dipimpin langsung oleh Ketua Komisi B, Alyadi Mustofa. Rombongan disambut secara langsung oleh SEVP Operation PTPN X, Dimas Eko Prasetyo.</p>\r\n\r\n<p>Kegiatan ini juga ditujukan untuk menemukan strategi peningkatan produksi dan produktivitas gula BUMN di Jawa Timur khususnya PTPN X serta memberikan solusi agar seluruh pabrik gula BUMN maupun swasta mampu bersaing secara adil.</p>\r\n\r\n<p>&quot;Saya sudah meminta Dinas Perkebunan Jawa Timur untuk melakukan koordinasi dan kajian-kajian yang akan dilaporkan ke Komisi pada awal Agustus mendatang dan nantinya kami juga akan mengundang pabrik-pabrik yang bersangkutan sebagai upaya untuk menjaga keseimbangan persaingan pabrik gula,&quot; ujar Alyadi.</p>\r\n\r\n<p>Alyadi juga berharap agar perjalanan pabrik gula Jawa Timur mampu bersaing secara adil agar ketahanan pangan di Jawa Timur tetap terjaga.</p>\r\n\r\n<p>&ldquo;Saya menilai pihak PTPN X sudah sangat cerdas untuk mencari celah-celah yang dilakukan dalam situasi ini,&quot; pungkas Alyadi</p>\r\n\r\n<p>Dukungan baik dari Alyadi mampu menjadi pelecut semangat PTPN X untuk terus optimis menghadapi segala tantangan dan permasalah yang ada pada saat ini. Pasalnya, selama puluhan tahun PTPN X selalu berusaha memberikan kontribusi terbaiknya dimana tidak hanya untuk Jawa Timur saja namun untuk Indonesia, terutama dalam bidang Ketahanan Pangan Nasional. (Alma_UB, PUT_Sekper)</p>\r\n	13	0	2020-07-27 17:51:53	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-07-27_at_16.46.11.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/bahas-giling-komisi-b-dprd-provinsi-jawa-timur-kunjungi-pg-tjoekir
173	B	PTPN X Sabet Gold Rank ASRRAT 2020	<p>PT Perkebunan Nusantara (PTPN) X meraih penghargaan Gold Rank dalam Ajang Bergengsi Asia Sustainability Reporting Rating (ASRRAT) 2020, Rabu (16/12). Ajang ini diinisiasi oleh National Centre For Sustainability Report (NSCR) dan telah digelar sejak tahun 2005 dengan dihadiri oleh 41 perusahaan domestik dan 9 perusahaan asing meliputi Malaysia, Singapura, Filipina dan Bangladesh. Penghargaan yang digelar secara virtual ini dihadiri langsung oleh Direktur PTPN X, Aris Toharisman.&nbsp;</p>\r\n\r\n<p><span dir="RTL">&ldquo;</span>Ini adalah bukti dedikasi dan komitmen seluruh karyawan dan karyawati yang ada di PTPN X untuk tetap berkontribusi positif mengedepankan pelaporan yang baik dan transparan.&rdquo; ujar Aris dalam sambutannya.&nbsp; Dalam proses penilaiannya, setidaknya terdapat tiga aspek penilaian yaitu aspek triple bottom line (ekonomi, sosial, dan lingkungan) perusahaan, dampak lingkungan dan sosial dari aktivitas perusahaan, serta ketiga pencapaian SDGs.</p>\r\n\r\n<p><span dir="RTL">&ldquo;</span>Kami percaya dengan pencapaian ini tidak hanya sekedar penghargaan semata, namun juga akan menjadi penyemangat untuk seluruh tim PTPN X, untuk terus meningkatkan kompetensi dan kualitas pelaporan Sustainability Report perusahaan,&rdquo; pungkas Aris. (Put_Sekper, Cin_Sekper)</p>\r\n	1	0	2020-12-17 09:55:36	http://ptpn10.co.id/uploads/ASRRAT.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-sabet-gold-rank-asrrat-2020
190	B	Kebun Ajong Gayasan Bagikan 300 Masker	<p style="text-align: justify;">Dalam rangka menekan penyebaran Covid-19 di Jember, Kebun Ajong Gayasan melakukan pembagian masker kepada pengantar atau penjemput tenaga kerja di Gudang Pengolahan, Selasa (29/9). Total sejumlah 300 masker dibagikan. Acara tersebut juga diikuti oleh GM Kebun Ajong Gayasan, Dwi Aprilia Sandi.</p>\r\n\r\n<p style="text-align: justify;">Selain karyawan Kebun Ajong Gayasan yang diwajibkan memakai masker, para penjemput atau pengantar pun dihimbau agar memakai masker ketika keluar rumah maupun berkendara. Sehingga kesehatan keluarga karyawan juga terjaga.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Pembagian masker kepada para pengantar atau penjemput karyawan ini merupakan bentuk kepedulian manajemen PTPN X, khususnya Kebun Ajong Gayasan untuk menekan penyebaran Covid-19 dan juga sebagai bentuk dukungan program Indonesia Bermasker,&rdquo; jelas Sandi.</p>\r\n\r\n<p style="text-align: justify;">Manajemen Kebun Ajong Gayasan juga menerapkan protokol kesehatan secara disiplin kepada seluruh karyawanya. Mulai dari memakai masker, jaga jarak, hingga himbauan untuk rajin mencuci tangan. Sehingga, adanya pandemi Covid-19 tidak mempengaruhi kinerja dari Kebun Ajong Gayasan. (Slv_PMMB, CIN_Sekper)</p>\r\n	0	0	2020-09-30 10:58:11	http://ptpn10.co.id/uploads/Ajong_Bagi_Masker.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kebun-ajong-gayasan-bagikan-300-masker
191	B	Cegah Penyebaran Covid-19, PG Meritjan Bagi 1.000 Masker	<p>PT Perkebunan Nusantara (PTPN) X melalui unit usahanya Pabrik Gula (PG) Meritjan berbagi masker sejumlah 1.000 buah kepada masyarakat di sekitar pabrik, Sabtu (26/9). Kegiatan ini adalah bentuk dukungan PG Meritjan terhadap program Indonesia Bermasker sebagai upaya mencegah penularan Covid-19.</p>\r\n\r\n<p>&ldquo;1.000 masker kami bagikan ke masyarakat, harapannya kesadaran masyarakat memakai masker semakin meningkat. Sehingga, sanksi denda karena tidak bermasker tak dialami masyarakat dan bisa memutus mata rantai penularan virus corona&rdquo; jelas Syahrial Koto, General Manager PG Meritjan.</p>\r\n\r\n<p>Syahrial optimis dengan himbauan pentingnya menggunakan masker dapat memutus penularan Covid-19 di masyarakat. Sehingga angka penyebaran di wilayah Kediri juga akan menurun. Selain bagi-bagi masker, Syahrial juga mengajak masyarakat mematuhi protokol kesehatan. Sehingga, bisa memutus mata rantai penularan covid-19.</p>\r\n\r\n<p>&ldquo;Tetap dirumah saja dan selalu gunakan masker dan jaga jarak jika terpaksa keluar rumah,&rdquo; pesannya.</p>\r\n\r\n<p>Penerapan protokol kesehatan juga diterapkan secara disiplin pada seluruh bagian di PG Meritjan. Karyawan diwajibkan untuk memakai masker, menjaga jarak, dan rutin menjaga kebersihan tangan dengan cuci tangan. Sehingga, proses bisnis yang dijalankan di PG Meritjan tetap berjalan dengan lancar.</p>\r\n\r\n<p>(Slv_PMMB, Put_Sekper)</p>\r\n	0	0	2020-09-28 11:15:57	http://ptpn10.co.id/uploads/PG_Meritjan.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/cegah-penyebaran-covid-19-pg-meritjan-bagi-1000-masker
175	B	PTPN X Gelar IHT Bagian Tanaman	<p style="text-align: justify;">Dalam rangka meningkatkan kompetensi dan menambah wawasan Karyawan Bagian Tanaman, PT Perkebunan Nusantara (PTPN) X melaksanakan <em>In House Training</em> (IHT) Bagian Tanaman Batch II, 30 November &ndash; 15 Desember 2020. Sebanyak 279 peserta Asisten Muda Bagian Tanaman dari 9 Pabrik Gula (PG) dibekali pemahaman mengenai <em>Building Character &amp; Soft Competency.</em></p>\r\n\r\n<p style="text-align: justify;">Kepala bagian SDM &amp; Umum PTPN X, M. Amier Hasanoedin mengatakan bahwa penyelenggaraan IHT ini bertujuan untuk meningkatkan kompetensi &amp; wawasan karyawan Bagian Tanaman, guna tercapainya sasaran produktivitas tebu secara optimal. &nbsp;</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><em>&ldquo;</em>Adanya IHT ini diharapkan mampu meningkatkan kompetensi &amp; wawasan seluruh karyawan Bagian Tanaman di semua pabrik Gula. Sehingga nantinya akan berdampak pada peningkatan pelayanan dan performa karyawan guna tercapainya pemenuhan Bahan Baku Tebu (BBT) yang berkualitas sesuai standar dan sasaran produktivitas tebu secara optimal,&rdquo; terangnya.</p>\r\n\r\n<p style="text-align: justify;">Selain itu kegiatan IHT tidak hanya berupa materi di kelas, tetapi juga dilanjutkan dengan&nbsp;kegiatan untuk mengasah teamwork dengan dipandu oleh Arafat Bachtiar dari Defender Outbound Indonesia. Kegiatan serupa akan Kembali dilaksanakan rencananya pada bulan januari 2021 mendatang, dengan tema yang sama dan estimasi jumlah peserta sebanyak 92 orang dari bagian PKWT Bagian Tanaman PG. (Silvy_PMMB, PUT_Sekper)</p>\r\n	0	0	2020-12-08 08:46:55	http://ptpn10.co.id/uploads/IHT_Tanaman.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-gelar-iht-bagian-tanaman
156	B	Gandeng BRI, PT Perkebunan Nusantara X Tingkatkan Layanan Kredit untuk Distributor	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menggandeng Bank Rakyat Indonesia (Pesero) Tbk untuk bekerjasama dalam memberikan fasilitas kredit modal kerja <em>delivery order</em> gula dan jasa layanan perbankan yang dapat ditujukan kepada distributor gula sebagai konsumen. Kerja sama ini dimulai dengan penandatanganan nota kesepahaman oleh Aris Toharisman selaku Direktur PTPN X dan Triswahyu Herlina, Kepala Kantor Wilayah BRI Surabaya Rabu (17/6).</p>\r\n\r\n<p style="text-align: justify;">Keunggulan yang ditawarkan dari kredit modal kerja adalah kemudahan membayar angsuran yang bisa disesuaikan dengan kemampuan nasabah, proses yang mudah dan cepat, didukung dengan fasilitas <em>e-banking, </em>dan suku bunga yang bersaing. Selain itu nasabah dapat mengajukan pinjaman dengan limit kredit Rp 100 Juta sampai dengan Rp 40 Milyar dengan jangka waktu 1-3 tahun dan dapat diperpanjang.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapannya, dengan adanya kerjasama ini akan mempermudah distributor agar terjadi kelancaran dalam proses bisnis gula. Skema ini sudah lama dirancang. Dan semoga bisa men-<em>support</em> aktivitas giling di PTPN X,&rdquo; ujar Aris. (Alma_UB, CIN_Sekper)</p>\r\n	10	0	2020-06-18 14:47:14	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-06-17_at_11.08.31.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/gandeng-bri-pt-perkebunan-nusantara-x-tingkatkan-layanan-kredit-untuk-distributor
192	B	Perluas Lahan Tebu, PTPN X Jalin Kerjasama dengan Kejati Jatim	<p style="text-align: justify;">Guna menjaga pasok tebu yang cenderung kian berkurang, PT Perkebunan Nusantara (PTPN) X terus berupaya melakukan perluasan lahan tebu. Salah satunya melalui kerjasama sewa lahan milik Kejaksaan Agung Jawa Timur. Kerjasama tersebut ditandai dengan penandatanganan perjanjian sewa oleh Direktur PTPN X, Aris Toharisman dan Kepala Kejaksaa Tinggi Jatim, Mohamad Dofir, Senin (21/9). Lahan yang disewa seluas 47 Ha berlokasi di Desa Gading dan Desa Sumengko, Kecamatan Jatirejo, Mojokerto.</p>\r\n\r\n<p style="text-align: justify;">Kerjasama sewa lahan ini berlangsung selama lima tahun hingga 20 September 2025. Nantinya, lahan ini akan ditanam tebu yang pengelolaanya ditangani langsung oleh Pabrik Gula (PG) Gempolkrep. PTPN X menargetkan mampu memproduksi 3.384 ton setiap kali masa panen, yang nantinya akan digilingkan di PG Gempolkrep.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Adanya kerjasama ini tentunya akan menambah jumlah luasan lahan dari PTPN X, yang akan berdampak pada peningkatan ketersediaan tebu giling untuk PG PTPN X,&rdquo; terang Aris Toharisman.</p>\r\n\r\n<p style="text-align: justify;">Aris optimis bahwa target-target <em>on </em><em>farm</em> pada lahan ini akan tercapai. Tercapainya target tersebut juga akan meningkatkan target produksi PG Gempolkrep. Ini juga didukung dengan evaluasi dan perbaikan pabrik yang kontinyu guna menekan <em>losses </em>dan meningkatkan efisiensi proses.</p>\r\n\r\n<p style="text-align: justify;">Aris juga mengharapkan agar seluruh perusahaan gula di Jawa Timur terus mengembangkan area tebu, mengingat tren penyusutan area terus berlangsung yang kemudian akan berdampak terhadap berkurangnya produksi gula di Jawa Timur.&nbsp;<span style="text-align: justify;">(CIN_Sekper, PUT_Sekper)</span></p>\r\n	1	0	2020-09-22 09:18:17	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-09-21_at_16.17.00.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/perluas-lahan-tebu-ptpn-x-jalin-kerjasama-dengan-kejati-jatim
196	B	PG Ngadiredjo Salurkan CSR Perbaikan Masjid 	<p>PT Perkebunan Nusantara (PTPN) X terus berkomitmen untuk menjalankan tanggung jawab sosial melalui program corporate social responsibility (CSR). Program CSR tersebut direalisasikan di seluruh unit usaha PTPN X, salah satunya di Pabrik Gula (PG) Ngadiredjo. Pada Selasa (20/1), PG Ngadiredjo menyalurkan bantuan perbaikan Masjid Al-Amin di Dusun Branggahan, Desa Kunjang, Kecamatan Ngancar, Kabupaten Kediri. Bantuan berupa uang tunai sebesar Rp 51,8 juta tersebut, diserahkan langsung oleh General Manager PG Ngadiredjo Agus Minhandoko kepada Camat Ngancar Elok Erika</p>\r\n\r\n<p>&quot;Kami telah menyalurkan bantuan kepada masyarakat di Dusun Branggahan, Desa Kunjang, Kecamatan Ngancar, Kabupaten Kediri untuk perbaikan Masjid Al-Amin sebesar Rp51,8 juta,&quot; terang Agus</p>\r\n\r\n<p>Sementara itu, Camat Ngancar Elok Erika menambahkan dirinya memberikan apresiasi dan ucapan terima kasih kepada PTPN X dan PG Ngadiredjo yang telah menyalurkan program CSR untuk perbaikan Masjid Al-Amin. Harapannya program CSR ini dapat terus berlanjut kepada masyarakat di sekitar PG Ngadiredjo. (Put_Sekper, Cin_Sekper)</p>\r\n	2	0	2021-01-20 10:11:35	http://ptpn10.co.id/uploads/Masjid.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-ngadiredjo-salurkan-csr-perbaikan-masjid
149	B	PTPN X Raih 3 Penghargaan di Bidang IT	<p>PT Perkebunan Nusantara (PTPN) X kembali menyabet pengharagaan di bidang IT. Kali ini, tiga penghargaan TOP Digital Innovation Award 2020&nbsp; diterima langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo secara Tele-Awarding. PTPN X berhasil meraih penghargaan TOP Strategy and Leadership 2020, TOP Corporate Performance Overall 2020, dan TOP CEO-Chief Executive Officer 2020.&nbsp;</p>\r\n\r\n<p>Melalui Tele-Awarding, Dwi menjelaskan kepada seluruh partisipan mengenai inovasi bidang teknologi yaitu e-Farming. e-Farming yaitu aplikasi berbasis Precision Agriculture berbasis GIS (Pemetaan lahan sesuai geospatial), yang memfasilitasi pendaftaran lahan tebu secara <em>online</em> dan memberikan kemudahan dalam <em>monitoring</em> lahan dan verifikasi data.&nbsp;</p>\r\n\r\n<p>&ldquo;E-Farming telah diterapkan di PTPN Gula dan juga dapat digunakan untuk komoditi lainnya. E-Farming merupakan sumbangsih kami di bidang teknologi informasi untuk perkebunan nasional,&rdquo; ujar Dwi.&nbsp;</p>\r\n\r\n<p>Hadir juga dalam Tele-Awarding, Bambang Permadi Soemantru Brodjonegoro, Menteri Riset dan Teknologi/ Kepala Badan Riset dan Inovasi. Dalam sambutannya, Bambang menucapkan selamat kepada seluruh pemenang sekaligus meminta kepada seluruh perusahaan partisipan untuk terus melakukan transformasi digital secara berkelanjutan. Bambang juga menjelaskan bahwa adanya virus COVID-19 nantinya akan menciptakan The New Normal dan Less Contact Economy.&nbsp;<br />\r\n&nbsp;<br />\r\n&ldquo;Ini kesempatan besar bagi sektor digital untuk men-subsitusi hilangnya pertemuan secara langsung.&nbsp;&nbsp;<br />\r\nSelama musim pandemi COVID-19 kita dapat mengevaluasi apakah model video conference sudah benar-benar menggantikan pertemuan konvensional untuk menghasilkan keputusan strategis,&rdquo; terang Bambang. (CIN_Sekper, PUT_Sekper)</p>\r\n	17	1	2020-04-29 14:43:16	http://ptpn10.co.id/uploads/bos.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-raih-3-penghargaan-di-bidang-it
174	B	Sadar Pentingnya SDM, PTPN X Adakan IHT	<p>PT Perkebunan Nusantara (PTPN) X menyelenggarakan kegiatan&nbsp;<em>In House Training</em>&nbsp;(IHT) pada tanggal 7-8 Desember 2020 di Pabrik Gula Toelangan, Sidoarjo. Kegiatan ini rutin diadakan setiap tahunnya guna meningkatkan kompetensi SDM PTPN X. Kali ini, IHT mengusung tema Strategic Pengelolaan Human Capital Management. Sebanyak 26 peserta dari Bagian SDM &amp; Umum kantor pusat dan unit usaha berkesempatan langsung mendengarkan penjelasan dari Teguh Widodo, seorang Human Capital Practitioners.</p>\r\n\r\n<p>&ldquo;Penyelenggaraan IHT kali ini sebagai wujud komitmen PTPN X untuk terus mengembangkan kompetensi SDM yang dimilikinya,&rdquo; terang M. Amier Hasanoedin, Kepala Bagian SDM &amp; Umum.</p>\r\n\r\n<p>Pada IHT ini, Teguh menjelaskan beberapa materi terkait Human Capital Management, mulai dari Trend Role and Function Human Capital in Bussiness, Performance Management Effectiveness, hingga Human Capital for Holding Parenting Model<span dir="RTL">&rsquo;</span>s. Adanya IHT ini diharapkan mampu meningkatkan kompetensi peserta khususnya dalam pengelolaan SDM, sehingga seluruh pihak perusahaan dapat berkolaborasi dan bersinergi untuk kemajuan perusahaan.(Put_Sekper, Cin_Sekper)</p>\r\n	3	0	2020-12-10 13:11:33	http://ptpn10.co.id/uploads/IHT_1.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sadar-pentingnya-sdm-ptpn-x-adakan-iht
203	B	PTPN X Resmikan Nusantara Maintenance Facilities	<p><strong>Jombang</strong> &ndash; Tahun 2021, PT Perkebunan Nusantara (PTPN) X membuat inovasi dan diversifikasi bisnis jasa guna menjawab kebutuhan pasar khususnya di dunia industri. PTPN X meresmikan workshop Nusantara Maintenance Facility (NMF), Selasa (16/2) di Pabrik Gula Djombang Baru, Jombang. Peresmian dilakukan langsung oleh Direktur PTPN X, Aris Toharisman dan disaksikan secara virtual oleh Direktur Produksi dan Pengembangan Holding Perkebunan Nusantara, Mahmudi.</p>\r\n\r\n<p>NMF adalah sebuah diversifikasi bisnis jasa yang menawarkan pelayanan, perawatan, serta pemenuhan <em>sparepart,</em> baik untuk pabrik gula sesaudara dan pabrik gula di PTPN lain, maupun industri lain sejenis. Jenis perawatan yang ditawarkan meliputi inverter, <em>NonDestructive Testing</em> (NDT), <em>balancing</em>, <em>allignment</em>, dan Pesawat Uap Bejana Tekan(PUBT). NMF juga menyediakan jasa pembuatan <em>sparepart</em> seperti <em>cane cutter,</em> cakar ampas, as pen rantai, dan lain-lain.</p>\r\n\r\n<p>&ldquo;Adanya Nusantara Maintenance Facilities atau NMF diharapkan mampu meningkatkan daya saing PTPN X ke depan. NMF dilengkapi dengan peralatan canggih dan didukung dengan teknisi yang telah tersertifikasi,&rdquo; jelas Aris.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Teknisi yang tergabung di NMF telah memiliki berbagai sertifikasi, antara lain Tim NDT telah tersertifikasi NDT level II &amp; Ultrasonic Test dan Tim PUBT telah tersertifikasi AK3 PUBT Disnakertrans. Peralatan canggih yang dimiliki NMF meliputi laser allignment dengan hasil keakuratan yang tinggi, digital balancing untuk memudahkan aplikasi di on site, thickness meter untuk assessment tube boiler, hingga plasma cutting.</p>\r\n\r\n<p>Aris menambahkan, keunggulan yang dimiliki tersebut mampu membuat NMF unggul dan mampu bersaing dengan bisnis sejenis lainnya. Ke depannya, NMF akan terus menjaring pasar lebih luas, khususnya di PTPN Group maupun industri sejenis lainnya. (Put_Sekper, Cin_Sekper)</p>\r\n	5	0	2021-02-16 13:40:47	http://ptpn10.co.id/uploads/Foto_NMF.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-resmikan-nusantara-maintenance-facilities
158	B	Peduli COVID-19, PTPN X Berikan Bantuan APD untuk RS di Jember	<p>PT Perkebunan Nusantara X (PTPN X) melalui unit usaha Bobbin dan BSB Group berikan bantuan APD secara langsung kepada RSUD Dr. Soebandi &nbsp;Jember, yang merupakan RS rujukan dalam penanganan kasus Covid-19 di Jember, Selasa (23/6). Adapun jenis APD yang diberikan adalah berupa masker KN95, sepatu boot, masker surgery, dan lain sebagainya.</p>\r\n\r\n<p>&ldquo;Total bantuan yang diberikn senilai 319 juta. Harapannya bantuan ini dapat brmanfaat bagi tenaga medis agar bekerja lebih aman dan selamat dari penularan,&rdquo; ungkap Syaifuddin Zuhri, GM Kebun Kertosari.</p>\r\n\r\n<p>Mengingat betapa pentingnya peran tim tenaga medis yang mejadi garda terdepan, PTPN X berinisiatif untuk memberikan bantuan APD yang ideal sebagai kebutuhan utama tim medis untuk mencegah dan melindungi tubuh</p>\r\n\r\n<p>Tak hanya pemberian APD, PTPN X juga terus berupaya memberikan manfaat kepada negeri di tengah kondisi pandemi seperti ini melalui berbagai kegiatan CSR diantaranya adalah pemberian bantuan gula; pembuatan posko pusat informasi COVID-19 di Jombang, Kediri, dan Jember; dan lain-lain. (Alma_UB, CIN_Sekper)</p>\r\n	9	0	2020-06-24 08:58:51	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-06-24_at_08.49.18.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/peduli-covid-19-ptpn-x-berikan-bantuan-apd-untuk-rs-di-jember
170	B	PTPN X Raih Tiga Penghargaan di Bidang IT	<p style="text-align: justify;">Penerapan teknologi informasi di PT Perkebunan Nusantara (PTPN) X terbukti memberikan pengaruh signifikan terhadap kemajuan perusahaan. Hal ini ditunjukkan dengan keberhasilan PTPN X dalam meraih tiga penghargaan sekaligus dalam ajang TOP Digital Awards Tahun 2020, yaitu Top Digital Transformation Readiness 2020, Top Digital Implementation 2020 On Agriculture Section Level Stars 4, dan Top Leader On Digital Implementation 2020, Selasa (21/12). Penghargaan diterima langsung oleh Aris Toharisman, Direktur PTPN X.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">PTPN X terus meningkatkan inovasi di bidang teknologi informasi. Setelah sebelumnya sukses dengan sistem e-Farming, PTPN X memiliki Investani. Investani sendiri merupakan sistem <em>crowdfunding</em> dengan skema pembiayaan berasal dari pengumpulan dana para investor untuk operasional proyek tertentu yang dijalankan sesuai ketentuan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih kepada seluruh karyawan karena mendukung implementasi teknologi informasi di PTPN X. Semoga penghargaan ini menjadi pelecut semangat kita untuk terus meningkatkan kinerja,&rdquo; terang Aris. (CIN_Sekper, PUT_Sekper)</p>\r\n	3	0	2020-12-23 13:22:46	http://ptpn10.co.id/uploads/TOP_IT_2020.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-raih-tiga-penghargaan-di-bidang-it
183	B	PG Tjoekir Bagikan 7.382 Paket Sembako	<p>PT Perkebunan Nusantara (PTPN) X melalui unit usahanya Pabrik Gula (PG) Tjoekir terus menunjukkan kepeduliannya terhadap masyarakat sekitar di masa pandemi ini. Selasa (3/11) PG Tjoekir membagikan bantuan sembako bagi warga di Desa Jatirejo, Sukir, dan Krawon Jombang, Jawa Timur. Sejumlah 7.382 buah sembako yang berisi beras, minyak goreng, dan gula dibagikan ke masyarakat.</p>\r\n\r\n<p>Sembako diserahkan secara langsung oleh GM PG Tjoekir, Mohamad Kholiq. Bantuan ini diharapkan dapat meringankan beban masyarakat khususnya dalam menghadapi masa pandemi COVID-19 ini. Sembako ini juga sebagai bentuk terima kasih manajemen PG Tjoekir atas dukungan masyarakat kepada PG Tjoekir.</p>\r\n\r\n<p></p>\r\n\r\n<p>&ldquo;Kami berharap bantuan dapat bermanfaat bagi warga desa. Semoga PG Tjoekir dapat terus memberikan manfaat kepada warga sekitar,&rdquo; ujar Kholiq. (Silvi_PMMB, Put_Sekper)</p>\r\n	1	0	2020-11-04 15:23:56	http://ptpn10.co.id/uploads/Tjoekir.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-tjoekir-bagikan-7382-paket-sembako
159	B	Bertekad Terus Tumbuh, PTPN X Adakan Exit Meeting Assesment GCG 2019	<p style="margin-left:.25in;">Surabaya &ndash; Setelah beberapa bulan lalu kegiatan <em>Entry Meeting Assesment GCG </em>2019 resmi digelar, kini PT Perkebunan Nusantara (PTPN) X mengadakan <em>Exit Meeting Assesment GCG </em>2019 untuk memperoleh evaluasi dan putusan-putusan yang strategis guna kemajuan perusahaan kedepannya dari Tim Asesor GCG BPKP perwakilan Jawa Timur pada Kamis (25/6) di Ruang Rapat Kresna.</p>\r\n\r\n<p style="margin-left:.25in;">Kegiatan yang dihadiri oleh Direksi PTPN X, Tim Asesor GCG BPKP Jawa Timur, pemegang saham BUMN dan Holding ini ditujukan untuk memperoleh hasil penilaian mutu dan kemajuan yang terjadi di PTPN X melalui penerapan prinsip-prinsip <em>Good Corporate Governance </em>(GCG) tahun 2019. Seperti yang telah dipaparkan sebelumnya bahwa GCG ini bukan hanya soal <em>Integrity </em>dan <em>Fairness </em>tetapi juga ada kompetensi dan <em>Managerial Capacity </em>di dalamnnya.</p>\r\n\r\n<p style="margin-left:.25in;">Berdasarkan akumulasi penilaian dari Tim Asesor GCG BPKP perwakilan Jawa Timur, PTPN X berhasil mendapatkan nilai 84,97% kategori perusahaan dengan predikat &ldquo;Baik&rdquo; dan merupakan kebanggaan PTPN X terus mengalami peningkatan dari tahun ke tahun karena PTPN X percaya bahwa penerapan prinsip GCG / tata kelola yang baik dapat meningkatkan kinerja perusahaan dan nilai ekonomi jangka panjang bagi para investor dan pemangku kepentingan (stakeholder).</p>\r\n\r\n<p style="margin-left:.25in;">&ldquo;Hasil penilaian ini akan menjadi bahan untuk PTPN X terus melakukan inovasi dan pengembangan guna memperbaiki kekurangan yang ada dan terpacu untuk meningkatkan kualitas perusahaan dengan harapan bisa menjadi <em>benchmark </em>bagi perusahaan-perusahaan lainnya, &ldquo; ujar Aris Toharisman, Direktur PTPN X. (Alma_UBR, Put_Sekper)</p>\r\n	7	0	2020-06-26 15:04:39	http://ptpn10.co.id/uploads/GCG.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/bertekad-terus-tumbuh-ptpn-x-adakan-exit-meeting-assesment-gcg-2019
201	B	Sosialisasi Dan Peragaan Fogging di Gudang Pengolah	<p style="text-align: justify;">Jelang musim tanam tembakau tahun 2021/2022, pasca melakukan aktivitas rutin kedinasan di jam kerja, Pusat Penelitian Tembakau Jember mengadakan Sosialisasi Peragaan <em>Fogging </em>kepada tim teknis kedua kebun. &ldquo;Kami menyosialisasikan peragaan <em>fogging </em>&nbsp;kepada 14 orang tim teknis gudang pengolah sekira jam 19 hingga jam 21 malam di Gudang Pengolah Ajong,&rdquo; papar Iwan Budianto, SP Kepala Pusat Penelitian Tembakau Jember-Klaten. Mereka, lanjutnya, terdiri dari Manajer Pengolah Kebun Ajong Gayasan dan Kebun Kertosari, Kepala Urusan QA (<em>Quality Assurance</em>) dan Kepala Urusan Produksi Tembakau dari Kantor Pusat, asisten manajer, asisten muda, dan pelaksana&nbsp; dari kedua kebun yang berlokasi di Jember ini.</p>\r\n\r\n<p style="text-align: justify;">Mantan Manajer Tanaman Kebun Kertosari ini menambahkan bahwa penyelenggaraan sosialisasi ini juga sebagai tindak lanjut arahan BoM (<em>Board of Management</em>) untuk menerapkan <em>Cost Reduction Program</em>tanpa menurunkan produksi dan kualitas. Item-item pekerjaan dalam<em>fogging </em>&nbsp;akan di-<em>breakdown</em> lagi efisiensi dan efektifitasnya sehingga material dan SDM yang digunakan lebih terukur.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Kegiatan proteksi hama di gudang pengolah tembakau ada tiga, yakni <em>fogging </em>, fumigasi, dan <em>spraying</em>. Untuk pertemuan perdana ini kita fokus mendiskusikan <em>fogging </em>,&rdquo; terang Vardianata Yoedistira Virdawan selaku pemandu dari Pusat Penelitian Tembakau Jember yang memberikan arahan dan penjelasan teknis.</p>\r\n\r\n<p style="text-align: justify;">Sosialisasi ini, lanjut Nana-sapaan Vardianata, bertujuan untuk memahami aplikasi <em>fogging </em>sesuai SOP, mendapatkan standar dosis obat dan waktu aplikasi <em>fogging </em>&nbsp;di delapan gudang pengolah milik kedua kebun. <em>Lay out</em> dan luas gudang juga turut mempengaruhi dosis yang digunakan sekaligus waktu <em>fogging </em>.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;SOP yang dimaksud adalah SOP pada saat kondisi gudang kosong dan gudang sudah terisi produk,&rdquo; ujar Nana.</p>\r\n\r\n<p style="text-align: justify;">Masih menurut Kasie Proteksi &amp; Monitoring, <em>outcome </em>yang kami harapkan adalah adanya data <em>lay&nbsp; out</em> dan luas dari delapan gudang yang akan menjadi dasar untuk menentukan <em>improvement </em>SOP <em>Fogging </em>&nbsp;berikut peta jalan operatornya saat melakukan <em>fogging </em>&nbsp;di dalam maupun di luar gudang pengolah. (Okta PI_Pusat Penelitian Tembakau Jember, PUT_Sekper)</p>\r\n	6	0	2021-02-06 12:54:56	http://ptpn10.co.id/uploads/sosialisasi_fogging.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sosialisasi-dan-peragaan-fogging-di-gudang-pengolah
140	B	Tingkatkan Efektivitas Kerja, PTPN X Lakukan Restrukturisasi Organisasi	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X kembali melakukan restrukturisasi organisasi guna penyegaran dan peningkatab efektivitas pekerjaan. Restrukturisasi kali ini berdasarkan rekomendasi dari Holding Perkebunan PTPN III (Persero). Saat ini, struktur organisasi PTPN X dirampingkan menjadi 10 bagian setelah sebelumnya ada 13 bagian.</p>\r\n\r\n<p style="text-align: justify;">Restrukturisasi organisasi ditandai dengan penandatanganan tugas pokok dan fungsi bagian serta penyerahan SK kepada pejabat puncak yang menjabat, Jumat (13/6). Acara dihadiri langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo dan Direktur Operasional, Aris Toharisman serta selurh pejabat puncak PTPN X.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Perubahan struktur organisasi ini melalui proses yang panjang, mulai dari <em>job analysis</em> dan juga <em>benchmarking</em> ke perusahaan lain. Perubahan ini tentunya juga berdampak pada tatanan yang ada di pabrik gula. Sehingga menjadi penting untuk setiap pejabat puncak memahami pekerjaannya masing-masing,&rdquo; ungkap Dwi.</p>\r\n\r\n<p style="text-align: justify;">Setelah serah terima jabatan, acara dilanjutkan dengan penjelasan mengenai tugas masing-masing bagian serta rapat koordinasi antara Direksi dan Pejabat Puncak. (CIN_Sekper, PUT_Sekper)</p>\r\n	23	0	2020-03-13 14:18:06	http://ptpn10.co.id/uploads/Restrukturisasi_SO.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tingkatkan-efektivitas-kerja-ptpn-x-lakukan-restrukturisasi-organisasi
142	A	Enero Sosialisasi Pencegahan Virus Corona	<p><strong>Mojokerto </strong>&ndash; Lonjakan tajam kasus Corona di Republik Indonesia per 15 Maret lalu menjadi 117 kasus (sumber: website Kementerian Kesehatan RI), menggerakkan berbagai pihak termasuk industri manufaktur seperti PT Energi Agro Nusantara (Enero) mensosialisasikan pencegahan virus Corona bagi karyawannya.</p>\r\n\r\n<p>Sosialisasi ini disampaikan Izmirta Rachman, Direktur Utama PT Enero, dihadapan para karyawan PT Enero, pada briefing <em>Sabtu Bersih, </em>(14/3) di lapangan upacara PT Enero. Karyawan dihimbau untuk menjaga kebersihan dan kesehatan masing-masing. Terutama meningkatkan sistem imun tubuh, dengan olahraga rutin, konsumsi makanan bergizi dan vitamin.</p>\r\n\r\n<p>&ldquo;Sosialisasi ini bertujuan agar para karyawan meningkatkan kesadarannya dalam menjaga diri, hidup bersih dan pola sehat sehingga mencegah tidak terjangkit virus Corona Covid-19&rdquo; ujar Eric, sapaan Izmirta Rachman</p>\r\n\r\n<p>Sebagai tindak lanjut, direncanakan upaya tanggap virus Corona di PT Enero. Upaya ini untuk melindungi keselamatan dan kesehatan karyawan termasuk tamu di area operasional perusahaan sesuai standar Human, Safety, Environment (HSE), sehingga aman dari penyebaran Virus Corona.</p>\r\n\r\n<p>Pada sosialisasi, diperagakan juga tata cara mencuci tangan yang benar untuk menghindari kotoran dan kuman. Sebagai penutup, Karyawan diminta tetap tenang dalam menghadapi penyebaran virus dan fokus pada pekerjaan (Johar/ARH_Enero, Put_Sekper)</p>\r\n	15	0	2020-03-17 08:28:00	http://ptpn10.co.id/uploads/Foto_Enero.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/enero-sosialisasi-pencegahan-virus-corona
141	B	Holding Perkebunan Nusantara Sosialisasikan E-Auction Trial	<p style="text-align: justify;">Holding Perkebunan Nusantara Group bersama dengan Kharisma Pemasaran Bersama Nusantara (KPBN) menggelar sosialiasi mengenai &ldquo;Sistem Pemasaran Komoditi Tebu (Gula) dan Tata Cara Pelaksanaan<em> E-Auction</em>&rdquo;, yang diselenggarakan di Ruang Pandu, PT Perkebunan Nusantara (PTPN) X (12/3). Sosialisasi ini diikuti sejumlah 200 orang peserta yang berasal dari PTPN VII, IX, X, XI, XII, dan XIV, pembeli gula, serta perwakilan Bulog dari beberapa wilayah yaitu Kediri, Bondowoso, Bojonegoro, dan Surakarta.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><em>Auction</em> secara elektronik adalah penjualan produk komoditi metode <em>auction</em> melalui aplikasi berbasis internet dengan penawaran secara tertulis tanpa kehadiran peserta. Selain itu, KPBN juga memaparkan prosedur penjualan lainnya yaitu <em>Bid Offer, </em>dimana penawaran produk yang berisi volume, mutu, harga dan tempat penyerahan diberikan kepada satu ataupun beberapa pembeli potensial untuk menyetujui atau menolak penawaran. Selanjutnya, <em>Long Term Supply Contract</em> (LTSC) adalah kontrak penjualan dengan jangka waktu minimal tiga bulan.</p>\r\n\r\n<p style="text-align: justify;">Untuk kedepannya, adanya penerapan sistem ini diharapkan mampu memudahkan proses penjualan komoditi gula, yaitu sistem penjualan dapat seragam, proses <em>biding </em>dapat dilakukan dengan <em>mobile, </em>waktu penyelanggaraan penjualan mampu dioptimasi, dan proses dapat berjalan disiplin, aman, serta transparan.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapannya dengan diadakan sosialisasi <em>E-Auction Trial </em>ini mampu memberikan pemahaman guna mempermudah penjualan komoditas tebu (gula) dengan cara yang aman dan efisien. Serta penjualan bisa menjadi terpusat atau melalui satu pintu,&rdquo; ujar Ery Erwin selaku Kepala Divisi Strategi Holding Perkebunan Nusantara. (Alma_UBR, CIN_Sekper)</p>\r\n	7	0	2020-03-17 08:17:38	http://ptpn10.co.id/uploads/e-_auction.jpeg\t	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/holding-perkebunan-nusantara-sosialisasikan-e-auction-trial
146	B	ENERO Support Pemkab Mojokerto  Tanggulangi COVID-19	<p><strong>Mojokerto</strong> &ndash; Pemerintah Kabupaten (Pemkab) Mojokerto dipimpin Bupati Pungkasiadi menyambangi PT Energi Agro Nusantara (PT Enero) dalam menanggulangi wabah <em>Coronavirus Diseasea 2019 </em>(COVID-19). Kunjungan ini merespon&nbsp;kelangkaan cairan disinfektan dan <em>hand</em> <em>sanitizer</em> di Mojokerto.</p>\r\n\r\n<p>Ipung, sapaan akrab Bupati, didampingi jajarannya menyampaikan Pemkab membutuhkan sekitar 40.000 liter disinfektan dan 2.000 liter cairan <em>hand sanitizer. </em>Dua bahan tersebut saat ini langka di pasaran.</p>\r\n\r\n<p>Disisi lain, Izmirta Rachman selaku Direktur Utama PT Enero, menyampaikan kondisi perusahaan dan rencana kedepannya.</p>\r\n\r\n<p>&ldquo;Saat ini stok ethanol untuk bahan baku disinfektan dan <em>hand sanitizer </em>sudah terbatas, dikarenakan pabrik sudah stop produksi. Namun tahun ini diharapkan, PT Enero bisa berproduksi maksimal tidak hanya <em>fuel</em> <em>grade</em> namun <em>industrial</em> <em>grade</em> dan <em>farmasi</em> dalam memenuhi kebutuhan masyarakat luas&rdquo; ujar Eric, sapaam Izmirta</p>\r\n\r\n<p>Tidak hanya <em>support</em> pemerintah daerah, PT Enero telah mendistribusikan bahan baku untuk <em>hand</em> <em>sanitizer</em> ke Pemerintah Kota Mojokerto, Rumah Sakit, Unit Usaha PTPN X, Klinik Kesehatan, Industri <em>hand</em> <em>sanitizer, </em>Dinas Kesehatan dll. (JHR/ARH_Enero, Put_Sekper)</p>\r\n	3	0	2020-03-30 12:04:07	http://ptpn10.co.id/uploads/Enero_Mojo.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/enero-support-pemkab-mojokerto-tanggulangi-covid-19
177	B	Tingkatan Kinerja, PTPN X Lakukan Penyegaran Manajemen 	<p>Menutup tahun 2020, PTPN X menggelar serah terima jabatan pada beberapa posisi pejabat puncak, Selasa (1/12) di Kantor Pusat PT Perkebunan Nusantara (PTPN) X. Serah terima jabatan ini guna memberikan penyegaran dalam jajaran manajemen dan atmosfer kerja di PTPN X. Acara serah terima jabatan ditandai dengan penyerahan SK oleh Direktur PTPN X, Aris Toharisman kepada pejabat puncak yang dilantik.</p>\r\n\r\n<p>&ldquo;Saya ucapkan selamat bertugas kepada seluruh pejabat puncak yang baru dilantik. Semoga amanah dan mampu mengimplementasikan nilai-nilai AKHLAK (Amanah, Kompeten, Harmonis, Loyal, Adaptif, Kolaboratif) dalam menjalankan tugasnya,&rdquo; terang Aris.</p>\r\n\r\n<p>Board of Management mengharapkan adanya manajemen baru akan memunculkan inovasi-inovasi untuk kemajuan perusahaan.&nbsp; adanya restrukturisasi organisasi ini juga akan memicu penciptaan inovasi-inovasi strategis untuk perkembangan korporat ke depannya. Selain itu, pejabat puncak yang baru dilantik diharapkan dapat memberikan kinerja terbaiknya guna proses bisnis yang lebih efektif dan efisien.</p>\r\n\r\n<p>Dengan tetap menerapkan protokol kesehatan, pejabat&nbsp;puncak yang dilantik adalah sebagai berikut:</p>\r\n\r\n<ol>\r\n\t<li>Pengangkatan Sdr. Septo Kuswitjahjono, SE sebagai Komisaris Utama PT Energi Agro Nusantara.</li>\r\n\t<li>Pengangkatan Sdr. Wakhyu Priyadi Siswosumarto, ST., MM. sebagai Komisaris PT Energi Agro Nusantara.</li>\r\n\t<li>Pemindahan Sdr. Erwin Budianto, S.T.P dari General Manager PG Djombang Baru menjadi General Manager PG Kremboong.</li>\r\n\t<li>Pemindahan &amp; Alih Tugas Sdr. Edy Purnomo, S.T.P dari Kepala Bagian Tanaman menjadi General Manager PG Gempolkrep.</li>\r\n\t<li>Pemindahan Ir. Syahrial Koto dari General Manager PG Meritjan menjadi General Manager PG Djombang Baru.</li>\r\n\t<li>Pemindahan &amp; Pengangkatan Jabatan Sdr. Akhmad Zaenal Arifin, S.P dari Manager Tanam PG Gempolkrep menjadi Pjs. General Manager PG Tjoekir.</li>\r\n\t<li>Pemindahan &amp; Alih tugas Sdr. Sugiharto Bisri, S.T dari Kepala Bagian Pengadaan &amp; Aset menjadi General Manager PG Meritjan.</li>\r\n\t<li>Pengangkatan Jabatan Sdr. Roh Sudiyanto, S.P dari Manajer Tanaman PG Pesantren Baru menjadi PJs. General Manager PG Pesantren Baru.&nbsp;</li>\r\n\t<li>Pemindahan Sdr. Agus Minhandoko, S.P., M.M dari General Manager Gempolkrep menjadi General Manager PG Ngadirejo.</li>\r\n\t<li>Pemindahan &amp; Pengangkatan Jabatan Sdr. Febri Ari Marpaung, S.P., M.M. &ndash; Manajer Tanaman PG Ngadiredjo Menjadi Pjs. Kepala Bagian Tanaman.</li>\r\n\t<li>engangkatan Jabatan Sdr. Wayan Mei Purwono, S.P. &ndash; Kepala Urusan Optimalisasi Aset Menjadi Pjs. Kepala Bagian Perencanaan Strategis.</li>\r\n\t<li>Pengangkatan Jabatan Sdr. Nanang Dwi Herriyanto, S.E. &ndash; Kepala Urusan Pengelolaan Aset Menjadi Pjs. Kepala Bagian Pengadaan &amp; Aset.</li>\r\n</ol>\r\n	0	0	2020-12-01 11:35:08	http://ptpn10.co.id/uploads/5fc5c757-ca68-4fbc-8ac9-1480e3e14fb4-Sertijab.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tingkatan-kinerja-ptpn-x-lakukan-penyegaran-manajemen
160	B	PTPN X Rombak Jajaran Manajemennya	<p>PT Perkebunan Nusantara (PTPN) X kembali melakukan penyegaran di Jajaran Pejabat Puncak &nbsp;dan Manajemen Anak Perusahaannya, Jumat (26/6). Harapannya dengan adanya pembaharuan kepemimpinan dan struktur organisasi, mampu menghadirkan atmosfer kerja yang lebih dinamis. Acara dihadiri langsung oleh Direktur PTPN X, Aris Toharisman; SEVP Operation, Dimas Eko Prasetyo; SEVP Business Support, Slamet Djumantoro. &nbsp;</p>\r\n\r\n<p>&ldquo;Kami mengikuti arahan dari pemegang saham bahwa perubuhan struktur organisasi dan nomenklatur jabatan harus segera dilakukan seiring perubahan yang dilakukan di Holding Perkebunan,&rdquo; ungkap Aris Toharisman dalam sambutannya.</p>\r\n\r\n<p>Aris meminta kepada Jajaran Manajemen yang baru ini untuk cepat tanggap dan beradaptasi dengan posisi barunya masing-masing. Diharapkan Pejabat puncak serta Direksi dan SEVP anak perusahaan yang baru dilantik untuk segera menyusun keputusan terkait pendelegasian tanggung jawab dan wewenang.&nbsp;</p>\r\n\r\n<p>&ldquo;Memang perubahan suatu keniscayaan, kepada Pejabat Puncak, serta jajaran Direksi dan SEVP yang baru dilantik kami mengucapkan selamat. Waktu tersisa di tahun 2020 harus dioptimalkan untuk mencapai target-target kita. Tantangan cukup berat karena adanya pandemi Covid-19, namun dengan inovasi saya yakin target 2020 akan bisa dicapai,&rdquo; tambah Aris</p>\r\n\r\n<p>Acara sertijab pun dilaksanakan dengan tetap mengedepankan protokol kesehatan, menggunakan masker, dan tetap menjaga jarak (<em>social distancing</em>). (PUT_Sekper, CIN_Sekper)</p>\r\n\r\n<p>Berikut Nama-Nama Direksi dan SEVP Anak Perusahaan PTPN X yang dilantik :</p>\r\n\r\n<ol>\r\n\t<li>PT. Mitratani Dua Tujuh</li>\r\n</ol>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Direktur &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Untung Moeljono</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SEVP Operation&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Edi Budiono</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SEVP Busines Support&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Arif Suhariadi</p>\r\n\r\n<ol>\r\n\t<li value="2">PT ENERO</li>\r\n</ol>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Direktur &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Izmirta Rachman</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SEVP Operation &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Puji Setiawan</p>\r\n\r\n<ol>\r\n\t<li value="3">PT Nusantara Medika Utama</li>\r\n</ol>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Direktur &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Ary Sylviati</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SEVP Operation&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Aditya Bagus Djatmiki</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SEVP Business Support&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Septo Koeswitjahjono&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berikut Nama-Nama Direksi dan SEVP Anak Perusahaan PTPN X yang dilantik :</p>\r\n\r\n<ol>\r\n\t<li>Kepala Bagian Keuangan &amp; Akuntansi&nbsp;&nbsp;&nbsp;&nbsp; : Benny Sanjaya</li>\r\n</ol>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;2. Kepala Bagian SDM &amp; Umum&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Amir Hasanoedin</p>\r\n	21	1	2020-06-26 15:16:47	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-06-26_at_14.44.00.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-rombak-jajaran-manajemennya
198	B	PTPN X Gelar Tinjauan Manajemen Integrated Manajemen System	<p>PT Perkebunan Nusantara X menggelar acara&nbsp; Rapat Tinjauan Manajemen Integrated Management System (IMS) ISO 9001:2015 dan ISO 14001:2015 dan secara virtual diikuti oleh sembilan unit usaha Pabrik Gula yang ada dibawah naungan PTPN X, Kamis(4/2).</p>\r\n\r\n<p>Kegiatan tinjauan manajemen ini bertujuan untuk mengevaluasi kinerja, risiko dan peluang, serta menjaring masukan dan rekomendasi untuk peningkatan perusahaan ke depannya. Tinjauan kali ini membahas perubahan di PTPN X yang relevan dengan implementasi IMS, seperti penerapan ISO 37001:2016 tentang Sistem Manajemen Anti Penyuapan; kepuasan pelanggan dan umpan balik dari stakeholder; pencapaian sasaran mutu dan lingkungan; hingga efektivitas pengendalian resiko.</p>\r\n\r\n<p>Berdasarkan hasil tinjauan, ke depannya PTPN X akan meningkatkan efisiensi biaya di semua bagian dan menerapkan IMS secara konsisten. Harapannya, dengan penerapan IMS, kinerja PTPN X semakin terintegrasi, efektif, dan efisien. (Put_Sekper, Cin_Sekper)</p>\r\n	6	0	2021-02-05 08:54:03	http://ptpn10.co.id/uploads/601ca516-4c20-46ff-bf35-39b8e3e14fb4-IMS.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-gelar-tinjauan-manajemen-integrated-manajemen-system
202	B	PG Djombang Baru Sumbang Air Bersih Untuk Korban Banjir	<p><strong>Jombang</strong>&nbsp;&ndash;&nbsp;Pabrik Gula (PG) Djombang Baru menyerahkan bantuan sosial kepada korban banjir di Desa Pucangsimo, Kecamatan Bandar Kedungmulyo, Kabupaten Jombang, Senin(8/2). Penyerahan bantuan diterima langsung oleh Wakil Bupati Jombang, Sumrabah.</p>\r\n\r\n<p>&quot;Kami sangat berterima kasih kepada PT Perkebunan Nusantara X dan Pabrik Gula Djombang Baru yang bersedia memberikan bantuan air bersih bagi warga terdampak banjir di Desa Pucangsimo ini. Kebutuhan air bersih memang salah satu hal pokok yang kami perlukan disini.&rdquo; ujar Sumrabah.</p>\r\n\r\n<p>Bantuan ini diharapkan dapat membantu meringankan warga terdampak musbiah banjir. Ke depan, PG Djombang Baru terus berupaya memberikan manfaat kepada masyarakat sekitar wilayah kerjanya. (Put_Sekper, Cin_Sekper)</p>\r\n	2	0	2021-02-09 14:52:01	http://ptpn10.co.id/uploads/60223eca-ce3c-41a1-9684-487ce3e14fb4-Jombang.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-djombang-baru-sumbang-air-bersih-untuk-korban-banjir
144	B	Sinergi Enero NMU Cegah Virus Corona	<p>Merebaknya kasus virus Corona (COVID-19) di Indonesia, menjadi perhatian serius berbagai pihak tidak terkecuali PT Energi Agro Nusantara (Enero). Tindak lanjut sosialisasi pencegahan COVID-19 dilanjutkan PT Enero dengan sinergi antar anak perusahaan PTPN X, PT Nusantara Medika Utama (PT NMU), anak perusahaan yang bergerak di bidang kesehatan atau Rumah Sakit. Sinergi dirupakan penyuluhan penanganan COVID-19 oleh tenaga medis PT NMU pada seluruh karyawan di PT Enero, kemarin (18/3).</p>\r\n\r\n<p>Melalui tenaga medis PT NMU diberikan edukasi yang bertopik gejala klinis dan pengobatan COVID-19. Secara klinis, COVID-19 terbilang berbahaya, karena penyebarannya yang cepat dengan tingkat kematian 2-3%. Penularan COVID-19 salah satunya melalui transmisi manusia ke manusia, dalam bentuk transmisi droplet/percikan partikel &lt; 5&micro;m melalui batuk, bersin dan bicara. Maka pencegahan dapat dilakukan dengan penggunaan masker bagi orang sakit dan etika batuk. Faktor lain, penyebab penularan dengan menyentuh benda yang terdapat virus lalu dilanjutkan sentuhan di bagian muka. Itu sebabnya, diperlukan cara cuci tangan yang benar. Kita cukup menghafal tahapan cuci tangan dari TElapak tangan, PUNGgung tangan, SELA&ndash;sela jari, gerakan mengunCI, bersihkan iBU jari, dan terakhir bersihkan ruas-ruas kuKU atau biasa disingkat Tepung Selaci Buku.</p>\r\n\r\n<p>Direksi PT Enero, menyambut baik aktivitas penyuluhan ini. Diharapkan informasi ini juga dapat disebarluaskan ke berbagai pihak sebagai upaya dan kepedulian bersama menangani COVID-19.</p>\r\n\r\n<p>&ldquo;Harapannya, penyuluhan ini dapat bermanfaat tidak hanya bagi karyawan, melainkan disebarluaskan pada keluarga dan lingkungan masyarakat. Kedepannya diperlukan sinergi lebih lanjut dengan NMU untuk case-case lainnya&rdquo; ujar Dimas Eko Prasetyo, Direktur PT Enero</p>\r\n\r\n<p>Sebagai tindak lanjut sinergi, hari ini PT Enero melakukan sterilisasi di kantor NMU dengan desinfektan, sebagai upaya meminimalisir potensi-potensi bakteri maupun virus di area kerja (MJF/ARH_Enero, Put_Sekper)</p>\r\n	15	0	2020-03-19 12:09:00	http://ptpn10.co.id/uploads/Foto_Enero_1.png	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/sinergi-enero-nmu-cegah-virus-corona
124	A	Ketika Kambing Doyan Campuran Yeast Mud	<p><strong>Tulungagung </strong>&ndash; Nafsu makan kambing meningkat. Inilah kesimpulan sementara yang diperoleh Achmad Joko Sulistiyono, peternak kambing di Tulungagung, setelah diujicobakan pakan ternak dengan campuran <em>yeast mud</em>, hasil samping PT. Energi Agro Nusantara (Enero). Perwakilan Enero bersama Penyuluh Pertanian dan Peternak lainnya bersama-sama juga meninjau <em>trial</em> ini, minggu lalu (19/2) di Kawasan Kampung Gayatri, Tulungagung.</p>\r\n\r\n<p>&ldquo;Kambing semakin lahap ketika diberikan <em>yeast mud</em> di campuran pakan ternak, terlebih aromanya yang harum, menambah nafsu kambing&rdquo; ujar Joko</p>\r\n\r\n<p>Pemberian <em>yeast</em> <em>mud </em>masih dalam porsi kecil. Eskalasi campuran dipertimbangkan untuk diberikan, setelah melihat perkembangan bobot kambing dan faktor lainnya. <em>Yeast mud </em>dicampur dengan bahan-bahan eksisting seperti tepung dan ampas tahu sebagai pakan ternak kambing.</p>\r\n\r\n<p>Bagi anda belum mengetahui <em>yeast mud</em>, <em>yeast mud </em>adalah sisa hasil samping proses produksi bioethanol. Biasa dikenal dengan ragi untuk proses fermentasi. Ragi yang sudah tidak terpakai dalam proses memiliki kandungan protein (dalam bentuk <em>crude </em>protein) yang tinggi berkisar 10-20% (hasil uji laboratorium independen).</p>\r\n\r\n<p>Pemanfaatan ragi untuk pakan ternak sendiri sudah pernah diteliti sebelumnya. Seperti hasil penelitian Elisabete A. De Nadai Fernandes, University of Sau Paulo, menyatakan melimpahnya derivatif <em>yeast </em>pada produksi bioethanol di Brazil menjadi potensi untuk diformulasikan dalam pakan ternak. Kandungan memadai, namun perlu diperhatikan dosis pemakaian dengan memperhatikan maksimal toleransi. Sedangkan untuk ragi aktif, Elizabeth Wina, Balai Penelitian Ternak, menyebutkan pemberian ragi sebagai pakan imbuhan kepada ternak ruminansia dapat meningkatkan produksi susu rata-rata 4,3% dan penambahan bobot badan sapi rata-rata 8,7%. Pemberian ragi mampu memanipulasi rumen dengan meningkatkan populasi bakteri pemecah serat sehingga dapat meningkatkan kecernaan dan bobot badan (Ariel_Enero,PUT_Sekper).</p>\r\n	12	0	2020-02-26 11:31:34	http://ptpn10.co.id/uploads/5e55f3d5-90f0-4556-a129-3170e3e14fb4-foto.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ketika-kambing-doyan-campuran-yeast-mud
137	B	HUT ke-24 PTPN, Tiap Bagian Sampaikan Komitmennya	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X merayakan Hari Ulang Tahun ke-24 PTPN Group&nbsp;tahun dengan penuh semangat membangun perusahaan. Hal ini disampaikan oleh Direktur Utama PTPN X agar semua unit menyampaikan komitmennya di depan seluruh karyawan yang hadir di Ruang Pandu Kantor Pusat PTPN X.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Dalam sambutannya, Direktur Utama PTPN X, Dwi Satrio Annurogo&nbsp;menyampaikan Tahun 2019, PTPN X meraih laba kurang lebih sebesar Rp 94 milliar dan angka tersebut melebihi target RKAP.&nbsp;</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&quot;Hari ini, PTPN X dan Holding Perkebunan memasuki usia ke-24 tahun, untuk diketahui bahwa usia 24 tahun ini adalah masa keemasan. Dimana, semuanya sudah terintrepretasi dalam semua kegiatan,&quot; kata Dwi di depan seluruh karyawan yang merayakan HUT ke-24, Rabu&nbsp;(11/03).</p>\r\n\r\n<p style="text-align: justify;">Di tahun 2019 juga, sambung Dwi, Rating PTPN X berada di posisi BBB+ yang artinya hanya tinggal satu langkah lagi untuk memperoleh rating A. Untuk bisa mendapatkan rating A merupakan cita-cita bersama dan semoga di Tahun 2020 ini, PTPN X diberi kemudahan untuk merealisasikannya.</p>\r\n\r\n<p style="text-align: justify;">&quot;Dari 14 PTPN, hanya ada tiga&nbsp;PTPN yang <em>sustain</em> dan PTPN X adalah salah satu dari tiga&nbsp;PTPN yang <em>sustain</em> tersebut,&quot; ungkapnya dan mendapatkan sambutan tepuk tangan dari seluruh karyawan.</p>\r\n\r\n<p style="text-align: justify;">Dwi juga mengingatkan meskipun saat ini PTPN X berada dalam posisi <em>sustain</em>, bila PTPN X hanya jalan di tempat dan tidak melakukan inovasi maka PTPN X bisa berada di posisi yang tidak aman.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Kita harus menunjukkan bahwa PTPN X bisa unggul. Untuk itu, saya minta setiap unit atau divisi untuk menyampaikan komitmennya di depan dan menempel komitmen tersebut di ruangan agar setiap karyawan akan selalu ingat akan janji dan komitmennya untuk kemajuan perusahaan,&quot; paparnya.</p>\r\n\r\n<p style="text-align: justify;">Sebelumnya, seluruh karyawan PTPN X mengikuti upacara bendera peringatan HUT Ke-24 PTPN Group. Upacara ini juga diikuti oleh PTPN XI dan PTPN XII. (Red3, CIN_Sekper)</p>\r\n	26	0	2020-03-11 11:06:39	http://ptpn10.co.id/uploads/Tumpengan_HUT_PTPN.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/hut-ke-24-ptpn-tiap-bagian-sampaikan-komitmennya
194	B	PTPN X Gelar Kick Off Meeting dan Awareness IMS	<p>PT Perkebunan Nusantara (PTPN) X mengadakan Kick Off Meeting dan Awareness Penerapan Sistem Manajemen Terintegrasi ISO 9001: 2015 dan ISO 14001:2015, Selasa (12/1). Acara ini dihadiri oleh Board of Management, Pejabat Puncak, dan Kepala Urusan serta Manajer PTPN X. Sistem Manajemen Terintegrasi atau biasa dikenal dengan istilah&nbsp;<em>Integrated Management System</em>&nbsp;(IMS), biasanya diterapkan di perusahaan-perusahaan yang memiliki komitmen besar terhadap sistem &nbsp;pengelolaan kualitas produk dan layanan, lingkungan, K3, IT, energi dan lain sebagainya.</p>\r\n\r\n<p>Penerapan sistem IMS ini sepenuhnya bertujuan untuk mendukung operasional dan bisnis di PTPN X termasuk metode produksi dan perkembangan teknologi yang relevan, seperti Sistem Manajemen Mutu ISO 9001 dan Sistem Manajemen Lingkungan ISO 14001 yang menjadi tema besar Kick Off Meeting kali ini. Harapannya adalah dengan penerapan sistem ini dapat membantu PTPN X untuk dapat mengelola berbagai sistem manajemen yang ada secara terintegrasi, sehingga kinerja perusahaan akan lebih efektif dan efisien. (Put_Sekper, Cin_Sekper)</p>\r\n	8	0	2021-01-13 08:58:29	http://ptpn10.co.id/uploads/Kick_Off_Meeting.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-gelar-kick-off-meeting-dan-awareness-ims
200	B	PTPN X Salurkan CSR Untuk Renovasi Masjid di Jember	<p class="s3" style="margin: 0px 0px 8px; line-height: 1.8; direction: ltr; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Sebagai wujud tanggung jawab sosialnya,&nbsp;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">PT Perkebunan Nusantara (PTPN) X&nbsp;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">menyalurkan dana Corporate Social Responsibility (CSR) untuk renovasi Masjid Al Fitrah, Ajung, Jember. Renovasi masjid ini dilakukan sejak Agustus Tahun 2020 sampai dengan Januari Tahun 2021. Peresmian renovasi masjid yang telah selesai dilakukan langsung oleh GM Kebun Ajong Gayasan, Dwi Aprilia Sandi, Sabtu (6/2).&nbsp;</span></span></p>\r\n\r\n<p class="s3" style="margin: 0px 0px 8px; line-height: 1.8; direction: ltr; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"></p>\r\n\r\n<p class="s3" style="margin: 0px 0px 8px; line-height: 1.8; direction: ltr; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Total dana CSR yang disalurkan sebesar 80 juta rupiah. Renovasi masjid meliputi pemasangan kanopi dan pagar besi, hingga pembuatan papan nama masjid.&nbsp;</span></span></p>\r\n\r\n<p class="s3" style="margin: 0px 0px 8px; line-height: 1.8; direction: ltr; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">&ldquo;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Masjid Al Fitrah merupakan masjid di sekitar wilayah kerja Kebun Ajong Gayasan dan sering digunakan oleh masyarakat sekitar. Harapannya, renovasi masjid ini dapat meningkatkan kenyamanan bagi masyarakat yang beribadah di masjid,</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">&rdquo;&nbsp;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">terang Sandi.&nbsp;</span></span></p>\r\n\r\n<p class="s3" style="margin: 0px 0px 8px; line-height: 1.8; direction: ltr; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Sandi menjelaskan, saat ini Kebun Ajong Gayasan tengah mempersiapkan tanam perdana tembakau tahun 2021. Ia meminta dukungan dari seluruh masyarakat sekitar untuk kelancaran tanam perdana tembakau sehingga dapat mencetak keuntungan. Kebun Ajong Gayasan mampu menyalurkan dana CSR untuk masyarakat sekitar dalam berbagai bentuk kegiatan. (CIN_Sekper, PUT_Sekper)</span></span></p>\r\n	4	0	2021-02-06 12:03:37	http://ptpn10.co.id/uploads/AF493522-6835-4ACB-95C4-92E59F56DF35.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/PTPN-X-Salurkan-CSR-Untuk-Renovasi-Masjid-di-Jember
176	B	Jamin Pasok BBT, PTPN X Tanam Perdana Lahan Agroforestry	<p class="s6" style="margin: 0px 0px 8px; line-height: 1.38; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Guna menjaga keajegan pasok Bahan Baku Tebu (BBT), PT Perkebunan Nusantara (PTPN) X secara kontinyu menggarap&nbsp;program Agroforestry dengan Perum Perhutani Divisi Regional Jawa Timur selama empat tahun terakhir. Rabu (2/12), PTPN X kembali melakukan melakukan tanam perdana seluas 50 Ha di Tenggerejo, Lamongan, yang dihadiri oleh Direktur PTPN X Aris Toharisman, SEVP Operation PTPN X Dimas Eko Prasetyo, dan Administratur KPH Mojokerto Suratno.&nbsp;</span></span></p>\r\n\r\n<p class="s6" style="margin: 0px 0px 8px; line-height: 1.38; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Program Agroforestry telah terbukti memberikan tambahan pasok Bahan Baku Tebu (BBT) secara siginifikan ke pabrik gula PTPN X pada Musim Giling Tahun 2020 ini. Salah satunya adalah tambahan pasok BBT sebesar 2.712 Ton untuk PG Lestari. Harapannya, penambahan pasok BBT secara signifikan tersebut akan kembali terjadi pada Musim Giling Tahun 2021.&nbsp;</span></span></p>\r\n\r\n<p class="s6" style="margin: 0px 0px 8px; line-height: 1.38; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s7" style="line-height: 14.399999618530273px; direction: rtl; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">&ldquo;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Program Agroforestry memberikan dampak signifikan untuk penambahan pasok BBT ke pabrik gula dengan rendemen antara 7-8%. Selain itu, program Agroforestry ini juga sebagai salah satu upaya memberdayakan masyarakat desa hutan untuk bersinergi memanfaatkan sumberdaya hutan,</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">&rdquo;&nbsp;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">terang Aris.&nbsp;</span></span></p>\r\n\r\n<p class="s6" style="margin: 0px 0px 8px; line-height: 1.38; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Varietas yang ditanam pada lahan Tenggerejo adalah Bululawan</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">g</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">, dimana nantinya akan digilingkan seluruhnya ke Pabrik Gula (PG)</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">&nbsp;Gempolkrep</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">&nbsp;Mojokerto pada musim giling mendatang. Sebagai upaya tindak lanjut tanam perdana ini, PTPN X juga akan melakukan&nbsp;</span></span><span class="s8" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-style: italic; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">monitoring&nbsp;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">untuk melihat ketepatan perawatan tanaman tebu.</span></span></p>\r\n\r\n<p class="s6" style="margin: 0px 0px 8px; line-height: 1.38; text-align: justify; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 18px;"><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Total luasan Agroforestry yang telah tertanam adalah sebesar 201.494 Ha untuk PG Gempolkrep dengan KPH Mojokerto, 60,067</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">&nbsp;</span></span><span class="s5" style="line-height: 14.399999618530273px; font-family: &quot;Palatino Linotype&quot;; font-size: 12px;"><span class="bumpedFont15" style="line-height: 21.600000381469727px; font-size: 1.5em;">Ha untuk PG Djombang Baru dengan KPH Bojonegoro, dan 53,815 Ha untuk PG Lestari dengan KPH Jombang. Ke depannya, akan diadakan penanaman tanaman tebu kembali pada lahan seluas 128,7 Ha untuk PG Modjopanggoong dengan KPH Blitar. (CIN_Sekper, PUT_Sekper)</span></span></p>\r\n	2	0	2020-12-03 09:11:29	http://ptpn10.co.id/uploads/A910CA13-5C2D-4D42-9E3A-57B6BAC5D446.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/jamin-pasok-bbt-ptpn-x-tanam-perdana-lahan-agroforestry
152	B	PTPN X Salurkan CSR Bedah Rumah di Jember	<p style="text-align: justify;">Jumat (15/05), kegiatan bedah rumah tak layak huni kembali dilakukan oleh PT Perkebunan Nusantara X (PTPN X) melalui program CSR-nya. Pembedahan&nbsp; rumah tak layak huni ini terletak di Desa Gempal Kecamatan Pakusari Jember, tak jauh dari Kebun Kertosari, salah satu unit usaha PT PTPN X. Sebelumnya PTPN X telah melakukan bedah rumah di Kediri pada 12 Mei lalu.</p>\r\n\r\n<p style="text-align: justify;">Kali ini, PTPN X menggelontorkan dana sebesar 38 juta rupiah untuk masing-masing rumah, yang proses pembangunannya memakan waktu kurang lebih lima minggu. Prosesi penyerahan bedah rumah ini dilakukan secara langsung oleh Direktur Utama PTPN X Dwi Satriyo Annurogo, Sekper &amp; PKBL Suryanto, Jajaran Manajemen Kebun Kertosari, serta dihadiri oleh Kepala Desa Gempal Kecamatan Pakusari.</p>\r\n\r\n<p style="text-align: justify;">Program CSR ini merupakan bentuk rasa terima kasih kepada warga Desa Pakusari atas dukungannya selama ini sehingga Kebun Kertosari bisa beroperasi hingga saat ini dan dapat memberikan manfaat yang sebesar-besarnya untuk lingkungan sekitar.</p>\r\n\r\n<p style="text-align: justify;">&quot;Semoga kegiatan CSR Bedah Rumah ini dapat bermanfaat dan dapat meningkatkan kesejahteraan pemilik rumah. Semoga PTPN X khususnya Kebun Kertosari dapat terus memberikan manfaat melalui dana CSR-nya untuk berbagai kegiatan bagi masyarakat,&quot; tambah Dwi.</p>\r\n\r\n<p style="text-align: justify;">Kebun Kertosari sendiri telah memulai tanam perdananya pada 9 Mei yang lalu dan optimis akan mampu mencapai target - target dengan baik. Program CSR lainnya juga telah dilakukan oleh PTPN X khususnya di sekitar wilayah kerja. Contohnya, pengiriman tim tanggap bencana, pembangunan rumah ibadah, pembangunan irigasi, pemberian bantuan pengobatan, dan pelatihan kepada petani. Selain itu PTPN X juga memberikan bantuan terkait pencegahan COVID-19, yaitu penyemprotan disinfektan, pembagian masker, pendirian 3 posko Pusat Informasi COVID-19 di Kediri, Jombang, dan Jember, serta bantuan sembako kepada masyarakat terdampak. (Alma_UB_CIN_Sekper)</p>\r\n	7	0	2020-05-16 12:08:30	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-05-16_at_12.02.36_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-salurkan-csr-bedah-rumah-di-jember
197	B	PTPN X Lakukan Tanam Perdana Pemantapan Teknis MTT 2021/2022	<p>Sebelum memulai kegiatan budidaya tembakau di lahan yang umumnya dimulai sekitar awal April di setiap tahunnya, Kebun Ajong Gayasan dan Kebun Kertosari melakukan aktivitas pemantapan teknis. Pemantapan teknis ini telah berlangsung selama empat tahun. Namun kali ini ada yang berbeda. <span dir="RTL">&ldquo;</span>Jika pelaksanaan pemantapan teknis di tahun-tahun sebelumnya, tiap kebun melakukan secara terpisah, maka pada tahun 2021 ini penyelenggaraannya dijadikan satu <em>plus</em> penunjukan Pusat Penelitian (Puslit) Tembakau Jember sebagai koordinatornya,&rdquo; terang Iwan Budianto selaku Kepala Pusat Penelitian Tembakau Jember.</p>\r\n\r\n<p>Lebih lanjut Iwan menjelaskan bahwa kegiatan pemantapan teknis ini dilakukan di salah satu lahan milik Kebun Ajong Gayasan Mulai Januari hingga Maret 2021. Pembukaan telah dimulai minggu lalu (25/1) oleh GM Kebun Ajong Gayasan dan hari ini, Senin (1/2) tepat dilakukan tanam perdana. Kegiatan kolaboratif ini melibatkan seluruh asisten muda (asmud), mandor, dan asisten manajer (asman) di kedua kebun dan puslit. Sejumlah 1.650 pohon di lahan seluas sekitar 700 meter persegi.</p>\r\n\r\n<p>Pemantapan teknis ini diselenggarakan untuk meningkatkan pemahaman petugas tanaman tentang pentingnya pelaksanaan semua aktivitas/pekerjaan yang harus dilaksanakan sesuai dengan prosedur/baku teknis di <em>on farm</em>, serta sebagai upaya memastikan pencapaian sasaran produksi dan kualitas. Adanya kolaborasi serta sinergi antara kebun dan puslit, diharapkan ada penyegaran pengetahuan serta <em>transfer experience</em> antar kebun maupun <em>update</em> riset yang aplikatif dari para peneliti Pusat Penelitian Tembakau Jember. (Okta PI_Puslit Tembakau Jember, CIN_Sekper).</p>\r\n\r\n<p>&nbsp;</p>\r\n	5	0	2021-02-01 15:39:47	http://ptpn10.co.id/uploads/Puslit.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-lakukan-tanam-perdana-pemantapan-teknis-mtt-20212022
195	B	PTPN X Tandatangani Kerjasama dengan Kejati Jatim 	<p>PT Perkebunan Nusantara (PTPN) X melakukan kerjasama dengan Kejaksaan Tinggi (Kejati) Jawa Timur guna pengawalan dari ranah hukum untuk kegiatan operasionalnya . Kerjasama tersebut ditandai dengan penandatanganan Perjanjian Kerjasama Bidang Hukum Perdata &amp; Tata Usaha Negara antara Direktur PTPN X Aris Toharisman, Direktur PTPN XI, dan Direktur PTPN XII dengan Kepala Kejaksaan Tinggi Jawa Timur. Mohamad Dofir, Selasa (19/1).</p>\r\n\r\n<p>Bentuk kerjasama dengan Kejati Jawa Timur ini juga berupa kerjasama di bidang permintaan bantuan hukum, pertimbangan hukum, pelayanan hukum, penegakan hukum, konsultasi hukum maupun permintaan <em>legal opinion</em><em>.</em></p>\r\n\r\n<p>&ldquo;Harapannya dengan adanya kerjasama ini, sinergi antara PTPN X dengan Kejati Jawa Timur dapat semakin meningkat, khususnya berkaitan dengan pengawalan terkait ranah hukum,&rdquo; terang Aris Toharisman.</p>\r\n\r\n<p>Selain itu, sinergi antara PTPN X dengan Kejati Jatim juga membuka peluang kerjasama dalam bentuk lokakarya (<em>workshop), </em>seminar, dan sosialisasi. Sebelumnya, PTPN X juga telah mengadakan kerjasama dengan Polda Jatim guna pengamanan asetnya. (Silvi_PMMB, CIN_Sekper)</p>\r\n	7	0	2021-01-19 14:40:35	http://ptpn10.co.id/uploads/Kejati.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-tandatangani-kerjasama-dengan-kejati-jatim
199	B	PTPN X Dapat Rating BBB+ dari PEFINDO	<p><strong>SURABAYA</strong> &ndash; PT Perkebunan Nusantara (PTPN) X mendapatkan rating BBB+ (Triple B Plus) atas Medium Term Notes Tahun 2018 dari PT Pemeringkat Efek Indonesia (PEFINDO), 1 Februari 2021 lalu. Penilaian ini berdasar pada laporan keuangan <em>audited</em> tahun 2019 dan laporan keuangan <em>unaudited</em> tahun 2020.</p>\r\n\r\n<p>Rating dilakukan secara rutin setiap tahunnya.Efek utang dengan peringkat BBB mengindikasikan parameter proteksi yang memadai dibandingkan efek utang Indonesia lainnya. Tanda Tambah (+) menunjukkan bahwa peringkat yang diberikan relatif kuat dan di atas rata-rata kategori yang bersangkutan</p>\r\n\r\n<p>&ldquo;Rating BBB+ dari PEFINDO menunjukkan bahwa dari sisi keuangan, PTPN X memiliki kemampuan dan bisa memenuhi komitmen keuangan jangka panjangnya,&rdquo; terang Aris Toharisman, Direktur PTPN X.</p>\r\n\r\n<p>PTPN X terus mengevaluasi kinerjanya, baik dari sisi operasional maupun sisi keuangan. Efisiensi diterapkan di segala sektor, sehingga kinerja keuangan tetap stabil dan sehat. Ke depannya, adanya rating BBB+ mampu meningkatkan kepercayaan <em>stakeholder</em> untuk dapat bersinergi dengan PTPN X. (Cin_Sekper, Put_Sekper)</p>\r\n	5	0	2021-02-05 16:27:32	http://ptpn10.co.id/uploads/kantor.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-dapat-rating-bbb-dari-pefindo
162	B	Salurkan CSR, PTPN X Berikan Rumah Burung Hantu	<p style="text-align: justify;">Sebagai bentuk kepedulian PT Perkebunan Nusantara (PTPN) X untuk masyarakat sekitar unit kerja PTPN X, Kamis (2/7) dilaksanakan program <em>C</em><em>orporate </em><em>S</em><em>ocial </em><em>R</em><em>esposibility</em> (CSR) berupa penempatan Rumah Burung Hantu di wilayah Kras, Kediri. Program CSR kali ini berfokus pada pembuatan rumah burung hantu sebanyak lima buah.</p>\r\n\r\n<p style="text-align: justify;">Fungsi dari rumah burung hantu ini adalah untuk mengurangi populasi hama tikus yang menyerang komoditas&nbsp;tanaman pangan termasuk tanaman tebu. Agar menekan kerusakan-kerusakan tanaman tebu yang disebabkan oleh hama tikus tersebut, dana CSR PTPN X sejumlah 26 juta rupiah disalurkan untuk pembuatan rumah burung hantu.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Semoga bantuan ini membawa manfaat dan berkah untuk kita semuanya. Wilayah Kras turut serta dalam memasok Bahan Baku Tebu (BBT) yang sangat optimal untuk PG Ngadiredjo. Terima kasih kepada petani wilayah Kras yang telah merawat budidaya tebu dengan baik selama ini,&rdquo; jelas Abdul Munib, <em>General Manager</em> Pabrik Gula (PG) Ngadirejo.</p>\r\n\r\n<p style="text-align: justify;">Penggunaan burung hantu sebagai predator alami juga dinilai lebih efektif untuk menurunkan hama tikus sehingga dapat menigkatkan produksi bahan baku tebu yang berkualitas. Sementara dari segi biaya, menggunakan burung hantu untuk membasmi hama tikus jauh lebih rendah.</p>\r\n\r\n<p style="text-align: justify;">Agus Widodo, Kepala Dinas Pertanian dan Perkebunan Kabupaten Kediri, mengucapkan terima kasih kepada PTPN X untuk program CSR yang dilaksanakan. Diharapkan dengan adanya program tersebut dapat bermanfaat.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Terima kasih atas bantuan dari PTPN X khususnya PG Ngadirejo karena bantuannya selalu bermanfaat seperti bantuan normalisasi saluran air, sangat bermanfaat,&rdquo;tambah Badrus, Kepala Desa Ngadirejo.</p>\r\n\r\n<p style="text-align: justify;">Tidak hanya di wilayah Kras saja, PTPN X juga akan memberikan bantuan serupa secara bertahap pada sembilan kecamatan lain di daerah Kediri dan Blitar. Total sejumlah 35 rumah burung hantu diharapkan mampu menjaga tanaman tebu dari serangan hama tikus.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Apa yang bisa kita lakukan untuk mempererat kemitraan antara PTPN X dengan petani akan bisa mendukung kesejahteraan masyarakat sekitar. Semoga bantuan ini menjadi solusi efektif bagi petani untuk serangan hama tikus,&rdquo; pungkas Dimas Eko Prasetyo, SEVP Operation PTPN X. (Sanggra_UB, CIN_Sekper)</p>\r\n	7	0	2020-07-02 10:59:08	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-07-02_at_10.54.18_AM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/salurkan-csr-ptpn-x-berikan-rumah-burung-hantu
153	B	Tanggap Covid-19, PTPN X Berikan Bantuan 200 Juta	<p style="text-align: justify;">Dalam rangka tanggap Covid-19, PT Perkebunan Nusantara (PTPN) X memberikan bantuan senilai 200 juta rupiah untuk penanganan serta pencegahan Covid-19, Senin (18/5). Hal ini merupakan bentuk <em>Corporate Social Responsibility</em> (CSR) dari perusahaan untuk lingkungan sekitar karena penyebaran wabah Covid-19 ini sangat berdampak pada perekonomian dan sosial masyarakat.</p>\r\n\r\n<p style="text-align: justify;">Kegiatan ini dilaksanakan dengan tetap memperhatikan penerapan <em>phsyical distancing</em> dan protokol kesehatan. Bantuan diserahkan secara langsung oleh Direktur Utama PTPN X, Dwi Satriyo Annurogo kepada PT Petrokima Gresik selaku Koordinator Gugus Tugas Covid-19 BUMN Jawa Timur.</p>\r\n\r\n<p style="text-align: justify;">&quot;Kami serahkan sepenuhnya kepada Gugus Tugas BUMN Jatim, semoga bantuan ini bisa dimanfaatkan seoptimal mungkin untuk membantu seluruh warga yang terdampak dan yang sangat membutuhkan,&quot; tegas Dwi.</p>\r\n\r\n<p></p>\r\n\r\n<p style="text-align: justify;">Masih banyak sekali warga yang kekurangan dan memerlukan bantuan, untuk itulah PTPN X hadir sebagai bentuk kepedulian dan solidaritas sesama warga Indonesia. Dengan berpedoman kepada #BUMNuntukIndonesia PTPN X berkomitmen untuk terus berkontribusi positif kepada bangsa dan negara.</p>\r\n\r\n<p style="text-align: justify;">&quot;Besar harapan kami semua supaya wabah ini segera berakhir dan kita semua bisa menjalankan aktivitas dengan normal seperti sedia kala.&quot; tambah Dwi. (Alma_UBR, Put_Sekper)</p>\r\n	4	0	2020-05-19 13:21:09	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-05-19_at_11.45.37_AM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tanggap-covid-19-ptpn-x-berikan-bantuan-200-juta
178	B	Tingkatkan Kemitraan, PTPN X Beri Apresiasi Petani Nganjuk	<p style="text-align: justify;">Dalam menjalankan setiap proses bisnisnya, PT Perkebunan Nusantara (PTPN) X senantiasa menjaga kemitraan dan hubungan baik dengan petani tebu binaannya. Pada musim giling tahun 2020 ini, PTPN X memberikan apresiasi kepada petani tebu rakyat yang telah berkontribusi membantu kesuksesan giling tahun 2020, Sabtu (21/11). Apresiasi tersebut berupa pemberian 1 unit pompa air kepada Taryono, Ketua Koperasi Petani Tebu Rakyat (KPTR) <span dir="RTL">&lsquo;</span>Lestari<span dir="RTL">&rsquo; </span>di wilayah Desa Ketandan, Keamatan Lengkong, Kabupaten Nganjuk. Penyerahan pompa dilakukan langsung oleh Direktur PTPN X, Aris Toharisman.</p>\r\n\r\n<p style="text-align: justify;">Musim giling tahun 2020 dihadapkan pada beberapa tantangan, salah satunya terkait pasok Bahan Baku Tebu (BBT). Untuk menjaga keajegan pasok BBT ke pabrik gula, manajemen PTPN X aktif dalam berkoordinasi dengan petani. Dukungan petani tebu sangat penting dalam keberlangsungan dan kesuksesan setiap musim giling. Aris mengatakan bahwa langkah ini adalah bentuk apresiasi PTPN X kepada petani tebu binaannya.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;"><span dir="RTL">&ldquo;</span>Bantuan pompa ini diharapkan dapat meningkatkan produktivitas, sehingga nantinya akan berdampak pada jumlah tebangan dan pasok BBT ke Pabrik Gula (PG) Lestari,&rdquo; ungkap Aris.</p>\r\n\r\n<p style="text-align: justify;">Taryono bersama KPTR <span dir="RTL">&lsquo;</span>Lestari<span dir="RTL">&rsquo; </span>telah membantu PG Lestari dalam pengelolaan dana operasional tebang angkut dan membantu penyediaan kredit Penguatan Modal Usaha Kelompok (PMUK). Selain itu Taryono juga menggilingkan 100% tebunya ke PG Lestari Nganjuk pada musim giling tahun ini.</p>\r\n\r\n<p style="text-align: justify;">Aris juga menambahkan harapannya agar kemitraan antara PTPN X dengan petani tebu dapat terus terjaga dengan baik. Tujuannya adalah untuk mewujudkan swasembada gula nasional. (CIN_Sekper, PUT_Sekper)</p>\r\n	0	0	2020-11-23 08:21:28	http://ptpn10.co.id/uploads/Pemberian_Apresiasi_kepada_Petani_(1).jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tingkatkan-kemitraan-ptpn-x-beri-apresiasi-petani-nganjuk
155	B	Peduli COVID-19, PTPN X Resmikan Laboratorium di RS Perkebunan	<p style="text-align: justify;">Rumah Sakit (RS) Perkebunan Jember sebagai salah satu RS BUMN Rujukan Covid-19 menerima bantuan Laboratorium Biomolekuler PCR dari Kementerian BUMN. Laboratorium ini diresmikan secara langsung oleh Bupati Jember, Faida dan Direktur PTPN X, Aris Toharisman, Selasa (2/6). Direktur Utama Holding Perkebunan, Muhammad Abdul Ghani, sangat konsen dan memberikan atensi yang tinggi agar PCR segera terpasang dan berfungsi dengan baik, guna mendukung pemerintah untuk menanggulangi penyebaran Covid-19.</p>\r\n\r\n<p style="text-align: justify;">Laboratorium PCR ini mampu menganalisa hasil <em>swab test</em> dengan kapasitas hingga 50 sampel per hari dengan metode otomatis. Keberadaan laboratorium ini sangat bermanfaat mengingat laboratorium dengan fasilitas Biomolekuler PCR S<em>wab Test Real Time</em> yang sangat minim jumlahnya di Jawa Timur.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Dengan adanya laboratorium ini, masyarakat di wilayah tapal kuda Jawa Timur yang meliputi Jember, Banyuwangi, Bondowoso, Situbondo, Probolinggo dan Lumajang dapat melakukan <em>swab test</em> untuk mengetahui adanya virus Covid-19 di dalam tubuh. Ini merupakan upaya untuk memberikan fasilitas diagnosis Covid-19 secara tepat,&rdquo; ujar Aris Toharisman.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Sedangkan menurut Faida, adanya laboratorium PCR di Jember ini merupakan hal yang sangat bermanfaat. Menurutnya, adanya tambahan laboratorium ini dapat mengurangi antrian masyarakat yang ingin melakukan <em>swab test. </em>(CIN_Sekper, PUT_Sekper)</p>\r\n	10	0	2020-06-04 09:18:18	http://ptpn10.co.id/uploads/lab_pcr.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/peduli-covid-19-ptpn-x-resmikan-laboratorium-di-rs-perkebunan
179	B	PG Gempolkrep dan PT Enero Bagikan 1.485 Paket Sembako	<p><strong>MOJOKERTO </strong>--- PT Perkebunan Nusantara (PTPN) X melalui Pabrik Gula (PG) Gempolkrep menggelontorkan dana tanggung jawab sosial perusahaan (<em>Corporate Social Responsibility/</em>CSR) sebesar Rp 158 Juta sebagai bentuk tanggung jawab sosial terhadap warga Desa Gempolkrep, Gedeg, Mojokerto. Dana CSR tersebut disalurkan berupa bantuan 1.485 paket sembako, berisi gula pasir, beras, dan minyak goreng. Bantuan langsung diserahkan oleh GM PG Gempolkrep, Agus Minhandoko dan Direktur PT Enero, Izmirta Rachman, (20/11)</p>\r\n\r\n<p>Pembagian paket sembako ini merupakan kegiatan CSR PTPN X kepada masyarakat sekitar PG Gempolkrep. Sebelum pembagian sembako, manajemen PG Gempolkrep dan PT Enero secara kontinyu berkomunikasi dengan Kepala Desa Gempolkrep, Jani Suprayogi, sehingga manajemen dapat mengetahui secara pasti kebutuhan warga Desa Gempolkrep.</p>\r\n\r\n<p>&ldquo;Harapannya, dengan adanya pembagian paket sembako ini dapat meringankan beban masyarakat Desa Gempolkrep khususnya dalam menghadapi masa pandemi COVID-19 ini,&rdquo; terang Agus Minhandoko.</p>\r\n\r\n<p>Sebelumnya, kegiatan CSR serupa juga telah dilakukan oleh PG Gempolkrep dan PT Enero ke Desa Gembongan pada 16-17 September yang lalu. Ke depannya, PTPN X akan secara rutin melakukan kegiatan CSR bagi masyarakat sekitar sebagai bentuk tanggung jawab sosialnya. (Cin_Sekper, Put_Sekper)</p>\r\n	0	0	2020-11-20 13:42:20	http://ptpn10.co.id/uploads/Sembako_Enero.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-gempolkrep-dan-pt-enero-bagikan-1485-paket-sembako
151	B	Peduli Masa Pandemi COVID-19, Tiga PG PTPN X Berikan Bantuan Gula	<p style="text-align: justify;">Sebagai wujud&nbsp;<a href="https://www.instagram.com/explore/tags/bumnuntukindonesia/">#BUMNUntukIndonesia</a>, Pabrik Gula (PG) Ngadiredjo, Pabrik Gula (PG) Pesantren Baru, dan PG Djombang Baru menunjukkan kepeduliannya di masa pandemi COVID-19 ini. Pada hari Rabu (13/5) PG Ngadiredjo memberikan bantuan satu ton gula ke Pemerintah Kabupaten Kediri agar dapat dibagikan ke masyarakat sekitar pabrik gula. Bantuan ini diterima secara simbolis oleh Bupati Kediri, Haryanti Sutrisno.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<div>\r\n<p style="text-align: justify;">&ldquo;Terima kasih banyak PG Ngadiredjo atas bantuannya,&rdquo; ujar Haryati. Bantuan berupa gula akan disalurkan kepada UMKM yang terdampak oleh pandemi ini.</p>\r\n\r\n<div>\r\n<p style="text-align: justify;">Sehari setelahnya, yaitu Kamis (14/5) PG Ngadiredjo bekerjasama dengan Kodim dan Polres Kabupaten Kediri melalui pemberian gula sembako. Bantuan ini diserahkan langsung oleh <em>General Manager</em> PG Ngadiredjo, Abdul Munib, didampingi oleh jajaran manajemenen pabrik gula.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Di tengah&nbsp;pandemi ini, banyak orang yang mungkin perlu kita perhatikan, untuk itu bentuk kepedulian PG Ngadiredjo terhadap masyarakat sekitar yaitu dengan membagikan gula,&rdquo; terang Abdul Munib.</p>\r\n\r\n<p style="text-align: justify;">Di hari yang sama yaitu Kamis (14/5), PG Pesantren Baru juga memberikan bantuan gula sebesar satu ton kepada Pemerintah Kota Kediri. Bantuan ini diterma secara langsung oleh Walikota Kediri, Abdullah Abu Bakar. Abu Bakar menyampaikan terima kasih untuk bantuan yang diberikan oleh PG Pesantren Baru mengingat pandemi ini berdampak terhadap seluruh lapisan masyarakat.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">Selain PG Ngadiredjo dan PG Pesantren Baru, PG Djombang Baru turut serta memberikan bantuan gula sebesar satu ton. Bantuan tersebut diberikan kepada Pemerintah Kabupaten Tuban. Diharapkan dengan adanya bantuan ini, masyarakat dapat merasakan manfaatnya secara langsung. (Sanggra_UB_Cin_Sekper)</p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n	11	0	2020-05-15 12:50:06	http://ptpn10.co.id/uploads/20200515_124644.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/peduli-masa-pandemi-covid-19-tiga-pg-ptpn-x-berikan-bantuan-gula
154	B	Kolaborasi dengan PT Enero, PG Gempolkrep Bagikan Sembako ke Lima Desa	<p style="text-align: justify;">Sebagai wujud kepedulian perusahaan terhadap warga sekitarnya dalam menangani pandemi Covid-19, pada hari Jumat (15/5) Pabrik Gula (PG) Gempolkrep bersama PT Energi Agro Nusantara (Enero) membagikan sembako ke lima desa sekitar pabrik gula tersebut. Lima desa itu adalah Desa Gempolkrep, Desa Gembongan, Desa Gedeg, Desa Bandung, serta Desa Berat Wetan. Bantuan sembako diterima langsung oleh perangkat desa setempat.</p>\r\n\r\n<p style="text-align: justify;">Pada kegiatan ini, paket sembako yang terdiri dari beberapa kebutuhan pokok seperti 1,5 kg beras, 1 liter minyak goreng, dan 1 kg gula pasir disalurkan kepada warga dengan jumlah 5.000 paket. Untuk Desa Gempolkrep mendapatkan 1.500 paket, Desa Gembongan 1.400 paket, Desa Bandung 1.225 paket, Desa Gedeg 512 paket, sedangkan Desa Berat Wetan sebanyak 363 paket.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Diharapkan dengan adanya pembagian paket sembako untuk warga, sedikit banyak bisa membantu,&rdquo; ujar Agus Minhandoko, General Manager PG Gempolkrep.</p>\r\n\r\n<p style="text-align: justify;">Perangkat desa menyampaikan terima kasih untuk perhatian secara aktif dari PG Gempolkrep dan PT Enero di masa pandemi yang belum juga usai. Semoga untuk kedepannya PG Gempolkrep maupun PT Enero dapat semakin sukses. (Sanggra_UBR_PUT_Sekper)</p>\r\n	10	0	2020-05-19 14:26:52	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-05-19_at_1.17.11_PM.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/kolaborasi-dengan-pt-enero-pg-gempolkrep-bagikan-sembako-ke-lima-desa
145	B	Cegah Penyebaran Virus Covid-19, PTPN X Lakukan Penyemprotan Disinfektan	<p>Sampai dengan hari ini, penyebaran pandemik virus Covid-19 terus mengalami peningkatan yang drastis. Hal ini menimbulkan keresahan di Indonesia, terutama di lingkungan pekerja yang notabene selalu intens melakukan interaksi terpusat di satu lingkungan yang sama. Sudah tidak bisa dipungkiri lagi, bahwa virus ini memiliki tingkat penyebaran yang sangat tinggi dan tergolong mudah. Berdasarkan data dari Badan Kesehatan Dunia (WHO), prediksi tingkat kematian yang hanya sebesar 2% meningkat menjadi 3,4%. Ini perlu ditanggapi serius oleh pemerintah dah seluruh masyarakat Indonesia. Oleh karena itu PT Perkebunan Nusantara (PTPN) X melakukan tindakan penyemprotan disinfektan/antiseptik guna melakukan pencegahan penyebaran pandemik virus Covid-19 ini di lingkungan PTPN X, Rabu (18/3).</p>\r\n\r\n<p>Setelah diadakan sosialiasi mengenai pencegahan pandemik virus Covid-19 yang diselenggarakan beberapa waktu lalu di Kantor Pusat PTPN X, seluruh karyawan diharuskan tetap selalu menjaga kebersihan, kebugaran, pola hidup yang sehat, dan rutin mencuci tangan, serta melakukan pengecekan suhu badan sebelum memasuki area kantor.</p>\r\n\r\n<p>&ldquo;Mengingat penyebaran virus COVID-19 semakin cepat dan mudah, kita harus sigap melakukan berbagai tindakan preventif dengan maksimal guna menjaga seluruh sumber daya manusia di lingkungan PTPN X demi keberlangsungan kinerja perusahaan,&rdquo; ungkap Dwi.</p>\r\n\r\n<p>Penyemprotan dilakukan oleh 6 orang dari PT Maxindo dan didampingi oleh Kepala Bagian SDM &amp; Umum. Seluruh area dari lapangan parkir, masjid, gudang, kamar mandi, ruang direksi, ruang pertemuan, dan ruang kerja karyawan tak luput dalam penyemprotan ini. Harapannya dengan penyemprotan campuran disinfektan sebesar 500 ml dengan 100 liter air ini mampu mencegah penyebaran virus Covid-19 yang ada di lingkungan PTPN X.</p>\r\n\r\n<p>&ldquo;Walaupun belum terdapat PDP (Pasien Dalam Pengawasan) di lingkungan PTPN X, tetap kita harus melakukan upaya semaksimal mungkin untuk mencegah penyebaran virus ini, maka dari itu kami mengambil kebijakan untuk memulangkan seluruh karyawan lebih awal demi kelancaran kegiatan ini,&rdquo; ujar Herman, selaku Kabag SDM &amp; Umum. (Alma_UBR, Cin_Sekper)</p>\r\n	18	0	2020-03-19 15:45:26	http://ptpn10.co.id/uploads/WhatsApp_Image_2020-03-19_at_08.47.40.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/cegah-penyebaran-virus-covid-19-ptpn-x-lakukan-penyemprotan-disinfektan
208	B	Tingkatkan Kualitas, Unit Tembakau Gelar IHT	<p style="text-align: justify;">Kebun Ajong Gayasan bersinergi dengan Kebun Kertosari dan Puslit Tembakau menggelar In House Training yang berlangsung selama 2 hari (1-2 Maret). In House Training ini merupakan rangkaian Pelatihan Pemantapan Teknis Budidaya Tembakau TBN MTT 2021/2022.</p>\r\n\r\n<p style="text-align: justify;">Kegiatan yang bertema&nbsp; &quot;Satu Lembar Daun NW untuk Kehidupan&quot; menghadirkan pembicara Ricky Marantika selaku representatif Burger Soehne AG Burg (BSB Group). Ricky menjelaskan kepada peserta tentang Feedback Market Tembakau Cerutu.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Diharapkan dengan adanya Inhouse Training ini penanaman tembakau TBN MTT 2021/2022 dilaksanakan sesuai dengan SOP yang telah ditetapkan,&rdquo; ujar Dwi Aprilia Sandi, GM Kebun Ajong Gayasan. Sandi juga mengharapkan dengan penanaman tembakau yang sesuai SOP, maka target kualitas maupun kuantitas dapat tercapai dengan optimal. (Siti_Kebun Ajong, CIN_Sekper)</p>\r\n	9	0	2021-03-04 09:44:40	http://ptpn10.co.id/uploads/IHT_Tembakau.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tingkatkan-kualitas-unit-tembakau-gelar-iht
210	B	Monitoring Tebu Sendiri Guna Capai Produktivas Maksimal	<p>Selasa (02/03), Manajer Tanaman Pabrik Gula (PG) Lestari Widarto beserta para Asisten Manajer Areal dan Budidaya melakukan monitoring dan dan pengecekan kondisi tanaman Tebu Sendiri (TS) yang berada di wilayah Gebang Bunder, Jatikalen, Nganjuk. Kegiatan yang ini adalah untuk memastikan tidak adanya serangan hama, sekaligus melihat fisik perkembangan tebu. Kegiatan ini juga sebagai sistem deteksi dini, sehingga dapat menyusun langkah mitigasi guna mencegah gangguan hama. Nantinya akan disusun rencana tindak lanjut guna mengoptimalkan produksi tebu per hektarnya.</p>\r\n\r\n<p>Optimalisasi TS merupakan hal yang saat ini sangat diperlukan guna menjamin ketersediaan Bahan Baku Tebu (BBT) pada musim giling tahun 2021. Harapannya TS ini akan membantu PG Lestari dalam rangka menjamin kemandirian pasok tebu.</p>\r\n\r\n<p>&ldquo;TS merupakan salah satu harapan bagi PG Lestari dan juga merupakan salah bentuk tanggung jawab mengingat lahan TS dikelola sepenuhnya oleh petugas tanaman. PG Lestari berkomitmen meningkatkan produktivitas maupun kualitas yang akan dihasilkan oleh kebun TS ini sehingga nantinya mampu meraih keuntungan semaksimal mungkin,&rdquo; terang Widarto.</p>\r\n\r\n<p>Luasan areal TS yang dimiliki oleh PG Lestari pada MT tahun 2020/2021 yakni sekitar 149.5 Ha. Harapannya dengan lahan TS tersebut akan dapat berkontribusi terhadap pemenuhan pasok BBT pada saat giling tahun 2021. (Adm_LS, Put_Sekper)&nbsp;</p>\r\n	4	0	2021-03-05 12:31:13	http://ptpn10.co.id/uploads/Adam_2.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/monitoring-tebu-sendiri-guna-capai-produktivas-maksimal
209	B	Pabrik Gula Lestari Optimalkan Luasan Lahan Agroforestry	<p>Tim Agroforestry Pabrik Gula (PG) Lestari yang terdiri dari Manajer Tanaman, Asisten Manajer Areal dan Budidaya, dan Asisten Manajer Quality Assurance &amp; HSE beserta Perwakilan KPH Jombang melakukan kunjungan dan survey kelayakan lahan dari Perum Perhutani yang nantinya akan diolah dan dimanfaatkan untuk tanaman. Total lahan seluas 128 HA yang terdapat di petak 163 ini berlokasi di wilayah desa Ngujung, kecamatan Gondang, Nganjuk, (18/1)</p>\r\n\r\n<p>Guna menunjang pasok bahan baku tebu (BBT) pada musim giling tahun 2021 ini PG Lestari&nbsp; terus mengembangkan luasan areal agroforestry. Program Agroforestry ini nantinya akan memberikan keuntungan bagi kedua belah pihak, mengingat masih banyak luasan areal Perum Perhutani khususnya divisi regional Jawa Timur yang dapat dioptimalkan untuk penamanan tebu.</p>\r\n\r\n<p>Adapun yang menjadi latar belakang program agroforestry ini adalah Peraturan Menteri Lingkungan Hidup dan Kehutanan Republik Indonesia tentang Kerjasama Penggunaan dan Pemanfaatan Kawasan Hutan Untuk Mendukung Ketahanan Pangan (Adm_LS,Put_Sekper)&nbsp;<br />\r\n&nbsp;</p>\r\n	4	1	2021-03-05 12:56:14	http://ptpn10.co.id/uploads/WhatsApp_Image_2021-03-05_at_12.42.04.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pabrik-gula-lestari-optimalkan-luasan-lahan-agroforestry
36	B	Ciptakan Destinasi Wisata di Tulangan, Komisi D dan Dispora Sidoarjo Datangi PTPN X	<p style="text-align: justify;">Pemerintah Kabupaten Sidoarjo melihat potensi destinasi baru di daerah Tulangan, apalagi aset Pabrik Gula (PG) Toelangan milik PT Perkebunan Nusantara (PTPN) X sangat luas dan belum dimanfaatkan dengan maksimal. Untuk itu, Komisi D DPRD Sidoarjo dan Dinas Pemuda, Olahraga, Kebudayaan dan Pariwisata Kabupaten Sidoarjo berkunjung ke Kantor Pusat PTPN X untuk membahas&nbsp;rencana pengembangan PG Toelangan untuk dijadikan destinasi wisata baru di Kabupaten Sidoarjo.</p>\r\n\r\n<p style="text-align: justify;">Ketua Komisi D DPRD kabupaten Sidoarjo, Moch Dhamroni Chudlori&nbsp; mengatakan Pemerintah Kabupaten Sidoarjo melihat PG Toelangan sudah tidak lagi beroperasi lagi sejak tahun 2016.&nbsp;Namun hingga saat ini, banyak aset yang berpotensi tetapi belum dimanfaatkan secara maksimal.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&quot;Di Sidoarjo ini, destinasi wisata masih minim. Kami melihat potensi itu ada di PG Toelangan, untuk itu kami ingin berkonsultasi dan kordinasi dengan PTPN X untuk mengembangkan destinasi wisata baru di eks PG Toelangan,&quot; kata Dhamroni pada acara Rapat Konsultasi terkait Rencana Pengembangan PG Toelangan untuk dijadikan destinasi wisata di ruang Kresna Kantor Pusat PTPN X,&nbsp;Jalan Jembatan Merah, Surabaya, Selasa (26/11).</p>\r\n\r\n<p style="text-align: justify;">Dhamroni menambahkan bila memang PTPN X sudah ada perencanaan untuk pengembangan PG Toelangan maka ini akan menjadi gayung bersambut karena Komisi D juga akan berkonsultasi ke Kementerian BUMN terkait rencana ini.</p>\r\n\r\n<p style="text-align: justify;">Kepala Bidang Umum dan Pengembangan Aset PTPN X, Wahyu P Siswosumarto menjelaskan pihaknya sangat berterima kasih atas kehadiran Pemerintah Kabupaten Sidoarjo , mengingat Sidoarjo dulu pernah menjadi lumbung <em>revenue</em> PTPN X.</p>\r\n\r\n<p style="text-align: justify;">&quot;Untuk pengembangan aset di PG Toelangan memang sudah direncanakan&nbsp; dan ada beberapa yang sudah dilakukan,&quot; kata Wahyu.</p>\r\n\r\n<p style="text-align: justify;">Yang sudah dilaksanakan adalah pembangunan convention hall yang bernama Graha Toelangan,yang memiliki kapasitas hingga 750 orang. Selama ini Gedung Pertemuan milik PG Toelangan banyak dipergunakan masyarakat Sidoarjo untuk berbagai kegiatan mulai dari pernikahan maupun kegiatan lainnya.</p>\r\n\r\n<p style="text-align: justify;">&quot;Rencana pembangunan<em> heritage</em> PG Toelangan, PTPN X pernah mengandeng pihak ketiga untuk menghitung dan membuat <em>feasibility stud</em>y ,&quot; ungkapnya.</p>\r\n\r\n<p style="text-align: justify;">Dari hasil studi kelayakan tersebut, jelas Wahyu, jajaran Direksi PTPN X menilai masih banyak hal yang perlu dipertajam. Namun PTPN X terus mempromosikan dan mencari pihak ketiga yang bersedia untuk bekerjasama membangun PG Toelangan.</p>\r\n\r\n<p style="text-align: justify;">&quot;Hingga saat ini belum ada, kami sangat membutuhkan dukungan dari Pemerintah Kabupaten Sidoarjo untuk bisa mengembangkan destinasi wisata baru di PG Toelangan ini,&quot; imbuhnya.</p>\r\n\r\n<p style="text-align: justify;">Kepala Dinas Pemuda, Olahraga Kebudayaan dan Pariwisata Kabupaten Sidoarjo,Joko Supriadi menjelaskan saat ini, Pemerintah Kabupaten Sidoarjo tengah gencar membangun dan mempromosikan destinasi wisata baru yang terintegrasi. Bahkan Pemerintah Kabupaten Sidoarjo sudah melibatkan <em>travel agent</em> untuk bisa menjual destinasi wisata di Sidoarjo.</p>\r\n\r\n<p style="text-align: justify;">&quot;PG Toelangan ini letaknya cukup strategis dan banyak destinasi yang bisa diintegrasikan dengan PG Toelangan, mulai dari wisata religi situs Medalam dan Candi Pari yang letaknya hanya 4 KM-an,&quot; kata Joko.</p>\r\n\r\n<p style="text-align: justify;">Selain itu, sambung Joko, hanya 1 KM dari PG Toelangan ada Wisata Religi Makam Mbah Jaelani dan ada Kampung Belimbing, dan di Daerah Sudimoro tempat produksi Krupuk Rambak. (Red3, CIN_Sekper)</p>\r\n	5	0	2019-11-26 20:10:24	http://ptpn10.co.id/uploads/WhatsApp_Image_2019-11-26_at_12.49.46.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ciptakan-destinasi-wisata-di-tulangan-komisi-d-dan-dispora-sidoarjo-datangi-ptpn-x
204	B	PG Ngadiredjo Beri Bantuan Saluran Air dan Reboisasi	<p style="text-align: justify;">PG Ngadiredjo menyerahkan bantuan CSR pembuatan gorong-gorong untuk saluran air dan reboisasi di Desa Ngaringan Wilayah HGU Ngusri PTPN X (18/2).Acara ini dihadiri oleh General Manager PG Ngadiredjo, Agus Minhandoko beserta jajaran manajemen, Manager PT Nusantara Segar Abadi, Sekcam Gandusari, Kapolsek Gandusari, Danramil Gandusari, Kepala Desa Ngaringan, Dinas Pertanian dan Pangan Kab. Blitar, dan Dinas KLHK Kab. Blitar.</p>\r\n\r\n<p style="text-align: justify;">Bantuan diserahkan secara simbolis oleh Agus kepada Kepala Desa Ngaringan. Sebelumnya, manajemen PG Ngadiredjo berkoordinasi dengan masyarakat setempat terkait kebutuhan di Desa Ngaringan, supaya CSR yang akan diberikan tepat sasaran dan bermanfaat.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Semoga bantuan gorong-gorong untuk saluran air dan reboisasi ini dapat bermanfaat untuk masyarakat sekitar, jelas Agus. GM PG Ngadiredjo berharap dengan adanya gorong-gorong dan reboisasi dapat mencegah terjadinya banjir dan tanah longsor di Wilayah Ngusri.</p>\r\n\r\n<p style="text-align: justify;">Selanjutnya, Kepala Desa Ngaringan mengucapkan terima kasih dan apresiasi kepada PTPN X. Ia berharap gorong-gorong ini dapat mengurangi genangan air yang meluber sampai ke rumah warga akibat derasnya air hujan. (Mashuri_PG Ngadiredjo, CIN_Sekper)</p>\r\n	14	0	2021-02-19 10:25:59	http://ptpn10.co.id/uploads/WhatsApp_Image_2021-02-18_at_18.28.40.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/pg-ngadiredjo-beri-bantuan-saluran-air-dan-reboisasi
205	B	PTPN X Raih Silver Winner di InMA 2021	<p>PT Perkebunan Nusantara (PTPN) X kembali berjaya di ajang Apresiasi Indonesia Print Media Awards (IPMA), Inhouse Magazine Awards (InMA), Student Print Media Awards (ISPRIMA), dan Indonesia Young Readers Awards (IYRA) 2021. Mengangkat tema &ldquo;Innovative Collaboration Beyond Pandemic&rdquo;, PTPN X berhasil menyabet penghargaan Silver Winner Majalah Cetak Kategori Anak Perusahaan BUMN. Penganugerahan IPMA, InMA, IYRA, dan ISPRIMA disiarkan secara <em>streaming</em> melalui kanal YouTube SPS Pusat, jam 14.00 WIB hari Rabu (24/2).</p>\r\n\r\n<p>Serikat Perusahaan Pers (SPS) tahun ini diikuti 548 entri dan melibatkan sembilan orang juri. Mereka adalah Ahmad Djauhar (Dewan Pers), Asmono Wikan (Sekretaris Jenderal SPS Pusat), Danu Kusworo (Redaktur Foto Harian <em>KOMPAS</em>), Ika Sastrosoebroto (President Director Prominent PR), Ndang Sutisna (Direktur Eksekutif First Position Group), Oscar Matulloh (Kurator dan Pewarta Foto Independent), Mas Sulistyo (Design Director DM ID), Nina Mutmainnah (Ketua Departemen Ilmu Komunikasi FISIP UI), dan Agus Sudibyo (Ketua Komisi Hubungan Antar Lembaga dan Luar Negeri Dewan Pers). Proses penjurian dilakukan secara <em>off-line </em>dan <em>on-line</em>, awal Februari 2021.&nbsp;</p>\r\n\r\n<p>&ldquo;Selamat kepada Tim PTPN X Magz. Harapannya prestasi yang sudah diraih ini dapat menjadi motivasi untuk berkarya lebih inovatif lagi dan tetap menjaga kualitas pemberitaan yang baik.&rdquo; ujar Wakhyu Priyadi Siswosumarto, Kepala Bagian Sekretaris Perusahan dan PKBL. (Put_Sekper, Cin_Sekper)</p>\r\n	8	0	2021-02-24 15:39:00	http://ptpn10.co.id/uploads/60361009-47b0-4625-8a07-57a8e3e14fb4-InMa.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-raih-silver-winner-di-inma-2021
211	B	Tingkatkan Kemitraan, PG Lestari Jalin Silaturahmi Dengan DPN APTRI	<p>Jumat (05/03) General Manager Pabrik Gula Lestari didampingi Manajer Tanaman serta Manajer Keuangan&amp;Umum melakukan silaturahmi kepada Ketua Dewan Pimpinan Nasional (DPN) Asosiasi Petani Tebu Rakyat Indonesia (APTR), Soemitro Samadikoen. Kegiatan ini guna untuk menjaga hubungan baik yang sudah terjalin selama ini.</p>\r\n\r\n<p>Pada kesempatan tersebut Marshal menyampaikan bahwa PG Lestari berkomitmen untuk terus membantu memenuhi kebutuhan dari petani. Marshal menambahkan bahwa peran petani begitu penting bagi keberlangsungan perusahaan, sehingga sinergi antara pabrik gula harus terus dijaga dan ditingkatkan kualitasnya.</p>\r\n\r\n<p>&ldquo;Keberadaan dan dukungan petani sangat penting bagi keberlangsungan perusahaan. Sehingga sinergi antara petani dan pabrik gula harus terus terjalin dengan baik,&rdquo; tutur Marshal.</p>\r\n\r\n<p>Soemitro pun menyampaikan aspirasinya mengenai kondisi industri gula di Indonesia saat ini serta kendala yang dihadapi oleh petani tebu. Harapannya&nbsp;ke depannya, kegiatan ini dapat terus dilakukan dan dapat memperkuat hubungan kemitraan antara PTPN X dengan petani tebu rakyat yang telah berjalan sejak dahulu. (Adm_Ls, Put_Sekper)</p>\r\n	0	0	2021-03-08 12:24:11	http://ptpn10.co.id/uploads/Adam_3.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/tingkatkan-kemitraan-pg-lestari-jalin-silaturahmi-dengan-dpn-aptri
206	B	PTPN X Gelar Internalisasi Core Value AKHLAK	<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X menggelar acara Internalisasi Corporate Value Kementerian BUMN yakni AKHLAK (Amanah, Kompeten, Harmonis, Loyal, Adaptif dan Kolaboratif). AKHLAK ini nanti menjadi semangat dalam menjalankan proses bisnis. Acara yang digelar secara offline dan online ini dihadiri oleh seluruh lapisan karyawan, baik di Kantor Pusat, Unit Usaha, dan Anak Perusahaan, (02/03).</p>\r\n\r\n<p style="text-align: justify;">Acara dibuka dengan sambutan dari Direktur PTPN X, Aris Toharisman. Aris menjelaskan bahwa tahun 2021 ini Kementerian BUMN memiliki prioritas untuk meningkatkan nilai ekonomi dan dampak sosial terutama di bidang ketahanan pangan, energi, dan kesehatan. Untuk mencapai prioritas tersebut, penerapan core value AKHLAK harus diterimplementasi dengan baik.</p>\r\n\r\n<p style="text-align: justify;">&ldquo;Harapannya nilai AKHLAK dapat dibumikan atau diinternalisasi dengan baik dalam diri masing-masing karyawan,&ldquo; jelas Aris.</p>\r\n\r\n<p style="text-align: justify;">Pada acara ini, PTPN X juga meresmikan Learning Center sebagai salah satu <em>customize </em>dari program AKHLAK itu sendiri. Nantinya Learning Center akan menjadi wadah untuk mengembangkan kompetensi, sharing knowledge dan konseling bagi karyawan. (PUT_Sekper, CIN_Sekper)</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n	9	0	2021-03-02 15:55:24	http://ptpn10.co.id/uploads/WhatsApp_Image_2021-03-02_at_11.01.18.jpeg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/ptpn-x-gelar-internalisasi-core-value-akhlak
207	B	Hindari Potensi Kecurangan, PG Lestari Sosialisasikan WBS 	<p style="text-align: justify;">Pabrik Gula (PG) Lestari menyelenggarakan acara sosialisasi Whistleblowing System (WBS) yang dilaksanakan di Gedung Pertemuan &ldquo;Grha Bima Lestari&rdquo;, (01/03). Kegiatan tersebut merupakan wujud komitmen perusahaan dalam rangka mendukung dan memastikan penerapan Sistem Manajemen Anti Penyuapan (SMAP). Acara ini dihadiri oleh seluruh Manajer dan Asisten Manajer dari tiap-tiap bagian.</p>\r\n\r\n<p style="text-align: justify;">WBS sendiri merupakan salah satu sarana pelaporan atas dugaan adanya pelanggaran yang dilakukan oleh internal perusahaan khususnya PG Lestari, serta merupakan komitmen PG Lestari dalam rangka memastikan terselenggarakannya prinsip Good Corporate Governance.</p>\r\n\r\n<p style="text-align: justify;"></p>\r\n\r\n<p style="text-align: justify;">&ldquo;Bahwa untuk pelanggaran atau kecurangan ini tidak hanya didasarkan pada niat pelaku saja, namun juga karena adanya kesempatan untuk melakukan pelanggaran atau kecurangan tersebut. Sehingga perlu ditanamkan pada diri masing-masing karyawan agar senantiasa melakukan perbuatan yang halal,&rdquo; ungkap General Manager PG Lestari, Marshal G. Pattiasina dalam paparannya.</p>\r\n\r\n<p style="text-align: justify;">Sehingga harapannya walaupun terdapat kesempatan untuk melakukan pelanggaran atau kecurangan, jika karyawan sudah menanamkan dan mengamalkan nilai-nilai kejujuran tentu pelanggaran atau kecurang tersebut tidak akan terjadi. Marshal menambahkan dengan berjalannya WBS maka akan menghasilkan sistem yang bersih, karena <em>whistleblower</em> tidak hanya sebatas internal karyawan saja namun juga pihak eksternal.</p>\r\n\r\n<p style="text-align: justify;">PT Perkebunan Nusantara (PTPN) X telah menyediakan layanan untuk pelaporan dugaan pelanggaran atau kecurangan yang dilakukan oleh karyawan atau karyawati, yaitu melalui email <a href="mailto:wbs.ptpn10@ptpn10.co.id">wbs.ptpn10@ptpn10.co.id </a>&nbsp;&amp; <a href="mailto:spi@ptp10.co.id">spi@ptp10.co.id</a>. PTPN X juga menjamin kerahasiaan dan perlindungan terhadap pelapor.&nbsp;(Adm_LS, PUT_Sekper)</p>\r\n	4	0	2021-03-04 09:47:14	http://ptpn10.co.id/uploads/Sosialisasi_WBS_-_LS.jpg	admin@ptpn10.co.id	admin@ptpn10.co.id	published	http://ptpn10.co.id/blog/hindari-potensi-kecurangan-pg-lestari-sosialisasikan-wbs
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                         3874.dat                                                                                            0000600 0004000 0002000 00000000104 14024026461 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	17
4	18
5	70
5	71
5	72
4	82
5	95
5	97
5	99
5	104
5	107
5	108
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                            3875.dat                                                                                            0000600 0004000 0002000 00000000602 14024026461 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	yohanesdl9@gmail.com	2
2	yohanesdl9@gmsil.com	109
3	reyhan@ptpn10.co.id	3
4	reyhan@ptpn10.co.id	3
1518	yohanesdl9@gmail.com	102
1520	firnasreyhan@gmail.com	103
1524	firnasreyhan@gmail.com	101
1764	firnasreyhan@gmail.com	111
2094	almasaquille1@gmail.com	131
2168	almasaquille1@gmail.com	134
2786	bambangqaptpnx@gmail.com	149
2998	awisdm@yahoo.com	160
3406	kopralapp@gmail.com	209
\.


                                                                                                                              3876.dat                                                                                            0000600 0004000 0002000 00000003004 14024026461 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	3
5	21
5	22
5	23
5	24
5	25
5	84
5	86
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
5	88
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
5	69
5	89
5	70
23	90
5	90
21	90
31	90
5	90
5	91
5	93
31	93
5	93
32	93
5	71
20	71
5	72
20	72
21	72
5	73
5	74
5	75
5	76
5	77
21	78
20	78
22	78
23	93
25	93
21	93
23	95
32	95
5	79
31	95
21	95
28	95
27	95
20	95
23	82
31	82
26	82
29	95
30	95
5	95
33	95
33	97
32	97
31	97
21	97
23	97
22	97
26	97
28	97
34	97
5	97
21	97
33	99
21	99
23	99
31	99
35	99
36	99
37	99
5	98
28	98
34	98
5	99
5	100
5	101
5	102
5	103
5	104
23	104
33	104
38	104
5	105
27	105
23	105
5	106
39	106
23	106
27	106
28	106
29	106
30	106
5	107
39	107
23	107
31	107
40	107
5	108
23	108
39	108
41	108
5	109
42	109
41	109
39	109
34	109
29	109
27	109
5	110
41	110
21	110
5	117
5	118
5	112
35	112
5	111
42	111
5	113
43	113
41	113
5	119
5	121
5	123
5	124
5	126
5	127
45	127
44	127
5	128
5	129
5	130
5	131
5	132
5	133
5	125
5	134
5	135
5	136
5	137
5	138
5	139
5	140
5	141
5	142
5	143
5	144
5	145
5	146
5	147
5	148
5	149
5	150
5	151
5	152
5	153
5	154
5	155
5	156
5	157
5	158
5	159
5	160
5	161
5	162
5	163
5	164
5	165
5	166
5	167
5	168
5	169
5	170
5	171
5	172
5	173
5	174
5	175
5	176
5	177
5	178
5	179
5	180
5	181
5	182
5	183
5	184
5	185
5	186
5	187
5	188
5	189
5	190
5	191
5	192
5	193
5	194
5	195
5	196
5	197
5	198
5	199
5	200
5	201
5	202
5	203
5	204
5	205
5	206
5	207
5	208
5	209
5	210
5	211
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            3877.dat                                                                                            0000600 0004000 0002000 00000174160 14024026461 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	yohanesdl9@gmail.com	2
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
31	firnasreyhan@gmail.com	111
32	firnasreyhan@gmail.com	110
33	firnasreyhan@gmail.com	109
34	firnasreyhan@gmail.com	111
35	firnas@ptpn10.co.id	3
36	firnas@ptpn10.co.id	3
37	firnas@ptpn10.co.id	3
38	firnas@ptpn10.co.id	111
39	firnas@ptpn10.co.id	3
40	firnas@ptpn10.co.id	111
41	firnas@ptpn10.co.id	111
42	firnas@ptpn10.co.id	3
43	firnas@ptpn10.co.id	3
44	firnas@ptpn10.co.id	111
45	firnas@ptpn10.co.id	18
46	firnas@ptpn10.co.id	111
47	firnas@ptpn10.co.id	110
48	firnas@ptpn10.co.id	108
49	bimasaishoku@gmail.com	111
50	bimasaishoku@gmail.com	111
51	firnasreyhan@gmail.com	111
52	bimasaishoku@gmail.com	109
53	bimasaishoku@gmail.com	110
54	bimasaishoku@gmail.com	108
55	bimasaishoku@gmail.com	111
56	firnasreyhan@gmail.com	111
57	firnasreyhan@gmail.com	111
58	firnasreyhan@gmail.com	110
59	bimasaishoku@gmail.com	3
60	ragnarokstamina1@gmail.com	105
61	ragnarokstamina1@gmail.com	111
62	ragnarokstamina1@gmail.com	111
63	ragnarokstamina1@gmail.com	111
64	andika.vernanda@gmail.com	111
65	andika.vernanda@gmail.com	110
66	andika.vernanda@gmail.com	108
67	andika.vernanda@gmail.com	111
68	andika.vernanda@gmail.com	110
69	andika.vernanda@gmail.com	108
70	andika.vernanda@gmail.com	106
71	andika.vernanda@gmail.com	105
73	andika.vernanda@gmail.com	100
74	andika.vernanda@gmail.com	99
75	andika.vernanda@gmail.com	98
76	andika.vernanda@gmail.com	88
77	andika.vernanda@gmail.com	23
78	andika.vernanda@gmail.com	26
79	andika.vernanda@gmail.com	28
80	andika.vernanda@gmail.com	28
81	andika.vernanda@gmail.com	36
83	andika.vernanda@gmail.com	47
84	daudana.dp@gmail.com	111
85	daudana.dp@gmail.com	108
86	daudana.dp@gmail.com	111
87	daudana.dp@gmail.com	111
88	daudana.dp@gmail.com	111
89	daudana.dp@gmail.com	111
90	daudana.dp@gmail.com	111
91	daudana.dp@gmail.com	111
92	firnasreyhan@gmail.com	111
93	firnasreyhan@gmail.com	111
94	firnasreyhan@gmail.com	111
95	firnasreyhan@gmail.com	111
96	firnasreyhan@gmail.com	111
97	firnasreyhan@gmail.com	111
98	firnasreyhan@gmail.com	111
99	firnasreyhan@gmail.com	111
100	firnasreyhan@gmail.com	111
101	firnasreyhan@gmail.com	111
102	firnasreyhan@gmail.com	111
103	firnasreyhan@gmail.com	111
104	firnasreyhan@gmail.com	111
105	firnasreyhan@gmail.com	111
106	firnasreyhan@gmail.com	111
107	bimasaishoku@gmail.com	111
108	bimasaishoku@gmail.com	110
109	bimasaishoku@gmail.com	111
110	bimasaishoku@gmail.com	111
111	bimasaishoku@gmail.com	111
112	bimasaishoku@gmail.com	111
114	bimasaishoku@gmail.com	103
115	bimasaishoku@gmail.com	103
116	bimasaishoku@gmail.com	101
117	bimasaishoku@gmail.com	101
118	bimasaishoku@gmail.com	101
119	firnasreyhan@gmail.com	111
120	firnasreyhan@gmail.com	111
121	firnasreyhan@gmail.com	111
122	bimasaishoku@gmail.com	107
124	bimasaishoku@gmail.com	111
125	bimasaishoku@gmail.com	111
126	shellafadwa18@gmail.com	111
127	shellafadwa18@gmail.com	110
129	firnasreyhan@gmail.com	3
130	firnasreyhan@gmail.com	111
131	firnasreyhan@gmail.com	3
132	digimagz5@gmail.com	111
133	digimagz5@gmail.com	111
134	digimagz5@gmail.com	3
135	digimagz5@gmail.com	3
136	andika.vernanda@gmail.com	23
137	hr579464@gmail.com	22
138	hr579464@gmail.com	18
139	hr579464@gmail.com	17
140	iwanbudi7@gmail.com	22
141	mashudiana@ptpn10.co.id	35
142	waskito.mulyo@gmail.com	35
143	waskito.mulyo@gmail.com	35
144	iwanbudi7@gmail.com	34
145	iwanbudi7@gmail.com	69
146	waskito.mulyo@gmail.com	23
147	awisdm@yahoo.com	68
148	m.aziz@ptpn10.co.id	22
149	widodopurnomo567@gmail.com	21
150	widodopurnomo567@gmail.com	22
151	badrusz96@gmail.com	21
152	widodopurnomo567@gmail.com	21
153	widodopurnomo567@gmail.com	23
154	widodopurnomo567@gmail.com	24
155	widodopurnomo567@gmail.com	60
156	widodopurnomo567@gmail.com	61
157	widodopurnomo567@gmail.com	59
158	widodopurnomo567@gmail.com	51
159	widodopurnomo567@gmail.com	25
160	abilmiqdad67@gmail.com	21
161	abilmiqdad67@gmail.com	25
162	abilmiqdad67@gmail.com	27
163	miharnoradite@gmail.com	21
164	miharnoradite@gmail.com	25
165	miharnoradite@gmail.com	24
166	mahfud.me5@gmail.com	25
167	mahfud.me5@gmail.com	25
168	mahfud.me5@gmail.com	27
169	arisulistyawan@gmail.com	27
170	yonopg@gmail.com	21
171	yonopg@gmail.com	18
172	yonopg@gmail.com	21
173	yonopg@gmail.com	21
174	trisvijay71@gmail.com	21
175	yonopg@gmail.com	17
176	trisvijay71@gmail.com	21
177	trisvijay71@gmail.com	21
178	tgunawan46@gmail.com	21
179	tgunawan46@gmail.com	22
180	tgunawan46@gmail.com	24
181	tgunawan46@gmail.com	21
182	tgunawan46@gmail.com	21
183	tgunawan46@gmail.com	23
184	tgunawan46@gmail.com	21
185	tgunawan46@gmail.com	69
186	v4n_jbg@yahoo.co.id	22
187	mahfud.me5@gmail.com	58
188	jadid73@gmail.com	21
189	benirahman08@gmail.com	21
190	rifyanu@gmail.com	40
191	widodopurnomo567@gmail.com	57
193	widodopurnomo567@gmail.com	17
194	widodopurnomo567@gmail.com	18
195	jadid73@gmail.com	21
196	sandi.gunawan@ptpn10.co.id	60
197	sandi.gunawan@ptpn10.co.id	61
198	m.aziz@ptpn10.co.id	21
199	div.qc.pl@ptpn10.co.id	21
200	ardianto.redy@gmail.com	38
201	div.qc.pl@ptpn10.co.id	23
202	div.qc.pl@ptpn10.co.id	21
203	div.qc.pl@ptpn10.co.id	68
204	gksukariyono@gmail.com	18
205	gksukariyono@gmail.com	58
206	gksukariyono@gmail.com	57
207	gksukariyono@gmail.com	23
208	gksukariyono@gmail.com	25
209	sohelmatsunaga84@gmail.com	22
210	jadid73@gmail.com	68
211	kristomoyo@gmail.com	70
212	desita.yudi@ptpn10.co.id	70
213	jadid73@gmail.com	70
214	anurulzadid@gmail.com	70
215	erioctorianto@gmail.com	70
216	vero.kristi131@gmail.com	70
217	erioctorianto@gmail.com	69
218	baktidir@gmail.com	70
219	arifyanto1968@gmail.com	21
220	arifyanto1968@gmail.com	70
221	purwo.djatmiko@gmail.com	70
222	purwo.djatmiko@gmail.com	70
223	purwo.djatmiko@gmail.com	70
224	suwignyorangga@gmail.com	70
225	suwignyorangga@gmail.com	70
226	ytoday9@gmail.com	70
227	ytoday9@gmail.com	70
228	m.aziz@ptpn10.co.id	70
229	yietmas@gmail.com	70
230	faizinzin81@gmail.com	70
231	angganteng@gmail.com	70
232	angganteng@gmail.com	70
233	aldino@ptpn10.co.id	70
234	edyptpnx@gmail.com	70
235	agusminhandokoblitar@gamail.com	70
236	edyptpnx@gmail.com	17
237	edyptpnx@gmail.com	18
238	edyptpnx@gmail.com	60
239	baktidir@gmail.com	70
240	baktidir@gmail.com	70
241	sandi.gunawan@ptpn10.co.id	70
242	suhadi.ptpnx@gmail.com	70
243	zainuri.jalu@gmail.com	70
244	suhadi.ptpnx@gmail.com	70
245	sutaji0702@gmail.com	70
246	sutaji0702@gmail.com	70
247	suhadi.ptpnx@gmail.com	70
248	sutaji0702@gmail.com	21
249	yietmas@gmail.com	70
250	anurulzadid@gmail.com	70
251	agus.sukaryono@ptpn10.co.id	70
252	agus.sukaryono@ptpn10.co.id	21
253	agus.sukaryono@ptpn10.co.id	22
254	agus.sukaryono@ptpn10.co.id	23
255	agus.sukaryono@ptpn10.co.id	65
256	muhammadbahruddinhidayat@gmail.com	38
257	agus.sukaryono@ptpn10.co.id	54
258	bambangs.n10@gmail.com	70
259	agus.sukaryono@ptpn10.co.id	47
260	sbupmsjember@gmail.com	70
261	sbupmsjember@gmail.com	70
262	agus.sukaryono@ptpn10.co.id	27
263	sbupmsjember@gmail.com	70
264	div.qc.pl@ptpn10.co.id	70
265	suhadi.ptpnx@gmail.com	70
266	suhadi.ptpnx@gmail.com	70
267	div.qc.pl@ptpn10.co.id	22
268	sbupmsjember@gmail.com	70
269	yonopg@gmail.com	70
270	aliefendi1968@gmail.com	54
271	angganteng@gmail.com	70
272	yonopg@gmail.com	21
273	aliefendi1968@gmail.com	54
274	yonopg@gmail.com	22
275	aliefendi1968@gmail.com	39
276	yonopg@gmail.com	58
277	aliefendi1968@gmail.com	51
278	aliefendi1968@gmail.com	53
279	andika.vernanda@gmail.com	70
280	andika.vernanda@gmail.com	70
281	masdan44681@gmail.com	70
282	masdan44681@gmail.com	70
283	spramuji363@gmail.com	70
284	spramuji363@gmail.com	21
285	spramuji363@gmail.com	22
286	spramuji363@gmail.com	23
287	sipanjangkung@gmail.com	70
288	sipanjangkung@gmail.com	21
289	sipanjangkung@gmail.com	22
290	sipanjangkung@gmail.com	17
291	sipanjangkung@gmail.com	26
292	sipanjangkung@gmail.com	36
293	widodopurnomo567@gmail.com	70
294	widodopurnomo567@gmail.com	70
295	widodopurnomo567@gmail.com	21
296	widodopurnomo567@gmail.com	70
297	widodopurnomo567@gmail.com	70
298	trisvijay71@gmail.com	70
299	trisvijay71@gmail.com	70
300	febriarim@gmail.com	70
301	febriarim@gmail.com	70
302	kukusaputro@ptpn10.co.id	70
303	kukusaputro@ptpn10.co.id	22
304	kukusaputro@ptpn10.co.id	70
305	kukusaputro@ptpn10.co.id	27
306	kukusaputro@ptpn10.co.id	70
307	sbupmsjember@gmail.com	70
308	abdulazispurmali@yahoo.com	70
309	abdulazispurmali@yahoo.com	70
310	moejiono@ptpn10.co.id	21
311	moejiono@ptpn10.co.id	70
312	dody.kristanto@ptpn10.co.id	23
313	dody.kristanto@ptpn10.co.id	70
314	tribuanaik@gmail.com	70
315	bambang84sierra@gmail.com	70
316	tribuanaik@gmail.com	70
317	bambang84sierra@gmail.com	52
318	bambang84sierra@gmail.com	70
319	tribuanaik@gmail.com	70
320	bambang84sierra@gmail.com	21
321	bambang84sierra@gmail.com	70
322	tribuanaik@gmail.com	70
323	ilhamala0915@gmail.com	70
324	nuc.noel@gmail.com	21
325	nuc.noel@gmail.com	70
326	bambangqaptpnx@gmail.com	70
327	bambangqaptpnx@gmail.com	72
328	yohanesdl9@gmail.com	72
329	purwo.djatmiko@ptpn10.co.id	72
330	purwo.djatmiko@ptpn10.co.id	70
331	ulin.nashihulhusna@gmail.com	72
332	tribuanaik@gmail.com	72
333	ariehard46@yahoo.co.id	69
334	ariehard46@yahoo.co.id	34
335	ariehard46@yahoo.co.id	69
336	fikrifaisal465@gmail.com	72
337	danang.sw@ptpn10.co.id	72
338	danang.sw@ptpn10.co.id	71
339	tgunawan46@gmail.com	72
340	tribuanaik@gmail.com	72
341	tribuanaik@gmail.com	72
342	tribuanaik@gmail.com	70
343	fikrifaisal465@gmail.com	72
344	fikrifaisal465@gmail.com	72
345	fikrifaisal465@gmail.com	21
346	fikrifaisal465@gmail.com	72
347	fikrifaisal465@gmail.com	72
348	achmad.hariyadi@ptpn10.co.id	72
349	shobah.shukroni@gmail.com	72
350	moejiono@ptpn10.co.id	72
351	moejiono@ptpn10.co.id	71
352	moejiono@ptpn10.co.id	65
353	moejiono@ptpn10.co.id	34
354	moejiono@ptpn10.co.id	31
355	moejiono@ptpn10.co.id	27
356	moejiono@ptpn10.co.id	65
357	shabrinasukarno@gmail.com	72
358	shabrinasukarno@gmail.com	72
359	jadid73@gmail.com	72
360	dody.kristanto@ptpn10.co.id	72
361	septokuswitjahyono@gmail.com	71
362	septokuswitjahyono@gmail.com	71
363	bambangqaptpnx@gmail.com	72
364	bambangqaptpnx@gmail.com	70
365	bambangqaptpnx@gmail.com	69
366	bambangqaptpnx@gmail.com	70
367	septokuswitjahyono@gmail.com	70
368	suhadi.ptpnx@gmail.com	72
369	suhadi.ptpnx@gmail.com	70
370	suhadi.ptpnx@gmail.com	70
371	suhadi.ptpnx@gmail.com	70
372	kukusaputro@ptpn10.co.id	70
373	kukusaputro@ptpn10.co.id	71
374	suhadi.ptpnx@gmail.com	72
375	kukusaputro@ptpn10.co.id	72
376	kukusaputro@ptpn10.co.id	72
377	sipanjangkung@gmail.com	72
378	sipanjangkung@gmail.com	71
379	sipanjangkung@gmail.com	71
380	sipanjangkung@gmail.com	71
381	sipanjangkung@gmail.com	68
382	tribuanaik@gmail.com	65
383	fikrifaisal465@gmail.com	72
384	b.hernowo@ptpn10.co.id	71
385	b.hernowo@ptpn10.co.id	72
386	juniyanto99999@gmail.com	72
387	juniyanto99999@gmail.com	70
388	aliefendi1968@gmail.com	72
389	aliefendi1968@gmail.com	72
390	kukusaputro@ptpn10.co.id	70
391	yonopg@gmail.com	72
392	my7632773@gmail.com	72
393	my7632773@gmail.com	70
394	sbupmsjember@gmail.com	72
395	mahfud.me5@gmail.com	47
396	hendarwananton512@yahoo.co.id	71
397	hendarwananton512@yahoo.co.id	72
398	sumadidella_2000@yahoo.co.id	27
399	sumadidella_2000@yahoo.co.id	26
400	dwiandikang@gmail.com	72
401	dwiandikang@gmail.com	71
402	dwiandikang@gmail.com	70
403	dwiandikang@gmail.com	70
404	dwiandikang@gmail.com	70
405	dwiandikang@gmail.com	18
406	moejiono@ptpn10.co.id	72
407	abdulazispurmali@yahoo.com	61
408	abdulazispurmali@yahoo.com	57
409	abdulazispurmali@yahoo.com	51
410	abdulazispurmali@yahoo.com	38
411	abdulazispurmali@yahoo.com	36
412	abdulazispurmali@yahoo.com	35
413	abdulazispurmali@yahoo.com	33
414	abdulazispurmali@yahoo.com	28
415	abdulazispurmali@yahoo.com	25
416	my7632773@gmail.com	68
417	mahfud.me5@gmail.com	72
418	fikrifaisal465@gmail.com	72
419	bambangqaptpnx@gmail.com	72
420	mashudiana@ptpn10.co.id	73
421	zonaonline.kk@gmail.com	73
422	ardianto.redy@gmail.com	72
423	ardianto.redy@gmail.com	73
424	ariehard46@yahoo.co.id	70
425	rifyanu@gmail.com	74
426	bambang84sierra@gmail.com	73
427	bambang84sierra@gmail.com	74
428	bambang84sierra@gmail.com	73
429	nuc.noel@gmail.com	76
430	hendarwananton512@yahoo.co.id	60
431	trisvijay71@gmail.com	72
432	hendarwananton512@yahoo.co.id	59
433	suhadi.ptpnx@gmail.com	74
434	hendarwananton512@yahoo.co.id	61
435	ariehard46@yahoo.co.id	72
436	angganteng@gmail.com	74
437	angganteng@gmail.com	77
438	angganteng@gmail.com	76
439	mukhlis.thohari@ptpn10.co.id	73
440	mukhlis.thohari@ptpn10.co.id	73
441	mukhlis.thohari@ptpn10.co.id	73
442	mukhlis.thohari@ptpn10.co.id	72
443	mukhlis.thohari@ptpn10.co.id	72
444	mukhlis.thohari@ptpn10.co.id	72
445	mukhlis.thohari@ptpn10.co.id	59
446	mukhlis.thohari@ptpn10.co.id	59
447	mukhlis.thohari@ptpn10.co.id	71
448	mukhlis.thohari@ptpn10.co.id	72
449	mukhlis.thohari@ptpn10.co.id	72
450	mukhlis.thohari@ptpn10.co.id	72
451	mukhlis.thohari@ptpn10.co.id	71
452	mukhlis.thohari@ptpn10.co.id	71
453	mukhlis.thohari@ptpn10.co.id	70
454	mukhlis.thohari@ptpn10.co.id	70
455	mukhlis.thohari@ptpn10.co.id	70
456	trisvijay71@gmail.com	73
457	trisvijay71@gmail.com	70
458	irfangetsugatensho@yahoo.com	72
459	bambangs.n10@gmail.com	73
460	bambangqaptpnx@gmail.com	77
461	sbupmsjember@gmail.com	77
462	sbupmsjember@gmail.com	76
463	sbupmsjember@gmail.com	77
464	sbupmsjember@gmail.com	77
465	sbupmsjember@gmail.com	69
466	bambangs.n10@gmail.com	76
467	muhammadbahruddinhidayat@gmail.com	70
468	muhammadbahruddinhidayat@gmail.com	72
469	muhammadbahruddinhidayat@gmail.com	73
470	bambangqaptpnx@gmail.com	70
471	bambangqaptpnx@gmail.com	22
472	eddyetno@gmail.com	73
473	hendarwananton512@yahoo.co.id	73
474	bambangqaptpnx@gmail.com	72
475	bambangqaptpnx@gmail.com	72
476	bambangqaptpnx@gmail.com	72
477	bambangqaptpnx@gmail.com	72
478	bambangqaptpnx@gmail.com	72
479	tgunawan46@gmail.com	71
480	tgunawan46@gmail.com	71
481	widodopurnomo567@gmail.com	73
482	widodopurnomo567@gmail.com	73
483	bambang84sierra@gmail.com	72
484	bambang84sierra@gmail.com	71
485	bambang84sierra@gmail.com	72
486	bambang84sierra@gmail.com	71
487	dody.kristanto@ptpn10.co.id	74
488	dody.kristanto@ptpn10.co.id	74
489	dody.kristanto@ptpn10.co.id	77
490	mahfud.me5@gmail.com	67
491	abdulazispurmali@yahoo.com	73
492	danang.sw@ptpn10.co.id	71
493	danang.sw@ptpn10.co.id	72
494	abdulazispurmali@yahoo.com	74
495	abdulazispurmali@yahoo.com	66
496	abdulazispurmali@yahoo.com	64
497	abdulazispurmali@yahoo.com	67
498	jonugraha57@gmail.com	72
499	tribuanaik@gmail.com	78
500	yusufrachman@gmail.com	78
501	bambang84sierra@gmail.com	78
502	agusminhandokoblitar@gamail.com	78
503	erioctorianto@gmail.com	78
504	badrusz96@gmail.com	72
505	erioctorianto@gmail.com	71
506	hendarwananton512@yahoo.co.id	78
507	masdan44681@gmail.com	78
508	masdan44681@gmail.com	78
509	mukhlis.thohari@ptpn10.co.id	78
510	krisnadiikhwan@gmail.com	76
511	ikhwan.krisnadi@ptpn10.co.id	78
512	ikhwan.krisnadi@ptpn10.co.id	72
513	ikhwan.krisnadi@ptpn10.co.id	78
514	ikhwan.krisnadi@ptpn10.co.id	78
515	kristomoyo@gmail.com	78
516	kristomoyo@gmail.com	72
517	bambang84sierra@gmail.com	78
518	bambang84sierra@gmail.com	72
519	bambang84sierra@gmail.com	79
520	baktidir@gmail.com	79
521	baktidir@gmail.com	72
522	baktidir@gmail.com	78
523	suhadi.ptpnx@gmail.com	79
524	faizinzin81@gmail.com	78
525	sbupmsjember@gmail.com	78
526	faizinzin81@gmail.com	79
527	ikhwan.krisnadi@ptpn10.co.id	78
528	kristomoyo@gmail.com	79
529	yukosae@gmail.com	79
530	yusufrachman@gmail.com	79
531	mahfud.me5@gmail.com	78
532	zonaonline.kk@gmail.com	79
533	zonaonline.kk@gmail.com	70
534	kristomoyo@gmail.com	79
535	kristomoyo@gmail.com	79
536	moejiono@ptpn10.co.id	79
537	muhammadbahruddinhidayat@gmail.com	78
538	muhammadbahruddinhidayat@gmail.com	72
539	muhammadbahruddinhidayat@gmail.com	18
540	yogar.r@ptpn10.co.id	79
541	yogar.r@ptpn10.co.id	78
542	yogar.r@ptpn10.co.id	72
543	yogar.r@ptpn10.co.id	71
544	yogar.r@ptpn10.co.id	71
545	yogar.r@ptpn10.co.id	70
546	danang.sw@ptpn10.co.id	78
547	ikhwan.krisnadi@ptpn10.co.id	79
548	ikhwan.krisnadi@ptpn10.co.id	79
549	sumadidella_2000@yahoo.co.id	75
550	shobah.shukroni@gmail.com	78
551	yonopg@gmail.com	78
552	agusminhandokoblitar@gamail.com	76
554	abdul.aziz@ptpn10.co.id	78
556	sandi.gunawan@ptpn10.co.id	79
558	dwiono.agung@ptpn10.co.id	74
560	gplaytdkl2@gmail.com	72
562	m.aziz@ptpn10.co.id	78
564	agus.sukaryono@ptpn10.co.id	78
566	agus.sukaryono@ptpn10.co.id	72
568	agus.sukaryono@ptpn10.co.id	79
570	hendarwananton512@yahoo.co.id	79
572	ikhwan.krisnadi@ptpn10.co.id	78
574	ikhwan.krisnadi@ptpn10.co.id	78
576	ikhwan.krisnadi@ptpn10.co.id	79
578	ikhwan.krisnadi@ptpn10.co.id	72
580	ikhwan.krisnadi@ptpn10.co.id	79
582	ikhwan.krisnadi@ptpn10.co.id	78
584	ikhwan.krisnadi@ptpn10.co.id	78
586	ikhwan.krisnadi@ptpn10.co.id	78
588	kristomoyo@gmail.com	78
590	firnasreyhan@gmail.com	79
592	div.qc.pl@ptpn10.co.id	78
594	div.qc.pl@ptpn10.co.id	78
596	hariyonomp@gmail.com	72
598	andykaindra@gmail.com	76
600	bambang84sierra@gmail.com	82
602	baktidir@gmail.com	82
604	baktidir@gmail.com	82
606	shobah.shukroni@gmail.com	82
608	sandi.gunawan@ptpn10.co.id	82
610	jonugraha57@gmail.com	82
612	jonugraha57@gmail.com	79
614	agusminhandokoblitar@gamail.com	82
616	m.aziz@ptpn10.co.id	79
618	yukosae@gmail.com	82
620	hendarwananton512@yahoo.co.id	82
622	hendarwananton512@yahoo.co.id	82
624	juniyanto99999@gmail.com	82
626	juniyanto99999@gmail.com	78
628	trisvijay71@gmail.com	79
630	kangarifin97@gmail.com	82
632	kangarifin97@gmail.com	82
634	mahfud.me5@gmail.com	82
636	dwiono.agung@ptpn10.co.id	82
638	arisulistyawan@gmail.com	82
640	arisulistyawan@gmail.com	72
642	arisulistyawan@gmail.com	70
644	kangarifin97@gmail.com	82
646	div.qc.pl@ptpn10.co.id	78
648	mahfud.me5@gmail.com	70
650	yukosae@gmail.com	78
652	purwo.djatmiko@ptpn10.co.id	72
654	miharnoradite@gmail.com	76
656	my7632773@gmail.com	78
658	hr579464@gmail.com	70
660	hr579464@gmail.com	72
662	hr579464@gmail.com	78
664	hr579464@gmail.com	82
666	hr579464@gmail.com	82
668	hr579464@gmail.com	78
670	hr579464@gmail.com	72
672	hendarwananton512@yahoo.co.id	82
674	hendarwananton512@yahoo.co.id	18
676	hendarwananton512@yahoo.co.id	17
678	tribuanaik@gmail.com	76
680	yonopg@gmail.com	71
682	hendarwananton512@yahoo.co.id	78
684	hendarwananton512@yahoo.co.id	82
686	muhammadbahruddinhidayat@gmail.com	82
688	suhadi.ptpnx@gmail.com	86
690	suhadi.ptpnx@gmail.com	84
692	dwiono.agung@ptpn10.co.id	70
694	dwiono.agung@ptpn10.co.id	84
696	dwiono.agung@ptpn10.co.id	86
698	dwiono.agung@ptpn10.co.id	88
700	masdan44681@gmail.com	84
702	fajar.priyambada137@gmail.com	72
704	agusminhandokoblitar@gamail.com	86
706	tribuanaik@gmail.com	72
708	tribuanaik@gmail.com	84
710	ddsrn27679@gmail.com	86
712	m.aziz@ptpn10.co.id	89
716	yukosae@gmail.com	84
718	yukosae@gmail.com	84
720	yukosae@gmail.com	88
722	zainuri.jalu@gmail.com	70
724	zainuri.jalu@gmail.com	72
726	zainuri.jalu@gmail.com	78
728	zainuri.jalu@gmail.com	73
730	ikhwan.krisnadi@ptpn10.co.id	84
732	ikhwan.krisnadi@ptpn10.co.id	84
734	ikhwan.krisnadi@ptpn10.co.id	84
736	ikhwan.krisnadi@ptpn10.co.id	84
738	ikhwan.krisnadi@ptpn10.co.id	84
740	ikhwan.krisnadi@ptpn10.co.id	84
742	jonugraha57@gmail.com	84
744	yonopg@gmail.com	88
746	yonopg@gmail.com	89
748	abdulazispurmali@yahoo.com	89
750	abdulazispurmali@yahoo.com	86
752	abdulazispurmali@yahoo.com	88
754	dody.kristanto@ptpn10.co.id	86
756	moejiono@ptpn10.co.id	84
758	soetono.effendi@gmail.com	84
760	soetono.effendi@gmail.com	70
762	ardianto.redy@gmail.com	88
764	ardianto.redy@gmail.com	88
766	ardianto.redy@gmail.com	88
768	ardianto.redy@gmail.com	88
770	ardianto.redy@gmail.com	89
772	sandi.gunawan@ptpn10.co.id	88
774	bambangs.n10@gmail.com	17
776	dody.kristanto@ptpn10.co.id	84
778	sandi.gunawan@ptpn10.co.id	90
780	kangarifin97@gmail.com	90
782	yusufrachman@gmail.com	90
784	sipanjangkung@gmail.com	84
786	sipanjangkung@gmail.com	90
788	sipanjangkung@gmail.com	78
790	sipanjangkung@gmail.com	90
792	ikhwan.krisnadi@ptpn10.co.id	90
794	ikhwan.krisnadi@ptpn10.co.id	90
796	ikhwan.krisnadi@ptpn10.co.id	86
798	ikhwan.krisnadi@ptpn10.co.id	88
800	ikhwan.krisnadi@ptpn10.co.id	89
802	mahfud.me5@gmail.com	90
804	mahfud.me5@gmail.com	82
806	iwanmardiansyahnaruto@gmail.com	90
808	iwanmardiansyahnaruto@gmail.com	70
810	arisulistyawan@gmail.com	26
812	ardianto.redy@gmail.com	90
814	hr579464@gmail.com	88
816	hr579464@gmail.com	90
818	sandi.gunawan@ptpn10.co.id	90
820	yukosae@gmail.com	90
822	hariyonomp@gmail.com	90
824	hariyonomp@gmail.com	70
826	hariyonomp@gmail.com	72
828	hariyonomp@gmail.com	78
830	hariyonomp@gmail.com	90
832	mahfud.me5@gmail.com	86
834	mahfud.me5@gmail.com	88
836	soetono.effendi@gmail.com	90
838	soetono.effendi@gmail.com	90
840	angganteng@gmail.com	90
842	angganteng@gmail.com	72
844	angganteng@gmail.com	88
846	angganteng@gmail.com	86
848	angganteng@gmail.com	90
850	angganteng@gmail.com	82
852	angganteng@gmail.com	90
854	angganteng@gmail.com	90
856	arisulistyawan@gmail.com	78
858	mahfud.me5@gmail.com	72
860	mahfud.me5@gmail.com	90
862	div.qc.pl@ptpn10.co.id	90
864	nyani.chemeng@gmail.com	38
866	angganteng@gmail.com	86
868	angganteng@gmail.com	84
870	angganteng@gmail.com	84
872	shobah.shukroni@gmail.com	90
874	ikhwan.krisnadi@ptpn10.co.id	90
876	ikhwan.krisnadi@ptpn10.co.id	90
878	ikhwan.krisnadi@ptpn10.co.id	86
880	bambang84sierra@gmail.com	92
882	shobah.shukroni@gmail.com	73
884	dwiono.agung@ptpn10.co.id	91
886	dwiono.agung@ptpn10.co.id	90
888	dwiono.agung@ptpn10.co.id	90
890	dwiono.agung@ptpn10.co.id	84
892	dwiono.agung@ptpn10.co.id	86
894	dwiono.agung@ptpn10.co.id	88
896	dwiono.agung@ptpn10.co.id	82
898	dwiono.agung@ptpn10.co.id	74
900	dwiono.agung@ptpn10.co.id	76
902	dwiono.agung@ptpn10.co.id	77
904	dwiono.agung@ptpn10.co.id	27
906	iwanmardiansyahnaruto@gmail.com	90
908	iwanmardiansyahnaruto@gmail.com	92
910	iwanmardiansyahnaruto@gmail.com	84
912	iwanmardiansyahnaruto@gmail.com	86
914	iwanmardiansyahnaruto@gmail.com	89
916	hariyonomp@gmail.com	70
918	hariyonomp@gmail.com	72
920	hariyonomp@gmail.com	78
922	mahfud.me5@gmail.com	92
924	hariyonomp@gmail.com	82
926	hariyonomp@gmail.com	90
928	hariyonomp@gmail.com	18
930	hariyonomp@gmail.com	17
932	hariyonomp@gmail.com	88
934	angganteng@gmail.com	92
936	hariyonomp@gmail.com	89
938	angganteng@gmail.com	91
940	hariyonomp@gmail.com	61
942	purwo.djatmiko@ptpn10.co.id	70
944	hariyonomp@gmail.com	60
946	bambang84sierra@gmail.com	92
948	mahfud.me5@gmail.com	62
950	hariyonomp@gmail.com	59
952	iwanbudi7@gmail.com	93
954	nuc.noel@gmail.com	91
956	nuc.noel@gmail.com	92
958	sipanjangkung@gmail.com	92
960	shobah.shukroni@gmail.com	89
962	nuc.noel@gmail.com	91
964	yukosae@gmail.com	92
966	yukosae@gmail.com	92
968	yukosae@gmail.com	93
970	pribadirahadian.rp@gmail.com	72
972	kangarifin97@gmail.com	92
974	kangarifin97@gmail.com	91
976	faizinzin81@gmail.com	92
978	faizinzin81@gmail.com	72
980	faizinzin81@gmail.com	90
982	erioctorianto@gmail.com	92
984	awisdm@yahoo.com	93
986	my7632773@gmail.com	92
988	hariyonomp@gmail.com	71
990	hariyonomp@gmail.com	70
992	hariyonomp@gmail.com	91
994	hariyonomp@gmail.com	90
996	kukusaputro@ptpn10.co.id	70
998	kukusaputro@ptpn10.co.id	93
1000	kukusaputro@ptpn10.co.id	90
1002	kukusaputro@ptpn10.co.id	82
1004	hariyonomp@gmail.com	92
1006	hariyonomp@gmail.com	36
1008	hariyonomp@gmail.com	37
1010	hariyonomp@gmail.com	34
1012	hariyonomp@gmail.com	33
1014	hariyonomp@gmail.com	31
1016	hariyonomp@gmail.com	30
1018	hariyonomp@gmail.com	28
1020	hariyonomp@gmail.com	27
1022	hariyonomp@gmail.com	26
1024	hariyonomp@gmail.com	76
1026	muhammadbahruddinhidayat@gmail.com	92
1028	muhammadbahruddinhidayat@gmail.com	91
1030	muhammadbahruddinhidayat@gmail.com	75
1032	muhammadbahruddinhidayat@gmail.com	77
1034	muhammadbahruddinhidayat@gmail.com	26
1036	muhammadbahruddinhidayat@gmail.com	93
1038	muhammadbahruddinhidayat@gmail.com	26
1040	muhammadbahruddinhidayat@gmail.com	27
1042	juniyanto99999@gmail.com	90
1044	abdulazispurmali@yahoo.com	92
1046	abdulazispurmali@yahoo.com	91
1048	abdulazispurmali@yahoo.com	90
1050	dody.kristanto@ptpn10.co.id	92
1052	yukosae@gmail.com	92
1054	m.aziz@ptpn10.co.id	90
1056	m.aziz@ptpn10.co.id	92
1058	mahfud.me5@gmail.com	76
1060	pribadirahadian.rp@gmail.com	92
1062	pribadirahadian.rp@gmail.com	72
1064	pribadirahadian.rp@gmail.com	90
1066	pribadirahadian.rp@gmail.com	93
1068	pribadirahadian.rp@gmail.com	82
1070	pribadirahadian.rp@gmail.com	89
1072	pribadirahadian.rp@gmail.com	86
1074	pribadirahadian.rp@gmail.com	84
1076	pribadirahadian.rp@gmail.com	26
1078	pribadirahadian.rp@gmail.com	27
1080	pribadirahadian.rp@gmail.com	28
1082	pribadirahadian.rp@gmail.com	69
1084	pribadirahadian.rp@gmail.com	34
1086	pribadirahadian.rp@gmail.com	31
1088	pribadirahadian.rp@gmail.com	44
1090	pribadirahadian.rp@gmail.com	57
1092	pribadirahadian.rp@gmail.com	61
1094	pribadirahadian.rp@gmail.com	62
1096	pribadirahadian.rp@gmail.com	67
1098	pribadirahadian.rp@gmail.com	92
1100	miharnoradite@gmail.com	92
1102	miharnoradite@gmail.com	92
1104	miharnoradite@gmail.com	84
1106	miharnoradite@gmail.com	92
1108	miharnoradite@gmail.com	91
1110	ikhwan.krisnadi@ptpn10.co.id	94
1112	ikhwan.krisnadi@ptpn10.co.id	94
1114	bambang84sierra@gmail.com	94
1116	awisdm@yahoo.com	90
1118	mahfud.me5@gmail.com	69
1120	mahfud.me5@gmail.com	94
1122	bambangqaptpnx@gmail.com	94
1124	yonopg@gmail.com	72
1126	bambang84sierra@gmail.com	94
1128	yietmas@gmail.com	50
1130	yietmas@gmail.com	54
1132	pribadirahadian.rp@gmail.com	94
1134	danang.sw@ptpn10.co.id	91
1136	abdulazispurmali@yahoo.com	94
1138	wawandefianto@gmail.com	90
1140	wawandefianto@gmail.com	82
1142	ilhamala0915@gmail.com	94
1144	arisulistyawan@gmail.com	92
1146	angganteng@gmail.com	70
1148	mahfud.me5@gmail.com	69
1150	mahfud.me5@gmail.com	92
1152	mahfud.me5@gmail.com	94
1154	kukusaputro@ptpn10.co.id	90
1156	m.aziz@ptpn10.co.id	18
1158	m.aziz@ptpn10.co.id	86
1160	m.aziz@ptpn10.co.id	88
1162	m.aziz@ptpn10.co.id	89
1164	m.aziz@ptpn10.co.id	73
1166	m.aziz@ptpn10.co.id	74
1168	hariyonomp@gmail.com	94
1170	esdeka.sd@gmail.com	84
1172	m.aziz@ptpn10.co.id	96
1174	bambang84sierra@gmail.com	94
1176	bambang84sierra@gmail.com	96
1178	dody.kristanto@ptpn10.co.id	94
1180	dody.kristanto@ptpn10.co.id	96
1182	dwiandikang@gmail.com	70
1184	dwiandikang@gmail.com	84
1186	hasan.mursyid@gmail.com	96
1188	badrusz96@gmail.com	72
1190	badrusz96@gmail.com	17
1192	mukhlis.thohari@ptpn10.co.id	96
1194	mukhlis.thohari@ptpn10.co.id	72
1196	zainuddin.fanani@ptpn10.co.id	96
1198	zainuddin.fanani@ptpn10.co.id	96
1200	ilhamala0915@gmail.com	94
1202	ilhamala0915@gmail.com	96
1204	tribuanaik@gmail.com	93
1206	dody.kristanto@ptpn10.co.id	71
1208	ikhwan.krisnadi@ptpn10.co.id	96
1210	ikhwan.krisnadi@ptpn10.co.id	96
1212	ikhwan.krisnadi@ptpn10.co.id	78
1214	ikhwan.krisnadi@ptpn10.co.id	91
1216	ikhwan.krisnadi@ptpn10.co.id	93
1218	ikhwan.krisnadi@ptpn10.co.id	86
1220	ikhwan.krisnadi@ptpn10.co.id	82
1222	ikhwan.krisnadi@ptpn10.co.id	71
1224	ikhwan.krisnadi@ptpn10.co.id	71
1226	ikhwan.krisnadi@ptpn10.co.id	73
1228	arisulistyawan@gmail.com	94
1230	arisulistyawan@gmail.com	96
1232	hariyonomp@gmail.com	70
1234	hariyonomp@gmail.com	96
1236	hariyonomp@gmail.com	94
1238	widyo89norma@gmail.com	93
1240	widyo89norma@gmail.com	90
1242	m.aziz@ptpn10.co.id	90
1244	widyo89norma@gmail.com	54
1246	bambang84sierra@gmail.com	98
1248	sipanjangkung@gmail.com	32
1250	erioctorianto@gmail.com	84
1252	desita.yudi@ptpn10.co.id	97
1254	bambang84sierra@gmail.com	97
1256	bambang84sierra@gmail.com	96
1258	bambang84sierra@gmail.com	97
1260	bambang84sierra@gmail.com	95
1262	bambang84sierra@gmail.com	97
1264	badrusz96@gmail.com	97
1266	badrusz96@gmail.com	95
1268	badrusz96@gmail.com	90
1270	badrusz96@gmail.com	95
1272	dwiono.agung@ptpn10.co.id	95
1274	dwiono.agung@ptpn10.co.id	91
1276	dwiono.agung@ptpn10.co.id	93
1278	dwiono.agung@ptpn10.co.id	90
1280	dwiono.agung@ptpn10.co.id	84
1282	mahfud.me5@gmail.com	98
1284	mahfud.me5@gmail.com	97
1286	hariyonomp@gmail.com	97
1288	hariyonomp@gmail.com	98
1290	hariyonomp@gmail.com	95
1292	juniyanto99999@gmail.com	96
1294	juniyanto99999@gmail.com	97
1296	zonaonline.kk@gmail.com	96
1298	zonaonline.kk@gmail.com	96
1300	ilmi.nasrulloh@gmail.com	97
1302	ilmi.nasrulloh@gmail.com	97
1304	ilmi.nasrulloh@gmail.com	97
1306	ilmi.nasrulloh@gmail.com	95
1308	ilmi.nasrulloh@gmail.com	91
1310	ilmi.nasrulloh@gmail.com	93
1312	hariyonomp@gmail.com	98
1314	esdeka.sd@gmail.com	96
1316	esdeka.sd@gmail.com	98
1318	esdeka.sd@gmail.com	97
1320	yogar.r@ptpn10.co.id	97
1322	yogar.r@ptpn10.co.id	95
1324	yogar.r@ptpn10.co.id	91
1326	ilmi.nasrulloh@gmail.com	90
1328	ilmi.nasrulloh@gmail.com	90
1330	ilmi.nasrulloh@gmail.com	88
1332	dwiono.agung@ptpn10.co.id	99
1334	dwiono.agung@ptpn10.co.id	99
1336	bambang84sierra@gmail.com	99
1338	suhadi.ptpnx@gmail.com	99
1340	hariyonomp@gmail.com	99
1342	hariyonomp@gmail.com	97
1344	hariyonomp@gmail.com	96
1346	bambangqaptpnx@gmail.com	99
1348	ilmi.nasrulloh@gmail.com	99
1350	ilmi.nasrulloh@gmail.com	95
1352	ilmi.nasrulloh@gmail.com	95
1354	ilmi.nasrulloh@gmail.com	86
1356	ilmi.nasrulloh@gmail.com	89
1358	ilmi.nasrulloh@gmail.com	78
1360	ilmi.nasrulloh@gmail.com	78
1362	ilmi.nasrulloh@gmail.com	72
1364	ilmi.nasrulloh@gmail.com	98
1366	ilmi.nasrulloh@gmail.com	95
1368	yogar.r@ptpn10.co.id	72
1370	yogar.r@ptpn10.co.id	99
1372	yogar.r@ptpn10.co.id	98
1374	yogar.r@ptpn10.co.id	98
1376	yogar.r@ptpn10.co.id	93
1378	yogar.r@ptpn10.co.id	99
1380	septokuswitjahyono@gmail.com	97
1382	septokuswitjahyono@gmail.com	98
1384	septokuswitjahyono@gmail.com	95
1386	septokuswitjahyono@gmail.com	93
1388	septokuswitjahyono@gmail.com	51
1390	septokuswitjahyono@gmail.com	49
1392	ilmi.nasrulloh@gmail.com	89
1394	ikhwan.krisnadi@ptpn10.co.id	99
1396	ikhwan.krisnadi@ptpn10.co.id	99
1398	ikhwan.krisnadi@ptpn10.co.id	99
1400	ikhwan.krisnadi@ptpn10.co.id	99
1402	ikhwan.krisnadi@ptpn10.co.id	99
1404	ikhwan.krisnadi@ptpn10.co.id	99
1406	ikhwan.krisnadi@ptpn10.co.id	99
1408	ikhwan.krisnadi@ptpn10.co.id	99
1410	ikhwan.krisnadi@ptpn10.co.id	99
1412	bambang84sierra@gmail.com	100
1414	ikhwan.krisnadi@ptpn10.co.id	98
1416	ikhwan.krisnadi@ptpn10.co.id	99
1418	ikhwan.krisnadi@ptpn10.co.id	98
1420	ikhwan.krisnadi@ptpn10.co.id	97
1422	ikhwan.krisnadi@ptpn10.co.id	99
1424	bambang84sierra@gmail.com	97
1426	dwiono.agung@ptpn10.co.id	100
1428	badrusz96@gmail.com	100
1430	bambang84sierra@gmail.com	101
1432	abdulazispurmali@yahoo.com	101
1434	sipanjangkung@gmail.com	102
1436	mukhlis.thohari@ptpn10.co.id	103
1438	faizinzin81@gmail.com	103
1440	faizinzin81@gmail.com	103
1442	faizinzin81@gmail.com	103
1444	mukhlis.thohari@ptpn10.co.id	102
1446	mukhlis.thohari@ptpn10.co.id	101
1448	mukhlis.thohari@ptpn10.co.id	100
1450	mukhlis.thohari@ptpn10.co.id	99
1452	dwiono.agung@ptpn10.co.id	103
1454	dwiono.agung@ptpn10.co.id	103
1456	dwiono.agung@ptpn10.co.id	103
1458	dwiono.agung@ptpn10.co.id	103
1460	suhadi.ptpnx@gmail.com	103
1462	dwiono.agung@ptpn10.co.id	103
1464	dwiono.agung@ptpn10.co.id	103
1466	mashudiana@ptpn10.co.id	86
1468	kristomoyo@gmail.com	102
1470	kristomoyo@gmail.com	101
1472	kristomoyo@gmail.com	102
1474	firnasreyhan@gmail.com	102
1476	firnasreyhan@gmail.com	102
1478	firnasreyhan@gmail.com	102
1480	firnasreyhan@gmail.com	102
1482	firnasreyhan@gmail.com	102
1484	firnasreyhan@gmail.com	102
1486	firnasreyhan@gmail.com	102
1488	m.aziz@ptpn10.co.id	102
1490	hr579464@gmail.com	88
1492	arisulistyawan@gmail.com	103
1494	arisulistyawan@gmail.com	102
1496	arisulistyawan@gmail.com	100
1498	kukusaputro@ptpn10.co.id	101
1500	ikhwan.krisnadi@ptpn10.co.id	103
1502	ikhwan.krisnadi@ptpn10.co.id	103
1504	ikhwan.krisnadi@ptpn10.co.id	102
1506	ikhwan.krisnadi@ptpn10.co.id	101
1508	ikhwan.krisnadi@ptpn10.co.id	100
1510	ikhwan.krisnadi@ptpn10.co.id	103
1512	ikhwan.krisnadi@ptpn10.co.id	103
1514	ikhwan.krisnadi@ptpn10.co.id	95
1516	ikhwan.krisnadi@ptpn10.co.id	95
1518	andykaindra@gmail.com	103
1520	kristomoyo@gmail.com	103
1522	firnasreyhan@gmail.com	101
1524	m.aziz@ptpn10.co.id	103
1526	mashudiana@ptpn10.co.id	103
1528	bambang84sierra@gmail.com	105
1530	yogar.r@ptpn10.co.id	105
1532	arisulistyawan@gmail.com	103
1534	yogar.r@ptpn10.co.id	103
1536	yogar.r@ptpn10.co.id	101
1538	yogar.r@ptpn10.co.id	105
1540	yogar.r@ptpn10.co.id	100
1542	badrusz96@gmail.com	106
1544	bambang84sierra@gmail.com	106
1546	kristomoyo@gmail.com	106
1548	yogar.r@ptpn10.co.id	106
1550	firnasreyhan@gmail.com	105
1552	firnasreyhan@gmail.com	106
1554	nuc.noel@gmail.com	106
1556	nuc.noel@gmail.com	103
1558	yogar.r@ptpn10.co.id	104
1560	yogar.r@ptpn10.co.id	106
1562	yogar.r@ptpn10.co.id	104
1564	firnasreyhan@gmail.com	104
1566	danang.sw@ptpn10.co.id	104
1568	sandi.gunawan@ptpn10.co.id	104
1570	abdulazispurmali@yahoo.com	104
1572	pm.ptpn10@gmail.com	106
1574	pm.ptpn10@gmail.com	106
1576	pm.ptpn10@gmail.com	104
1578	febriarim@gmail.com	104
1580	dwiono.agung@ptpn10.co.id	104
1582	bambang84sierra@gmail.com	104
1584	dwiono.agung@ptpn10.co.id	104
1586	dwiono.agung@ptpn10.co.id	104
1588	dwiono.agung@ptpn10.co.id	104
1590	widyantonno@gmail.com	104
1592	ikhwan.krisnadi@ptpn10.co.id	104
1594	m.aziz@ptpn10.co.id	104
1596	masdan44681@gmail.com	104
1598	hr579464@gmail.com	104
1600	pm.ptpn10@gmail.com	107
1602	awisdm@yahoo.com	107
1604	fajar.priyambada137@gmail.com	108
1606	fajar.priyambada137@gmail.com	105
1608	dwiono.agung@ptpn10.co.id	108
1610	ikhwan.krisnadi@ptpn10.co.id	108
1612	ikhwan.krisnadi@ptpn10.co.id	108
1614	ikhwan.krisnadi@ptpn10.co.id	107
1616	bambang84sierra@gmail.com	108
1618	ikhwan.krisnadi@ptpn10.co.id	106
1620	ikhwan.krisnadi@ptpn10.co.id	105
1622	bambang84sierra@gmail.com	108
1624	bambang84sierra@gmail.com	108
1626	awisdm@yahoo.com	108
1628	bambang84sierra@gmail.com	109
1630	erioctorianto@gmail.com	109
1632	badrusz96@gmail.com	109
1634	ikhwan.krisnadi@ptpn10.co.id	109
1636	desita.yudi@ptpn10.co.id	109
1638	desita.yudi@ptpn10.co.id	108
1640	desita.yudi@ptpn10.co.id	107
1642	desita.yudi@ptpn10.co.id	106
1644	desita.yudi@ptpn10.co.id	105
1646	desita.yudi@ptpn10.co.id	104
1648	desita.yudi@ptpn10.co.id	102
1650	desita.yudi@ptpn10.co.id	97
1652	juniyanto99999@gmail.com	109
1654	juniyanto99999@gmail.com	107
1656	juniyanto99999@gmail.com	107
1658	ulin.nashihulhusna@gmail.com	109
1660	ikhwan.krisnadi@ptpn10.co.id	110
1662	ikhwan.krisnadi@ptpn10.co.id	110
1664	bambang84sierra@gmail.com	110
1666	ikhwan.krisnadi@ptpn10.co.id	107
1668	desita.yudi@ptpn10.co.id	110
1670	soetono.effendi@gmail.com	110
1672	kapista79@gmail.com	107
1674	kapista79@gmail.com	107
1676	dwiono.agung@ptpn10.co.id	110
1678	dwiono.agung@ptpn10.co.id	109
1680	nuc.noel@gmail.com	108
1682	sohelmatsunaga84@gmail.com	108
1684	sanggrareza@gmail.com	110
1686	almasaquille1@gmail.com	108
1688	almasaquille1@gmail.com	110
1690	almasaquille1@gmail.com	109
1692	almasaquille1@gmail.com	110
1694	almasaquille1@gmail.com	109
1696	almasaquille1@gmail.com	108
1698	almasaquille1@gmail.com	107
1700	kristomoyo@gmail.com	111
1702	yogar.r@ptpn10.co.id	111
1704	yogar.r@ptpn10.co.id	112
1706	yogar.r@ptpn10.co.id	113
1708	yogar.r@ptpn10.co.id	113
1710	yogar.r@ptpn10.co.id	111
1712	yogar.r@ptpn10.co.id	111
1714	kristomoyo@gmail.com	111
1716	kristomoyo@gmail.com	111
1718	kristomoyo@gmail.com	111
1720	ikhwan.krisnadi@ptpn10.co.id	111
1722	ikhwan.krisnadi@ptpn10.co.id	111
1724	ikhwan.krisnadi@ptpn10.co.id	111
1726	ikhwan.krisnadi@ptpn10.co.id	112
1728	ikhwan.krisnadi@ptpn10.co.id	112
1730	ikhwan.krisnadi@ptpn10.co.id	113
1734	ikhwan.krisnadi@ptpn10.co.id	111
1736	ikhwan.krisnadi@ptpn10.co.id	111
1738	ikhwan.krisnadi@ptpn10.co.id	104
1740	ikhwan.krisnadi@ptpn10.co.id	111
1742	ikhwan.krisnadi@ptpn10.co.id	111
1744	ikhwan.krisnadi@ptpn10.co.id	112
1746	ikhwan.krisnadi@ptpn10.co.id	111
1748	ikhwan.krisnadi@ptpn10.co.id	106
1750	ikhwan.krisnadi@ptpn10.co.id	106
1752	ikhwan.krisnadi@ptpn10.co.id	111
1754	ikhwan.krisnadi@ptpn10.co.id	111
1756	ikhwan.krisnadi@ptpn10.co.id	111
1758	ikhwan.krisnadi@ptpn10.co.id	111
1760	ikhwan.krisnadi@ptpn10.co.id	111
1762	firnasreyhan@gmail.com	111
1764	firnasreyhan@gmail.com	111
1768	purwo.djatmiko@ptpn10.co.id	119
1778	purwo.djatmiko@ptpn10.co.id	121
1780	bambang84sierra@gmail.com	121
1782	kristomoyo@gmail.com	121
1784	bambang84sierra@gmail.com	121
1786	firnasreyhan@gmail.com	121
1788	firnasreyhan@gmail.com	111
1790	firnasreyhan@gmail.com	121
1792	baktidir@gmail.com	121
1794	bambang84sierra@gmail.com	121
1796	bambang84sierra@gmail.com	121
1798	awisdm@yahoo.com	121
1800	bambang84sierra@gmail.com	113
1802	bambang84sierra@gmail.com	112
1804	awisdm@yahoo.com	121
1806	bambang84sierra@gmail.com	111
1808	zainuddin.fanani@ptpn10.co.id	121
1810	iwanbudi7@gmail.com	121
1812	iwanbudi7@gmail.com	121
1814	dwiono.agung@ptpn10.co.id	121
1816	iwanbudi7@gmail.com	121
1818	iwanbudi7@gmail.com	121
1820	iwanbudi7@gmail.com	121
1822	zainuddin.fanani@ptpn10.co.id	121
1824	m.aziz@ptpn10.co.id	119
1826	m.aziz@ptpn10.co.id	111
1828	m.aziz@ptpn10.co.id	111
1830	m.aziz@ptpn10.co.id	119
1832	m.aziz@ptpn10.co.id	111
1834	m.aziz@ptpn10.co.id	111
1836	m.aziz@ptpn10.co.id	112
1838	sanggrareza@gmail.com	101
1840	sanggrareza@gmail.com	101
1842	sanggrareza@gmail.com	104
1844	almasaquille1@gmail.com	111
1846	almasaquille1@gmail.com	107
1848	almasaquille1@gmail.com	112
1850	desita.yudi@ptpn10.co.id	123
1852	sanggrareza@gmail.com	123
1854	sanggrareza@gmail.com	123
1856	sanggrareza@gmail.com	112
1860	sanggrareza@gmail.com	112
1862	dwiono.agung@ptpn10.co.id	123
1864	almasaquille1@gmail.com	123
1866	dwiono.agung@ptpn10.co.id	124
1868	abdulazispurmali@yahoo.com	124
1870	yogar.r@ptpn10.co.id	124
1872	yogar.r@ptpn10.co.id	124
1874	yogar.r@ptpn10.co.id	123
1876	bambang84sierra@gmail.com	124
1878	bambang84sierra@gmail.com	123
1880	bambang84sierra@gmail.com	113
1882	bambang84sierra@gmail.com	119
1884	almasaquille1@gmail.com	110
1886	almasaquille1@gmail.com	119
1888	almasaquille1@gmail.com	119
1890	almasaquille1@gmail.com	110
1892	almasaquille1@gmail.com	110
1896	almasaquille1@gmail.com	107
1898	rifyanu@gmail.com	125
1900	dwiono.agung@ptpn10.co.id	125
1902	erioctorianto@gmail.com	125
1904	pribadirahadian.rp@gmail.com	125
1906	pribadirahadian.rp@gmail.com	105
1908	awisdm@yahoo.com	125
1910	pribadirahadian.rp@gmail.com	103
1912	awisdm@yahoo.com	124
1914	juniyanto99999@gmail.com	125
1916	zainuddin.fanani@ptpn10.co.id	125
1918	abdulazispurmali@yahoo.com	125
1920	abdulazispurmali@yahoo.com	125
1922	suryanto@ptpn10.co.id	125
1924	bambang84sierra@gmail.com	126
1926	ikhwan.krisnadi@ptpn10.co.id	126
1928	ikhwan.krisnadi@ptpn10.co.id	126
1930	ikhwan.krisnadi@ptpn10.co.id	125
1932	ikhwan.krisnadi@ptpn10.co.id	125
1934	ikhwan.krisnadi@ptpn10.co.id	124
1936	ikhwan.krisnadi@ptpn10.co.id	123
1938	ikhwan.krisnadi@ptpn10.co.id	126
1940	ikhwan.krisnadi@ptpn10.co.id	126
1942	ikhwan.krisnadi@ptpn10.co.id	126
1944	ikhwan.krisnadi@ptpn10.co.id	126
1946	ikhwan.krisnadi@ptpn10.co.id	126
1948	ikhwan.krisnadi@ptpn10.co.id	126
1950	purwo.djatmiko@ptpn10.co.id	126
1952	fajar.priyambada137@gmail.com	126
1954	fajar.priyambada137@gmail.com	125
1956	fajar.priyambada137@gmail.com	124
1958	fajar.priyambada137@gmail.com	126
1960	almasaquille1@gmail.com	126
1962	dwiono.agung@ptpn10.co.id	126
1964	bambang84sierra@gmail.com	127
1966	ikhwan.krisnadi@ptpn10.co.id	127
1968	ikhwan.krisnadi@ptpn10.co.id	127
1970	ikhwan.krisnadi@ptpn10.co.id	127
1972	ikhwan.krisnadi@ptpn10.co.id	127
1974	ikhwan.krisnadi@ptpn10.co.id	127
1976	ikhwan.krisnadi@ptpn10.co.id	127
1978	ikhwan.krisnadi@ptpn10.co.id	127
1980	ikhwan.krisnadi@ptpn10.co.id	127
1982	ikhwan.krisnadi@ptpn10.co.id	127
1984	ikhwan.krisnadi@ptpn10.co.id	127
1986	ikhwan.krisnadi@ptpn10.co.id	127
1988	ikhwan.krisnadi@ptpn10.co.id	127
1990	ikhwan.krisnadi@ptpn10.co.id	127
1992	ikhwan.krisnadi@ptpn10.co.id	127
1994	ikhwan.krisnadi@ptpn10.co.id	127
1996	ikhwan.krisnadi@ptpn10.co.id	127
1998	ikhwan.krisnadi@ptpn10.co.id	119
2000	ikhwan.krisnadi@ptpn10.co.id	127
2002	ikhwan.krisnadi@ptpn10.co.id	127
2004	ikhwan.krisnadi@ptpn10.co.id	126
2006	bambang84sierra@gmail.com	126
2008	awisdm@yahoo.com	128
2010	awisdm@yahoo.com	125
2012	bambang84sierra@gmail.com	128
2014	dwiono.agung@ptpn10.co.id	128
2016	dwiono.agung@ptpn10.co.id	127
2018	dwiandikang@gmail.com	112
2020	dwiandikang@gmail.com	107
2022	dwiandikang@gmail.com	126
2024	dwiandikang@gmail.com	125
2026	dwiandikang@gmail.com	124
2028	suryanto@ptpn10.co.id	88
2030	dwiono.agung@ptpn10.co.id	129
2032	pm.ptpn10@gmail.com	129
2034	bambang84sierra@gmail.com	129
2036	desita.yudi@ptpn10.co.id	129
2038	iwanbudi7@gmail.com	129
2040	kapista79@gmail.com	125
2042	kapista79@gmail.com	113
2044	angganteng@gmail.com	129
2046	angganteng@gmail.com	127
2048	angganteng@gmail.com	125
2050	angganteng@gmail.com	126
2052	muhammadbahruddinhidayat@gmail.com	129
2054	bambang84sierra@gmail.com	130
2056	awisdm@yahoo.com	130
2058	waskito.mulyo@gmail.com	130
2060	pribadirahadian.rp@gmail.com	130
2062	iwanbudi7@gmail.com	131
2064	desita.yudi@ptpn10.co.id	131
2066	bambang84sierra@gmail.com	131
2068	desita.yudi@ptpn10.co.id	129
2070	bambang84sierra@gmail.com	131
2072	bambang84sierra@gmail.com	129
2074	bambang84sierra@gmail.com	129
2076	faizinzin81@gmail.com	131
2078	bambang84sierra@gmail.com	129
2080	bambang84sierra@gmail.com	125
2082	awisdm@yahoo.com	131
2084	fajar.priyambada137@gmail.com	131
2086	fajar.priyambada137@gmail.com	127
2088	almasaquille1@gmail.com	131
2090	juniyanto99999@gmail.com	131
2092	almasaquille1@gmail.com	131
2094	dwiono.agung@ptpn10.co.id	131
2096	juniyanto99999@gmail.com	132
2098	juniyanto99999@gmail.com	131
2100	sipanjangkung@gmail.com	132
2102	erioctorianto@gmail.com	132
2104	suhadi.ptpnx@gmail.com	132
2106	bambang84sierra@gmail.com	132
2108	dwiono.agung@ptpn10.co.id	132
2110	angganteng@gmail.com	132
2112	angganteng@gmail.com	132
2114	angganteng@gmail.com	131
2116	angganteng@gmail.com	129
2118	angganteng@gmail.com	127
2120	suryanto@ptpn10.co.id	132
2122	desita.yudi@ptpn10.co.id	133
2124	bambang84sierra@gmail.com	133
2126	bambang84sierra@gmail.com	132
2128	bambang84sierra@gmail.com	133
2130	bambang84sierra@gmail.com	133
2132	sandi.gunawan@ptpn10.co.id	133
2134	abdulazispurmali@yahoo.com	133
2136	pribadirahadian.rp@gmail.com	133
2138	dwiono.agung@ptpn10.co.id	133
2140	ilhamala0915@gmail.com	133
2142	ilhamala0915@gmail.com	132
2144	abdulazispurmali@yahoo.com	133
2146	yonopg@gmail.com	88
2148	yonopg@gmail.com	89
2150	awisdm@yahoo.com	134
2152	bambang84sierra@gmail.com	134
2154	bambang84sierra@gmail.com	133
2156	bambang84sierra@gmail.com	134
2158	fajar.priyambada137@gmail.com	134
2160	almasaquille1@gmail.com	134
2162	fajar.priyambada137@gmail.com	133
2164	desita.yudi@ptpn10.co.id	134
2166	bambangqaptpnx@gmail.com	134
2168	almasaquille1@gmail.com	134
2170	dwiono.agung@ptpn10.co.id	134
2172	desita.yudi@ptpn10.co.id	135
2174	desita.yudi@ptpn10.co.id	133
2176	sanggrareza@gmail.com	135
2178	dwiono.agung@ptpn10.co.id	135
2180	fajar.priyambada137@gmail.com	135
2182	bambang84sierra@gmail.com	133
2184	bambang84sierra@gmail.com	135
2186	-	70
2188	-	134
2190	-	134
2192	firnasreyhan@gmail.com	134
2194	firnasreyhan@gmail.com	134
2196	firnasreyhan@gmail.com	134
2198	digimagz5@gmail.com	131
2200	digimagz5@gmail.com	70
2202	-	70
2204	sanggrareza@gmail.com	135
2206	sanggrareza@gmail.com	131
2208	sanggrareza@gmail.com	129
2210	sanggrareza@gmail.com	127
2212	sanggrareza@gmail.com	126
2214	sanggrareza@gmail.com	124
2216	digimagz5@gmail.com	70
2218	digimagz5@gmail.com	70
2220	digimagz5@gmail.com	133
2222	digimagz5@gmail.com	72
2224	digimagz5@gmail.com	18
2226	digimagz5@gmail.com	70
2228	digimagz5@gmail.com	70
2230	digimagz5@gmail.com	134
2232	digimagz5@gmail.com	134
2234	digimagz5@gmail.com	134
2236	digimagz5@gmail.com	134
2238	digimagz5@gmail.com	134
2240	digimagz5@gmail.com	70
2242	ikhwan.krisnadi@ptpn10.co.id	134
2244	ikhwan.krisnadi@ptpn10.co.id	133
2246	ikhwan.krisnadi@ptpn10.co.id	135
2248	ikhwan.krisnadi@ptpn10.co.id	135
2250	ikhwan.krisnadi@ptpn10.co.id	132
2252	ikhwan.krisnadi@ptpn10.co.id	131
2254	ikhwan.krisnadi@ptpn10.co.id	130
2256	ikhwan.krisnadi@ptpn10.co.id	129
2258	ikhwan.krisnadi@ptpn10.co.id	127
2260	digimagz5@gmail.com	134
2262	digimagz5@gmail.com	70
2264	digimagz5@gmail.com	70
2266	desita.yudi@ptpn10.co.id	136
2268	desita.yudi@ptpn10.co.id	136
2270	desita.yudi@ptpn10.co.id	136
2272	pm.ptpn10@gmail.com	136
2274	bambang84sierra@gmail.com	137
2276	desita.yudi@ptpn10.co.id	137
2278	dwiono.agung@ptpn10.co.id	137
2280	pm.ptpn10@gmail.com	137
2282	purwo.djatmiko@ptpn10.co.id	137
2284	bambang84sierra@gmail.com	137
2286	fajar.priyambada137@gmail.com	137
2288	almasaquille1@gmail.com	137
2290	pribadirahadian.rp@gmail.com	137
2292	pribadirahadian.rp@gmail.com	136
2294	bambang84sierra@gmail.com	137
2296	bambang84sierra@gmail.com	136
2298	bambang84sierra@gmail.com	135
2300	bambang84sierra@gmail.com	136
2302	juniyanto99999@gmail.com	137
2304	bambang84sierra@gmail.com	137
2306	bambangqaptpnx@gmail.com	137
2308	bambang84sierra@gmail.com	137
2310	bambang84sierra@gmail.com	136
2312	firnasreyhan@gmail.com	70
2314	ikhwan.krisnadi@ptpn10.co.id	137
2316	ikhwan.krisnadi@ptpn10.co.id	136
2318	dwiono.agung@ptpn10.co.id	137
2320	firnasreyhan@gmail.com	112
2322	firnasreyhan@gmail.com	134
2324	digimagz5@gmail.com	78
2326	digimagz5@gmail.com	136
2328	digimagz5@gmail.com	135
2330	digimagz5@gmail.com	130
2332	digimagz5@gmail.com	119
2334	digimagz5@gmail.com	128
2336	digimagz5@gmail.com	67
2338	digimagz5@gmail.com	64
2340	digimagz5@gmail.com	3
2342	digimagz5@gmail.com	68
2344	digimagz5@gmail.com	68
2346	digimagz5@gmail.com	61
2348	digimagz5@gmail.com	68
2350	digimagz5@gmail.com	66
2352	digimagz5@gmail.com	134
2354	digimagz5@gmail.com	126
2356	digimagz5@gmail.com	98
2358	digimagz5@gmail.com	93
2360	digimagz5@gmail.com	72
2362	digimagz5@gmail.com	63
2364	juniyanto99999@gmail.com	136
2366	digimagz5@gmail.com	61
2368	suryanto@ptpn10.co.id	136
2370	suryanto@ptpn10.co.id	137
2372	suryanto@ptpn10.co.id	136
2374	digimagz5@gmail.com	66
2376	digimagz5@gmail.com	54
2378	digimagz5@gmail.com	68
2380	muhammadbahruddinhidayat@gmail.com	137
2382	muhammadbahruddinhidayat@gmail.com	136
2384	muhammadbahruddinhidayat@gmail.com	136
2386	muhammadbahruddinhidayat@gmail.com	136
2388	-	136
2390	-	136
2392	dwiono.agung@ptpn10.co.id	138
2394	jadid73@gmail.com	138
2396	mukhlis.thohari@ptpn10.co.id	138
2398	jadid73@gmail.com	138
2400	bambang84sierra@gmail.com	138
2402	jadid73@gmail.com	138
2404	desita.yudi@ptpn10.co.id	138
2406	widyantonno@gmail.com	138
2408	nuc.noel@gmail.com	138
2410	mukhlis.thohari@ptpn10.co.id	138
2412	mukhlis.thohari@ptpn10.co.id	138
2414	sandi.gunawan@ptpn10.co.id	138
2416	jadid73@gmail.com	138
2418	erioctorianto@gmail.com	138
2420	jadid73@gmail.com	137
2422	jadid73@gmail.com	127
2424	arisulistyawan@gmail.com	138
2426	arisulistyawan@gmail.com	137
2428	arisulistyawan@gmail.com	134
2430	arisulistyawan@gmail.com	125
2432	abdulazispurmali@yahoo.com	135
2434	abdulazispurmali@yahoo.com	133
2436	abdulazispurmali@yahoo.com	136
2438	angganteng@gmail.com	137
2440	angganteng@gmail.com	137
2442	angganteng@gmail.com	134
2444	-	138
2446	angganteng@gmail.com	138
2448	angganteng@gmail.com	72
2450	mohammadsyaiful.rizal@gmail.com	138
2452	mohammadsyaiful.rizal@gmail.com	138
2454	mohammadsyaiful.rizal@gmail.com	138
2456	mohammadsyaiful.rizal@gmail.com	136
2458	mohammadsyaiful.rizal@gmail.com	137
2460	mohammadsyaiful.rizal@gmail.com	134
2462	mohammadsyaiful.rizal@gmail.com	133
2464	mohammadsyaiful.rizal@gmail.com	135
2466	mohammadsyaiful.rizal@gmail.com	132
2468	mohammadsyaiful.rizal@gmail.com	131
2470	mohammadsyaiful.rizal@gmail.com	130
2472	mohammadsyaiful.rizal@gmail.com	130
2474	mohammadsyaiful.rizal@gmail.com	129
2476	mohammadsyaiful.rizal@gmail.com	127
2478	mohammadsyaiful.rizal@gmail.com	126
2480	mohammadsyaiful.rizal@gmail.com	125
2482	mohammadsyaiful.rizal@gmail.com	124
2484	mohammadsyaiful.rizal@gmail.com	123
2486	mohammadsyaiful.rizal@gmail.com	111
2488	mohammadsyaiful.rizal@gmail.com	112
2490	mohammadsyaiful.rizal@gmail.com	113
2492	mohammadsyaiful.rizal@gmail.com	110
2494	mohammadsyaiful.rizal@gmail.com	119
2496	mohammadsyaiful.rizal@gmail.com	109
2498	mohammadsyaiful.rizal@gmail.com	128
2500	mohammadsyaiful.rizal@gmail.com	108
2502	mohammadsyaiful.rizal@gmail.com	107
2504	mohammadsyaiful.rizal@gmail.com	106
2506	mohammadsyaiful.rizal@gmail.com	121
2508	mohammadsyaiful.rizal@gmail.com	105
2510	mohammadsyaiful.rizal@gmail.com	104
2512	mohammadsyaiful.rizal@gmail.com	118
2514	mohammadsyaiful.rizal@gmail.com	103
2516	mohammadsyaiful.rizal@gmail.com	102
2518	mohammadsyaiful.rizal@gmail.com	101
2520	mohammadsyaiful.rizal@gmail.com	100
2522	mohammadsyaiful.rizal@gmail.com	99
2524	mohammadsyaiful.rizal@gmail.com	98
2526	ikhwan.krisnadi@ptpn10.co.id	138
2528	ikhwan.krisnadi@ptpn10.co.id	138
2530	ikhwan.krisnadi@ptpn10.co.id	136
2532	arisulistyawan@gmail.com	139
2534	m.aziz@ptpn10.co.id	140
2536	m.aziz@ptpn10.co.id	138
2538	m.aziz@ptpn10.co.id	136
2540	mukhlis.thohari@ptpn10.co.id	140
2542	dwiono.agung@ptpn10.co.id	140
2544	almasaquille1@gmail.com	140
2546	pribadirahadian.rp@gmail.com	140
2548	almasaquille1@gmail.com	139
2550	almasaquille1@gmail.com	139
2552	pribadirahadian.rp@gmail.com	138
2554	almasaquille1@gmail.com	138
2556	bambang84sierra@gmail.com	140
2558	bambang84sierra@gmail.com	140
2560	bambang84sierra@gmail.com	139
2562	bambang84sierra@gmail.com	140
2564	desita.yudi@ptpn10.co.id	140
2566	desita.yudi@ptpn10.co.id	139
2568	bambang84sierra@gmail.com	140
2570	bambang84sierra@gmail.com	139
2572	fajar.priyambada137@gmail.com	140
2574	abdulazispurmali@yahoo.com	140
2576	faizinzin81@gmail.com	140
2578	faizinzin81@gmail.com	138
2580	febriarim@gmail.com	140
2582	m.aziz@ptpn10.co.id	137
2584	m.aziz@ptpn10.co.id	138
2586	pribadirahadian.rp@gmail.com	139
2588	digimagz5@gmail.com	70
2590	mohammadsyaiful.rizal@gmail.com	139
2592	mohammadsyaiful.rizal@gmail.com	140
2594	mohammadsyaiful.rizal@gmail.com	70
2596	bambangqaptpnx@gmail.com	139
2598	bambangqaptpnx@gmail.com	134
2600	desita.yudi@ptpn10.co.id	141
2602	bambang84sierra@gmail.com	141
2604	zainuddin.fanani@ptpn10.co.id	142
2606	aldino@ptpn10.co.id	142
2608	aldino@ptpn10.co.id	141
2610	bambang84sierra@gmail.com	142
2612	faizinzin81@gmail.com	142
2614	awisdm@yahoo.com	142
2616	bambangqaptpnx@gmail.com	142
2618	awisdm@yahoo.com	140
2620	dwiono.agung@ptpn10.co.id	142
2622	sandi.gunawan@ptpn10.co.id	142
2624	suryanto@ptpn10.co.id	142
2626	suryanto@ptpn10.co.id	140
2628	sohelmatsunaga84@gmail.com	142
2630	sohelmatsunaga84@gmail.com	142
2632	pribadirahadian.rp@gmail.com	131
2634	pribadirahadian.rp@gmail.com	141
2636	desita.yudi@ptpn10.co.id	143
2638	desita.yudi@ptpn10.co.id	142
2640	desita.yudi@ptpn10.co.id	144
2642	abdulazispurmali@yahoo.com	144
2644	abdulazispurmali@yahoo.com	143
2646	bambang84sierra@gmail.com	144
2648	juniyanto99999@gmail.com	144
2650	juniyanto99999@gmail.com	144
2652	juniyanto99999@gmail.com	144
2654	bambangqaptpnx@gmail.com	144
2656	bambang84sierra@gmail.com	144
2658	juniyanto99999@gmail.com	144
2660	juniyanto99999@gmail.com	144
2662	faizinzin81@gmail.com	145
2664	desita.yudi@ptpn10.co.id	145
2666	pribadirahadian.rp@gmail.com	145
2668	pribadirahadian.rp@gmail.com	143
2670	bambangqaptpnx@gmail.com	145
2672	bambangqaptpnx@gmail.com	139
2674	bambangqaptpnx@gmail.com	139
2676	bambangqaptpnx@gmail.com	138
2678	bambangqaptpnx@gmail.com	106
2680	febriarim@gmail.com	145
2682	ilhamala0915@gmail.com	145
2684	purwo.djatmiko@ptpn10.co.id	145
2686	ariehard46@yahoo.co.id	145
2688	bambang84sierra@gmail.com	145
2690	bambang84sierra@gmail.com	143
2692	bambang84sierra@gmail.com	141
2694	bambang84sierra@gmail.com	141
2696	bambang84sierra@gmail.com	142
2698	arisulistyawan@gmail.com	144
2700	arisulistyawan@gmail.com	145
2702	arisulistyawan@gmail.com	142
2704	arisulistyawan@gmail.com	139
2706	arisulistyawan@gmail.com	140
2708	mohammadsyaiful.rizal@gmail.com	145
2710	mohammadsyaiful.rizal@gmail.com	143
2712	mohammadsyaiful.rizal@gmail.com	144
2714	mohammadsyaiful.rizal@gmail.com	142
2716	mohammadsyaiful.rizal@gmail.com	141
2718	sohelmatsunaga84@gmail.com	144
2720	yohanesdl9@gmail.com	136
2722	yohanesdl9@gmail.com	136
2724	bambangqaptpnx@gmail.com	143
2726	abdulazispurmali@yahoo.com	146
2728	muhammadbahruddinhidayat@gmail.com	146
2730	muhammadbahruddinhidayat@gmail.com	145
2732	muhammadbahruddinhidayat@gmail.com	144
2734	fajar.priyambada137@gmail.com	146
2736	fajar.priyambada137@gmail.com	145
2738	badrusz96@gmail.com	147
2740	dwiono.agung@ptpn10.co.id	147
2742	pribadirahadian.rp@gmail.com	140
2744	m.aziz@ptpn10.co.id	145
2746	m.aziz@ptpn10.co.id	145
2748	m.aziz@ptpn10.co.id	145
2750	m.aziz@ptpn10.co.id	143
2752	abdulazispurmali@yahoo.com	148
2754	arisson1966@gmail.com	148
2756	sandi.gunawan@ptpn10.co.id	148
2758	desita.yudi@ptpn10.co.id	148
2760	danang.sw@ptpn10.co.id	148
2762	pribadirahadian.rp@gmail.com	148
2764	iwanbudi7@gmail.com	148
2766	purwo.djatmiko@ptpn10.co.id	148
2768	badrusz96@gmail.com	148
2770	mohammadsyaiful.rizal@gmail.com	147
2772	erioctorianto@gmail.com	145
2774	yogar.r@ptpn10.co.id	149
2776	sipanjangkung@gmail.com	149
2778	sanggrareza@gmail.com	149
2780	abdulazispurmali@yahoo.com	149
2782	purwo.djatmiko@ptpn10.co.id	149
2784	bambangqaptpnx@gmail.com	149
2786	dwiono.agung@ptpn10.co.id	149
2788	m.aziz@ptpn10.co.id	149
2790	m.aziz@ptpn10.co.id	148
2792	hr579464@gmail.com	149
2794	masdan44681@gmail.com	149
2796	masdan44681@gmail.com	144
2798	masdan44681@gmail.com	139
2800	masdan44681@gmail.com	140
2802	masdan44681@gmail.com	124
2804	masdan44681@gmail.com	113
2806	hariyonomp@gmail.com	149
2808	muhammadbahruddinhidayat@gmail.com	140
2810	muhammadbahruddinhidayat@gmail.com	131
2812	mohammadsyaiful.rizal@gmail.com	149
2814	erioctorianto@gmail.com	150
2816	bambang84sierra@gmail.com	150
2818	badrusz96@gmail.com	150
2820	dwiono.agung@ptpn10.co.id	150
2822	amwardisamad@qmail.id	140
2824	amwardisamad@qmail.id	132
2826	desita.yudi@ptpn10.co.id	151
2828	desita.yudi@ptpn10.co.id	149
2830	juniyanto99999@gmail.com	151
2832	pribadirahadian.rp@gmail.com	151
2834	purwo.djatmiko@ptpn10.co.id	151
2836	dwiono.agung@ptpn10.co.id	151
2838	pm.ptpn10@gmail.com	152
2840	pm.ptpn10@gmail.com	108
2842	pribadirahadian.rp@gmail.com	152
2844	pribadirahadian.rp@gmail.com	149
2846	muhammadbahruddinhidayat@gmail.com	151
2848	muhammadbahruddinhidayat@gmail.com	151
2850	bambang84sierra@gmail.com	153
2852	pribadirahadian.rp@gmail.com	153
2854	zainuddin.fanani@ptpn10.co.id	154
2856	zainuddin.fanani@ptpn10.co.id	151
2858	awisdm@yahoo.com	154
2860	bambang84sierra@gmail.com	154
2862	badrusz96@gmail.com	154
2864	abdulazispurmali@yahoo.com	154
2866	dwiono.agung@ptpn10.co.id	154
2868	dwiono.agung@ptpn10.co.id	154
2870	dwiono.agung@ptpn10.co.id	152
2872	dwiono.agung@ptpn10.co.id	154
2874	dwiono.agung@ptpn10.co.id	154
2876	m.aziz@ptpn10.co.id	139
2878	amwardisamad@qmail.id	148
2880	purwo.djatmiko@ptpn10.co.id	155
2882	sanggrareza@gmail.com	155
2884	abdulazispurmali@yahoo.com	155
2886	dwiono.agung@ptpn10.co.id	155
2888	pribadirahadian.rp@gmail.com	155
2890	pribadirahadian.rp@gmail.com	152
2892	mohammadsyaiful.rizal@gmail.com	31
2894	sandi.gunawan@ptpn10.co.id	156
2896	ikhwan.krisnadi@ptpn10.co.id	156
2898	ikhwan.krisnadi@ptpn10.co.id	155
2900	ikhwan.krisnadi@ptpn10.co.id	154
2902	ikhwan.krisnadi@ptpn10.co.id	153
2904	ikhwan.krisnadi@ptpn10.co.id	152
2906	ikhwan.krisnadi@ptpn10.co.id	152
2908	ikhwan.krisnadi@ptpn10.co.id	151
2910	ikhwan.krisnadi@ptpn10.co.id	150
2912	ikhwan.krisnadi@ptpn10.co.id	149
2914	ikhwan.krisnadi@ptpn10.co.id	148
2916	ikhwan.krisnadi@ptpn10.co.id	147
2918	faizinzin81@gmail.com	156
2920	arisulistyawan@gmail.com	156
2922	arisulistyawan@gmail.com	155
2924	arisulistyawan@gmail.com	153
2926	muhammadbahruddinhidayat@gmail.com	156
2928	dwiono.agung@ptpn10.co.id	156
2930	purwo.djatmiko@ptpn10.co.id	156
2932	desita.yudi@ptpn10.co.id	157
2934	badrusz96@gmail.com	157
2936	iwanbudi7@gmail.com	157
2938	hr579464@gmail.com	157
2940	iwanbudi7@gmail.com	157
2942	awisdm@yahoo.com	158
2944	awisdm@yahoo.com	156
2946	awisdm@yahoo.com	157
2948	iwanbudi7@gmail.com	158
2950	awisdm@yahoo.com	155
2952	awisdm@yahoo.com	149
2954	pribadirahadian.rp@gmail.com	158
2956	pribadirahadian.rp@gmail.com	157
2958	arisulistyawan@gmail.com	158
2960	hr579464@gmail.com	158
2962	hr579464@gmail.com	156
2964	muhammadbahruddinhidayat@gmail.com	157
2966	dwiono.agung@ptpn10.co.id	158
2968	dwiono.agung@ptpn10.co.id	158
2970	dwiono.agung@ptpn10.co.id	139
2972	dwiono.agung@ptpn10.co.id	137
2974	dwiono.agung@ptpn10.co.id	134
2976	iwanbudi7@gmail.com	159
2978	iwanbudi7@gmail.com	157
2980	sandi.gunawan@ptpn10.co.id	159
2982	awisdm@yahoo.com	159
2984	awisdm@yahoo.com	140
2986	awisdm@yahoo.com	160
2988	iwanbudi7@gmail.com	160
2990	pribadirahadian.rp@gmail.com	160
2992	desita.yudi@ptpn10.co.id	160
2994	desita.yudi@ptpn10.co.id	160
2996	faizinzin81@gmail.com	160
2998	faizinzin81@gmail.com	157
3000	faizinzin81@gmail.com	158
3002	sandi.gunawan@ptpn10.co.id	159
3004	sandi.gunawan@ptpn10.co.id	160
3006	faizinzin81@gmail.com	160
3008	abdulazispurmali@yahoo.com	160
3010	abdulazispurmali@yahoo.com	159
3012	b.hernowo@ptpn10.co.id	160
3014	dwiono.agung@ptpn10.co.id	160
3016	kapista79@gmail.com	160
3018	ifanremise08@gmail.com	160
3020	ifanremise08@gmail.com	160
3022	ifanremise08@gmail.com	149
3024	ifanremise08@gmail.com	148
3026	ifanremise08@gmail.com	137
3028	iwanbudi7@gmail.com	161
3030	iwanbudi7@gmail.com	161
3032	purwo.djatmiko@ptpn10.co.id	161
3034	erioctorianto@gmail.com	161
3036	faizinzin81@gmail.com	161
3038	dwiono.agung@ptpn10.co.id	161
3040	m.aziz@ptpn10.co.id	160
3042	m.aziz@ptpn10.co.id	160
3044	desita.yudi@ptpn10.co.id	162
3046	iwanbudi7@gmail.com	162
3048	iwanbudi7@gmail.com	161
3050	erioctorianto@gmail.com	162
3052	muhammadbahruddinhidayat@gmail.com	160
3054	muhammadbahruddinhidayat@gmail.com	160
3056	febriarim@gmail.com	162
3058	ifanremise08@gmail.com	161
3060	sutaji0702@gmail.com	162
3062	abilmiqdad67@gmail.com	160
3064	sanggrareza@gmail.com	162
3066	sanggrareza@gmail.com	159
3068	sanggrareza@gmail.com	158
3070	sanggrareza@gmail.com	161
3072	sanggrareza@gmail.com	157
3074	sanggrareza@gmail.com	156
3076	sanggrareza@gmail.com	155
3078	sanggrareza@gmail.com	151
3080	sanggrareza@gmail.com	152
3082	sanggrareza@gmail.com	151
3084	sanggrareza@gmail.com	145
3086	sanggrareza@gmail.com	129
3088	pribadirahadian.rp@gmail.com	161
3090	pribadirahadian.rp@gmail.com	162
3092	pribadirahadian.rp@gmail.com	160
3094	pribadirahadian.rp@gmail.com	159
3096	pribadirahadian.rp@gmail.com	132
3098	febriarim@gmail.com	161
3100	pribadirahadian.rp@gmail.com	165
3102	pribadirahadian.rp@gmail.com	165
3104	pribadirahadian.rp@gmail.com	165
3106	pribadirahadian.rp@gmail.com	165
3108	purwo.djatmiko@ptpn10.co.id	165
3110	purwo.djatmiko@ptpn10.co.id	164
3112	erioctorianto@gmail.com	165
3114	dwiono.agung@ptpn10.co.id	165
3116	dwiono.agung@ptpn10.co.id	165
3118	dwiono.agung@ptpn10.co.id	165
3120	hariyonomp@gmail.com	165
3122	purwo.djatmiko@ptpn10.co.id	167
3124	abdulazispurmali@yahoo.com	166
3126	sokibx@gmail.com	167
3128	dwiono.agung@ptpn10.co.id	165
3130	dwiono.agung@ptpn10.co.id	165
3132	dwiono.agung@ptpn10.co.id	165
3134	m.aziz@ptpn10.co.id	166
3136	m.aziz@ptpn10.co.id	166
3138	amwardisamad@qmail.id	167
3140	amwardisamad@qmail.id	160
3142	mohammadsyaiful.rizal@gmail.com	167
3144	yogar.r@ptpn10.co.id	155
3146	rifyanu@gmail.com	170
3148	rifyanu@gmail.com	172
3150	rifyanu@gmail.com	174
3152	rifyanu@gmail.com	173
3154	nyani.chemeng@gmail.com	174
3156	nyani.chemeng@gmail.com	170
3158	nyani.chemeng@gmail.com	176
3160	nyani.chemeng@gmail.com	176
3162	faizinzin81@gmail.com	180
3164	ayikbesali76@gmail.com	168
3166	ayikbesali76@gmail.com	168
3168	m.aziz@ptpn10.co.id	184
3170	m.aziz@ptpn10.co.id	172
3172	arisulistyawan@gmail.com	174
3174	kapista79@gmail.com	185
3176	ayikbesali76@gmail.com	168
3178	arisulistyawan@gmail.com	185
3180	kapista79@gmail.com	170
3182	faizinzin81@gmail.com	186
3184	faizinzin81@gmail.com	187
3186	arisulistyawan@gmail.com	166
3188	faizinzin81@gmail.com	187
3190	faizinzin81@gmail.com	192
3192	ardianto.redy@gmail.com	168
3194	dwiono.agung@ptpn10.co.id	183
3196	ayikbesali76@gmail.com	194
3198	desita.yudi@ptpn10.co.id	194
3200	ayikbesali76@gmail.com	194
3202	ayikbesali76@gmail.com	193
3204	awisdm@yahoo.com	194
3206	awisdm@yahoo.com	193
3208	awisdm@yahoo.com	168
3210	faizinzin81@gmail.com	194
3212	septokuswitjahyono@gmail.com	194
3214	desita.yudi@ptpn10.co.id	195
3216	awisdm@yahoo.com	195
3218	faizinzin81@gmail.com	195
3220	mahfud.me5@gmail.com	181
3222	mahfud.me5@gmail.com	195
3224	ismedrohadi@gmail.com	185
3226	b.hernowo@ptpn10.co.id	197
3228	juniyanto99999@gmail.com	198
3230	juniyanto99999@gmail.com	197
3232	juniyanto99999@gmail.com	195
3234	ismedrohadi@gmail.com	198
3236	ismedrohadi@gmail.com	198
3238	ismedrohadi@gmail.com	194
3240	ismedrohadi@gmail.com	185
3242	ismedrohadi@gmail.com	199
3244	ismedrohadi@gmail.com	198
3246	mahfud.me5@gmail.com	197
3248	b.hernowo@ptpn10.co.id	199
3250	b.hernowo@ptpn10.co.id	198
3252	m.aziz@ptpn10.co.id	201
3254	ismedrohadi@gmail.com	201
3256	ismedrohadi@gmail.com	200
3258	rizkysipil12@gmail.com	201
3260	rizkysipil12@gmail.com	200
3262	rizkysipil12@gmail.com	201
3264	mohammadsyaiful.rizal@gmail.com	201
3266	mohammadsyaiful.rizal@gmail.com	200
3268	mohammadsyaiful.rizal@gmail.com	199
3270	mohammadsyaiful.rizal@gmail.com	198
3272	mohammadsyaiful.rizal@gmail.com	197
3274	mohammadsyaiful.rizal@gmail.com	196
3276	mohammadsyaiful.rizal@gmail.com	195
3278	mohammadsyaiful.rizal@gmail.com	194
3280	mohammadsyaiful.rizal@gmail.com	193
3282	mohammadsyaiful.rizal@gmail.com	202
3284	ismedrohadi@gmail.com	199
3286	ismedrohadi@gmail.com	203
3288	bambangqaptpnx@gmail.com	203
3290	awisdm@yahoo.com	203
3292	awisdm@yahoo.com	202
3294	awisdm@yahoo.com	200
3296	awisdm@yahoo.com	201
3298	hariyonomp@gmail.com	203
3300	seno.mail888@gmail.com	204
3302	ismedrohadi@gmail.com	204
3304	hariyonomp@gmail.com	204
3306	hariyonomp@gmail.com	204
3308	hariyonomp@gmail.com	204
3310	hariyonomp@gmail.com	204
3312	hariyonomp@gmail.com	204
3314	hariyonomp@gmail.com	204
3316	hariyonomp@gmail.com	204
3318	hariyonomp@gmail.com	204
3320	hariyonomp@gmail.com	204
3322	hariyonomp@gmail.com	204
3324	awisdm@yahoo.com	205
3326	ismedrohadi@gmail.com	205
3328	kzvyttvtqe_1576843944@tfbnw.net	204
3330	mohammadsyaiful.rizal@gmail.com	205
3332	nuridhani29@gmail.com	195
3334	nuridhani29@gmail.com	205
3336	-	205
3338	-	203
3340	meliaamw@ymail.com	197
3342	meliaamw@ymail.com	112
3344	-	205
3346	-	205
3348	meliaamw@ymail.com	199
3350	dwiono.agung@ptpn10.co.id	206
3352	kapista79@gmail.com	196
3354	kapista79@gmail.com	206
3356	kapista79@gmail.com	204
3358	ismedrohadi@gmail.com	206
3360	-	206
3362	faizinzin81@gmail.com	206
3364	ismedrohadi@gmail.com	208
3366	mahfud.me5@gmail.com	206
3368	mahfud.me5@gmail.com	208
3370	mahfud.me5@gmail.com	206
3372	mahfud.me5@gmail.com	205
3374	ismedrohadi@gmail.com	208
3376	pm.ptpn10@gmail.com	206
3378	pm.ptpn10@gmail.com	206
3380	ismedrohadi@gmail.com	207
3382	ismedrohadi@gmail.com	208
3384	ismedrohadi@gmail.com	208
3386	ismedrohadi@gmail.com	207
3388	bambangs.n10@gmail.com	208
3390	ismedrohadi@gmail.com	208
3392	ismedrohadi@gmail.com	207
3394	ismedrohadi@gmail.com	207
3396	hr579464@gmail.com	208
3398	hr579464@gmail.com	208
3400	kopralapp@gmail.com	209
3402	kopralapp@gmail.com	209
3404	kopralapp@gmail.com	209
3406	kopralapp@gmail.com	36
3408	hariyonomp@gmail.com	210
3410	ismedrohadi@gmail.com	210
3412	ismedrohadi@gmail.com	209
3414	ismedrohadi@gmail.com	210
3416	dwiono.agung@ptpn10.co.id	210
\.


                                                                                                                                                                                                                                                                                                                                                                                                                3878.dat                                                                                            0000600 0004000 0002000 00000002370 14024026461 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	PTPN X	2019-12-07 19:04:07
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
20	BEAT THE CHALLENGE	2020-01-02 14:15:22
21	SIPRO	2020-01-03 07:25:59
22	BUMN	2020-01-08 07:25:05
23	bumnhadiruntuknegeri	2020-01-09 08:48:34
24	2020	2020-01-09 08:48:34
25	perkebunan	2020-01-09 08:48:34
26	gula	2020-01-09 08:48:34
27	enero	2020-01-09 08:48:34
28	nmu	2020-01-09 08:48:34
29	dasaplastnusantara	2020-01-09 08:48:34
30	mitrataniduatujuh	2020-01-09 08:48:34
31	pabrikgula	2020-01-09 08:48:34
32	kebuntembakau	2020-01-09 08:48:34
33	Giling 2020	2020-01-23 18:16:34
34	nusantaramedikautama	2020-01-25 11:14:18
35	milenial	2020-01-28 08:25:15
36	petani	2020-01-28 08:25:15
37	biofarma	2020-01-28 08:25:15
38	Holding	2020-02-04 08:32:54
39	sipro	2020-02-05 08:54:06
40	direksimenyapakaryawan	2020-02-07 08:16:47
41	sinergi	2020-02-07 08:22:31
42	csr	2020-02-11 07:40:34
43	komut	2020-02-19 08:36:54
44	mediavisit	2020-02-25 08:58:58
45	HUT	2020-02-25 08:58:58
46	IIKB	2020-02-27 08:02:36
\.


                                                                                                                                                                                                                                                                        3880.dat                                                                                            0000600 0004000 0002000 00000053743 14024026461 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        andika.vernanda@gmail.com	Andika Vernanda	\N	2019-10-11 01:29:51	1986-11-27	L	External
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
digimagz5@gmail.com	Digimagz5	\N	2019-12-28 23:42:13	1992-12-29	L	External
voidels.rey05@gmail.com	Voidels Rey	\N	2019-10-23 07:58:35	\N	\N	External
dhitamawardani@gmail.com	Dhita Mawardani	\N	2019-10-31 05:54:22	\N	\N	External
irfanalfiansyah10@gmail.com	Irfan Alfiansyahhh	\N	2019-10-23 08:46:43	\N	\N	External
171111079@mhs.stiki.ac.id	171111079 MUHAMMAD REYHAN FIRNAS ADANI	\N	2019-10-09 05:19:21	\N	\N	External
jirencore7@gmail.com	Jiren Core	\N	2019-12-04 00:56:27	\N	\N	External
sanade2034@gmail.com	sans 123	\N	2019-12-04 01:03:44	\N	\N	External
bagus.kristanto@stiki.ac.id	Bagus Kristomoyo Kristanto	\N	2019-12-04 01:17:06	\N	\N	External
mreyhanfirnasa@gmail.com	Reyhan Firnas	\N	2019-12-04 01:20:26	\N	\N	External
reyhan.adani@stiki.ac.id	MUHAMMAD REYHAN FIRNAS	\N	2019-12-04 01:36:41	\N	\N	External
panjidia995@gmail.com	panji saja	\N	2019-12-04 01:37:49	\N	\N	External
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
tutuscahyawibowo1973@gmail.com	Tutus Cahya wibowo	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1205393934.jpg	2020-01-01 19:19:34	1973-03-28	L	External
hr579464@gmail.com	Harun Rasid	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped2942869248071219128.jpg	2020-01-01 01:01:00	1967-08-06	L	External
ardianto.redy@gmail.com	Redy Ardianto	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped5054264913477817508.jpg	2020-01-01 18:47:30	1983-04-01	L	External
andiprastyono2@gmail.com	andiprastyono	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1287932921.jpg	2020-01-01 19:22:37	1988-08-09	L	External
fajar.priyambada137@gmail.com	Dafaro Almer	\N	2020-01-01 18:52:49	\N	L	External
m.aziz@ptpn10.co.id	M. Abdul Aziz	\N	2020-01-01 18:55:02	1976-08-18	L	Internal
mashudiana@ptpn10.co.id	Mashuriana	\N	2020-01-01 18:54:49	1986-11-22	L	Internal
supriadiagus218@gmail.com	Agus Supriadi	\N	2020-01-01 19:31:10	2020-01-01	L	External
abilmiqdad67@gmail.com	tohari hari	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8030925131872269923.jpg	2020-01-01 21:06:27	2020-01-14	L	External
waskito.mulyo@gmail.com	Waskito Mulyo	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped850584257.jpg	2020-01-01 19:05:45	1968-03-21	L	External
ddsrn27679@gmail.com	Dadang Dwi Saputro Rekso Nugroho	\N	2020-01-01 19:11:42	1979-06-27	L	External
awisdm@yahoo.com	Awi	\N	2020-01-01 19:15:47	1968-10-30	L	External
nairanaswa@gmail.com	Wiyadi Yadi	\N	2020-01-01 19:19:25	2020-01-01	L	External
gksukariyono@gmail.com	Sukariyono Gk	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped3369316504984012594.jpg	2020-01-01 19:36:10	1968-11-26	L	External
must.hernowo@gmail.com	B Hernowo 	\N	2020-01-01 19:40:52	1972-09-19	L	External
desita.yudi@ptpn10.co.id	Desita Wijaya	\N	2020-01-01 19:56:47	1987-12-11	L	Internal
nyoman.jaya@ptpn10.co.id	Nyoman Jaya	\N	2020-01-01 19:46:09	1989-11-14	L	Internal
widodopurnomo567@gmail.com	purnomo widodo	\N	2020-01-01 19:56:17	1971-09-12	L	External
sumadidella_2000@yahoo.co.id	Sumadi	\N	2020-01-01 19:39:41	1970-10-17	L	External
kukusaputro@ptpn10.co.id	Kukuh Saputro	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped4260658738265379399.jpg	2020-01-01 19:05:41	1977-07-13	L	Internal
muhammadbahruddinhidayat@gmail.com	Muhammad Bahruddin Hidayat	\N	2020-01-01 20:12:44	1968-02-12	L	External
nyani.chemeng@gmail.com	nyani -	\N	2020-01-01 20:17:00	1982-09-12	L	External
zainuri.jalu@gmail.com	Zainuri Zain	\N	2020-01-01 20:53:33	1967-09-08	L	External
hasan.mursyid@gmail.com	hasan muhammad	\N	2020-01-01 20:39:38	1983-08-25	L	External
juniyanto99999@gmail.com	Juni Yanto	\N	2020-01-01 21:00:48	1980-09-14	L	External
iwanbudi7@gmail.com	iwän_ b	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped44962769083726262.jpg	2020-01-01 18:54:02	1969-10-26	L	External
miharnoradite@gmail.com	Radite Miharno	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1432676178.jpg	2020-01-01 22:00:13	1979-07-14	L	External
v4n_jbg@yahoo.co.id	Evan Muliawan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped-54450269.jpg	2020-01-01 21:51:24	1974-06-16	L	External
kristomoyo@gmail.com	Bagus Kristomoyo Kristanto	\N	2019-12-04 00:57:57	1990-08-09	L	External
edyptpnx@gmail.com	edy purnomo	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8000938224274396148.jpg	2020-01-01 22:02:14	1980-04-24	L	External
sandi.gunawan@ptpn10.co.id	Sandi Gunawan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8577359977263524440.jpg	2020-01-01 19:56:52	1986-10-19	L	Internal
erioctorianto@gmail.com	Eri Octorianto	\N	2020-01-01 19:23:23	2020-01-02	L	External
masdan44681@gmail.com	Mas Dan	\N	2020-01-02 14:16:14	1972-02-13	L	External
soetono.effendi@gmail.com	Soetono Effendi	\N	2019-12-04 01:32:49	1964-09-08	L	External
badrusz96@gmail.com	Badrus zaman	\N	2020-01-01 19:58:02	1967-09-07	L	External
jvvfvguott_1576842973@tfbnw.net	Linda Watzmanstein	\N	2021-02-26 07:43:05	1979-12-20	P	External
radendimas2018@gmail.com	dimas satria	\N	2021-02-26 11:38:02	\N	\N	External
kr.kristomoyo@gmail.com	kristanto kristomoyo	\N	2019-12-04 01:05:44	2021-03-01	L	External
ulin.nashihulhusna@gmail.com	ulin nashihul husna	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped5038486964009726461.jpg	2020-01-02 07:13:56	1984-04-26	L	External
ytoday9@gmail.com	yesterday today	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped3394321601162893756.jpg	2020-01-01 22:09:07	2020-01-01	L	External
moejiono@ptpn10.co.id	Mujiono	\N	2020-01-02 19:50:02	1969-11-08	L	Internal
mahfud.me5@gmail.com	Mahfud Efendi	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped3153957819479548269.jpg	2020-01-01 21:32:06	1968-08-12	L	External
sutaji0702@gmail.com	Sutaji	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped3693357671344719929.jpg	2020-01-02 07:03:10	1970-02-07	L	External
agusminhandokoblitar@gamail.com	Agus	\N	2020-01-01 22:35:45	1965-08-19	L	External
hindami.mlg1@gmail.com	Luthfan Hindami	\N	2021-02-21 14:34:52	2003-03-24	L	External
arisulistyawan@gmail.com	Tri Ari Sulistyawan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped5728945030573930103.jpg	2020-01-01 22:44:22	2014-05-01	L	External
rumaizar.rizki@gmail.com	Mr. Ritz	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped318602080.jpg	2020-01-02 07:03:08	1985-05-14	L	External
eddyetno@gmail.com	Edi	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped801710866.jpg	2020-01-02 07:30:18	1984-03-13	L	External
ifanremise08@gmail.com	Evan Ifan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8890972621450674046.jpg	2020-01-02 00:06:44	1985-08-31	L	External
suhadi.ptpnx@gmail.com	su hadi	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped5610653053603754716.jpg	2020-01-02 07:11:54	1984-07-08	L	External
hertantocahyo@gmail.com	Stephanus Cahyo Hertanto	\N	2020-01-02 04:48:26	1974-09-08	L	External
yonopg@gmail.com	Yono	\N	2020-01-02 05:09:37	1966-02-23	L	External
kangarifin97@gmail.com	Upin Ipin	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1589431075.jpg	2020-01-02 09:09:56	1979-02-14	L	External
trisvijay71@gmail.com	tris vijay	\N	2020-01-02 05:21:18	2020-04-05	L	External
sipanjangkung@gmail.com	Sipan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped973353601933807169.jpg	2020-01-02 06:59:19	1969-10-06	L	External
arisson1966@gmail.com	Arisson Sianipar	\N	2020-01-02 05:21:06	1966-03-20	L	External
tgunawan46@gmail.com	Taufiq Gunawan	\N	2020-01-02 05:40:47	1968-01-06	L	External
spramuji363@gmail.com	S Pramuji	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped6158282948418260852.jpg	2020-01-02 06:16:38	1970-12-12	L	External
ilhamala0915@gmail.com	Bang Alan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped2354721008970263114.jpg	2020-01-02 09:09:42	1987-09-15	L	External
diensarsutikno@yahoo.com	Sutikno	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped4602881656335558712.jpg	2020-01-02 09:01:32	2020-07-01	L	External
aldino@ptpn10.co.id	Aldino Ary	\N	2020-01-02 06:42:14	1985-11-30	L	Internal
wawandefianto@gmail.com	Wawandefianto@gmail.com Nawaw	\N	2020-01-02 06:48:35	1982-08-22	L	External
aris_handoyo_kag@yahoo.com	ARIS HANDOYO	\N	2020-01-02 07:38:08	1975-01-17	L	External
nikohermawan3381@yahoo.co.id	Niko Hermawan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped7311899048383758345.jpg	2020-01-02 07:37:45	1981-03-03	L	External
suwignyorangga@gmail.com	Suwignyo	\N	2020-01-02 06:53:06	1977-04-06	L	External
baktidir@gmail.com	bakti dirgantara	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8492894191362858572.jpg	2020-01-02 07:07:33	1984-05-16	L	External
benirahman08@gmail.com	AsmudTMA	\N	2020-01-02 07:06:06	1983-04-16	L	External
jadid73@gmail.com	Arif Misbakhul Jadid	\N	2020-01-02 07:10:47	1973-05-13	L	External
riskisbutembakau@yahoo.co.id	Riskiyanto Ciptadi Rachman	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1752286013451190357.jpg	2020-01-02 09:16:34	1975-09-17	L	External
aliefendi1968@gmail.com	Ali Efendi	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8435013225171634141.jpg	2020-01-02 07:36:06	1968-10-13	L	External
bambangs.n10@gmail.com	Bambang Supriyono	\N	2020-01-02 09:08:00	1967-03-06	L	External
nurachmad023@gmail.com	Nur achmad	\N	2020-01-02 07:15:22	1976-08-01	L	External
rifyanu@gmail.com	Rifyanu	\N	2020-01-02 07:42:38	1985-06-29	L	External
pribadirahadian.rp@gmail.com	Rahadian Pribadi	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1649474839812277674.jpg	2020-01-02 00:27:44	1988-04-30	L	External
navyarens@yahoo.com	Navy	\N	2020-01-02 07:42:49	1984-01-31	L	External
div.qc.pl@ptpn10.co.id	adi darmawan	\N	2020-01-02 09:11:22	2020-02-03	L	Internal
anurulzadid@gmail.com	Achmad Nurul zadid	\N	2020-01-02 07:50:15	2020-01-06	L	External
sohelmatsunaga84@gmail.com	Moch Soleh	\N	2020-01-02 07:48:09	1984-10-23	L	External
mohyusuf040494@gmail.com	Moh Yusuf	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped-543966629.jpg	2020-01-02 09:13:08	1994-04-04	L	External
septokuswitjahyono@gmail.com	Septo Kuswitjahyono	\N	2020-01-02 07:36:13	1968-09-11	L	External
febriarim@gmail.com	Febri Ari Marpaung	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped325938848640252717.jpg	2020-01-02 09:08:33	1984-02-20	L	External
widyo89norma@gmail.com	widyo norma	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped2996293888187394333.jpg	2020-01-02 07:28:10	1973-08-22	L	External
dwiandikang@gmail.com	Dwi Andika	\N	2020-01-02 09:12:05	1986-01-26	L	External
bambangqaptpnx@gmail.com	Bambang Setiawan	\N	2020-01-02 09:11:56	1975-05-05	L	External
purwo.djatmiko@gmail.com	Purwo Djatmiko	\N	2020-01-02 09:23:40	1974-02-13	L	External
zonaonline.kk@gmail.com	Kukuh Aprilizona	\N	2020-01-02 09:12:09	1989-04-26	L	External
nuc.noel@gmail.com	un_null	\N	2020-01-02 09:14:37	1986-08-16	L	External
kapista79@gmail.com	dicky kapista	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped2883973886882231871.jpg	2020-01-02 09:15:29	1979-12-11	L	External
arifyanto1968@gmail.com	Arif Yanto	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped2006481580673374571.jpg	2020-01-02 09:14:18	1968-07-26	L	External
leotgr@gmail.com	Laurentius Tumanggor	\N	2020-01-02 09:33:56	1974-10-05	L	External
vero.kristi131@gmail.com	veronica kristi	\N	2020-01-02 09:47:10	1993-01-19	P	External
diensarsutikno@yahoo.cm	Sutikno	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped3650449743237976120.jpg	2020-01-02 09:35:17	1965-07-01	L	External
zainuddin.fananite@ptpn10.co.id	zainuddin fanani	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped371448263.jpg	2020-01-02 09:50:40	1984-09-28	L	Internal
angganteng@gmail.com	Suka Sapi	\N	2020-01-02 10:08:36	1985-01-02	L	External
yietmas@gmail.com	suyitno b	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1866054443376696516.jpg	2020-01-02 07:38:59	2020-01-02	L	External
agus.sukaryono@ptpn10.co.id	AGUS SUKARYONO 	\N	2020-01-02 11:11:58	1971-08-14	L	Internal
my7632773@gmail.com	Mul Yadi	\N	2020-01-02 12:32:12	1975-09-30	L	External
nsiswanto63@gmail.com	Nanang Siswanto	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8369452887675119316.jpg	2020-01-02 13:45:35	1970-04-10	L	External
sokibx@gmail.com	Sokib	\N	2020-01-02 13:51:32	2020-10-01	L	External
yustianfany@gmail.com	Yustian Fany	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1280443999129571118.jpg	2020-01-02 14:13:08	1990-02-17	L	External
sbupmsjember@gmail.com	Venansius Pranawa Sunu	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped-1164509211.jpg	2020-01-02 09:13:25	1972-01-04	L	External
abdulazispurmali@yahoo.com	Abdul Azis Purmali	\N	2020-01-02 19:20:10	1977-06-01	L	External
dodykristanto27@gmail.com	Dody Kristanto	\N	2020-01-02 19:34:18	1971-09-17	L	External
b.hernowo@ptpn10.co.id	B Hernowo	\N	2020-01-02 19:35:18	1972-09-19	L	Internal
dodykristanto27@gmai.com	Dody Kristanto	\N	2020-01-02 19:40:11	1971-09-17	L	External
muje_n10@yahoo.com	Mujiono	\N	2020-01-02 19:43:28	1969-11-08	L	External
abdul.aziz@ptpn10.co.id	Abdul Aziz	\N	2020-01-08 18:10:13	1985-04-19	L	Internal
bambang84sierra@gmail.com	Bambang Sapto A.	\N	2020-01-02 20:51:56	2020-01-02	L	External
tribuanaik@gmail.com	Tri Buana Kurniawati	\N	2020-01-02 20:51:55	1971-12-01	P	External
yusufrachman@gmail.com	yusuf rachman	\N	2020-01-03 08:07:47	1986-01-19	L	External
esdeka.sd@gmail.com	Sabar Dwi Komarrudin	\N	2020-01-01 18:52:05	2020-01-03	L	External
danang.sw@ptpn10.co.id	Danang Satriyo	\N	2020-01-03 08:24:04	1981-09-21	L	Internal
gplaytdkl2@gmail.com	td kl	\N	2020-01-09 07:33:19	2020-01-16	L	External
florance.burroughs@gmail.com	Florance Burroughs	\N	2020-01-13 10:02:07	\N	\N	External
iwanmardiansyahnaruto@gmail.com	iwan mardiansyah	\N	2020-01-13 18:40:00	1988-06-05	L	External
ariehard46@yahoo.co.id	hardi_ anto	\N	2020-01-03 09:39:04	2020-01-09	L	External
gplaytdkl1@gmail.com	TD KL 1	\N	2020-01-14 12:45:12	\N	\N	External
fikrifaisal465@gmail.com	Zaenal Mustofa	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1389168592.jpg	2020-01-03 10:21:56	1974-03-23	L	External
achmad.hariyadi@ptpn10.co.id	Achmaf	\N	2020-01-03 11:38:24	1967-12-31	L	Internal
shobah.shukroni@gmail.com	shukroni n.s	\N	2020-01-03 11:38:14	1985-12-16	L	External
shabrinasukarno@gmail.com	Shabrina Sukarno	\N	2020-01-03 12:37:42	1986-11-01	L	External
dody.kristanto@ptpn10.co.id	Dody Kristanto	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped5156584111186254573.jpg	2020-01-02 20:17:34	1971-09-17	L	Internal
oopyuwono28@gmail.com	oop yuwono	\N	2020-01-03 17:05:32	\N	\N	External
hariyonomp@gmail.com	Hariyono	\N	2020-01-04 10:08:24	1968-08-15	L	External
hendarwananton512@yahoo.co.id	antonhendrawan	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped60846829.jpg	2020-01-04 20:27:41	2019-05-05	L	External
purwo.djatmiko@ptpn10.co.id	Purwo Djatmiko	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped-380348851.jpg	2020-01-03 09:19:51	1974-02-13	L	Internal
mukhlis.thohari@ptpn10.co.id	Mukhlis Thohari	\N	2020-01-06 12:37:50	1989-03-20	L	Internal
irfangetsugatensho@yahoo.com	Makhfud Irfan	\N	2020-01-06 13:06:38	1987-12-10	L	External
yukosae@gmail.com	Zucko Yukosae	\N	2020-01-07 06:35:12	1984-07-05	L	External
zainuddin.fanani@ptpn10.co.id	fanani zain	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped447098590.jpg	2020-01-14 14:48:36	1984-09-28	L	Internal
jonugraha57@gmail.com	joko nugraha	\N	2020-01-08 05:46:54	2013-07-27	L	External
krisnadiikhwan@gmail.com	Ikhwan Krisnadi	\N	2020-01-08 07:57:37	1985-03-08	L	External
ikhwan.krisnadi@ptpn10.co.id	Ikhwan Krisnadi	\N	2020-01-08 08:00:33	1985-03-08	L	Internal
yogar.r@ptpn10.co.id	Yoga	\N	2020-01-08 10:49:20	1988-11-01	L	Internal
suryanto@ptpn10.co.id	Suryanto	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped6878002256195728770.jpg	2020-02-26 05:49:44	1965-03-12	L	Internal
dwiono.agung@ptpn10.co.id	Totok Putranto	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped3348556295442649044.jpg	2020-01-08 14:44:26	1967-06-11	L	Internal
hermusariadi68@gmail.com	Hermus Ariadi	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1612302766498628861.jpg	2020-01-15 17:20:32	1968-09-03	L	External
ilmi.nasrulloh@gmail.com	Ilmi Nasrulloh	\N	2020-01-27 10:08:40	1997-09-07	L	External
gerri.blodgett@gmail.com	Gerri Blodgett	\N	2020-01-28 16:48:11	\N	\N	External
babelklmy@gmail.com	Babel KL	\N	2020-01-30 07:58:06	1989-01-30	L	External
gplaytdkl6@gmail.com	td kl	\N	2020-01-30 10:17:06	\N	\N	External
widyantonno@gmail.com	Bambang Widyantono	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped7252098790309816971.jpg	2020-01-31 14:58:58	1973-08-22	L	External
ptpnx2017@gmail.com	PTPN X	\N	2020-02-05 09:25:56	\N	\N	External
codypatterson.09534@gmail.com	Cody Patterson	\N	2020-10-04 05:49:40	\N	\N	External
pm.ptpn10@gmail.com	Ahmad Mubarok	\N	2020-02-05 09:26:59	1985-02-05	L	External
hendrasworomamid022@gmail.com	mamid hendrasworo	\N	2020-02-11 10:24:49	\N	\N	External
kukuhsaputro07@gmail.com	Kukuh Saputro	\N	2020-02-11 22:25:58	\N	\N	External
sanggrareza@gmail.com	Sanggra Reza Nuary	\N	2020-02-17 15:03:07	2001-01-06	P	External
bambangpne@gmail.com	bambang aja	\N	2020-03-20 08:59:57	1973-11-04	L	External
almasaquille1@gmail.com	Alma Saquille Rashad	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped1849693035347853885.jpg	2020-02-17 23:18:20	1999-08-15	P	External
leahwilson.48075@gmail.com	Leah Wilson	\N	2020-10-14 10:28:51	\N	\N	External
suhadi@ptpn10.co.id	suhadi	\N	2020-04-01 18:57:42	1984-07-08	L	Internal
krisnanto353@gmail.com	Kris Nanto	\N	2020-04-02 13:36:21	\N	\N	External
amwardisamad@qmail.id	A.M. Wardi Samad GDrive	\N	2020-04-04 09:27:15	1971-01-19	L	External
rafaelhampton.12623@gmail.com	Rafael Hampton	\N	2020-06-25 00:54:46	\N	\N	External
brandymccoy.77331@gmail.com	Brandy Mccoy	\N	2020-07-05 12:33:41	\N	\N	External
lancearmstrong.22951@gmail.com	Lance Armstrong	\N	2020-07-25 15:53:32	\N	\N	External
lucillecarlson.36152@gmail.com	Lucille Carlson	\N	2020-08-09 13:32:01	\N	\N	External
murielstewart.45694@gmail.com	Muriel Stewart	\N	2020-08-09 14:24:33	\N	\N	External
lowellmiles.70078@gmail.com	Lowell Miles	\N	2020-10-28 23:30:30	\N	\N	External
tracyjefferson.79077@gmail.com	Tracy Jefferson	\N	2020-11-13 15:40:52	\N	\N	External
sonjalyons.15174@gmail.com	Sonja Lyons	\N	2021-01-31 08:44:00	\N	\N	External
ayikbesali76@gmail.com	Arief w ae	\N	2021-01-05 15:09:59	1976-10-19	L	External
benzarifin@gmail.com	Benz Arifin	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped6979003987069042808.jpg	2021-02-02 15:14:59	1991-05-10	L	External
seno.mail888@gmail.com	Seno Widyatmoko	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped7967866007740480371.jpg	2021-02-02 15:27:54	1979-11-12	L	External
ismedrohadi@gmail.com	Ismed Rm	\N	2021-02-03 14:54:30	1974-01-30	L	External
rizkysipil12@gmail.com	RIZKY PRATAMA	\N	2021-02-09 11:11:29	\N	\N	External
mohammadsyaiful.rizal@gmail.com	mohammad syaiful rizal	\N	2020-03-08 12:55:49	1986-06-05	L	External
rizky.agung@ptpn10.co.id	RIZKY PRATAMA	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped4805378915509603290.jpg	2021-02-09 11:27:28	1994-02-14	L	Internal
kzvyttvtqe_1576843944@tfbnw.net	Barbara RosnBrickman	\N	2021-02-25 14:48:14	\N	\N	External
nuridhani29@gmail.com	Nuri Syamsiah	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped6199090833633584082.jpg	2021-02-26 11:44:05	2004-07-29	L	External
hello.reyhanfirnas@gmail.com	Muhammad Reyhan Firnas Adani	\N	2021-02-26 15:31:36	1998-02-26	L	External
jessieball.08439@gmail.com	Jessie Ball	\N	2021-02-26 18:55:25	\N	\N	External
ragnarokstamina1@gmail.com	Ragnarok Stamina1	\N	2019-12-21 09:14:09	1997-02-05	L	External
p.hananingrum@gmail.com	priskila hananingrum	\N	2021-02-27 10:17:24	\N	\N	External
meliaamw@ymail.com	Melia Amw	\N	2021-02-26 12:01:05	1994-05-27	P	External
terencegregory.33112@gmail.com	Terence Gregory	\N	2021-03-01 13:53:12	\N	\N	External
kristanto.kristomoyo@gmail.com	Bagus	\N	2021-03-02 14:55:08	\N	\N	External
ads9164@gmail.com	Adi Sn	\N	2021-03-02 18:47:41	\N	\N	External
faizinzin81@gmail.com	Faizin Zin	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped5236755333692217852.jpg	2020-01-01 19:45:51	1975-12-03	L	External
kopralapp@gmail.com	Kopral Indonesia	https://pn10mobprd.ptpn10.co.id:8598/images/users/cropped8350283088321641295.jpg	2021-03-02 18:43:51	1986-06-05	L	External
firnasreyhan@gmail.com	Reyhan Firnas	http://pn10mobprd.ptpn10.co.id:8598/images/users/cropped-949833815.jpg	2019-10-07 10:07:30	2021-03-03	L	External
testupdate@gmail.com	test update	\N	2021-03-03 21:16:14	\N	\N	External
ragnarokstamina3@gmail.com	Ragnarok Stamina3	\N	2021-03-03 20:58:48	2021-03-01	L	External
ragnarokstamina2@gmail.com	Irfan	https://pn10mobprd.ptpn10.co.id:8598/images/users/image_picker_C43150EF-6917-405A-8C17-3645826EA1DA-34403-000007C2ABE410E6.jpg	2021-03-03 21:03:13	1999-01-01	L	External
camilleguzman.10826@gmail.com	Camille Guzman	\N	2021-03-15 11:42:09	\N	\N	External
\.


                             3881.dat                                                                                            0000600 0004000 0002000 00000021661 14024026461 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        XEdQdr8xrjo	#JingleSIPro Perkebunan Nusantara Marshal  Pattiasina	Karya : Marshal Pattiasina Bagian Pengolahan - PT Perkebunan Nusantara X.	2019-11-08 05:45:58	https://i.ytimg.com/vi/XEdQdr8xrjo/default.jpg	https://i.ytimg.com/vi/XEdQdr8xrjo/mqdefault.jpg	https://i.ytimg.com/vi/XEdQdr8xrjo/hqdefault.jpg	t
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
NSKcT_BRfks	PTPN X Corporate Culture Film "Keluarga Besar"	"Apa yang kita cari di hidup ini ?" Ada jawaban beragam, alasan-alasan sederhana hingga penjelasan yang cukup kompleks. Film "Keluarga Besar" hadir untuk ...	2019-11-07 14:55:09	https://i.ytimg.com/vi/NSKcT_BRfks/default.jpg	https://i.ytimg.com/vi/NSKcT_BRfks/mqdefault.jpg	https://i.ytimg.com/vi/NSKcT_BRfks/hqdefault.jpg	t
4weq-mOs83E	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (2)	Karya (2) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:22:28	https://i.ytimg.com/vi/4weq-mOs83E/default.jpg	https://i.ytimg.com/vi/4weq-mOs83E/mqdefault.jpg	https://i.ytimg.com/vi/4weq-mOs83E/hqdefault.jpg	f
8W3J8VHn6ys	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (1)	Karya (1) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:19:18	https://i.ytimg.com/vi/8W3J8VHn6ys/default.jpg	https://i.ytimg.com/vi/8W3J8VHn6ys/mqdefault.jpg	https://i.ytimg.com/vi/8W3J8VHn6ys/hqdefault.jpg	f
5FZ-0AZ9bvo	Jejak Si Gundul - Trans 7: Pia Edamame dari Jember	Edamame, salah satu produk andalan PT Mitratani Dua Tujuh diliput dalam acara Jejak Si Gundul Trans 7. Info lebih lanjut: www.mitratani27.co.id Sumber ...	2017-07-31 00:58:16	https://i.ytimg.com/vi/5FZ-0AZ9bvo/default.jpg	https://i.ytimg.com/vi/5FZ-0AZ9bvo/mqdefault.jpg	https://i.ytimg.com/vi/5FZ-0AZ9bvo/hqdefault.jpg	t
qBvTZWUmOdE	Senam Bersama	Senam Bersama secara rutin digelar satu kali dalam satu bulan. Acara ini diikuti oleh seluruh karyawan Kantor Pusat PTPN X, mulai dari Jajaran Direksi hingga ...	2017-07-28 05:54:08	https://i.ytimg.com/vi/qBvTZWUmOdE/default.jpg	https://i.ytimg.com/vi/qBvTZWUmOdE/mqdefault.jpg	https://i.ytimg.com/vi/qBvTZWUmOdE/hqdefault.jpg	t
ix8krb1EA_Q	BAGI BINGKISAN RAMADAN   PTPN X	BINGKISAN RAMADAN.	2017-07-27 03:21:27	https://i.ytimg.com/vi/ix8krb1EA_Q/default.jpg	https://i.ytimg.com/vi/ix8krb1EA_Q/mqdefault.jpg	https://i.ytimg.com/vi/ix8krb1EA_Q/hqdefault.jpg	t
8qY-osQ0xlo	Ramadhan Greeting	Ramadhan Greeting 2017.	2017-06-08 09:41:02	https://i.ytimg.com/vi/8qY-osQ0xlo/default.jpg	https://i.ytimg.com/vi/8qY-osQ0xlo/mqdefault.jpg	https://i.ytimg.com/vi/8qY-osQ0xlo/hqdefault.jpg	t
DqGz9tfnDnA	Si Ladyfinger Asal Jember yang di Gemari Jepang		2017-06-08 09:35:20	https://i.ytimg.com/vi/DqGz9tfnDnA/default.jpg	https://i.ytimg.com/vi/DqGz9tfnDnA/mqdefault.jpg	https://i.ytimg.com/vi/DqGz9tfnDnA/hqdefault.jpg	t
LaTvfcUigEI	Sayur Okra Untuk Diabetes di Jember	sayur okra.	2017-06-08 09:32:36	https://i.ytimg.com/vi/LaTvfcUigEI/default.jpg	https://i.ytimg.com/vi/LaTvfcUigEI/mqdefault.jpg	https://i.ytimg.com/vi/LaTvfcUigEI/hqdefault.jpg	t
0Vzg9tOVQgA	#JingleSIPro Perkebunan Nusantara Eduard Fernando Seimima (3)	Karya (3) : Eduard Fernando Seimima PG Pesantren Baru - PT Perkebunan Nusantara X.	2019-11-11 08:22:43	https://i.ytimg.com/vi/0Vzg9tOVQgA/default.jpg	https://i.ytimg.com/vi/0Vzg9tOVQgA/mqdefault.jpg	https://i.ytimg.com/vi/0Vzg9tOVQgA/hqdefault.jpg	f
\.


                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000072113 14024026461 0015367 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10
-- Dumped by pg_dump version 12.6

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

DROP DATABASE digi;
--
-- Name: digi; Type: DATABASE; Schema: -; Owner: panji
--

CREATE DATABASE digi WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE digi OWNER TO panji;

\connect digi

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

--
-- Name: app_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_version (
    version character varying(50) NOT NULL
);


ALTER TABLE public.app_version OWNER TO postgres;

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
    "NAME" character varying(100) NOT NULL,
    "LINK_PUBHTML5" character varying(255),
    "LINK_QUIZ" character varying(255),
    "IS_PUBACTIVE" boolean
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
-- Name: last_sync; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.last_sync (
    date_sync timestamp without time zone NOT NULL
);


ALTER TABLE public.last_sync OWNER TO postgres;

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
-- Data for Name: app_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_version (version) FROM stdin;
\.
COPY public.app_version (version) FROM '$$PATH$$/3855.dat';

--
-- Data for Name: backend_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backend_user ("USERNAME", "NAME", "PASSWORD", "ROLE", "DEFAULT_PASSWORD") FROM stdin;
\.
COPY public.backend_user ("USERNAME", "NAME", "PASSWORD", "ROLE", "DEFAULT_PASSWORD") FROM '$$PATH$$/3856.dat';

--
-- Data for Name: banner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banner ("ID_BANNER", "ID_NEWS", "IMAGE_BANNER", "DATE_BANNER") FROM stdin;
\.
COPY public.banner ("ID_BANNER", "ID_NEWS", "IMAGE_BANNER", "DATE_BANNER") FROM '$$PATH$$/3857.dat';

--
-- Data for Name: captcha; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captcha ("ID_CAPTCHA", "CAPTCHA_TIME", "IP_ADDRESS", "WORD") FROM stdin;
\.
COPY public.captcha ("ID_CAPTCHA", "CAPTCHA_TIME", "IP_ADDRESS", "WORD") FROM '$$PATH$$/3859.dat';

--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category ("ID_CATEGORY", "NAME_CATEGORY") FROM stdin;
\.
COPY public.category ("ID_CATEGORY", "NAME_CATEGORY") FROM '$$PATH$$/3860.dat';

--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments ("ID_COMMENT", "ID_NEWS", "EMAIL", "COMMENT_TEXT", "IS_APPROVED", "DATE_APPROVED", "DATE_COMMENT", "ADMIN_REPLY") FROM stdin;
\.
COPY public.comments ("ID_COMMENT", "ID_NEWS", "EMAIL", "COMMENT_TEXT", "IS_APPROVED", "DATE_APPROVED", "DATE_COMMENT", "ADMIN_REPLY") FROM '$$PATH$$/3861.dat';

--
-- Data for Name: cover_story; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cover_story ("ID_COVERSTORY", "TITLE_COVERSTORY", "SUMMARY", "IMAGE_COVERSTORY", "DATE_COVERSTORY") FROM stdin;
\.
COPY public.cover_story ("ID_COVERSTORY", "TITLE_COVERSTORY", "SUMMARY", "IMAGE_COVERSTORY", "DATE_COVERSTORY") FROM '$$PATH$$/3863.dat';

--
-- Data for Name: emagz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emagz ("ID_EMAGZ", "THUMBNAIL", "FILE", "DATE_UPLOADED", "NAME", "LINK_PUBHTML5", "LINK_QUIZ", "IS_PUBACTIVE") FROM stdin;
\.
COPY public.emagz ("ID_EMAGZ", "THUMBNAIL", "FILE", "DATE_UPLOADED", "NAME", "LINK_PUBHTML5", "LINK_QUIZ", "IS_PUBACTIVE") FROM '$$PATH$$/3866.dat';

--
-- Data for Name: firebase_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.firebase_token ("TOKEN") FROM stdin;
\.
COPY public.firebase_token ("TOKEN") FROM '$$PATH$$/3867.dat';

--
-- Data for Name: galeri; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galeri ("IMAGE_FILE", "ID_NEWS") FROM stdin;
\.
COPY public.galeri ("IMAGE_FILE", "ID_NEWS") FROM '$$PATH$$/3868.dat';

--
-- Data for Name: last_sync; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.last_sync (date_sync) FROM stdin;
\.
COPY public.last_sync (date_sync) FROM '$$PATH$$/3869.dat';

--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes ("ID_LIKES", "EMAIL", "ID_NEWS") FROM stdin;
\.
COPY public.likes ("ID_LIKES", "EMAIL", "ID_NEWS") FROM '$$PATH$$/3870.dat';

--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news ("ID_NEWS", "ID_CATEGORY", "TITLE_NEWS", "CONTENT_NEWS", "VIEWS_COUNT", "SHARES_COUNT", "DATE_NEWS", "NEWS_IMAGE", "USER_EDITOR", "USER_VERIFICATOR", "STATUS", "URL") FROM stdin;
\.
COPY public.news ("ID_NEWS", "ID_CATEGORY", "TITLE_NEWS", "CONTENT_NEWS", "VIEWS_COUNT", "SHARES_COUNT", "DATE_NEWS", "NEWS_IMAGE", "USER_EDITOR", "USER_VERIFICATOR", "STATUS", "URL") FROM '$$PATH$$/3872.dat';

--
-- Data for Name: news_cover; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_cover ("ID_COVERSTORY", "ID_NEWS") FROM stdin;
\.
COPY public.news_cover ("ID_COVERSTORY", "ID_NEWS") FROM '$$PATH$$/3874.dat';

--
-- Data for Name: news_share; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_share ("ID", "EMAIL", "ID_NEWS") FROM stdin;
\.
COPY public.news_share ("ID", "EMAIL", "ID_NEWS") FROM '$$PATH$$/3875.dat';

--
-- Data for Name: news_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_tags ("ID_TAGS", "ID_NEWS") FROM stdin;
\.
COPY public.news_tags ("ID_TAGS", "ID_NEWS") FROM '$$PATH$$/3876.dat';

--
-- Data for Name: news_view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_view ("ID", "EMAIL", "ID_NEWS") FROM stdin;
\.
COPY public.news_view ("ID", "EMAIL", "ID_NEWS") FROM '$$PATH$$/3877.dat';

--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags ("ID_TAGS", "TAGS", "DATE_CREATED") FROM stdin;
\.
COPY public.tags ("ID_TAGS", "TAGS", "DATE_CREATED") FROM '$$PATH$$/3878.dat';

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" ("EMAIL", "USER_NAME", "PROFILEPIC_URL", "LAST_LOGIN", "DATE_BIRTH", "GENDER", "USER_TYPE") FROM stdin;
\.
COPY public."user" ("EMAIL", "USER_NAME", "PROFILEPIC_URL", "LAST_LOGIN", "DATE_BIRTH", "GENDER", "USER_TYPE") FROM '$$PATH$$/3880.dat';

--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video ("ID_VIDEO", "TITLE", "DESCRIPTION", "DATE_PUBLISHED", "URL_DEFAULT_THUMBNAIL", "URL_MEDIUM_THUMBNAIL", "URL_HIGH_THUMBNAIL", "STATUS_PUBLISHED") FROM stdin;
\.
COPY public.video ("ID_VIDEO", "TITLE", "DESCRIPTION", "DATE_PUBLISHED", "URL_DEFAULT_THUMBNAIL", "URL_MEDIUM_THUMBNAIL", "URL_HIGH_THUMBNAIL", "STATUS_PUBLISHED") FROM '$$PATH$$/3881.dat';

--
-- Name: captcha_ID_CAPTCHA_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."captcha_ID_CAPTCHA_seq"', 2496, true);


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

SELECT pg_catalog.setval('public."emagz_ID_EMAGZ_seq"', 16, true);


--
-- Name: likes_ID_LIKES_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."likes_ID_LIKES_seq"', 610, true);


--
-- Name: news_ID_NEWS_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."news_ID_NEWS_seq"', 3, true);


--
-- Name: tag_ID_TAG_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tag_ID_TAG_seq"', 7, true);


--
-- Name: app_version app_version_version_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_version
    ADD CONSTRAINT app_version_version_key UNIQUE (version);


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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     