/*
 Navicat Premium Data Transfer

 Source Server         : Digimagz (PostgreSQL)
 Source Server Type    : PostgreSQL
 Source Server Version : 110005
 Source Host           : 149.129.248.246:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110005
 File Encoding         : 65001

 Date: 05/11/2019 11:26:12
*/


-- ----------------------------
-- Sequence structure for captcha_ID_CAPTCHA_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."captcha_ID_CAPTCHA_seq";
CREATE SEQUENCE "public"."captcha_ID_CAPTCHA_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for comments_ID_COMMENT_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."comments_ID_COMMENT_seq";
CREATE SEQUENCE "public"."comments_ID_COMMENT_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cover_story_ID_COVERSTORY_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cover_story_ID_COVERSTORY_seq";
CREATE SEQUENCE "public"."cover_story_ID_COVERSTORY_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for likes_ID_LIKES_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."likes_ID_LIKES_seq";
CREATE SEQUENCE "public"."likes_ID_LIKES_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for news_ID_NEWS_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."news_ID_NEWS_seq";
CREATE SEQUENCE "public"."news_ID_NEWS_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tag_ID_TAG_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tag_ID_TAG_seq";
CREATE SEQUENCE "public"."tag_ID_TAG_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for backend_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."backend_user";
CREATE TABLE "public"."backend_user" (
  "USERNAME" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "PASSWORD" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ROLE" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "DEFAULT_PASSWORD" bool
)
;

-- ----------------------------
-- Records of backend_user
-- ----------------------------
INSERT INTO "public"."backend_user" VALUES ('admin@ptpn10.co.id', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'f');
INSERT INTO "public"."backend_user" VALUES ('daudana@ptpn10.co.id', 'Daudana D.P.', '666cc8878dee41efd0f9fd733bf140bf', 'editor', 't');
INSERT INTO "public"."backend_user" VALUES ('muh.rizal@ptpn10.co.id', 'Muhammad Rizal', 'ffaa10512cbbe43388cb4f6a97204616', 'publisher', 't');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS "public"."banner";
CREATE TABLE "public"."banner" (
  "ID_BANNER" int4 NOT NULL,
  "ID_NEWS" int4 NOT NULL,
  "IMAGE_BANNER" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "DATE_BANNER" timestamp(0) NOT NULL
)
;

