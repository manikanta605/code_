toc.dat                                                                                             0000600 0004000 0002000 00000035501 14770712123 0014447 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   3    ,                }         	   ner_model    17.4    17.4 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         �           1262    16388 	   ner_model    DATABASE     o   CREATE DATABASE ner_model WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE ner_model;
                     postgres    false         �            1259    16451    document_data    TABLE     x   CREATE TABLE public.document_data (
    id integer NOT NULL,
    file_name character varying,
    document_text text
);
 !   DROP TABLE public.document_data;
       public         heap r       postgres    false         �            1259    16450    document_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.document_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.document_data_id_seq;
       public               postgres    false    232         �           0    0    document_data_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.document_data_id_seq OWNED BY public.document_data.id;
          public               postgres    false    231         �            1259    16390    excel_data_str    TABLE     p   CREATE TABLE public.excel_data_str (
    id integer NOT NULL,
    file_name character varying,
    text text
);
 "   DROP TABLE public.excel_data_str;
       public         heap r       postgres    false         �            1259    16389    excel_data_str_id_seq    SEQUENCE     �   CREATE SEQUENCE public.excel_data_str_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.excel_data_str_id_seq;
       public               postgres    false    218         �           0    0    excel_data_str_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.excel_data_str_id_seq OWNED BY public.excel_data_str.id;
          public               postgres    false    217         �            1259    16399    image_classification_1    TABLE     �   CREATE TABLE public.image_classification_1 (
    id integer NOT NULL,
    file_name character varying,
    image character varying,
    blob_image character varying,
    folder_name character varying,
    created_at timestamp with time zone
);
 *   DROP TABLE public.image_classification_1;
       public         heap r       postgres    false         �            1259    16398    image_classification_1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_classification_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.image_classification_1_id_seq;
       public               postgres    false    220         �           0    0    image_classification_1_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.image_classification_1_id_seq OWNED BY public.image_classification_1.id;
          public               postgres    false    219         �            1259    16408    image_data_text    TABLE     �   CREATE TABLE public.image_data_text (
    id integer NOT NULL,
    file_name character varying,
    text text,
    folder_name character varying,
    created_at timestamp with time zone
);
 #   DROP TABLE public.image_data_text;
       public         heap r       postgres    false         �            1259    16407    image_data_text_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_data_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.image_data_text_id_seq;
       public               postgres    false    222         �           0    0    image_data_text_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.image_data_text_id_seq OWNED BY public.image_data_text.id;
          public               postgres    false    221         �            1259    16442    json_data_str    TABLE       CREATE TABLE public.json_data_str (
    id integer NOT NULL,
    file_name character varying,
    json_text_1 character varying,
    json_text_2 character varying,
    folder_name character varying,
    created_at timestamp with time zone,
    file_id character varying
);
 !   DROP TABLE public.json_data_str;
       public         heap r       postgres    false         �            1259    16441    json_data_str_id_seq    SEQUENCE     �   CREATE SEQUENCE public.json_data_str_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.json_data_str_id_seq;
       public               postgres    false    230         �           0    0    json_data_str_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.json_data_str_id_seq OWNED BY public.json_data_str.id;
          public               postgres    false    229         �            1259    16460    msg_data    TABLE     n   CREATE TABLE public.msg_data (
    file_name character varying,
    msg_text text,
    id integer NOT NULL
);
    DROP TABLE public.msg_data;
       public         heap r       postgres    false         �            1259    16468    msg_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.msg_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.msg_data_id_seq;
       public               postgres    false    233         �           0    0    msg_data_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.msg_data_id_seq OWNED BY public.msg_data.id;
          public               postgres    false    234         �            1259    16417    pdf_conversion_1    TABLE     5  CREATE TABLE public.pdf_conversion_1 (
    id integer NOT NULL,
    file_path character varying,
    folder_name character varying,
    file_name character varying,
    file_extension character varying,
    num_pages character varying,
    status character varying,
    created_at timestamp with time zone
);
 $   DROP TABLE public.pdf_conversion_1;
       public         heap r       postgres    false         �            1259    16416    pdf_conversion_1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pdf_conversion_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pdf_conversion_1_id_seq;
       public               postgres    false    224         �           0    0    pdf_conversion_1_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pdf_conversion_1_id_seq OWNED BY public.pdf_conversion_1.id;
          public               postgres    false    223         �            1259    16435    str_data_excel    TABLE     "  CREATE TABLE public.str_data_excel (
    id integer NOT NULL,
    file_name character varying,
    sheet_name character varying,
    coumn_headings character varying,
    row_id character varying,
    text text,
    folder_name character varying,
    created_at timestamp with time zone
);
 "   DROP TABLE public.str_data_excel;
       public         heap r       postgres    false         �            1259    16434    str_data_excel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.str_data_excel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.str_data_excel_id_seq;
       public               postgres    false    228                     0    0    str_data_excel_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.str_data_excel_id_seq OWNED BY public.str_data_excel.id;
          public               postgres    false    227         �            1259    16426 	   tbl_label    TABLE     u   CREATE TABLE public.tbl_label (
    id integer NOT NULL,
    label character varying,
    color character varying
);
    DROP TABLE public.tbl_label;
       public         heap r       postgres    false         �            1259    16425    tbl_label_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_label_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_label_id_seq;
       public               postgres    false    226                    0    0    tbl_label_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_label_id_seq OWNED BY public.tbl_label.id;
          public               postgres    false    225         P           2604    16454    document_data id    DEFAULT     t   ALTER TABLE ONLY public.document_data ALTER COLUMN id SET DEFAULT nextval('public.document_data_id_seq'::regclass);
 ?   ALTER TABLE public.document_data ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    231    232         I           2604    16393    excel_data_str id    DEFAULT     v   ALTER TABLE ONLY public.excel_data_str ALTER COLUMN id SET DEFAULT nextval('public.excel_data_str_id_seq'::regclass);
 @   ALTER TABLE public.excel_data_str ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218         J           2604    16402    image_classification_1 id    DEFAULT     �   ALTER TABLE ONLY public.image_classification_1 ALTER COLUMN id SET DEFAULT nextval('public.image_classification_1_id_seq'::regclass);
 H   ALTER TABLE public.image_classification_1 ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220         K           2604    16411    image_data_text id    DEFAULT     x   ALTER TABLE ONLY public.image_data_text ALTER COLUMN id SET DEFAULT nextval('public.image_data_text_id_seq'::regclass);
 A   ALTER TABLE public.image_data_text ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222         O           2604    16445    json_data_str id    DEFAULT     t   ALTER TABLE ONLY public.json_data_str ALTER COLUMN id SET DEFAULT nextval('public.json_data_str_id_seq'::regclass);
 ?   ALTER TABLE public.json_data_str ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    229    230         Q           2604    16469    msg_data id    DEFAULT     j   ALTER TABLE ONLY public.msg_data ALTER COLUMN id SET DEFAULT nextval('public.msg_data_id_seq'::regclass);
 :   ALTER TABLE public.msg_data ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    233         L           2604    16420    pdf_conversion_1 id    DEFAULT     z   ALTER TABLE ONLY public.pdf_conversion_1 ALTER COLUMN id SET DEFAULT nextval('public.pdf_conversion_1_id_seq'::regclass);
 B   ALTER TABLE public.pdf_conversion_1 ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224         N           2604    16438    str_data_excel id    DEFAULT     v   ALTER TABLE ONLY public.str_data_excel ALTER COLUMN id SET DEFAULT nextval('public.str_data_excel_id_seq'::regclass);
 @   ALTER TABLE public.str_data_excel ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    228    228         M           2604    16429    tbl_label id    DEFAULT     l   ALTER TABLE ONLY public.tbl_label ALTER COLUMN id SET DEFAULT nextval('public.tbl_label_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_label ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226         _           2606    16458     document_data document_data_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.document_data
    ADD CONSTRAINT document_data_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.document_data DROP CONSTRAINT document_data_pkey;
       public                 postgres    false    232         S           2606    16397 "   excel_data_str excel_data_str_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.excel_data_str
    ADD CONSTRAINT excel_data_str_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.excel_data_str DROP CONSTRAINT excel_data_str_pkey;
       public                 postgres    false    218         U           2606    16406 2   image_classification_1 image_classification_1_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.image_classification_1
    ADD CONSTRAINT image_classification_1_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.image_classification_1 DROP CONSTRAINT image_classification_1_pkey;
       public                 postgres    false    220         W           2606    16415 $   image_data_text image_data_text_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.image_data_text
    ADD CONSTRAINT image_data_text_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.image_data_text DROP CONSTRAINT image_data_text_pkey;
       public                 postgres    false    222         ]           2606    16449     json_data_str json_data_str_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.json_data_str
    ADD CONSTRAINT json_data_str_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.json_data_str DROP CONSTRAINT json_data_str_pkey;
       public                 postgres    false    230         a           2606    16476    msg_data msg_data_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.msg_data
    ADD CONSTRAINT msg_data_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.msg_data DROP CONSTRAINT msg_data_pkey;
       public                 postgres    false    233         Y           2606    16424 &   pdf_conversion_1 pdf_conversion_1_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pdf_conversion_1
    ADD CONSTRAINT pdf_conversion_1_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pdf_conversion_1 DROP CONSTRAINT pdf_conversion_1_pkey;
       public                 postgres    false    224         [           2606    16433    tbl_label tbl_label_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_label
    ADD CONSTRAINT tbl_label_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_label DROP CONSTRAINT tbl_label_pkey;
       public                 postgres    false    226                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000027311 14770712123 0015374 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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

DROP DATABASE ner_model;
--
-- Name: ner_model; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE ner_model WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';


ALTER DATABASE ner_model OWNER TO postgres;

\connect ner_model

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
-- Name: document_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.document_data (
    id integer NOT NULL,
    file_name character varying,
    document_text text
);


ALTER TABLE public.document_data OWNER TO postgres;

--
-- Name: document_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.document_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.document_data_id_seq OWNER TO postgres;

--
-- Name: document_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.document_data_id_seq OWNED BY public.document_data.id;


--
-- Name: excel_data_str; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.excel_data_str (
    id integer NOT NULL,
    file_name character varying,
    text text
);


ALTER TABLE public.excel_data_str OWNER TO postgres;

--
-- Name: excel_data_str_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.excel_data_str_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.excel_data_str_id_seq OWNER TO postgres;

--
-- Name: excel_data_str_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.excel_data_str_id_seq OWNED BY public.excel_data_str.id;


--
-- Name: image_classification_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image_classification_1 (
    id integer NOT NULL,
    file_name character varying,
    image character varying,
    blob_image character varying,
    folder_name character varying,
    created_at timestamp with time zone
);


ALTER TABLE public.image_classification_1 OWNER TO postgres;

--
-- Name: image_classification_1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.image_classification_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.image_classification_1_id_seq OWNER TO postgres;

--
-- Name: image_classification_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.image_classification_1_id_seq OWNED BY public.image_classification_1.id;


--
-- Name: image_data_text; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image_data_text (
    id integer NOT NULL,
    file_name character varying,
    text text,
    folder_name character varying,
    created_at timestamp with time zone
);


ALTER TABLE public.image_data_text OWNER TO postgres;

--
-- Name: image_data_text_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.image_data_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.image_data_text_id_seq OWNER TO postgres;

--
-- Name: image_data_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.image_data_text_id_seq OWNED BY public.image_data_text.id;


--
-- Name: json_data_str; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.json_data_str (
    id integer NOT NULL,
    file_name character varying,
    json_text_1 character varying,
    json_text_2 character varying,
    folder_name character varying,
    created_at timestamp with time zone,
    file_id character varying
);


ALTER TABLE public.json_data_str OWNER TO postgres;

--
-- Name: json_data_str_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.json_data_str_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.json_data_str_id_seq OWNER TO postgres;

--
-- Name: json_data_str_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.json_data_str_id_seq OWNED BY public.json_data_str.id;


--
-- Name: msg_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.msg_data (
    file_name character varying,
    msg_text text,
    id integer NOT NULL
);


ALTER TABLE public.msg_data OWNER TO postgres;

--
-- Name: msg_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.msg_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.msg_data_id_seq OWNER TO postgres;

--
-- Name: msg_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.msg_data_id_seq OWNED BY public.msg_data.id;


--
-- Name: pdf_conversion_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pdf_conversion_1 (
    id integer NOT NULL,
    file_path character varying,
    folder_name character varying,
    file_name character varying,
    file_extension character varying,
    num_pages character varying,
    status character varying,
    created_at timestamp with time zone
);


ALTER TABLE public.pdf_conversion_1 OWNER TO postgres;

--
-- Name: pdf_conversion_1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pdf_conversion_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pdf_conversion_1_id_seq OWNER TO postgres;

--
-- Name: pdf_conversion_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pdf_conversion_1_id_seq OWNED BY public.pdf_conversion_1.id;


--
-- Name: str_data_excel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.str_data_excel (
    id integer NOT NULL,
    file_name character varying,
    sheet_name character varying,
    coumn_headings character varying,
    row_id character varying,
    text text,
    folder_name character varying,
    created_at timestamp with time zone
);


ALTER TABLE public.str_data_excel OWNER TO postgres;

--
-- Name: str_data_excel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.str_data_excel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.str_data_excel_id_seq OWNER TO postgres;

--
-- Name: str_data_excel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.str_data_excel_id_seq OWNED BY public.str_data_excel.id;


--
-- Name: tbl_label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_label (
    id integer NOT NULL,
    label character varying,
    color character varying
);


ALTER TABLE public.tbl_label OWNER TO postgres;

--
-- Name: tbl_label_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_label_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbl_label_id_seq OWNER TO postgres;

--
-- Name: tbl_label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_label_id_seq OWNED BY public.tbl_label.id;


--
-- Name: document_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document_data ALTER COLUMN id SET DEFAULT nextval('public.document_data_id_seq'::regclass);


--
-- Name: excel_data_str id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.excel_data_str ALTER COLUMN id SET DEFAULT nextval('public.excel_data_str_id_seq'::regclass);


--
-- Name: image_classification_1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image_classification_1 ALTER COLUMN id SET DEFAULT nextval('public.image_classification_1_id_seq'::regclass);


--
-- Name: image_data_text id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image_data_text ALTER COLUMN id SET DEFAULT nextval('public.image_data_text_id_seq'::regclass);


--
-- Name: json_data_str id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.json_data_str ALTER COLUMN id SET DEFAULT nextval('public.json_data_str_id_seq'::regclass);


--
-- Name: msg_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msg_data ALTER COLUMN id SET DEFAULT nextval('public.msg_data_id_seq'::regclass);


--
-- Name: pdf_conversion_1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pdf_conversion_1 ALTER COLUMN id SET DEFAULT nextval('public.pdf_conversion_1_id_seq'::regclass);


--
-- Name: str_data_excel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.str_data_excel ALTER COLUMN id SET DEFAULT nextval('public.str_data_excel_id_seq'::regclass);


--
-- Name: tbl_label id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_label ALTER COLUMN id SET DEFAULT nextval('public.tbl_label_id_seq'::regclass);


--
-- Name: document_data document_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document_data
    ADD CONSTRAINT document_data_pkey PRIMARY KEY (id);


--
-- Name: excel_data_str excel_data_str_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.excel_data_str
    ADD CONSTRAINT excel_data_str_pkey PRIMARY KEY (id);


--
-- Name: image_classification_1 image_classification_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image_classification_1
    ADD CONSTRAINT image_classification_1_pkey PRIMARY KEY (id);


--
-- Name: image_data_text image_data_text_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image_data_text
    ADD CONSTRAINT image_data_text_pkey PRIMARY KEY (id);


--
-- Name: json_data_str json_data_str_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.json_data_str
    ADD CONSTRAINT json_data_str_pkey PRIMARY KEY (id);


--
-- Name: msg_data msg_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msg_data
    ADD CONSTRAINT msg_data_pkey PRIMARY KEY (id);


--
-- Name: pdf_conversion_1 pdf_conversion_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pdf_conversion_1
    ADD CONSTRAINT pdf_conversion_1_pkey PRIMARY KEY (id);


--
-- Name: tbl_label tbl_label_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_label
    ADD CONSTRAINT tbl_label_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       