-- ----------------------------
-- Table structure for captcha
-- ----------------------------
DROP TABLE IF EXISTS "public"."captcha";
CREATE TABLE "public"."captcha" (
  "ID_CAPTCHA" int4 NOT NULL DEFAULT nextval('"captcha_ID_CAPTCHA_seq"'::regclass),
  "CAPTCHA_TIME" int8 NOT NULL,
  "IP_ADDRESS" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "WORD" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of captcha
-- ----------------------------
INSERT INTO "public"."captcha" VALUES (127, 1572572050, '125.163.128.239', 'qlaH');
INSERT INTO "public"."captcha" VALUES (128, 1572572062, '::1', 'PQTx');
INSERT INTO "public"."captcha" VALUES (129, 1572572063, '::1', '37Ue');
INSERT INTO "public"."captcha" VALUES (130, 1572572923, '125.163.128.239', '6bok');
INSERT INTO "public"."captcha" VALUES (131, 1572572924, '125.163.128.239', 'LKXo');
INSERT INTO "public"."captcha" VALUES (132, 1572610395, '114.125.108.230', 'A2wv');
INSERT INTO "public"."captcha" VALUES (133, 1572877118, '36.82.98.40', 'AFQy');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "public"."category";
CREATE TABLE "public"."category" (
  "ID_CATEGORY" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_CATEGORY" varchar(15) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO "public"."category" VALUES ('B', 'Berita');
INSERT INTO "public"."category" VALUES ('A', 'Artikel');
INSERT INTO "public"."category" VALUES ('S', 'Siaran Pers');
INSERT INTO "public"."category" VALUES ('G', 'Galeri');
INSERT INTO "public"."category" VALUES ('P', 'Produksi');
INSERT INTO "public"."category" VALUES ('M', 'Milenial');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS "public"."comments";
CREATE TABLE "public"."comments" (
  "ID_COMMENT" int8 NOT NULL DEFAULT nextval('"comments_ID_COMMENT_seq"'::regclass),
  "ID_NEWS" int4 NOT NULL,
  "EMAIL" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "COMMENT_TEXT" text COLLATE "pg_catalog"."default" NOT NULL,
  "IS_APPROVED" bool NOT NULL,
  "DATE_APPROVED" timestamp(0),
  "DATE_COMMENT" timestamp(0) NOT NULL
)
;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO "public"."comments" VALUES (12, 10, 'yohanesdl9@gmail.com', 'Tes 3', 'f', NULL, '2019-09-27 08:30:35');
INSERT INTO "public"."comments" VALUES (13, 10, 'yohanesdl9@gmail.com', 'Tes 4', 'f', NULL, '2019-09-27 08:31:02');
INSERT INTO "public"."comments" VALUES (16, 10, 'yohanesdl9@gmail.com', 'Tes 5', 'f', NULL, '2019-09-27 08:59:05');
INSERT INTO "public"."comments" VALUES (8, 10, 'yohanesdl9@gmail.com', 'Tes', 'f', NULL, '2019-09-27 07:22:26');
INSERT INTO "public"."comments" VALUES (11, 10, 'yohanesdl9@gmail.com', 'Tes 2', 't', '2019-09-28 16:44:14', '2019-09-27 08:29:51');
INSERT INTO "public"."comments" VALUES (21, 10, 'yohanesdl9@gmail.com', 'Tes From Mobile', 't', '2019-09-28 09:53:34', '2019-09-27 10:03:36');
INSERT INTO "public"."comments" VALUES (20, 10, 'yohanesdl9@gmail.com', 'tes tes', 't', '2019-09-28 09:53:38', '2019-09-27 10:02:47');
INSERT INTO "public"."comments" VALUES (25, 10, 'yohanesdl9@gmail.com', 'Tes', 'f', NULL, '2019-09-30 02:34:51');
INSERT INTO "public"."comments" VALUES (28, 10, 'yohanesdl9@gmail.com', 'Tes', 'f', NULL, '2019-09-30 08:46:52');
INSERT INTO "public"."comments" VALUES (34, 10, 'yohanesdl9@gmail.com', 'Tes', 'f', NULL, '2019-09-30 08:56:33');
INSERT INTO "public"."comments" VALUES (35, 10, 'yohanesdl9@gmail.com', 'Tes Baru Lagi', 'f', NULL, '2019-09-30 08:57:18');
INSERT INTO "public"."comments" VALUES (37, 10, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-09-30 09:50:17');
INSERT INTO "public"."comments" VALUES (38, 10, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-10-01 10:13:46');
INSERT INTO "public"."comments" VALUES (39, 10, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-10-01 10:14:52');
INSERT INTO "public"."comments" VALUES (40, 10, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-10-01 10:15:35');
INSERT INTO "public"."comments" VALUES (36, 10, 'yohanesdl9@gmail.com', 'Tes baru', 't', '2019-10-01 10:28:03', '2019-09-30 09:49:06');
INSERT INTO "public"."comments" VALUES (41, 10, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-10-01 10:55:33');
INSERT INTO "public"."comments" VALUES (42, 8, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-10-01 11:00:58');
INSERT INTO "public"."comments" VALUES (43, 10, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-10-02 14:58:08');
INSERT INTO "public"."comments" VALUES (44, 13, 'yohanesdl9@gmail.com', '', 'f', NULL, '2019-10-03 00:51:45');
INSERT INTO "public"."comments" VALUES (46, 10, 'shellaanisafadwa@gmail.com', '', 'f', NULL, '2019-10-09 13:35:37');
INSERT INTO "public"."comments" VALUES (47, 3, 'firnasreyhan@gmail.com', '', 't', '2019-11-03 14:23:15', '2019-11-03 14:22:13');
INSERT INTO "public"."comments" VALUES (48, 3, 'firnasreyhan@gmail.com', 'tes komentar', 't', '2019-11-03 14:26:33', '2019-11-03 14:26:09');
INSERT INTO "public"."comments" VALUES (49, 3, 'firnasreyhan@gmail.com', 'tes komentar dari mobile', 't', '2019-11-03 14:28:36', '2019-11-03 14:28:21');

-- ----------------------------
-- Table structure for cover_story
-- ----------------------------
DROP TABLE IF EXISTS "public"."cover_story";
CREATE TABLE "public"."cover_story" (
  "ID_COVERSTORY" int8 NOT NULL DEFAULT nextval('"cover_story_ID_COVERSTORY_seq"'::regclass),
  "TITLE_COVERSTORY" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "SUMMARY" text COLLATE "pg_catalog"."default" NOT NULL,
  "IMAGE_COVERSTORY" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "DATE_COVERSTORY" timestamp(0) NOT NULL
)
;

-- ----------------------------
-- Records of cover_story
-- ----------------------------
INSERT INTO "public"."cover_story" VALUES (3, 'Contoh Coverstory', '<p>Contoh coverstory dari Digimagz</p>', '4987.jpg', '2019-10-02 03:33:26');
INSERT INTO "public"."cover_story" VALUES (4, 'Agroforestry', '<p>PTPN X bekerjasama dengan Perhutani untuk penyediaan lahan tebu yang nantinya dapat menjadi bahan baku PTPN X</p>', 'Lahan_Pandean.jpeg', '2019-10-22 07:16:31');

-- ----------------------------
-- Table structure for firebase_token
-- ----------------------------
DROP TABLE IF EXISTS "public"."firebase_token";
CREATE TABLE "public"."firebase_token" (
  "TOKEN" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of firebase_token
-- ----------------------------
INSERT INTO "public"."firebase_token" VALUES ('dwH_E_Mqwwg:APA91bGeit3dPwpNzBtA9qi0Mf64WuzEDVeejud0TUMTmoS3A0jjt4XhwslpErHb9LeQCM_KG_AsTWjXSsoexLJEca-EREF4X9QY58FEcZcvecVjeG6D2S7WR6AeVF-6arYszI6aE0_e');
INSERT INTO "public"."firebase_token" VALUES ('cNcMpp5TZO0:APA91bFS5UfwAYP0AofaAzaKj-dXJR9xFbzTaG7IB3AtYgg1pO9GSr2CdahfOkTVh_AyH4vsztZg9cWHlJwlrp5qyPjGyYpBq_PIZo7vYMNlUysv1vPv9Ot37ai99Hsj58g3_9VdU69l');
INSERT INTO "public"."firebase_token" VALUES ('eGZtKLkpCqo:APA91bGuT0ZFxXSruFWOPyZ6ZvoNJZopg6Mi6RWzx2YZk0HmCRoLqX79UiL5Cca6FWmbszULcvW2LOWxcKduXvF5uvE6grdSeZx-0M3IZKi7UXPbF01VmYpZhb_phwxY82celAQ72TeN');
INSERT INTO "public"."firebase_token" VALUES ('f9_2R25t4Vc:APA91bGpb9eIJ3q6U5hYhbCbrw-7t-fxnWmpRmn4jLUK_Tj-5L9u0IyVMFm01hMPZ6n6nTSkRWDciSF3Fj-IPoEeOuJD0_1DU8DJsOSO47ti5Ks4l_VIxF6K-6MZTNTnVSD1qlXnQWeJ');
INSERT INTO "public"."firebase_token" VALUES ('dhjUGGrvh5o:APA91bG4ECq7fRXBJYR3-2dEprx_FuKp_V4NcgUK4S5nGbMq1ybp4sk-8s6Av2kX38x3sXPGrxDhWh0C-EqFzpN9IRKbLkSqa6OD4Mo_AAyWQCKi2RY6PUJAJCDfnp3FfseYkXbMBthL');
INSERT INTO "public"."firebase_token" VALUES ('eCif9JrRhos:APA91bHve7OvRxiG8ozB3EhpD5vrSrWb0CQA9UVV2lKtIwz4kpenyoLnL1_c6Yv4e4nNuwN4bQbJAJ8pqhcu9iYHE8I_xWaWda9DaGLJQFpI3bBD9tzLncOmNakRx6wYm-TE8jUjXlVF');
INSERT INTO "public"."firebase_token" VALUES ('eP6SIdTW_WI:APA91bFO44pY93m-Fugt7jJZl8At9PDxUV8bguKMdPDk6jewMjfM9FUWbMy2vdn6z-c7U_FdcrL6hRm4p8tMNF-dkEb3jXaMCSaek5D6PuobnXOsIHED-6lJAOyhb2dmESKwjQfEfNx-');
INSERT INTO "public"."firebase_token" VALUES ('eC1gpcFwYRM:APA91bEo2t_H8pt8q7ZE4JEYpuhktb78QY2qmy3ckLVtrspKJb1XLikPqoDpK2Oj-lenL2orCL5gcE9ravYqCicM9hvjYkGylrulgnScnWx47q15j4ac1E7-kxNYZiE2Zfktk4pNHJZz');
INSERT INTO "public"."firebase_token" VALUES ('fNd28z_STIM:APA91bFgRvH-QNaECC9i7JxHmtvsLhwHtsxdJG7nDLRskJ9pKIOP2acdJveA6hWQ-sxYc3ctRFCFQZAZH36eD3TCcu5qbtPAYMqtuzywtRSEv9Y-nYIRH5AzSmuGof9gbcVBsdvAhmL6');
INSERT INTO "public"."firebase_token" VALUES ('BLACKLISTED');
INSERT INTO "public"."firebase_token" VALUES ('fLE9SbeFfHg:APA91bF9-tppOkS_3dWwkVE1y0wa-Yk64Y6JeMNe7fiqC8U6hiNtgOKhRT__OfLVhLzzL_h9io6o3WMJO6yW3hY9_vIDU5CZsNxmfum0J_qazVSCcEXN-TwXOL3R1MMeWPA2o6TJFKS8');
INSERT INTO "public"."firebase_token" VALUES ('fXoccJd9bgo:APA91bF5Esr729_5_-22I3DGmoXw7Ru5TxEMoJ5Wq6t2WZkeu3BkwIYV_UMQi5E0Hdk_uOO824yhzyta0usA0Pe0BkVRu4PnMB4_fXr8hAChyylqTw-vEp-mNZXbuwDN17GouWbQbhn4');
INSERT INTO "public"."firebase_token" VALUES ('eADxELRdgX8:APA91bG5YW_s2wha3v0JgPPHiSSdvGZtkubE_CaKVBkAGg9XNkX865op4MpmQRXGv_EZER2I--Ov2aM7rs3-x_RCQ5BVXWt2AzpSXOL-XZIaQBvcs4KxOcdFDX6wMi7Q-hR37ApcQ8vQ');
INSERT INTO "public"."firebase_token" VALUES ('d2t8yrsAvdE:APA91bEtbk9KgatMb6hqGGGJGM87Ddq7rRDSHcnV-hwhfIjhkG5BZA3naU3kA6xv1dUBbBdT3io4qNq7j8jBjmQiwXUeZlTRKpieC5OlYwqbBkB8Y1LawmE1Q1Pmp3bOLaFDoNykxicZ');
INSERT INTO "public"."firebase_token" VALUES ('cMv1NAgZ2qk:APA91bFqxEuTB9_xlWC_HB6qppPIkmrz23obR-nZPslyiedZneWtsaHBDkJBZmffUsih_F9OGOQzqRURhtwqGoJhKFn8KCcvSFjK5Luj0nMHw-ZvcxSpvUdTVvw1V7sLaCnhRz3s2Muf');
INSERT INTO "public"."firebase_token" VALUES ('fDQT1hCvkj8:APA91bESrH90ah5D9oYkPT88RRRUpK-6xPsRYPucmtSK1FombC2tL2eDg6Q8mEgJVCf2QQsCnL4WSW3HKH5iLGJSiOtVBdZ-WagAzKDRDMrPrtZfaVK0s6SB40hntIrGk8z5BnetflUt');
INSERT INTO "public"."firebase_token" VALUES ('emnXTtV-FXA:APA91bFQwKWxDYFGsk8ol5t-uDFG-PNJioSxMrvJCxzL04kKZPqFZDWKVx09f3qNFcMWISCg7mKIkZK0AgcifRkfp0XbuXe9cIy7Ah3WCZ0ZgJmeAlDBf4-d1u4RcVzb2z-WHWIFVJ6X');
INSERT INTO "public"."firebase_token" VALUES ('fIyocsUSqUE:APA91bFjPvxrMXl7KSoGPa9EAP5q3AM-tL7MK-aPPbuAVRb_5ZFkaJ-hWtnq-JL-1Py7pFLsVr6Os3PDoBDA7xN1nQTlBFXi22p4DrzqjVQN-3rJGxR8teYC0-7qJpcpzB1xoqqPXSCr');
INSERT INTO "public"."firebase_token" VALUES ('fj-2W52YlZY:APA91bHl4ABu82-f1wShEEI2RWFe8mLJm6_P5q7FnSGhCLYPTupNF4yMVVSvB9ry484vkUIerVZMvDtV32UouJNcaTGBAgO_78pAGkiCrYV5NKDj5ZoA136CUYIPSOSz1Co1Hj9ypDey');
INSERT INTO "public"."firebase_token" VALUES ('c8ZOfL3-s7w:APA91bEaefYTKXZYvLIRgVHSbIliXG33brivxxtqe2cwP3FZs447lHT7zQzLkLlAp2juKoKOSkZJUw6-aRYtAi9fwa1UlPuUgIdCdMkMvXGdNxwaXDX_qgW6QPia-cEeVy9c4EkKHBhT');
INSERT INTO "public"."firebase_token" VALUES ('dob1s0pitB4:APA91bEPhUDFWjwxiwxcT3PbCl7Vk_n_pvZ7Ha7r8lV0SCvlyCQ_B1yLSy7b6SelVAVh3iS7z2wuTHWjm5rwThNkVPbF3pgmKfIoQJxidhCbajvdKyvtIDsvg8Ezd6kMr85df-0nKXTx');
INSERT INTO "public"."firebase_token" VALUES ('eDei7pMZLyQ:APA91bG9__Jl3VyS2A9V_0MRgo9357mFulviofrISFkLwWEuRbfMy8C5JXzFe1h-CizndA_AhN0DatHiMdEDGa9DqlHgJqc-6_m4u_nT6f4eLPu8tdgJHuXd4YpRiLYImRmOeYUXZCWa');
INSERT INTO "public"."firebase_token" VALUES ('flugBSmVNk8:APA91bHQxjJCPeJA-erkQBzGynHzFsPLFWHsaKHWoEBi845SNoDfPTBVpcHiSmgku7Xq-l_vkn5ITIUF7LKJ-Ja2Nq3IAXJGVe-DrMzv_kKrRVlZaSK5jqisT6EcesOao4pim6501LeB');
INSERT INTO "public"."firebase_token" VALUES ('eoBiPsQHUFg:APA91bHaw6APhAd--1sFrbvq_ifqA26cnrU9WrK-uN4ZvzGdMTryoBsYhEgiSFb_zn3WtNec_Tu5qy5IXvexkt7CCtNa8ojzG5SagkuaLk9i8twHtj9AxMWh5FzvyDj6JrtypSGkZcjn');
INSERT INTO "public"."firebase_token" VALUES ('eRNTBWTkDe0:APA91bGbs9CuWeiqDyT6VD1wZT07I-EKi1LmVmz7lhsTzIMWRK7XDXLkW0nGYLo173aQcmHXooFzt1c7aBytPAf9FvgUs0bMRv6iCD-ga_2YQEtY6PCPjnZvuN65y7uFi1xFBze3vb9s');
INSERT INTO "public"."firebase_token" VALUES ('f677mGYVQog:APA91bFoDwkwtQExryI-oL4fc2dcZ91w7_OUDplBMm01X6gbuT6zS0kvY8sdMjP85L_B-jtlHxB_U99l372ftaEm1TZrVdYMO4Y9-owmkuj6gIgSDH50TVpBEZM2llvTHysX639dt8Jh');
INSERT INTO "public"."firebase_token" VALUES ('fhllcAvWeyU:APA91bGcTc9LF6PSnsCvAPZsYyfSj4VAWgohYbJ7um6Tt0yT_a32OKQZiWon0lmJXigAMKaCOa6Z5EQ3dJtX7X54_T7hM1xC8wcftNVOwTqs-JBzGNA_BvdVqXL65JRFJetP23O4P7nz');
INSERT INTO "public"."firebase_token" VALUES ('eTEqwQuE-ds:APA91bGv8utpmiZ3DUNDxkgxAGt05bqu3H4IMv-EnsxUXhbC_jFdqrvWljaERHDOa4CDi6Xijb9KuGtnvvZxvyKdQ4dH8AiMTBuWzRwCjxxNWR8mesrNctwfy0vLE5h65lSxrWMNKOfw');
INSERT INTO "public"."firebase_token" VALUES ('eA8C9eYcHGg:APA91bGwtcnLTNUliSaKeB_CMYzrGAW-4ZkIZm8MZ40M4826rNnt2c-_sijilSHlkib7MT7rwZkFd92uRkenrHvkzaQ3NAFrNLtqZD1RmnQt5rcfwRTkNCoNlaYa-vlDpMXK_8IqHBKt');
INSERT INTO "public"."firebase_token" VALUES ('dOekb5qVToQ:APA91bHX81KP3lcF7LoleaYiP9NNRpGC9DjnSsysmtmPN_2B78uHz_GA7mNwpJSwr51mbTfXtz7LHCn7isCms--xItyW6Lo8AtEYbgj00XwTMKXfMgharW_wYeQGpdKJh-jj4SCtaMLw');
INSERT INTO "public"."firebase_token" VALUES ('c4YKEeLxpYM:APA91bH7rnCeQAJhLUrNIACTVigM-GrA3GFWgi5wqMcKzLKK1Jk-I-9J9Ixj0GqsdVPm3f3MW-mGR50h_Vm_Q_Lh4eGr26vLUHBjB2wSqhIZLFrIh1JC8JQ4GpONpSn7RGx0jt8G6VG9');
INSERT INTO "public"."firebase_token" VALUES ('eWKFHYmkBTQ:APA91bGCgJY5TvAqIYgnyBh_gTTN73I84AL6QxTkyGjq505uI34bQP0ifcxu03AWgyTcf2d3f8cTLvt3P_ygF8qydHihQZ4YvHlnNn_ErlwlfJkyo5NSgeWGW1yGv7zOMH8szzXxwuDk');
INSERT INTO "public"."firebase_token" VALUES ('fJ3Djfz5Nlc:APA91bFN-E6hTWhJWA9FmInjKC9ILLcuX6izMBoMR3sgqhRMjkNndtIqHrGwWQAJ6kZO8ta6P55IVdXqStwV5lB4s7AyE_QqNwUnOtjNRXkYotJ1BDwZ3A1kHUWc69QlPTx_80JYxFqB');
INSERT INTO "public"."firebase_token" VALUES ('dgmd5RKjP3s:APA91bEwfdRZ9mOXz_Zkpn8QzSHtFISDNVpyXrL2-A3Y-j0gJbnjH80EJMUrzeENWXIZCBdW8LDKH5cx43P57bpw_Pt4LM3QY0rr4FL3p12TZfCv9vhnGEAxInimd4aj41PaQqcn8bNI');
INSERT INTO "public"."firebase_token" VALUES ('fkGPvAIPXrE:APA91bGobBqpShUO4PR_7V8I440t1EAN-tBp9hZkwIj8Fdg-QOEG5KOBWs99f1AcaFIdFsLWFL0QyHTeqWN23apdK8YYjbtIK6VR54DEZxTxA9honeXApEYRhA__UdRWAkFL4h0fPcg7');
INSERT INTO "public"."firebase_token" VALUES ('ccilVQt4bsE:APA91bHFyvvYwOxdIsLMaPU-Sifydti6IPwIifH1Rq4AzBkJDZQKxNLOCio5irHZ1s16LGwLHIMbMHuORCqJx-6OPrL9d0cvec_FA-msOLHmCGXLBhmoywevA_q9Pm75UHI6sn-6601w');
INSERT INTO "public"."firebase_token" VALUES ('dnIWlvUxTEQ:APA91bGaLaYUbJod2hNmAnr5fHWUQvwjhm7k5Dgd_W5Ezh_0erC3d4lOswwP62xvShiZfxgtllbACiPAHblalt5bHkV-FwLCZXP48Krp4hyeIcEW3aI61AJCGistZboQ-rLIZgme6p-2');
INSERT INTO "public"."firebase_token" VALUES ('f6WnSInQaYE:APA91bG2RKMWmkjyM3sShJiRm-sLxBbwEt0gkvPMKn3Kxmm2BonmXlAwnDE-qYEUh_729oROnkCPPlp7-ruXPR9QSnKsUiDscKH3Ie-xGbuV0Ug8JMV2xtawLUlV2QZfp16QE9ZFT9v6');
INSERT INTO "public"."firebase_token" VALUES ('f6WnSInQaYE:APA91bF6Ot50Us19gK7HoRAYXf2lDxgXUZrFhRJDWA1isrnyr_qEJaLra1m2f_liFJeEi0Cn9CNgPBd2dQuj2_QKAVz89DmdrN6zCjbTHna1D8FaVblfD5DBr24Y06QTgpw9dkn10ZvG');
INSERT INTO "public"."firebase_token" VALUES ('enXTEIfZfjo:APA91bHag_8voOih9LRHwntkYyFsXLwugbOzsiHNn3rYCkPn-nfAaDvp0BIY5ecCDQU554ARDjMCFYm3RKsSj7unyKBx9ATeTCZlUshAo8q53fphLlUGwrPTtZ4SnYE3lVXAC6Cowzky');

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS "public"."galeri";
CREATE TABLE "public"."galeri" (
  "IMAGE_FILE" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ID_NEWS" int8
)
;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO "public"."galeri" VALUES ('WhatsApp_Image_2019-10-16_at_08_35_011.jpeg', 15);
INSERT INTO "public"."galeri" VALUES ('foto_web_enero1.jpg', 15);
INSERT INTO "public"."galeri" VALUES ('WhatsApp_Image_2019-10-03_at_13_40_301.jpeg', 15);
INSERT INTO "public"."galeri" VALUES ('WhatsApp_Image_2019-09-20_at_10_31_271.jpeg', 15);
INSERT INTO "public"."galeri" VALUES ('Lahan_Pandean1.jpeg', 15);

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS "public"."likes";
CREATE TABLE "public"."likes" (
  "ID_LIKES" int8 NOT NULL DEFAULT nextval('"likes_ID_LIKES_seq"'::regclass),
  "EMAIL" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "ID_NEWS" int4 NOT NULL
)
;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO "public"."likes" VALUES (71, 'shellafadwa18@gmail.com', 13);
INSERT INTO "public"."likes" VALUES (72, 'voidels.rey05@gmail.com', 18);
INSERT INTO "public"."likes" VALUES (74, 'voidels.rey05@gmail.com', 16);
INSERT INTO "public"."likes" VALUES (76, 'daudana.dp@gmail.com', 3);
INSERT INTO "public"."likes" VALUES (77, 'dhitamawardani@gmail.com', 16);
INSERT INTO "public"."likes" VALUES (78, 'dhitamawardani@gmail.com', 8);
INSERT INTO "public"."likes" VALUES (28, 'yohanesdl9@gmail.com', 13);
INSERT INTO "public"."likes" VALUES (29, 'yohanesdl9@gmail.com', 13);
INSERT INTO "public"."likes" VALUES (34, 'yohanesdl9@gmail.com', 10);
INSERT INTO "public"."likes" VALUES (41, 'firnasreyhan@gmail.com', 3);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS "public"."news";
CREATE TABLE "public"."news" (
  "ID_NEWS" int4 NOT NULL DEFAULT nextval('"news_ID_NEWS_seq"'::regclass),
  "ID_CATEGORY" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "TITLE_NEWS" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "CONTENT_NEWS" text COLLATE "pg_catalog"."default" NOT NULL,
  "VIEWS_COUNT" int8 NOT NULL,
  "SHARES_COUNT" int8 NOT NULL,
  "DATE_NEWS" timestamp(0) NOT NULL,
  "NEWS_IMAGE" varchar(255) COLLATE "pg_catalog"."default",
  "USER_EDITOR" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "USER_VERIFICATOR" varchar(30) COLLATE "pg_catalog"."default",
  "STATUS" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO "public"."news" VALUES (10, 'B', 'Contoh', '<p>abcdefghijkl</p>', 0, 0, '2019-09-26 11:21:42', 'Screenshot_3.png', 'admin@ptpn10.co.id', NULL, 'draft');
INSERT INTO "public"."news" VALUES (13, 'B', 'Sejarah PTPN X', '<p>Sejarah PTPN X</p>', 0, 0, '2019-10-01 14:53:27', 'terus-merugi-ptpn-x-tutup-pabrik-gula-meraka-moqgVeuRfv.jpg', 'admin@ptpn10.co.id', NULL, 'draft');
INSERT INTO "public"."news" VALUES (15, 'G', 'Contoh Galeri Berita', '<p>Contoh berita berbentuk galeri yang diunggah ke Digimagz PTPN X</p>', 0, 0, '2019-10-16 05:30:43', NULL, 'admin@ptpn10.co.id', NULL, 'draft');
INSERT INTO "public"."news" VALUES (16, 'B', 'Contoh Embedded Media dan Gambar', '<p>Contoh berita yang menggunakan embedded media berupa video YouTube dan gambar</p>
<p><img src="https://drive.tiny.cloud/1/i8b1vm1qkrytw968a78y2mz1mdfk51re4smkal9m11h4012x/85418d39-b279-454f-a4e9-62d172a60f94" alt="" width="100%" height="auto" /></p>
<p>Video YouTube :</p>
<p><iframe src="https://www.youtube.com/embed/Ux-H-x7GmSA?t=33s" width="100%" height="auto" allowfullscreen="allowfullscreen"></iframe></p>', 0, 0, '2019-10-17 14:23:50', 'WhatsApp_Image_2019-10-16_at_08_35_01.jpeg', 'admin@ptpn10.co.id', 'muh.rizal@ptpn10.co.id', 'published');
INSERT INTO "public"."news" VALUES (8, 'B', 'Contoh Kedua', '<p>Sebagai salah satu anak perusahaan dari PTPN III (Persero) dan juga sebagai&nbsp;<em>leading company</em>&nbsp;dalam industri gula di Indonesia, PTPN X mendedikasikan diri untuk menjadi perusahaan yang mengutamakan pelayanan pada&nbsp;<em>stakeholder</em>. PTPN X juga meraih penghargaan&nbsp;<em>Silver Winner</em>&nbsp;kategori Indonesia Melayani berkat upaya dalam mengutamakan pelayanan&nbsp;<em>stakeholder</em>&nbsp;dan masyarakat dilingkungan sekitar melalui program<em>; E-farming</em>, Pemberian Kredit, dan Kartu Tani Sehat. (Valen_UWM, CIN_Sekper)</p>', 0, 0, '2019-09-25 15:12:50', 'applogo.png', 'admin@ptpn10.co.id', 'admin@ptpn10.co.id', 'published');
INSERT INTO "public"."news" VALUES (3, 'A', 'Smart People Millennial', '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Ada yang akan menjadi orang tersisihkan jika tidak siap menghadapi perubahan&rdquo;</em>, itulah yang terbesit di generasi teknologi millennial saat ini. Dimana masa generasi ini di sebut-sebut sebagai generasi perubahan. Pada era ini, semua berkembang seolah-olah menjadi fenomena yang&nbsp;<em style="box-sizing: border-box;">absurd.</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial diyakini akan sangat berpengaruh dalam kemajuan peradapan teknologi masa depan, karena mereka memegang kendali dan memainkan peran penting dalam perkembangan dunia digitalisasi. Generasi ini lahir di tengah-tengah peradapan teknologi yang canggih dan&nbsp;<em style="box-sizing: border-box;">modern</em>. Hal ini membuat generasi ini sangat dekat dengan teknologi, sehingga berhasil menyulap globalisasi yang mempunyai interaksi tanpa batas dibelahan dunia.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial merupakan generasi pertama yang tumbuh subur dengan perangkat elektronik dan jaringan akses internet. Pada masa ini, setiap orang sangat fasih terhadap penggunaan teknologi. Kemajuan sains teknologi ini mendorong generasi millennial untuk melakukan aktivitas lebih banyak dari pada generasi sebelumnya.&nbsp; Selain itu mereka lebih mudah untuk mempelajari&nbsp;<em style="box-sizing: border-box;">platform digital</em>&nbsp;dengan cepat dan menggabungkan kedalam seni kehidupan mereka.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Akan tetapi semua fenomena kecanggihan itu membawa dampak yang sangat mengerikan. Mobilitas antar negara semakin tinggi, peradapan dunia semakin kejam dan penuh dengan tantangan baru dari segala aspek. Belum lagi tingginya grafik inflasi yang terus naik membuat kebutuhan sulit di jangkau.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Anda sebagai generasi millennial harus manjadi pribadi yang kental akan inovatif, aktif dan kreatif agar mampu mengisi&nbsp;<em style="box-sizing: border-box;">millennial times&nbsp;</em>dengan baik.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;">&ldquo;Kemajuan tidaklah mungkin tanpa perubahan, dan orang yang tidak mengubah pikirannya takkan mampu mengubah apapun&rdquo;,&nbsp;</em>(Sepositif). Bagi anda yang sekarang berada di generasi muda millennial, anda harus menjadi pribadi yang profokatif dalam banyak hal (positif), karena sejatinya perubahan membutuhkan pengendalian&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;yang bagus. Nah, bagian yang bingung mau ngapain di generasi millennial ini, ada tips yang saya tulis sebagai inspirasi, agar anda menjadi&nbsp;<em style="box-sizing: border-box;">smart people millennial.&nbsp;</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">A2 (<em style="box-sizing: border-box;">Active Action)</em></span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial bisa menjadi generasi emas dalam sejarah. Dalam konteks generasi ini merupakan generasi peralihan dalam peradaban teknologi. Millennial lebih dominan menjadi &lsquo;generasi pengubah&rsquo;, bukan berkarakter sebagai &lsquo;generasi penerus&rsquo;. Untuk mengisi peradapan millennial ini, anda sebagai energi jiwa muda di era ini harus memiliki&nbsp;<em style="box-sizing: border-box;">mindset</em>&nbsp;A2&nbsp;<em style="box-sizing: border-box;">(Active Action)</em>, yakni aktif aksi dalam membuat revolusi perubahan, karena energi muda millennial identik dengan ide-ide segar dan pemikiran baru. A2 bisa diwujudkan dengan aktifitas sebagai berikut:</p>
<ol style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff;">
<li style="box-sizing: border-box; text-align: justify;">Aktif dalam penggunaan teknologi untuk penyebaran kegiatan yang positif.</li>
<li style="box-sizing: border-box; text-align: justify;">Aktif dalam berinovasi dan membuat gagasan kreatif yang sangat bermanfaat bagi kelangsungan teknologi dan mekanisasi pertanian.</li>
<li style="box-sizing: border-box; text-align: justify;">Aktif dalam membangun ide dan gagasan baru di tempat kerja.</li>
<li style="box-sizing: border-box; text-align: justify;">Aktif dalam merubah pola dan gaya hidup</li>
<li style="box-sizing: border-box; text-align: justify;">Aktif dalam kegiatan sosialisme dan memodernisasi informasi secara cepat, tepat, akurat dan kekinian.</li>
</ol>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">Internet&nbsp;<em style="box-sizing: border-box;">Positive Of Thinks</em></span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Teknologi tumbuh sangat baik di generasi millennial. Media digitalisasi berkembang dengan cepat membuat interaksi sosial tanpa batas memungkinkan semua dilakukan dengan mudah. Pada konteks komunikasi sosial media berhasil menyulap dan melampaui harapan penggunanya.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Dilansir dari situs kompas.com, bahwa media sosial dan perkembangan teknologi digital ternyata menyimpan lubang gelap, meski pada titik yang sama menghadirkan kesempatan untuk mempermudah manusia. Pengguna internet di Indonesia adalah terbesar ke-4 di Asia. Dari riset internet&nbsp;<em style="box-sizing: border-box;">World Stats</em>&nbsp;pada 2016, pengakses teknologi internet di negeri ini berjumlah sekitar 78 juta. Adapun penetrasi atau rasio pengguna internet di Indonesia ditaksir sekitar 30,5 persen. Di kawasan Asia, pengguna internet terbesar yakni Cina (674 juta/49,5 persen populasi), India (375 juta/30 persen), Jepang (115 juta/90,6 persen), dan kemudian Indonesia.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Dari fenomena tersebut, apabila tidak ada pengendalian dan kebijakan diri yang baik, tentu hal ini akan memicu timbulnya dampak yang negatif seperti pendirian situs pornografi, membangun komunitas radikalisme, atau penyebaran hoaks.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Perubahan&nbsp;<em style="box-sizing: border-box;">platform</em>&nbsp;teknologi mempengaruhi interaksi manusia di peradapan manusia yang selanjutnya. Nah, sebagai generasi millennial yang cerdas, kita harus menjadi &lsquo;<em style="box-sizing: border-box;">internet positive of thinks&rsquo;&nbsp;</em>artinya, menggunakan internet dengan sehat dan untuk hal yang positif.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box;"><span style="box-sizing: border-box; font-weight: bold;">Make Future Projects</span></em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Di peradapan global di masa sekarang sangat tidak cukup bermodalkan pandai beropini. Untuk mengisi generasi millennial dengan cerdas, anda harus membuat dunia menjadi tempat yang lebih baik dari sebelumnya. Anda adalah arsitek dari seni kehidupan anda sendiri, buatlah desain yang menarik untuk gagas revolusi perubahan.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Generasi millennial adalah generasi jeniusme. Generasi dimana waktu dan tempatnya dapat di gali berbagai hal-hal baru.Sebagai generasi millennial anda harus mempunyai stabilitas diri yang baik. Bukan hanya sekedar tentang&nbsp;<em style="box-sizing: border-box;">to-do-list&nbsp;</em>tapi lebih&nbsp;<em style="box-sizing: border-box;">focus</em>&nbsp;menuju &shy;<em style="box-sizing: border-box;">to-be-list</em>. Memang bagus berfikir tentang apa, tapi akan terlihat lebih hebat apabila anda lebih berfikir ingin menjadi apa untuk membuat apa.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">95% dari hidup kita berasal dari progam kehidupan.&nbsp;<em style="box-sizing: border-box;">Make Future Projects,&nbsp;</em>mulailah membuat hal kecil setelah membaca artikel ini. Karena generasi di masa depan bisa saja berubah dan berevolusi menjadi lebih baik dari apa yang kita ciptakan hari ini.</p>', 0, 0, '2019-09-25 10:07:09', 'pict_web.jpg', 'admin@ptpn10.co.id', 'muh.rizal@ptpn10.co.id', 'published');
INSERT INTO "public"."news" VALUES (18, 'B', 'Dirut PTPN X Tinjau Langsung Lahan Agroforestry', '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo melakukan kunjungan ke beberapa lahan tebu milik PG Lestari, Rabu (18/9).&nbsp; Kunjungan ini bertujuan untuk meninjau secara langsung program agroforestry yang dilakukan antara PTPN X dengan Perum Perhutani KPH Jombang. Kunjungan dilakukan di lahan Ngujung, Pandean,&nbsp;dan Ngasem.&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Penyediaan pengairan dan saprodi untuk lahan tersebut juga telah disediakan guna mendukung pengelolaan&nbsp;<em style="box-sizing: border-box;">on farmn</em>-nya. Dwi menghimbau untuk segera melakukan pekerjaan persiapan pembuatan sumber air guna pengairan, sehingga dapat segera melaksanakan kegiatan pemupukan. Kualitas dan mutu pekerjaan juga harus menjadi perhatian.&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kebutuhan biaya pengerjaan segera disusun dan diajukan, sehingga pengairan dan saprodi segera tersedia dan dapat dilanjutkan dengan kegiatan pupuk,&rdquo; terang Dwi lebih lanjut.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya, lahan-lahan ini akan ditanami tebu dengan varietas Cening dan Bululawang. Lahan Ngasem sendiri telah tanam di bulan Mei 2019 dan lahan Ngujung telah tanam di bulan Agustus 2019. Sedangkan untuk lahan Pandean dijadwalkan tanam pada bulan Oktober 2019. (CIN_Sekper, BSA_Sekper)</p>', 0, 0, '2019-10-22 07:22:28', 'agro2.JPG', 'admin@ptpn10.co.id', 'admin@ptpn10.co.id', 'published');
INSERT INTO "public"."news" VALUES (17, 'B', 'Dirut PTPN X Kunjungi Lahan Agroforestry Tebu di Bojonegoro', '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;">BOJONEGORO</span>&nbsp;&ndash; Direktur Utama PT Perkebunan Nusantara (PTPN) X, Dwi Satriyo Annurogo, lakukan kunjungan ke Lahan Perum Perhutani BKPH Celangap, KPH Bojonegoro pada Kamis (3/10). Kunjungan ini menindaklanjuti adanya kerjasama penggunaan dan pemanfaatan kawasan hutan untuk kegiatan budidaya tanaman tebu dengan Perum Perhutani yang telah berlangsung sejak Oktober 2017.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Kerjasama yang bertujuan untuk mendukung ketahanan pangan ini terkait di antaranya pengerjaan lahan Perum Perhutani untuk kegiatan penanaman Agroforestry tebu seluas 5.661,5 Ha yang mana telah mendapat persetujuan Kementerian Lingkungan Hidup dan Kehutanan.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Seluas 52,3 Ha lahan Perhutani di kawasan KPH Bojonegoro akan ditanami tebu dan dikelola langsung oleh Pabrik Gula (PG) Djombang Baru. Lahan ini nantinya akan ditanami varietas unggul baru, dengan potensi produksi 80 Ton/ Ha dan rendemen 9%.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">&ldquo;Kerjasama terkait pengerjaan lahan Agroforestry tebu ini sebagai upaya dari PTPN X untuk memastikan keajegan pasok BBT ke pabrik gula pada masa giling tahun 2020,&rdquo;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: open_sansregular, sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;">Rencananya di tahun 2019 ini akan ada pengerjaan seluas 423 Ha. Sebelumnya, lahan yang telah dikerjakan berada di kawasan KPH Jombang seluas 108 Ha yang dikelola oleh PG Lestari. Selanjutnya, akan ada pengerjaan lahan di kawasan KPH Mojokerto seluas 253 Ha yang akan dikelola oleh PG Gempolkrep. (Ella_Unair, CIN_Sekper)</p>', 0, 0, '2019-10-22 07:20:41', 'agrofore1.JPG', 'admin@ptpn10.co.id', 'admin@ptpn10.co.id', 'published');

-- ----------------------------
-- Table structure for news_cover
-- ----------------------------
DROP TABLE IF EXISTS "public"."news_cover";
CREATE TABLE "public"."news_cover" (
  "ID_COVERSTORY" int8 NOT NULL,
  "ID_NEWS" int8 NOT NULL
)
;

-- ----------------------------
-- Records of news_cover
-- ----------------------------
INSERT INTO "public"."news_cover" VALUES (3, 10);
INSERT INTO "public"."news_cover" VALUES (3, 8);
INSERT INTO "public"."news_cover" VALUES (4, 17);
INSERT INTO "public"."news_cover" VALUES (4, 18);

-- ----------------------------
-- Table structure for news_tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."news_tags";
CREATE TABLE "public"."news_tags" (
  "ID_TAGS" int4 NOT NULL,
  "ID_NEWS" int4 NOT NULL
)
;

-- ----------------------------
-- Records of news_tags
-- ----------------------------
INSERT INTO "public"."news_tags" VALUES (3, 3);
INSERT INTO "public"."news_tags" VALUES (4, 3);
INSERT INTO "public"."news_tags" VALUES (5, 3);
INSERT INTO "public"."news_tags" VALUES (8, 8);
INSERT INTO "public"."news_tags" VALUES (3, 10);
INSERT INTO "public"."news_tags" VALUES (11, 13);
INSERT INTO "public"."news_tags" VALUES (5, 15);
INSERT INTO "public"."news_tags" VALUES (12, 15);
INSERT INTO "public"."news_tags" VALUES (13, 15);
INSERT INTO "public"."news_tags" VALUES (8, 15);
INSERT INTO "public"."news_tags" VALUES (5, 16);
INSERT INTO "public"."news_tags" VALUES (14, 16);
INSERT INTO "public"."news_tags" VALUES (15, 16);
INSERT INTO "public"."news_tags" VALUES (16, 16);
INSERT INTO "public"."news_tags" VALUES (5, 17);
INSERT INTO "public"."news_tags" VALUES (17, 17);
INSERT INTO "public"."news_tags" VALUES (18, 17);
INSERT INTO "public"."news_tags" VALUES (17, 18);
INSERT INTO "public"."news_tags" VALUES (5, 18);
INSERT INTO "public"."news_tags" VALUES (18, 18);

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."tags";
CREATE TABLE "public"."tags" (
  "ID_TAGS" int4 NOT NULL DEFAULT nextval('"tag_ID_TAG_seq"'::regclass),
  "TAGS" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO "public"."tags" VALUES (3, 'smart people');
INSERT INTO "public"."tags" VALUES (4, 'milenial');
INSERT INTO "public"."tags" VALUES (5, 'PTPN X');
INSERT INTO "public"."tags" VALUES (6, 'ptpn');
INSERT INTO "public"."tags" VALUES (7, 'oke');
INSERT INTO "public"."tags" VALUES (8, 'contoh');
INSERT INTO "public"."tags" VALUES (10, 'nyoba');
INSERT INTO "public"."tags" VALUES (11, 'sejarah');
INSERT INTO "public"."tags" VALUES (12, 'galeri');
INSERT INTO "public"."tags" VALUES (13, 'berita galeri');
INSERT INTO "public"."tags" VALUES (14, 'embedded');
INSERT INTO "public"."tags" VALUES (15, 'media');
INSERT INTO "public"."tags" VALUES (16, 'gambar');
INSERT INTO "public"."tags" VALUES (17, 'agroforestry');
INSERT INTO "public"."tags" VALUES (18, 'perhutani');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
  "EMAIL" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "USER_NAME" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "PROFILEPIC_URL" varchar(255) COLLATE "pg_catalog"."default",
  "LAST_LOGIN" timestamp(0) NOT NULL,
  "UID" varchar(128) COLLATE "pg_catalog"."default",
  "DISABLED" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "public"."user" VALUES ('yohanesdl9@gmail.com', 'Yohanes Dwi Listio', '487176e9a5c9b0bb8a70a0c0f9010f14', '2019-09-25 17:13:37', NULL, 'f');
INSERT INTO "public"."user" VALUES ('faridanolawangi@gmail.com', 'Baiq Farida Nolawangi', 'pic_url', '2019-10-07 10:01:59', NULL, 'f');
INSERT INTO "public"."user" VALUES ('firnasreyhan@gmail.com', 'Reyhan Firnas', NULL, '2019-10-07 10:07:30', NULL, 'f');
INSERT INTO "public"."user" VALUES ('171111079@mhs.stiki.ac.id', '171111079 MUHAMMAD REYHAN FIRNAS ADANI', 'https://lh5.googleusercontent.com/-u6CcqepvCbk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc4_bCRA3M1BIKdTH5DAjSYvhXV5g/s96-c/photo.jpg', '2019-10-09 05:19:21', NULL, 'f');
INSERT INTO "public"."user" VALUES ('shellafadwa18@gmail.com', 'Shella Anisa Fadwa', 'https://lh3.googleusercontent.com/a-/AAuE7mAcawr--5LrENVy7nb0udt4OdYYjKOGyCDb5IHujg=s96-c', '2019-10-09 07:36:37', NULL, 'f');
INSERT INTO "public"."user" VALUES ('shellaanisafadwa@gmail.com', 'Shella Anisa Fadwa', 'https://lh3.googleusercontent.com/a-/AAuE7mAhWiEbiuwM64WJwxXWgDvSYb8MI6W0viu61r1B=s96-c', '2019-10-09 09:42:04', NULL, 'f');
INSERT INTO "public"."user" VALUES ('andika.vernanda@gmail.com', 'Andika Vernanda', 'https://lh3.googleusercontent.com/a-/AAuE7mDyVEnBNZuHysaPTyirjMY__a-x3EAl-mVMKAajJg=s96-c', '2019-10-11 01:29:51', NULL, 'f');
INSERT INTO "public"."user" VALUES ('shellafadwa18', 'Shella Anisa



', 'https://lh3.googleusercontent.com/a-/AAuE7mAcawr--5LrENVy7nb0udt4OdYYjKOGyCDb5IHujg=s96-c', '2019-10-11 16:09:15', NULL, 'f');
INSERT INTO "public"."user" VALUES ('nanasenchi@gmail.com', 'Nanas', NULL, '2019-10-23 07:44:04', 'zHPfcdg5cvP13ABChChlTjkShjU2', 'f');
INSERT INTO "public"."user" VALUES ('voidels.rey01@gmail.com', 'Voidels Rey', 'https://lh5.googleusercontent.com/-w2BbcN7RhAc/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfxoSNshK5iDyD7gYsixsx5yKyigw/s96-c/photo.jpg', '2019-10-23 07:45:54', 'uNmKx6L2UCUcBvcQrFkxg8iPjBQ2', 'f');
INSERT INTO "public"."user" VALUES ('voidels.rey02@gmail.com', 'Voidels Rey', 'https://lh4.googleusercontent.com/-JplgHTm1HRk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfJ8pPr9K9vzhiZc1c8ChE5v_X5ZQ/s96-c/photo.jpg', '2019-10-23 07:47:29', 'iMyaqMjYIFPp9Oc6i8c6RHGtnTp2', 'f');
INSERT INTO "public"."user" VALUES ('voidels.rey03@gmail.com', 'Voidels Rey', 'https://lh4.googleusercontent.com/-thh3Yht84rY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfnPl29jzbGNUuOJHQKSphsKghsYQ/s96-c/photo.jpg', '2019-10-23 07:55:24', 'HI1bF7IT3Aae7kKLiz3KOpIw4Tz2', 'f');
INSERT INTO "public"."user" VALUES ('voidels.rey04@gmail.com', 'Voidels Rey', 'https://lh3.googleusercontent.com/-eGhQhEgjqCM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfY5av8Shs4OTngneWJPHzlBk7XVQ/s96-c/photo.jpg', '2019-10-23 07:57:59', 'hqmPa5o13FhjXCrLREZl7azdmjJ2', 'f');
INSERT INTO "public"."user" VALUES ('voidels.rey05@gmail.com', 'Voidels Rey', 'https://lh4.googleusercontent.com/--Q2CfydsMeg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdL5EIW5Lhyr16SH32fxHXt6KL_5A/s96-c/photo.jpg', '2019-10-23 07:58:35', 'irEHRuyfm0Pgdm06SU8xazevNfW2', 'f');
INSERT INTO "public"."user" VALUES ('irfanalfiansyah10@gmail.com', 'Irfan Alfiansyah', 'https://lh3.googleusercontent.com/a-/AAuE7mDvHDgYlFsNhg3jWr1Ekv1vTBQAJASMTn2FxmPQjw=s96-c', '2019-10-23 08:46:43', '8UKuypdOpKU9bcIeHyKaxt8EZ8N2', 'f');
INSERT INTO "public"."user" VALUES ('daudana.dp@gmail.com', 'Daudana Purina', 'https://lh3.googleusercontent.com/a-/AAuE7mDBFintYaXinfSgnXq2PkjA5g70MFFlKytXajoQ=s96-c', '2019-10-31 04:09:20', 'hP8jUZN3IfentyRrpuUhRt2b3Vd2', 'f');
INSERT INTO "public"."user" VALUES ('dhitamawardani@gmail.com', 'Dhita Mawardani', 'https://lh3.googleusercontent.com/a-/AAuE7mDVrHnjge8dF94sq0SUB5YpmxqT6dLDThQbgUlV9A=s96-c', '2019-10-31 05:54:22', 'mAQvT16C8wdTB94mEd21SkzBalc2', 'f');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS "public"."video";
CREATE TABLE "public"."video" (
  "ID_VIDEO" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "TITLE" varchar(100) COLLATE "pg_catalog"."default",
  "DESCRIPTION" text COLLATE "pg_catalog"."default",
  "DATE_PUBLISHED" timestamp(0),
  "URL_DEFAULT_THUMBNAIL" varchar(255) COLLATE "pg_catalog"."default",
  "URL_MEDIUM_THUMBNAIL" varchar(255) COLLATE "pg_catalog"."default",
  "URL_HIGH_THUMBNAIL" varchar(255) COLLATE "pg_catalog"."default",
  "STATUS_PUBLISHED" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO "public"."video" VALUES ('8EUqZQorFlU', 'Ucapan Idul Fitri 1440 H - Syaifullah Yusuf Komisaris Utama', '', '2019-06-13 00:58:52', 'https://i.ytimg.com/vi/8EUqZQorFlU/default.jpg', 'https://i.ytimg.com/vi/8EUqZQorFlU/mqdefault.jpg', 'https://i.ytimg.com/vi/8EUqZQorFlU/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('_LGUNmgg0Lg', 'Company Profile PTPN X 2019', '', '2019-04-02 06:25:46', 'https://i.ytimg.com/vi/_LGUNmgg0Lg/default.jpg', 'https://i.ytimg.com/vi/_LGUNmgg0Lg/mqdefault.jpg', 'https://i.ytimg.com/vi/_LGUNmgg0Lg/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('rZqY7U1Rxck', 'Ucapan Selamat Tahun Baru 2019', 'Ucapan Selamat Tahun Baru 2019 yang disampaikan oleh Direktur Utama PTPN X, Ir. Dwi Satriyo Annurogo, MT.', '2019-01-02 06:02:12', 'https://i.ytimg.com/vi/rZqY7U1Rxck/default.jpg', 'https://i.ytimg.com/vi/rZqY7U1Rxck/mqdefault.jpg', 'https://i.ytimg.com/vi/rZqY7U1Rxck/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('OynO0l9a5Q0', 'Peringatan HUT RI ke 73', '', '2018-09-18 07:25:53', 'https://i.ytimg.com/vi/OynO0l9a5Q0/default.jpg', 'https://i.ytimg.com/vi/OynO0l9a5Q0/mqdefault.jpg', 'https://i.ytimg.com/vi/OynO0l9a5Q0/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('MgujD18vi2k', 'Mudik Bareng PTPN Group', '', '2018-07-25 07:01:34', 'https://i.ytimg.com/vi/MgujD18vi2k/default.jpg', 'https://i.ytimg.com/vi/MgujD18vi2k/mqdefault.jpg', 'https://i.ytimg.com/vi/MgujD18vi2k/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('KOxzkQFDTbQ', 'Selamat Hari Raya Idul Fitri 1439 H', 'PT Perkebunan Nusantara X mengucapkan Selamat Hari Raya Idul Fitri 1439 H.', '2018-06-13 01:49:07', 'https://i.ytimg.com/vi/KOxzkQFDTbQ/default.jpg', 'https://i.ytimg.com/vi/KOxzkQFDTbQ/mqdefault.jpg', 'https://i.ytimg.com/vi/KOxzkQFDTbQ/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('VgqeISP3bOs', 'Tingkatkan Pelayanan Pada Petani, PTPN X Terapkan e-Farming', 'Tingkatkan Pelayanan Pada Petani, PTPN X Terapkan e-Farming Sejak 2016, PTPN X berhasil mengimplementasikan e-Farming yang merupakan sistem ...', '2017-10-24 06:41:44', 'https://i.ytimg.com/vi/VgqeISP3bOs/default.jpg', 'https://i.ytimg.com/vi/VgqeISP3bOs/mqdefault.jpg', 'https://i.ytimg.com/vi/VgqeISP3bOs/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('gjYC0wLn_Vc', 'PTPN X Kembangkan Pellet dari Ampas Tebu', 'PTPN X Kembangkan Pellet dari Ampas Tebu Keberhasilan pabrik gula PTPN X dalam menjaga efisiensi energi selama musim giling, membuat ampas yang ...', '2017-10-24 06:25:00', 'https://i.ytimg.com/vi/gjYC0wLn_Vc/default.jpg', 'https://i.ytimg.com/vi/gjYC0wLn_Vc/mqdefault.jpg', 'https://i.ytimg.com/vi/gjYC0wLn_Vc/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('KOvM3bXesZ8', 'Bioetanol : Dari PTPN X Untuk Negeri', 'Pasar bioetanol dalam negeri masih sangat besar. Peluang tersebut dimanfaatkan oleh PT Perkebunan Nusantara (PTPN) X melalui anak usahanya, PT Energi ...', '2017-09-13 08:46:56', 'https://i.ytimg.com/vi/KOvM3bXesZ8/default.jpg', 'https://i.ytimg.com/vi/KOvM3bXesZ8/mqdefault.jpg', 'https://i.ytimg.com/vi/KOvM3bXesZ8/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('d7BLcXdbwac', 'Inovasi Pengolahan Pabrik Gula PTPN X', 'Senantiasa berkomitmen untuk menghasilkan produk berdaya saing tinggi dan berwawasan lingkungan, PTPN X tak henti berinovasi pada proses pengolahan ...', '2017-09-05 04:53:49', 'https://i.ytimg.com/vi/d7BLcXdbwac/default.jpg', 'https://i.ytimg.com/vi/d7BLcXdbwac/mqdefault.jpg', 'https://i.ytimg.com/vi/d7BLcXdbwac/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('eslpENcAbIg', 'Testimoni HUT RI 72 PTPNX', 'Segenap keluarga besar PTPN X, mengucapkan Dirgahayu Republik Indonesia ke - 72. Indonesia Jaya!!! PTPN X Bangkit !!! Share, Subscribe, Like, and leave ...', '2017-08-15 03:11:09', 'https://i.ytimg.com/vi/eslpENcAbIg/default.jpg', 'https://i.ytimg.com/vi/eslpENcAbIg/mqdefault.jpg', 'https://i.ytimg.com/vi/eslpENcAbIg/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('rQVN0pm1KEQ', 'Core Sampler PTPN X', 'Core sampler merupakan alat penilaian kualitas tebu individu. Alat ini digunakan di 3 PG milik PTPN X. Sedangkan penerapan mobile core sampler untuk ...', '2017-08-14 08:21:26', 'https://i.ytimg.com/vi/rQVN0pm1KEQ/default.jpg', 'https://i.ytimg.com/vi/rQVN0pm1KEQ/mqdefault.jpg', 'https://i.ytimg.com/vi/rQVN0pm1KEQ/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('z04HJNrOwsk', 'Flexible Packaging   PT Dasaplast Nusantara', 'Flexible Packaging adalah salah unit usaha PT Dasaplast Nusantara, anak perusahaan PTPN X. Alamat: Desa Tulangan, Kec. Tulangan, Sidoarjo PO Box 107 ...', '2017-08-11 06:47:22', 'https://i.ytimg.com/vi/z04HJNrOwsk/default.jpg', 'https://i.ytimg.com/vi/z04HJNrOwsk/mqdefault.jpg', 'https://i.ytimg.com/vi/z04HJNrOwsk/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('dymWsZKJFpQ', 'RS Gatoel', 'Unit Hemodialisa merupakan salah satu layanan unggulan yang ditawarkan oleh RS Gatoel milik PT Nusantara Media Utama, anak perusahaan PTPN X.', '2017-08-03 03:51:45', 'https://i.ytimg.com/vi/dymWsZKJFpQ/default.jpg', 'https://i.ytimg.com/vi/dymWsZKJFpQ/mqdefault.jpg', 'https://i.ytimg.com/vi/dymWsZKJFpQ/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('5FZ-0AZ9bvo', 'Jejak Si Gundul - Trans 7: Pia Edamame dari Jember', 'Edamame, salah satu produk andalan PT Mitratani Dua Tujuh diliput dalam acara Jejak Si Gundul Trans 7. Info lebih lanjut: www.mitratani27.co.id Sumber ...', '2017-07-31 00:58:16', 'https://i.ytimg.com/vi/5FZ-0AZ9bvo/default.jpg', 'https://i.ytimg.com/vi/5FZ-0AZ9bvo/mqdefault.jpg', 'https://i.ytimg.com/vi/5FZ-0AZ9bvo/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('qBvTZWUmOdE', 'Senam Bersama', 'Senam Bersama secara rutin digelar satu kali dalam satu bulan. Acara ini diikuti oleh seluruh karyawan Kantor Pusat PTPN X, mulai dari Jajaran Direksi hingga ...', '2017-07-28 05:54:08', 'https://i.ytimg.com/vi/qBvTZWUmOdE/default.jpg', 'https://i.ytimg.com/vi/qBvTZWUmOdE/mqdefault.jpg', 'https://i.ytimg.com/vi/qBvTZWUmOdE/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('ix8krb1EA_Q', 'BAGI BINGKISAN RAMADAN   PTPN X', 'BINGKISAN RAMADAN.', '2017-07-27 03:21:27', 'https://i.ytimg.com/vi/ix8krb1EA_Q/default.jpg', 'https://i.ytimg.com/vi/ix8krb1EA_Q/mqdefault.jpg', 'https://i.ytimg.com/vi/ix8krb1EA_Q/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('8qY-osQ0xlo', 'Ramadhan Greeting', 'Ramadhan Greeting 2017.', '2017-06-08 09:41:02', 'https://i.ytimg.com/vi/8qY-osQ0xlo/default.jpg', 'https://i.ytimg.com/vi/8qY-osQ0xlo/mqdefault.jpg', 'https://i.ytimg.com/vi/8qY-osQ0xlo/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('DqGz9tfnDnA', 'Si Ladyfinger Asal Jember yang di Gemari Jepang', '', '2017-06-08 09:35:20', 'https://i.ytimg.com/vi/DqGz9tfnDnA/default.jpg', 'https://i.ytimg.com/vi/DqGz9tfnDnA/mqdefault.jpg', 'https://i.ytimg.com/vi/DqGz9tfnDnA/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('LaTvfcUigEI', 'Sayur Okra Untuk Diabetes di Jember', 'sayur okra.', '2017-06-08 09:32:36', 'https://i.ytimg.com/vi/LaTvfcUigEI/default.jpg', 'https://i.ytimg.com/vi/LaTvfcUigEI/mqdefault.jpg', 'https://i.ytimg.com/vi/LaTvfcUigEI/hqdefault.jpg', 't');
INSERT INTO "public"."video" VALUES ('UP-SO9R_TZs', 'Pekan Pancasila 2017 PTPN X #PekanPancasila', 'Pekan Pancasila 2017 PTPN X.', '2017-06-06 21:05:02', 'https://i.ytimg.com/vi/UP-SO9R_TZs/default.jpg', 'https://i.ytimg.com/vi/UP-SO9R_TZs/mqdefault.jpg', 'https://i.ytimg.com/vi/UP-SO9R_TZs/hqdefault.jpg', 't');

-- ----------------------------
-- View structure for view_news_banner
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_news_banner";
CREATE VIEW "public"."view_news_banner" AS  SELECT banner."ID_BANNER",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    news."CONTENT_NEWS",
    news."VIEWS_COUNT",
    news."SHARES_COUNT",
    news."DATE_NEWS",
    news."NEWS_IMAGE",
    banner."IMAGE_BANNER",
    banner."DATE_BANNER"
   FROM (banner
     JOIN news ON ((banner."ID_NEWS" = news."ID_NEWS")));

-- ----------------------------
-- View structure for view_likes
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_likes";
CREATE VIEW "public"."view_likes" AS  SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    count(likes."ID_LIKES") AS "LIKES"
   FROM (news
     LEFT JOIN likes ON ((likes."ID_NEWS" = news."ID_NEWS")))
  GROUP BY news."ID_NEWS", news."ID_CATEGORY", news."TITLE_NEWS";

-- ----------------------------
-- View structure for view_news_trending
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_news_trending";
CREATE VIEW "public"."view_news_trending" AS  SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    news."DATE_NEWS",
    news."VIEWS_COUNT",
    COALESCE(view_comments."COMMENTS", (0)::bigint, view_comments."COMMENTS") AS "COMMENTS",
    COALESCE((news."VIEWS_COUNT" + view_comments."COMMENTS"), (0)::bigint, (news."VIEWS_COUNT" + view_comments."COMMENTS")) AS "TRENDING",
    news."STATUS"
   FROM (news
     LEFT JOIN view_comments ON ((view_comments."ID_NEWS" = news."ID_NEWS")))
  ORDER BY COALESCE((news."VIEWS_COUNT" + view_comments."COMMENTS"), (0)::bigint, (news."VIEWS_COUNT" + view_comments."COMMENTS")) DESC;

-- ----------------------------
-- View structure for view_news_comments
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_news_comments";
CREATE VIEW "public"."view_news_comments" AS  SELECT comments."ID_COMMENT",
    comments."ID_NEWS",
    comments."EMAIL",
    comments."COMMENT_TEXT",
    comments."IS_APPROVED",
    comments."DATE_COMMENT",
    "user"."USER_NAME",
    "user"."PROFILEPIC_URL"
   FROM ((news
     JOIN comments ON ((comments."ID_NEWS" = news."ID_NEWS")))
     JOIN "user" ON (((comments."EMAIL")::text = ("user"."EMAIL")::text)));

-- ----------------------------
-- View structure for view_comments
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_comments";
CREATE VIEW "public"."view_comments" AS  SELECT news."ID_NEWS",
    news."ID_CATEGORY",
    news."TITLE_NEWS",
    count(comments."ID_COMMENT") AS "COMMENTS"
   FROM (news
     LEFT JOIN comments ON ((comments."ID_NEWS" = news."ID_NEWS")))
  WHERE (comments."IS_APPROVED" = true)
  GROUP BY news."ID_NEWS", news."ID_CATEGORY", news."TITLE_NEWS";

-- ----------------------------
-- View structure for view_news
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_news";
CREATE VIEW "public"."view_news" AS  SELECT news."ID_NEWS",
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
   FROM (((((news
     JOIN category ON ((news."ID_CATEGORY" = category."ID_CATEGORY")))
     LEFT JOIN view_likes ON ((view_likes."ID_NEWS" = news."ID_NEWS")))
     LEFT JOIN view_comments ON ((view_comments."ID_NEWS" = news."ID_NEWS")))
     LEFT JOIN backend_user "E" ON (((news."USER_EDITOR")::text = ("E"."USERNAME")::text)))
     LEFT JOIN backend_user "V" ON (((news."USER_VERIFICATOR")::text = ("V"."USERNAME")::text)));

-- ----------------------------
-- View structure for view_news_cover
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_news_cover";
CREATE VIEW "public"."view_news_cover" AS  SELECT view_news."ID_NEWS",
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
   FROM ((view_news
     LEFT JOIN news_cover ON ((news_cover."ID_NEWS" = view_news."ID_NEWS")))
     LEFT JOIN cover_story ON ((news_cover."ID_COVERSTORY" = cover_story."ID_COVERSTORY")));

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."captcha_ID_CAPTCHA_seq"
OWNED BY "public"."captcha"."ID_CAPTCHA";
SELECT setval('"public"."captcha_ID_CAPTCHA_seq"', 134, true);
ALTER SEQUENCE "public"."comments_ID_COMMENT_seq"
OWNED BY "public"."comments"."ID_COMMENT";
SELECT setval('"public"."comments_ID_COMMENT_seq"', 50, true);
ALTER SEQUENCE "public"."cover_story_ID_COVERSTORY_seq"
OWNED BY "public"."cover_story"."ID_COVERSTORY";
SELECT setval('"public"."cover_story_ID_COVERSTORY_seq"', 5, true);
ALTER SEQUENCE "public"."likes_ID_LIKES_seq"
OWNED BY "public"."likes"."ID_LIKES";
SELECT setval('"public"."likes_ID_LIKES_seq"', 79, true);
ALTER SEQUENCE "public"."news_ID_NEWS_seq"
OWNED BY "public"."news"."ID_NEWS";
SELECT setval('"public"."news_ID_NEWS_seq"', 19, true);
ALTER SEQUENCE "public"."tag_ID_TAG_seq"
OWNED BY "public"."tags"."ID_TAGS";
SELECT setval('"public"."tag_ID_TAG_seq"', 19, true);

-- ----------------------------
-- Primary Key structure for table backend_user
-- ----------------------------
ALTER TABLE "public"."backend_user" ADD CONSTRAINT "backend_user_pkey" PRIMARY KEY ("USERNAME");

-- ----------------------------
-- Primary Key structure for table banner
-- ----------------------------
ALTER TABLE "public"."banner" ADD CONSTRAINT "banner_pkey" PRIMARY KEY ("ID_BANNER");

-- ----------------------------
-- Primary Key structure for table captcha
-- ----------------------------
ALTER TABLE "public"."captcha" ADD CONSTRAINT "captcha_pkey" PRIMARY KEY ("ID_CAPTCHA");

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "public"."category" ADD CONSTRAINT "category_pkey" PRIMARY KEY ("ID_CATEGORY");

-- ----------------------------
-- Primary Key structure for table comments
-- ----------------------------
ALTER TABLE "public"."comments" ADD CONSTRAINT "comments_pkey" PRIMARY KEY ("ID_COMMENT");

-- ----------------------------
-- Primary Key structure for table cover_story
-- ----------------------------
ALTER TABLE "public"."cover_story" ADD CONSTRAINT "cover_story_pkey" PRIMARY KEY ("ID_COVERSTORY");

-- ----------------------------
-- Primary Key structure for table firebase_token
-- ----------------------------
ALTER TABLE "public"."firebase_token" ADD CONSTRAINT "firebase_token_pkey" PRIMARY KEY ("TOKEN");

-- ----------------------------
-- Primary Key structure for table galeri
-- ----------------------------
ALTER TABLE "public"."galeri" ADD CONSTRAINT "galeri_pkey" PRIMARY KEY ("IMAGE_FILE");

-- ----------------------------
-- Primary Key structure for table likes
-- ----------------------------
ALTER TABLE "public"."likes" ADD CONSTRAINT "likes_pkey" PRIMARY KEY ("ID_LIKES");

-- ----------------------------
-- Primary Key structure for table news
-- ----------------------------
ALTER TABLE "public"."news" ADD CONSTRAINT "news_pkey" PRIMARY KEY ("ID_NEWS");

-- ----------------------------
-- Primary Key structure for table tags
-- ----------------------------
ALTER TABLE "public"."tags" ADD CONSTRAINT "tag_pkey" PRIMARY KEY ("ID_TAGS");

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "public"."user" ADD CONSTRAINT "user_pkey" PRIMARY KEY ("EMAIL");

-- ----------------------------
-- Primary Key structure for table video
-- ----------------------------
ALTER TABLE "public"."video" ADD CONSTRAINT "video_pkey" PRIMARY KEY ("ID_VIDEO");

-- ----------------------------
-- Foreign Keys structure for table banner
-- ----------------------------
ALTER TABLE "public"."banner" ADD CONSTRAINT "FK_banner" FOREIGN KEY ("ID_NEWS") REFERENCES "public"."news" ("ID_NEWS") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table comments
-- ----------------------------
ALTER TABLE "public"."comments" ADD CONSTRAINT "FK_news_comment" FOREIGN KEY ("ID_NEWS") REFERENCES "public"."news" ("ID_NEWS") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."comments" ADD CONSTRAINT "FK_user_comment" FOREIGN KEY ("EMAIL") REFERENCES "public"."user" ("EMAIL") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table galeri
-- ----------------------------
ALTER TABLE "public"."galeri" ADD CONSTRAINT "FK_galeri" FOREIGN KEY ("ID_NEWS") REFERENCES "public"."news" ("ID_NEWS") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table likes
-- ----------------------------
ALTER TABLE "public"."likes" ADD CONSTRAINT "FK_news_likes" FOREIGN KEY ("ID_NEWS") REFERENCES "public"."news" ("ID_NEWS") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."likes" ADD CONSTRAINT "FK_user_likes" FOREIGN KEY ("EMAIL") REFERENCES "public"."user" ("EMAIL") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table news
-- ----------------------------
ALTER TABLE "public"."news" ADD CONSTRAINT "FK_news_category" FOREIGN KEY ("ID_CATEGORY") REFERENCES "public"."category" ("ID_CATEGORY") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."news" ADD CONSTRAINT "news_USER_EDITOR_fkey" FOREIGN KEY ("USER_EDITOR") REFERENCES "public"."backend_user" ("USERNAME") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "public"."news" ADD CONSTRAINT "news_USER_VERIFICATOR_fkey" FOREIGN KEY ("USER_VERIFICATOR") REFERENCES "public"."backend_user" ("USERNAME") ON DELETE SET NULL ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table news_cover
-- ----------------------------
ALTER TABLE "public"."news_cover" ADD CONSTRAINT "FK_news_cover_1" FOREIGN KEY ("ID_COVERSTORY") REFERENCES "public"."cover_story" ("ID_COVERSTORY") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."news_cover" ADD CONSTRAINT "FK_news_cover_2" FOREIGN KEY ("ID_NEWS") REFERENCES "public"."news" ("ID_NEWS") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table news_tags
-- ----------------------------
ALTER TABLE "public"."news_tags" ADD CONSTRAINT "FK_detail_news_tags_1" FOREIGN KEY ("ID_TAGS") REFERENCES "public"."tags" ("ID_TAGS") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."news_tags" ADD CONSTRAINT "FK_detail_news_tags_2" FOREIGN KEY ("ID_NEWS") REFERENCES "public"."news" ("ID_NEWS") ON DELETE CASCADE ON UPDATE CASCADE;
