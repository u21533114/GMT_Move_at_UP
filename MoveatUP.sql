toc.dat                                                                                             0000600 0004000 0002000 00000210514 14511212744 0014443 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                   
    	    {            MoveatUP    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    40960    MoveatUP    DATABASE     �   CREATE DATABASE "MoveatUP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "MoveatUP";
                postgres    false         �           0    0    MoveatUP    DATABASE PROPERTIES     L   ALTER DATABASE "MoveatUP" SET search_path TO '$user', 'public', 'topology';
                     postgres    false         	            2615    42177    postgres    SCHEMA        CREATE SCHEMA postgres;
    DROP SCHEMA postgres;
                postgres    false                     2615    42014    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false         �           0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    8                     3079    40963    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false         �           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2                     3079    42015    postgis_topology 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;
 !   DROP EXTENSION postgis_topology;
                   false    8    2         �           0    0    EXTENSION postgis_topology    COMMENT     Y   COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';
                        false    3         �            1259    42179    Peak_Points    TABLE     N  CREATE TABLE postgres."Peak_Points" (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    point character varying(254),
    latitude character varying(254),
    longitude character varying(254),
    "time (peak" character varying(254),
    "number of" character varying(254),
    "other tran" character varying(254)
);
 #   DROP TABLE postgres."Peak_Points";
       postgres         heap    postgres    false    9    2    2    2    2    2    2    2    2         �            1259    42178    Peak_Points_id_seq    SEQUENCE     �   CREATE SEQUENCE postgres."Peak_Points_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE postgres."Peak_Points_id_seq";
       postgres          postgres    false    230    9         �           0    0    Peak_Points_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE postgres."Peak_Points_id_seq" OWNED BY postgres."Peak_Points".id;
          postgres          postgres    false    229         �            1259    42386    hatfield_campus_v1    TABLE     8  CREATE TABLE public.hatfield_campus_v1 (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    ogc_fid numeric,
    ogc_fid1 numeric,
    pkuid character varying(254),
    name character varying(254),
    ogc_fid0 numeric,
    layer character varying(254),
    path character varying(254)
);
 &   DROP TABLE public.hatfield_campus_v1;
       public         heap    postgres    false    2    2    2    2    2    2    2    2         �            1259    42385    hatfield_campus_v1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hatfield_campus_v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.hatfield_campus_v1_id_seq;
       public          postgres    false    252         �           0    0    hatfield_campus_v1_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.hatfield_campus_v1_id_seq OWNED BY public.hatfield_campus_v1.id;
          public          postgres    false    251         �            1259    42376    gates    TABLE       CREATE TABLE topology.gates (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    fid bigint,
    "gate number or name" character varying,
    "walking student accessible" boolean,
    "cycling student accessible" boolean
);
    DROP TABLE topology.gates;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2         �            1259    42375    gates_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.gates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE topology.gates_id_seq;
       topology          postgres    false    250    8         �           0    0    gates_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE topology.gates_id_seq OWNED BY topology.gates.id;
          topology          postgres    false    249         �            1259    42290    hatfield_campus    TABLE       CREATE TABLE topology.hatfield_campus (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326),
    ogc_fid bigint,
    ogc_fid1 bigint,
    pkuid character varying,
    name character varying,
    ogc_fid0 bigint,
    layer character varying,
    path character varying
);
 %   DROP TABLE topology.hatfield_campus;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2         �            1259    42289    hatfield_campus_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.hatfield_campus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE topology.hatfield_campus_id_seq;
       topology          postgres    false    238    8         �           0    0    hatfield_campus_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE topology.hatfield_campus_id_seq OWNED BY topology.hatfield_campus.id;
          topology          postgres    false    237         �            1259    42250    offpeak_point    TABLE     5  CREATE TABLE topology.offpeak_point (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    point character varying(254),
    latitude character varying(254),
    longitude character varying(254),
    "time" character varying(254),
    num_people numeric,
    transport character varying(254)
);
 #   DROP TABLE topology.offpeak_point;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2         �            1259    42249    offpeak_point_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.offpeak_point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE topology.offpeak_point_id_seq;
       topology          postgres    false    8    234         �           0    0    offpeak_point_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE topology.offpeak_point_id_seq OWNED BY topology.offpeak_point.id;
          topology          postgres    false    233         �            1259    42314    parking    TABLE     �   CREATE TABLE topology.parking (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326),
    ogc_fid bigint,
    pkuid integer,
    name character varying
);
    DROP TABLE topology.parking;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2         �            1259    42313    parking_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.parking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE topology.parking_id_seq;
       topology          postgres    false    240    8         �           0    0    parking_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE topology.parking_id_seq OWNED BY topology.parking.id;
          topology          postgres    false    239         �            1259    42324    paths    TABLE     �   CREATE TABLE topology.paths (
    id integer NOT NULL,
    geom public.geometry(MultiLineString,4326),
    ogc_fid bigint,
    name character varying
);
    DROP TABLE topology.paths;
       topology         heap    postgres    false    2    2    2    2    2    2    2    2    8         �            1259    42323    paths_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.paths_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE topology.paths_id_seq;
       topology          postgres    false    242    8         �           0    0    paths_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE topology.paths_id_seq OWNED BY topology.paths.id;
          topology          postgres    false    241         �            1259    42239 
   peak_point    TABLE     2  CREATE TABLE topology.peak_point (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    point character varying(254),
    latitude character varying(254),
    longitude character varying(254),
    "time" character varying(254),
    num_people numeric,
    transport character varying(254)
);
     DROP TABLE topology.peak_point;
       topology         heap    postgres    false    2    2    2    2    2    2    2    2    8         �            1259    42238    peak_point_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.peak_point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE topology.peak_point_id_seq;
       topology          postgres    false    232    8         �           0    0    peak_point_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE topology.peak_point_id_seq OWNED BY topology.peak_point.id;
          topology          postgres    false    231         �            1259    42335    retail    TABLE     �   CREATE TABLE topology.retail (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    pkuid integer,
    name character varying,
    type character varying
);
    DROP TABLE topology.retail;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2         �            1259    42334    retail_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.retail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE topology.retail_id_seq;
       topology          postgres    false    244    8         �           0    0    retail_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE topology.retail_id_seq OWNED BY topology.retail.id;
          topology          postgres    false    243         �            1259    50578    roads    TABLE     �   CREATE TABLE topology.roads (
    id integer NOT NULL,
    geom public.geometry(MultiLineString,4326),
    ogc_fid bigint,
    name character varying
);
    DROP TABLE topology.roads;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2         �            1259    50577    roads_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.roads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE topology.roads_id_seq;
       topology          postgres    false    8    254         �           0    0    roads_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE topology.roads_id_seq OWNED BY topology.roads.id;
          topology          postgres    false    253                     1259    50588    survey_congestion    TABLE     �   CREATE TABLE topology.survey_congestion (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    congestion_latitude character varying,
    congestion_longitude character varying
);
 '   DROP TABLE topology.survey_congestion;
       topology         heap    postgres    false    2    2    2    2    2    2    2    2    8         �            1259    50587    survey_congestion_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.survey_congestion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE topology.survey_congestion_id_seq;
       topology          postgres    false    8    256         �           0    0    survey_congestion_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE topology.survey_congestion_id_seq OWNED BY topology.survey_congestion.id;
          topology          postgres    false    255                    1259    50598    survey_entrances    TABLE     �   CREATE TABLE topology.survey_entrances (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    entrance_latitude character varying,
    entrance_longitude character varying
);
 &   DROP TABLE topology.survey_entrances;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2                    1259    50597    survey_entrances_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.survey_entrances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE topology.survey_entrances_id_seq;
       topology          postgres    false    258    8         �           0    0    survey_entrances_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE topology.survey_entrances_id_seq OWNED BY topology.survey_entrances.id;
          topology          postgres    false    257                    1259    50608    survey_freetime    TABLE     �   CREATE TABLE topology.survey_freetime (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    ft_latitude character varying,
    ft_longitude character varying
);
 %   DROP TABLE topology.survey_freetime;
       topology         heap    postgres    false    8    2    2    2    2    2    2    2    2                    1259    50607    survey_freetime_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.survey_freetime_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE topology.survey_freetime_id_seq;
       topology          postgres    false    260    8         �           0    0    survey_freetime_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE topology.survey_freetime_id_seq OWNED BY topology.survey_freetime.id;
          topology          postgres    false    259         �            1259    42260    survey_results    TABLE     �  CREATE TABLE topology.survey_results (
    id integer NOT NULL,
    start character varying,
    "end" character varying,
    education_level character varying,
    year_of_study character varying,
    faculty character varying,
    late character varying,
    campus_map_usage character varying,
    campus_transport character varying,
    campus_transport_walking character varying,
    campus_transport_cycling character varying,
    campus_transport_skating character varying,
    campus_transport_driving character varying,
    campus_transport_other character varying,
    time_frame character varying,
    campus_navigation_difficulty character varying,
    map_usability character varying,
    congested_areas character varying,
    congested_areas_latitude character varying,
    congested_areas_longitude character varying,
    entrance character varying,
    entrance_latitude character varying,
    entrance_longitude character varying,
    entrance_altitude character varying,
    entrance_precision character varying,
    relaxation_areas character varying,
    relaxation_areas_latitude character varying,
    relaxation_areas_longitude character varying,
    relaxation_areas_altitude character varying,
    relaxation_areas_precision character varying,
    _id character varying,
    _uuid character varying,
    _submission_time character varying,
    _status character varying,
    __version__ character varying,
    _index character varying
);
 $   DROP TABLE topology.survey_results;
       topology         heap    postgres    false    8         �            1259    42259    survey_results_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.survey_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE topology.survey_results_id_seq;
       topology          postgres    false    236    8         �           0    0    survey_results_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE topology.survey_results_id_seq OWNED BY topology.survey_results.id;
          topology          postgres    false    235         �            1259    42355    toilets    TABLE     �   CREATE TABLE topology.toilets (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    pkuid integer
);
    DROP TABLE topology.toilets;
       topology         heap    postgres    false    2    2    2    2    2    2    2    2    8         �            1259    42354    toilets_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.toilets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE topology.toilets_id_seq;
       topology          postgres    false    8    246         �           0    0    toilets_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE topology.toilets_id_seq OWNED BY topology.toilets.id;
          topology          postgres    false    245         �            1259    42365 
   wc_toilets    TABLE     �   CREATE TABLE topology.wc_toilets (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    pkuid integer
);
     DROP TABLE topology.wc_toilets;
       topology         heap    postgres    false    2    2    2    2    2    2    2    2    8         �            1259    42364    wc_toilets_id_seq    SEQUENCE     �   CREATE SEQUENCE topology.wc_toilets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE topology.wc_toilets_id_seq;
       topology          postgres    false    8    248         �           0    0    wc_toilets_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE topology.wc_toilets_id_seq OWNED BY topology.wc_toilets.id;
          topology          postgres    false    247         �           2604    42182    Peak_Points id    DEFAULT     x   ALTER TABLE ONLY postgres."Peak_Points" ALTER COLUMN id SET DEFAULT nextval('postgres."Peak_Points_id_seq"'::regclass);
 A   ALTER TABLE postgres."Peak_Points" ALTER COLUMN id DROP DEFAULT;
       postgres          postgres    false    229    230    230         �           2604    42389    hatfield_campus_v1 id    DEFAULT     ~   ALTER TABLE ONLY public.hatfield_campus_v1 ALTER COLUMN id SET DEFAULT nextval('public.hatfield_campus_v1_id_seq'::regclass);
 D   ALTER TABLE public.hatfield_campus_v1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252         �           2604    42379    gates id    DEFAULT     h   ALTER TABLE ONLY topology.gates ALTER COLUMN id SET DEFAULT nextval('topology.gates_id_seq'::regclass);
 9   ALTER TABLE topology.gates ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    250    249    250         �           2604    42293    hatfield_campus id    DEFAULT     |   ALTER TABLE ONLY topology.hatfield_campus ALTER COLUMN id SET DEFAULT nextval('topology.hatfield_campus_id_seq'::regclass);
 C   ALTER TABLE topology.hatfield_campus ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    237    238    238         �           2604    42253    offpeak_point id    DEFAULT     x   ALTER TABLE ONLY topology.offpeak_point ALTER COLUMN id SET DEFAULT nextval('topology.offpeak_point_id_seq'::regclass);
 A   ALTER TABLE topology.offpeak_point ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    233    234    234         �           2604    42317 
   parking id    DEFAULT     l   ALTER TABLE ONLY topology.parking ALTER COLUMN id SET DEFAULT nextval('topology.parking_id_seq'::regclass);
 ;   ALTER TABLE topology.parking ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    239    240    240         �           2604    42327    paths id    DEFAULT     h   ALTER TABLE ONLY topology.paths ALTER COLUMN id SET DEFAULT nextval('topology.paths_id_seq'::regclass);
 9   ALTER TABLE topology.paths ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    242    241    242         �           2604    42242    peak_point id    DEFAULT     r   ALTER TABLE ONLY topology.peak_point ALTER COLUMN id SET DEFAULT nextval('topology.peak_point_id_seq'::regclass);
 >   ALTER TABLE topology.peak_point ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    232    231    232         �           2604    42338 	   retail id    DEFAULT     j   ALTER TABLE ONLY topology.retail ALTER COLUMN id SET DEFAULT nextval('topology.retail_id_seq'::regclass);
 :   ALTER TABLE topology.retail ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    244    243    244         �           2604    50581    roads id    DEFAULT     h   ALTER TABLE ONLY topology.roads ALTER COLUMN id SET DEFAULT nextval('topology.roads_id_seq'::regclass);
 9   ALTER TABLE topology.roads ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    254    253    254         �           2604    50591    survey_congestion id    DEFAULT     �   ALTER TABLE ONLY topology.survey_congestion ALTER COLUMN id SET DEFAULT nextval('topology.survey_congestion_id_seq'::regclass);
 E   ALTER TABLE topology.survey_congestion ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    256    255    256         �           2604    50601    survey_entrances id    DEFAULT     ~   ALTER TABLE ONLY topology.survey_entrances ALTER COLUMN id SET DEFAULT nextval('topology.survey_entrances_id_seq'::regclass);
 D   ALTER TABLE topology.survey_entrances ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    258    257    258         �           2604    50611    survey_freetime id    DEFAULT     |   ALTER TABLE ONLY topology.survey_freetime ALTER COLUMN id SET DEFAULT nextval('topology.survey_freetime_id_seq'::regclass);
 C   ALTER TABLE topology.survey_freetime ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    259    260    260         �           2604    42263    survey_results id    DEFAULT     z   ALTER TABLE ONLY topology.survey_results ALTER COLUMN id SET DEFAULT nextval('topology.survey_results_id_seq'::regclass);
 B   ALTER TABLE topology.survey_results ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    235    236    236         �           2604    42358 
   toilets id    DEFAULT     l   ALTER TABLE ONLY topology.toilets ALTER COLUMN id SET DEFAULT nextval('topology.toilets_id_seq'::regclass);
 ;   ALTER TABLE topology.toilets ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    246    245    246         �           2604    42368    wc_toilets id    DEFAULT     r   ALTER TABLE ONLY topology.wc_toilets ALTER COLUMN id SET DEFAULT nextval('topology.wc_toilets_id_seq'::regclass);
 >   ALTER TABLE topology.wc_toilets ALTER COLUMN id DROP DEFAULT;
       topology          postgres    false    248    247    248         �          0    42179    Peak_Points 
   TABLE DATA           x   COPY postgres."Peak_Points" (id, geom, point, latitude, longitude, "time (peak", "number of", "other tran") FROM stdin;
    postgres          postgres    false    230       4502.dat �          0    42386    hatfield_campus_v1 
   TABLE DATA           m   COPY public.hatfield_campus_v1 (id, geom, ogc_fid, ogc_fid1, pkuid, name, ogc_fid0, layer, path) FROM stdin;
    public          postgres    false    252       4524.dat �          0    41276    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    219       4274.dat �          0    42376    gates 
   TABLE DATA           �   COPY topology.gates (id, geom, ogc_fid, fid, "gate number or name", "walking student accessible", "cycling student accessible") FROM stdin;
    topology          postgres    false    250       4522.dat �          0    42290    hatfield_campus 
   TABLE DATA           l   COPY topology.hatfield_campus (id, geom, ogc_fid, ogc_fid1, pkuid, name, ogc_fid0, layer, path) FROM stdin;
    topology          postgres    false    238       4510.dat �          0    42017    topology 
   TABLE DATA           G   COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
    topology          postgres    false    224       4275.dat �          0    42029    layer 
   TABLE DATA           �   COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
    topology          postgres    false    225       4276.dat �          0    42250    offpeak_point 
   TABLE DATA           n   COPY topology.offpeak_point (id, geom, point, latitude, longitude, "time", num_people, transport) FROM stdin;
    topology          postgres    false    234       4506.dat �          0    42314    parking 
   TABLE DATA           C   COPY topology.parking (id, geom, ogc_fid, pkuid, name) FROM stdin;
    topology          postgres    false    240       4512.dat �          0    42324    paths 
   TABLE DATA           :   COPY topology.paths (id, geom, ogc_fid, name) FROM stdin;
    topology          postgres    false    242       4514.dat �          0    42239 
   peak_point 
   TABLE DATA           k   COPY topology.peak_point (id, geom, point, latitude, longitude, "time", num_people, transport) FROM stdin;
    topology          postgres    false    232       4504.dat �          0    42335    retail 
   TABLE DATA           H   COPY topology.retail (id, geom, ogc_fid, pkuid, name, type) FROM stdin;
    topology          postgres    false    244       4516.dat �          0    50578    roads 
   TABLE DATA           :   COPY topology.roads (id, geom, ogc_fid, name) FROM stdin;
    topology          postgres    false    254       4526.dat �          0    50588    survey_congestion 
   TABLE DATA           k   COPY topology.survey_congestion (id, geom, ogc_fid, congestion_latitude, congestion_longitude) FROM stdin;
    topology          postgres    false    256       4528.dat �          0    50598    survey_entrances 
   TABLE DATA           f   COPY topology.survey_entrances (id, geom, ogc_fid, entrance_latitude, entrance_longitude) FROM stdin;
    topology          postgres    false    258       4530.dat �          0    50608    survey_freetime 
   TABLE DATA           Y   COPY topology.survey_freetime (id, geom, ogc_fid, ft_latitude, ft_longitude) FROM stdin;
    topology          postgres    false    260       4532.dat �          0    42260    survey_results 
   TABLE DATA           �  COPY topology.survey_results (id, start, "end", education_level, year_of_study, faculty, late, campus_map_usage, campus_transport, campus_transport_walking, campus_transport_cycling, campus_transport_skating, campus_transport_driving, campus_transport_other, time_frame, campus_navigation_difficulty, map_usability, congested_areas, congested_areas_latitude, congested_areas_longitude, entrance, entrance_latitude, entrance_longitude, entrance_altitude, entrance_precision, relaxation_areas, relaxation_areas_latitude, relaxation_areas_longitude, relaxation_areas_altitude, relaxation_areas_precision, _id, _uuid, _submission_time, _status, __version__, _index) FROM stdin;
    topology          postgres    false    236       4508.dat �          0    42355    toilets 
   TABLE DATA           =   COPY topology.toilets (id, geom, ogc_fid, pkuid) FROM stdin;
    topology          postgres    false    246       4518.dat �          0    42365 
   wc_toilets 
   TABLE DATA           @   COPY topology.wc_toilets (id, geom, ogc_fid, pkuid) FROM stdin;
    topology          postgres    false    248       4520.dat �           0    0    Peak_Points_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('postgres."Peak_Points_id_seq"', 31, true);
          postgres          postgres    false    229         �           0    0    hatfield_campus_v1_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.hatfield_campus_v1_id_seq', 114, true);
          public          postgres    false    251         �           0    0    gates_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('topology.gates_id_seq', 20, true);
          topology          postgres    false    249         �           0    0    hatfield_campus_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('topology.hatfield_campus_id_seq', 114, true);
          topology          postgres    false    237         �           0    0    offpeak_point_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('topology.offpeak_point_id_seq', 31, true);
          topology          postgres    false    233         �           0    0    parking_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('topology.parking_id_seq', 29, true);
          topology          postgres    false    239         �           0    0    paths_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('topology.paths_id_seq', 87, true);
          topology          postgres    false    241         �           0    0    peak_point_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('topology.peak_point_id_seq', 31, true);
          topology          postgres    false    231         �           0    0    retail_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('topology.retail_id_seq', 15, true);
          topology          postgres    false    243         �           0    0    roads_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('topology.roads_id_seq', 20, true);
          topology          postgres    false    253         �           0    0    survey_congestion_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('topology.survey_congestion_id_seq', 59, true);
          topology          postgres    false    255         �           0    0    survey_entrances_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('topology.survey_entrances_id_seq', 59, true);
          topology          postgres    false    257         �           0    0    survey_freetime_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('topology.survey_freetime_id_seq', 59, true);
          topology          postgres    false    259         �           0    0    survey_results_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('topology.survey_results_id_seq', 59, true);
          topology          postgres    false    235         �           0    0    toilets_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('topology.toilets_id_seq', 30, true);
          topology          postgres    false    245         �           0    0    wc_toilets_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('topology.wc_toilets_id_seq', 17, true);
          topology          postgres    false    247         �           2606    42184    Peak_Points Peak_Points_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY postgres."Peak_Points"
    ADD CONSTRAINT "Peak_Points_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY postgres."Peak_Points" DROP CONSTRAINT "Peak_Points_pkey";
       postgres            postgres    false    230         �           2606    42391 *   hatfield_campus_v1 hatfield_campus_v1_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.hatfield_campus_v1
    ADD CONSTRAINT hatfield_campus_v1_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.hatfield_campus_v1 DROP CONSTRAINT hatfield_campus_v1_pkey;
       public            postgres    false    252         �           2606    42381    gates gates_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY topology.gates
    ADD CONSTRAINT gates_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY topology.gates DROP CONSTRAINT gates_pkey;
       topology            postgres    false    250         �           2606    42295 $   hatfield_campus hatfield_campus_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY topology.hatfield_campus
    ADD CONSTRAINT hatfield_campus_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY topology.hatfield_campus DROP CONSTRAINT hatfield_campus_pkey;
       topology            postgres    false    238         �           2606    42255     offpeak_point offpeak_point_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY topology.offpeak_point
    ADD CONSTRAINT offpeak_point_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY topology.offpeak_point DROP CONSTRAINT offpeak_point_pkey;
       topology            postgres    false    234         �           2606    42319    parking parking_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY topology.parking
    ADD CONSTRAINT parking_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY topology.parking DROP CONSTRAINT parking_pkey;
       topology            postgres    false    240         �           2606    42329    paths paths_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY topology.paths
    ADD CONSTRAINT paths_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY topology.paths DROP CONSTRAINT paths_pkey;
       topology            postgres    false    242         �           2606    42244    peak_point peak_point_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY topology.peak_point
    ADD CONSTRAINT peak_point_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY topology.peak_point DROP CONSTRAINT peak_point_pkey;
       topology            postgres    false    232         �           2606    42340    retail retail_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY topology.retail
    ADD CONSTRAINT retail_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY topology.retail DROP CONSTRAINT retail_pkey;
       topology            postgres    false    244         �           2606    50583    roads roads_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY topology.roads
    ADD CONSTRAINT roads_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY topology.roads DROP CONSTRAINT roads_pkey;
       topology            postgres    false    254         �           2606    50593 (   survey_congestion survey_congestion_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY topology.survey_congestion
    ADD CONSTRAINT survey_congestion_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY topology.survey_congestion DROP CONSTRAINT survey_congestion_pkey;
       topology            postgres    false    256         �           2606    50603 &   survey_entrances survey_entrances_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY topology.survey_entrances
    ADD CONSTRAINT survey_entrances_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY topology.survey_entrances DROP CONSTRAINT survey_entrances_pkey;
       topology            postgres    false    258                    2606    50613 $   survey_freetime survey_freetime_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY topology.survey_freetime
    ADD CONSTRAINT survey_freetime_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY topology.survey_freetime DROP CONSTRAINT survey_freetime_pkey;
       topology            postgres    false    260         �           2606    42265 "   survey_results survey_results_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY topology.survey_results
    ADD CONSTRAINT survey_results_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY topology.survey_results DROP CONSTRAINT survey_results_pkey;
       topology            postgres    false    236         �           2606    42360    toilets toilets_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY topology.toilets
    ADD CONSTRAINT toilets_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY topology.toilets DROP CONSTRAINT toilets_pkey;
       topology            postgres    false    246         �           2606    42370    wc_toilets wc_toilets_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY topology.wc_toilets
    ADD CONSTRAINT wc_toilets_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY topology.wc_toilets DROP CONSTRAINT wc_toilets_pkey;
       topology            postgres    false    248         �           1259    42187    sidx_Peak_Points_geom    INDEX     R   CREATE INDEX "sidx_Peak_Points_geom" ON postgres."Peak_Points" USING gist (geom);
 -   DROP INDEX postgres."sidx_Peak_Points_geom";
       postgres            postgres    false    230    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2         �           1259    42398    sidx_hatfield_campus_v1_geom    INDEX     Z   CREATE INDEX sidx_hatfield_campus_v1_geom ON public.hatfield_campus_v1 USING gist (geom);
 0   DROP INDEX public.sidx_hatfield_campus_v1_geom;
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    252         �           1259    42384    sidx_gates_geom    INDEX     B   CREATE INDEX sidx_gates_geom ON topology.gates USING gist (geom);
 %   DROP INDEX topology.sidx_gates_geom;
       topology            postgres    false    250    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2         �           1259    42302    sidx_hatfield_campus_geom    INDEX     V   CREATE INDEX sidx_hatfield_campus_geom ON topology.hatfield_campus USING gist (geom);
 /   DROP INDEX topology.sidx_hatfield_campus_geom;
       topology            postgres    false    238    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2         �           1259    42258    sidx_offpeak_point_geom    INDEX     R   CREATE INDEX sidx_offpeak_point_geom ON topology.offpeak_point USING gist (geom);
 -   DROP INDEX topology.sidx_offpeak_point_geom;
       topology            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    234         �           1259    42322    sidx_parking_geom    INDEX     F   CREATE INDEX sidx_parking_geom ON topology.parking USING gist (geom);
 '   DROP INDEX topology.sidx_parking_geom;
       topology            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    240         �           1259    42332    sidx_paths_geom    INDEX     B   CREATE INDEX sidx_paths_geom ON topology.paths USING gist (geom);
 %   DROP INDEX topology.sidx_paths_geom;
       topology            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    242         �           1259    42247    sidx_peak_point_geom    INDEX     L   CREATE INDEX sidx_peak_point_geom ON topology.peak_point USING gist (geom);
 *   DROP INDEX topology.sidx_peak_point_geom;
       topology            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    232         �           1259    42343    sidx_retail_geom    INDEX     D   CREATE INDEX sidx_retail_geom ON topology.retail USING gist (geom);
 &   DROP INDEX topology.sidx_retail_geom;
       topology            postgres    false    244    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2         �           1259    50586    sidx_roads_geom    INDEX     B   CREATE INDEX sidx_roads_geom ON topology.roads USING gist (geom);
 %   DROP INDEX topology.sidx_roads_geom;
       topology            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    254         �           1259    50596    sidx_survey_congestion_geom    INDEX     Z   CREATE INDEX sidx_survey_congestion_geom ON topology.survey_congestion USING gist (geom);
 1   DROP INDEX topology.sidx_survey_congestion_geom;
       topology            postgres    false    256    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2         �           1259    50606    sidx_survey_entrances_geom    INDEX     X   CREATE INDEX sidx_survey_entrances_geom ON topology.survey_entrances USING gist (geom);
 0   DROP INDEX topology.sidx_survey_entrances_geom;
       topology            postgres    false    258    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2         �           1259    50616    sidx_survey_freetime_geom    INDEX     V   CREATE INDEX sidx_survey_freetime_geom ON topology.survey_freetime USING gist (geom);
 /   DROP INDEX topology.sidx_survey_freetime_geom;
       topology            postgres    false    260    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2         �           1259    42363    sidx_toilets_geom    INDEX     F   CREATE INDEX sidx_toilets_geom ON topology.toilets USING gist (geom);
 '   DROP INDEX topology.sidx_toilets_geom;
       topology            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    246         �           1259    42373    sidx_wc_toilets_geom    INDEX     L   CREATE INDEX sidx_wc_toilets_geom ON topology.wc_toilets USING gist (geom);
 *   DROP INDEX topology.sidx_wc_toilets_geom;
       topology            postgres    false    248    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                                                                                                                                                                                            4502.dat                                                                                            0000600 0004000 0002000 00000006730 14511212744 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E610000008DFA062413B3C4067D90F8842C039C0	Burnett St entrance	-25.75101519	28.23146645	\N	8	\N
2	0101000020E61000006FA35C75783B3C404C50E4C599C039C0	Prospect St entrance	-25.75234639	28.2323068	\N	31	\N
3	0101000020E6100000888ED3C6C73B3C401C080B1FF8C039C0	South St entrance	-25.75378603	28.2335171	\N	14	\N
4	0101000020E61000006ADFDC5F3D3C3C40948E8BCD3BC139C0	Duxbury Rd entrance	-25.75481877	28.2353115	09:12 10/08	115	\N
5	0101000020E6100000A1DD9D8C5C3C3C40B593DAEE92C139C0	Lunnon Rd entrance	-25.75614827	28.23578719	08:16 11/08	109	\N
6	0101000020E61000003BD3F8433B3B3C40F26C033584C139C0	Lynnwood Rd (main entrance)	-25.75592357	28.23137307	\N	9	\N
7	0101000020E6100000E8851A095D3B3C40BB4988C986C039C0	Sci-Enza	-25.75205669	28.23188836	11:21 08/08	106	\N
8	0101000020E610000096F40735093B3C402D6E50B991C039C0	Old Agriculture	-25.75222357	28.23060924	11:24 08/08	14	\N
9	0101000020E610000085A20E65873A3C40ABA97697D5C039C0	Engineering 1	-25.75325915	28.22862846	11:22 03/08	20	\N
10	0101000020E61000001E1F88878B3A3C404EAC193AF2C039C0	Steers	-25.75369609	28.22869155	11:15 03/08	44	\N
11	0101000020E61000002F70B357A33A3C4049B61DC7CDC039C0	Natural Sciences 2	-25.75313992	28.22905491	11:19 03/08	70	\N
12	0101000020E6100000EDE8872A5F3A3C401F7FED8943C139C0	Engineering 3 (behind)	-25.75493681	28.22801462	10:35 04/08	8	\N
13	0101000020E6100000C3A9E6A4BD3A3C401369552A2CC139C0	Theology walkway	-25.75458016	28.22945624	11:20 08/08	43	1 golf-cart
14	0101000020E6100000D71AE7C28A3A3C403AB61AE977C139C0	South Campus Bridge	-25.75573594	28.22867983	11:23 08/08	37	\N
15	0101000020E61000000A4DAF200F3B3C405DE5011355C139C0	Library	-25.75520438	28.23069958	11:16 03/08	132	\N
16	0101000020E6100000F5FF81A4153B3C40B4096AD708C139C0	Chancellor's Building	-25.75404116	28.23079899	12:20 01/08	161	1 bicycle
17	0101000020E61000001308BFFD4E3B3C40779FE3A3C5C039C0	Thuto	-25.75301575	28.23167406	10:20 03/08	202	\N
18	0101000020E61000004EDF6397453B3C40BAAAA22E08C139C0	Piazza Entrance	-25.7540311	28.23153063	12:23 01/08	182	\N
19	0101000020E61000003C1BEA5EC43B3C40314A0A0B72C139C0	EMS bridge	-25.75564641	28.23346513	11:25 03/08	110	\N
20	0101000020E61000004D9009DF983B3C40007178BD0BC139C0	Centenary	-25.75408539	28.23280138	10:24 03/08	216	\N
21	0101000020E610000076129536EA3B3C4060D761124FC139C0	Graduate Centre	-25.75511279	28.23404256	11:24 08/08	89	2 bicycles
22	0101000020E6100000EE9579ABAE3B3C4009645D791CC139C0	Monastery Hall	-25.75434073	28.233134	10:27 03/08	64	\N
23	0101000020E6100000D7CA5BE0B83B3C40C9A5754453C139C0	Behind EMS	-25.75517681	28.23328974	11:28 03/08	58	\N
24	0101000020E610000081AC0A811A3C3C407A4E1F2686C139C0	Bioinformatics Building	-25.7559532	28.23477942	13:20 01/08	51	\N
25	0101000020E61000000AA61621A73B3C4017AFE4F06AC139C0	IT building	-25.75553804	28.23301894	11:22 03/08	242	1 golf-cart
26	0101000020E61000004F70B9134F3B3C40AD239A822DC139C0	SCU tunnel	-25.75460068	28.23167537	10;23 07/08	27	\N
27	0101000020E6100000307F09053A3B3C4050CB6A1558C139C0	SSC entrance	-25.7552503	28.23135406	11:19 03/08	87	\N
28	0101000020E610000034A4A37FF63A3C400DC53E7DDBC039C0	Geography-Thuto walkway	-25.75334914	28.23032377	11:28 03/08	123	1 bicycle
29	0101000020E610000014F6E5B3D93A3C40ABB7FE4402C139C0	Old Arts	-25.75394088	28.22988438	11:25 03/08	40	1 bicycle
30	0101000020E610000004ABC9D78E3B3C40D6DE0AD58BC139C0	Informatorium entrance	-25.75603992	28.23264836	12:21 08/08	41	1 golf-cart
31	0101000020E6100000AEDF02BFFC3B3C40FDF01C5FB5C139C0	Behind Agri Annex	-25.75667376	28.23432535	12:26 08/08	31	4 bicycles, 1 golf-cart
\.


                                        4524.dat                                                                                            0000600 0004000 0002000 00000234337 14511212744 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0106000020E6100000010000000103000000010000000F000000CB6180C41F3B3C40CFCE8D0E7DC039C03708E519353B3C403ABA3A2D8CC039C0DEB31433373B3C403FA1C1F889C039C0D0B6A37E3D3B3C40F00CC96F8DC039C0F88BE8B71E3B3C40444495E1ADC039C0F87AE1C5183B3C40324AEB19AAC039C08F1899381B3B3C4056314152A6C039C06EC993150A3B3C405B5BC9C698C039C0BA31FA39143B3C409478251F8DC039C0CA3F72E0133B3C4006CE089A8AC039C042C13906173B3C408FAD8F6588C039C0F87AE1C5183B3C409F737A5789C039C025B650AB1D3B3C407217565B83C039C06FFCA8EB1B3B3C408DD4DC2681C039C0CB6180C41F3B3C40CFCE8D0E7DC039C0	1	1	1	Old  Agriculture Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
2	0106000020E61000000100000001030000000100000016000000EA9F7EF52A3B3C402487703CB3C039C0EEC18CD9363B3C4061C23832AEC039C049386BA4403B3C4061C23832AEC039C03A2AF3FD403B3C406B16864AB2C039C0B5ABBA23443B3C406B16864AB2C039C01E1F0AA3473B3C4076AC10E4BEC039C0A6AE496F4A3B3C40032BEB3EC4C039C0FF021A56483B3C40B309AA14C7C039C0D1D8B162493B3C400FD768EAC9C039C0B5ABBA23443B3C407136B502CEC039C0967EC3E43E3B3C400AA589E6CFC039C07651CCA5393B3C40DE72D087D0C039C065324D0D343B3C40100C2D37D0C039C0824E3D5A333B3C40B829846FCCC039C0EBB085E7303B3C40ECCD11B2CDC039C0FBBEFD8D303B3C40B309AA14C7C039C038F7DD272F3B3C407B9C06C4C6C039C0BF7516022C3B3C4062915785BFC039C0924BAE0E2D3B3C400FE082A1BDC039C0FAADF69B2A3B3C40AE799238B9C039C0DC91064F2B3B3C40B4AEBD54B7C039C0EA9F7EF52A3B3C402487703CB3C039C0	2	2	2	Thuto Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
3	0106000020E6100000010000000103000000010000001800000088115D651B3B3C40C2F26B2CB7C039C0DC91064F2B3B3C4076AC10E4BEC039C010B2A323243B3C4040002249C9C039C08E29A02A213B3C4013509406C8C039C0BB53081E203B3C4040002249C9C039C044E347EA223B3C4054EC997DCBC039C03FFE19FB2E3B3C40CF52AA7BCEC039C0B66EDA2E2C3B3C4099CFD5FED3C039C0FAADF69B2A3B3C405AB03725D7C039C05D090356283B3C408B1BF6FAD9C039C0E4873B30253B3C4047B86D2FDCC039C08F1899381B3B3C40FB10B569D5C039C0C2493DFF193B3C40C4884D33D6C039C069E46526163B3C40DEE5CA77D4C039C08C079246153B3C40BE812727D4C039C08C079246153B3C40C9496EC8D4C039C07925F3A2273B3C40F7BD72A6DFC039C035D5CF43233B3C40E477871BE6C039C0CE24A0CF073B3C40CF25AAE2D5C039C0F458D3E10C3B3C40CF52AA7BCEC039C0A40B3FCE0E3B3C40CF3DE695CFC039C00D90953F183B3C4010456883C2C039C0AA238293143B3C407E82DA40C1C039C088115D651B3B3C40C2F26B2CB7C039C0	3	3	3	North Hall (Chemistry Building)	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
4	0106000020E6100000010000000103000000010000000B000000F356DA67AD3A3C4077CA634EACC039C02FEEA8DACF3A3C40521137F0C0C039C0FF1128CEEE3A3C40A0C7C3CBBAC039C074D0CFE8093B3C4021C0E01ECCC039C08CD47C70033B3C40256B32AED3C039C0535FBCE1EC3A3C400A2F6373C6C039C0AE65A5E1CC3A3C40440B8FF6CBC039C00A5B87EFA63A3C406F1F9748B5C039C06BC79A9BAA3A3C40CB27F807B1C039C089E38AE8A93A3C4093B20D16B0C039C0F356DA67AD3A3C4077CA634EACC039C0	4	4	4	Natural Sciences 1 Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
5	0106000020E6100000010000000103000000010000001500000097E0FB9CA33A3C401BB20A6DBBC039C046A46E7BAB3A3C407B4AA9ADBFC039C0BD142FAFA83A3C40EFDC004DC3C039C099F1028FA93A3C40C0945275C3C039C0B70DF3DBA83A3C4081E23C67C4C039C055B2E621AB3A3C4088531CD2C5C039C029887E2EAC3A3C4081E23C67C4C039C007A96ED6C43A3C4032D7A46BD2C039C0A54D621CC73A3C407BBF7E5FD0C039C044F25562C93A3C40D43F1729D1C039C07612F336C23A3C40B97B994BDAC039C086206BDDC13A3C40AEDB3C9CDAC039C0DD301FFCA73A3C40440B8FF6CBC039C0F94C0F49A73A3C4054EC997DCBC039C0CD22A755A83A3C4002ADAF8BCAC039C04D9AA35CA53A3C404706E62EC8C039C05BA81B03A53A3C404706E62EC8C039C07AC40B50A43A3C406A4AD020C9C039C096CFF4AA9D3A3C40F1998E8FC4C039C0B5EBE4F79C3A3C4081E23C67C4C039C097E0FB9CA33A3C401BB20A6DBBC039C0	5	5	5	Natural Sciences 2 Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
6	0106000020E6100000010000000103000000010000000B00000063305493D43A3C40DF89F693D2C039C0BF952B6CD83A3C403FFCCA10CDC039C08B758E97DF3A3C40FFA5BA79D1C039C0F7E8DD16E33A3C40969A8D2BE2C039C0B198BAB7DE3A3C4070DED233EAC039C0B98EEF98D83A3C40137F710DE7C039C0825D4BD2D93A3C40520A10E7E3C039C06C489758DA3A3C40C3031B6EE3C039C003D547D9D63A3C40445F6341D5C039C0733ECC39D43A3C407B068F5DD3C039C063305493D43A3C40DF89F693D2C039C0	6	6	6	Student Affairs Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
7	0106000020E6100000010000000103000000010000000A0000001CECF4CC353B3C40F18998E0D3C039C04B2764B23A3B3C401C0957B6D6C039C0E1C41B253D3B3C405F52DF81D4C039C010008B0A423B3C4082A6B365D6C039C03B19EC0B3B3B3C408B58500DE2C039C0EEC18CD9363B3C40A1EBC2CAE0C039C0C19724E6373B3C40043277B2DCC039C0854E3D5A333B3C40F676158CD9C039C0955CB500333B3C4043542B9AD8C039C01CECF4CC353B3C40F18998E0D3C039C0	7	7	7	Student Health Services	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
8	0106000020E61000000100000001030000000100000010000000D5F8C6CCF53A3C40A4F820BFF2C039C0F203B027EF3A3C40A62F79F7EEC039C0D709CEBEFB3A3C40043277B2DCC039C09AD1ED24FD3A3C40D5C1EEE6DEC039C0B9FEE463023B3C40826BFA06D7C039C0E7395449073B3C406CD7B8DCD9C039C06FB88C23043B3C40E01B81A0E3C039C06DA78531FE3A3C40DB47D12FEBC039C0AADF65CBFC3A3C403B9E8A8EEAC039C0C7FB5518FC3A3C40589C7480EBC039C08CD47C70033B3C40CA2463E9EFC039C0F636C5FD003B3C40AB1F98F3F4C039C01142AE58FA3A3C400FB9937CF1C039C0F425BE0BFB3A3C40CA2463E9EFC039C03E6C164CF93A3C40278B3256EEC039C0D5F8C6CCF53A3C40A4F820BFF2C039C0	8	8	8	Geography Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
9	0106000020E610000001000000010300000001000000080000009CF3FB08093B3C40043277B2DCC039C0B2679E5B2C3B3C400FB9937CF1C039C0762FBEC12D3B3C404659DA1DF2C039C09F2611DF1A3B3C4096A7530E0AC139C0D71AD5B0013B3C40CDE3CCFDF9C039C09D0403FB0E3B3C405098CCB8E7C039C0F647CCEF063B3C403CB3F35DE2C039C09CF3FB08093B3C40043277B2DCC039C0	9	9	9	Zoology Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
10	0106000020E61000000100000001030000000100000006000000BE00DEDD613B3C40ABC0513FD3C039C01C99CA8C773B3C40AFCD9D57D7C039C01C88C39A713B3C40CF924864EDC039C0DC0BC7385B3B3C4042412968E7C039C0EC2A46D1603B3C406A25F58FD3C039C0BE00DEDD613B3C40ABC0513FD3C039C0	10	10	10	Roosmaryn	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
11	0106000020E61000000100000001030000000100000008000000DE2DD51C673B3C4045AC0D5C9CC039C039A4B3E7703B3C40315C3FEF9DC039C066CE1BDB6F3B3C40C7F7937EA5C039C066CE1BDB6F3B3C40BB0522C1A6C039C0FD5ACC5B6C3B3C40967B37CFA5C039C0FD5ACC5B6C3B3C40BF73F02DA5C039C0FB49C569663B3C400E6BA98CA4C039C0DE2DD51C673B3C4045AC0D5C9CC039C0	11	11	11	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
12	0106000020E61000000100000001030000000100000005000000F5428996663B3C40FCF9C980ACC039C06DD557AE6F3B3C401973FB13AEC039C0AA0D38486E3B3C40FBDE1289B4C039C02E7B6930653B3C405FBE8FCDB2C039C0F5428996663B3C40FCF9C980ACC039C0	12	12	12	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
13	0106000020E610000001000000010300000001000000050000008AE04009693B3C40F6FA2A65C2C039C054EC7C37823B3C40DDB7E42AC9C039C0BD4EC5C47F3B3C409BAC2B33D1C039C0F5428996663B3C40F264726DCAC039C08AE04009693B3C40F6FA2A65C2C039C0	13	13	13	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
14	0106000020E6100000010000000103000000010000000500000067F029BF7B3B3C4058E1AD20C4C039C002B0EF158A3B3C4028BFF4C1C4C039C0FBA8B3428A3B3C40D273FA38C8C039C067F029BF7B3B3C405277BE1EC7C039C067F029BF7B3B3C4058E1AD20C4C039C0	14	14	14	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
15	0106000020E610000001000000010300000001000000050000008E1356DF7A3B3C407BE8A642B9C039C0DE9DCAE7903B3C404D0A6618BCC039C0FAB9BA34903B3C40F6FA2A65C2C039C0A4280A597A3B3C40A5FF6B8FBFC039C08E1356DF7A3B3C407BE8A642B9C039C0	15	15	15	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
16	0106000020E6100000010000000103000000010000000500000077FEA1657B3B3C406243EC7CB2C039C0CE8F5241913B3C409458B6D9B4C039C0CE8F5241913B3C401851C7D7B7C039C077FEA1657B3B3C40F6D1592AB5C039C077FEA1657B3B3C406243EC7CB2C039C0	16	16	16	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
17	0106000020E6100000010000000103000000010000000500000068DF22CD753B3C40B760F6459FC039C061E9EDEB7B3B3C40B760F6459FC039C05AE2B1187C3B3C4096C72E50A4C039C061D8E6F9753B3C40EC898078A4C039C068DF22CD753B3C40B760F6459FC039C0	17	17	17	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
18	0106000020E6100000010000000103000000010000000A000000892E28F0863B3C40EC898078A4C039C0CC7E4B4F8B3B3C40EC898078A4C039C0B86997D58B3B3C401C324D3CAEC039C03CE8CFAF883B3C40DA6E42B5AEC039C03CE8CFAF883B3C406A3B31B7ABC039C03DD7C8BD823B3C405F3A7858ACC039C01DBBD870833B3C40F624F9ACA6C039C073197476873B3C405F63A784A6C039C073197476873B3C406C0E24C9A4C039C0892E28F0863B3C40EC898078A4C039C0	18	18	18	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
19	0106000020E610000001000000010300000001000000050000007B31B73B8D3B3C40733E68039EC039C0400ADE93943B3C40EC7916DB9DC039C03703A2C0943B3C403105DD27A4C039C06B233F958D3B3C4096C72E50A4C039C07B31B73B8D3B3C40733E68039EC039C0	19	19	19	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
20	0106000020E6100000010000000103000000010000000B000000DFBFD8CB9C3B3C40CC8E36709CC039C0684F18989F3B3C40743F41F79BC039C0523A641EA03B3C40072C21629DC039C005F40BDEA13B3C40B5F0728A9DC039C00EFB47B1A13B3C405121B61BA2C039C06F56546B9F3B3C402D5E64F3A1C039C06F56546B9F3B3C40F624F9ACA6C039C022FFF4389B3B3C407DE64AD5A6C039C03A14A9B29A3B3C40451401CD9EC039C0CFB160259D3B3C4056C70B549EC039C0DFBFD8CB9C3B3C40CC8E36709CC039C0	20	20	20	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
21	0106000020E6100000010000000103000000010000001000000014E075A0953B3C40F5CA99F7F3C039C0202BCE3BAD3B3C40F1C45B44FAC039C017249268AD3B3C40A26C24A1FCC039C0214DDC1FB93B3C405E2CA9F5F6C039C084B9EFCBBC3B3C40427F2F28FCC039C074AB7725BD3B3C40DCBFF86209C139C0C1F1CF65BB3B3C4002BDC4360FC139C0C1F1CF65BB3B3C407949A3A110C139C027320A0FAD3B3C40F5DB1D6F0BC139C03D47BE88AC3B3C403869891C0EC139C0540E8B1B8E3B3C40F5F9812E07C139C031EB5EFB8E3B3C40B84E94C502C139C0B77A9EC7913B3C400080AAD301C139C00AD939CD953B3C40AFDADDFFFBC039C03A03A2C0943B3C403EB450BDFAC039C014E075A0953B3C40F5CA99F7F3C039C0	21	21	21	Centenary Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
77	0106000020E610000001000000010300000001000000090000007CBBF91BFC3B3C40B61ED41966C139C076F1BF84123C3C40A2D9E39E6BC139C097CE2128163C3C406D1E47DF6FC139C0940C9915143C3C4043C8705276C139C0A52685EAF43B3C4071035D316EC139C0E15F7E6BF53B3C40C8B45D3E68C139C013884666F63B3C407BC75C5A66C139C0539250FFFB3B3C40625CE67E68C139C07CBBF91BFC3B3C40B61ED41966C139C0	77	24	24	Akanyang	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
22	0106000020E610000001000000010300000001000000210000000775089BD13B3C402DB7E40FF8C039C0C346F31FD93B3C405D3F202AF9C039C0F49269F7E33B3C40774E2BB1F8C039C00AA81D71E33B3C40AAECE886FBC039C08B41285CEC3B3C40BED55434FEC039C09C71AEE6F73B3C4039C8D278FCC039C0BB8D9E33F73B3C404FC6CB6800C139C09D82B5D8FD3B3C4099679F4C02C139C0F7D685BFFB3B3C40A78D94A30DC139C00FEC3939FB3B3C4090E2CFBD0EC139C0E3D2D837023C3C407670AE2810C139C09D93BCCA033C3C4087BE85A50AC139C08077CC7D043C3C406EDF902C0AC139C07B81979C0A3C3C40497B6F970BC139C02E3B3F5C0C3C3C40451D1AF807C139C076AD709F1C3C3C4087BE85A50AC139C00C3A2120193C3C40C17C28D415C139C0B9EC8C0C1B3C3C404CB4CB2416C139C0D00141861A3C3C40E968E5A918C139C0121F4F0F0D3C3C40C17C28D415C139C02E3B3F5C0C3C3C408D6E7D7319C139C0898F0F430A3C3C404139DA2219C139C0D4D56783083C3C40323E35B023C139C0DABA9572FC3B3C40238D10A421C139C05A43996BFF3B3C400AFD9E0818C139C0784E82C6F83B3C409FEB6E7516C139C0855CFA6CF83B3C4039112FC21CC139C0C102D757C13B3C40A307DB440EC139C076BC7E17C33B3C40C4BD6B2008C139C0E6360A6AC63B3C40C91FA73A09C139C0B20566A3C73B3C400188B9D104C139C0EF4E4D2FCC3B3C40A050A3C305C139C00775089BD13B3C402DB7E40FF8C039C0	22	22	22	Law Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
23	0106000020E610000001000000010300000001000000070000004711A8D2393A3C407CEEC909D7C039C0DC1DA544613A3C40785000ADEDC039C09116F2AD4E3A3C40376D5D0E08C139C07E52C438473A3C4013EE056204C139C0E332E015393A3C4015752B3218C139C00A49669C183A3C409A0B60A405C139C04711A8D2393A3C407CEEC909D7C039C0	23	1	1	Heavy Machinery Labs	1	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
24	0106000020E61000000100000001030000000100000015000000848FE178473A3C404EC92E490CC139C00A461EAC4A3A3C40342C6E570CC139C08082205F4D3A3C40C360B7810BC139C085F36B3C4F3A3C4050AF977A0BC139C0115CE303503A3C40AF1AAB9E0CC139C0D3E444E04F3A3C409708CD580FC139C094873D8B503A3C402BAE616010C139C023BC86B54F3A3C40915692C411C139C064FFF63B4E3A3C405B36A8AF12C139C0283CFC67493A3C401A38143719C139C063CD315A4A3A3C40F94F36C019C139C0A410A2E0483A3C40219B5FCF1BC139C08B594A20483A3C40693584641BC139C0E4EF87A33F3A3C40BBA215DF26C139C0F9B772F4353A3C40A412160721C139C0FE28BED1373A3C40AAC4509B1EC139C0DD3449D1363A3C40B4E7D60C1EC139C066B75767383A3C4071FFEC0B1CC139C07F6EAF27393A3C40983E7F911CC139C0FF4B59DE433A3C4081A312C00DC139C0848FE178473A3C404EC92E490CC139C0	24	2	2	CEFIM Building	2	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
25	0106000020E61000000100000001030000000100000019000000BE476F53433A3C40CF948B6DD9C039C0202DD292513A3C40BA207784C5C039C056CBDD39593A3C40BADF87CDC9C039C08D6DA6BC4F3A3C40530D6C35D7C039C0D5C6DB9A533A3C4017BCFB69D9C039C021D24B0D553A3C40EF70D25AD7C039C082C484016A3A3C40BF315570E3C039C0E5E1D2B9683A3C403C2C2941E5C039C0D34040516D3A3C40B1682BF4E7C039C0EBB6A85A723A3C4021D05706E1C039C0D463DB5D793A3C405CA1521FE5C039C0A92D02BB5B3A3C40990F4DFB0EC139C07BCC1354543A3C40A7D876770AC139C0F90444905B3A3C402588182800C139C001835087573A3C402562EACFFDC039C0FE758F6D5D3A3C4036D1B756F5C039C0AD5D5EE1613A3C40BE6D5DBBF7C039C03FDC9A00683A3C40248CD503EFC039C002A6EB93633A3C40F576434DECC039C0A06E060D643A3C404F710B94EBC039C0A57F84024D3A3C4042920725DEC039C0CDCAAD114F3A3C40492AABEADAC039C0E110BAF44D3A3C406DEAF14DDAC039C0D548BA084B3A3C40916949FADDC039C0BE476F53433A3C40CF948B6DD9C039C0	25	3	3	Engineering 2	3	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
26	0106000020E61000000100000001030000000100000005000000AE8873A54B3A3C40DC55DB3BC2C039C0A7F0CFDF4E3A3C405D9BCC91C3C039C0C36AF5C4423A3C40F9EC7596D5C039C0555179833F3A3C4018C9BC83D3C039C0AE8873A54B3A3C40DC55DB3BC2C039C0	26	4	4	\N	4	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
27	0106000020E61000000100000001030000000100000005000000F67D1EC0473A3C407322C82BBEC039C037809F8F4A3A3C4043599225C0C039C0C2066B013B3A3C402008437FD1C039C0A4DEC763383A3C40850BFA68CFC039C0F67D1EC0473A3C407322C82BBEC039C0	27	5	5	\N	5	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
28	0106000020E61000000100000001030000000100000011000000F4D02A8E663A3C406A72F652BEC039C0CD0323116D3A3C4036C3571BC1C039C034AC53756E3A3C403A8F297EBFC039C0582BAB21723A3C40473D929BC1C039C0EAEAD6F7733A3C40BFA0EC36BFC039C0332A7507773A3C40BBD41AD4C0C039C0B56F665D783A3C40542CEA6FBFC039C06416461A813A3C40907C30ABC4C039C0C9F661F7723A3C40A649625ED7C039C09F6145F3693A3C40EF0ADFDBD1C039C0D0CFF4736B3A3C40E25C76BECFC039C0C7ED5DB9673A3C403F231068CDC039C0F85B0D3A693A3C409DE9A911CBC039C0A5F9E8B8663A3C40D5EFFC57C9C039C0FC27DF9C673A3C40BE1E0EC9C7C039C0212915B7623A3C40D9FCBD71C3C039C0F4D02A8E663A3C406A72F652BEC039C0	28	6	6	Mining Study Centre	6	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
29	0106000020E610000001000000010300000001000000110000007A1F2022733A3C40F8775842D8C039C0AACA017E813A3C40076B6DF2C4C039C0C8F2A41B843A3C4088B05E48C6C039C0DFC393AA853A3C4061653539C4C039C00D2582118D3A3C40A6D801E6C8C039C09C59CB3B8C3A3C4038982DBCCAC039C024F670A08E3A3C40BADD1E12CCC039C0649467AC893A3C400CFF53DCD2C039C0CB7D87C7863A3C40F52D654DD1C039C02FDCC436813A3C40EE54D2D0D8C039C0C8F2A41B843A3C403A604243DAC039C0AE96D3E07F3A3C40A1C783F0DFC039C05B34AF5F7D3A3C40F46A9728DEC039C054DDFA507C3A3C4026D946A9DFC039C0E71E0595753A3C40261A3660DBC039C0C35EBE31763A3C403A604243DAC039C07A1F2022733A3C40F8775842D8C039C0	29	7	7	Engineering 1	7	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
30	0106000020E6100000010000000103000000010000001B00000010EC0C126F3A3C40C3E7ECE99AC039C0487081EA753A3C406B0553B69EC039C0AF59A105733A3C40856124F1A2C039C002BCC586753A3C408CB8D8FFA3C039C0DA2FADC0773A3C40D8043829A1C039C0F857505E7A3A3C402510A89BA2C039C0472F92337A3A3C40358AE21BA3C039C03F9331928E3A3C4062372D33AFC039C07EF038E78D3A3C40C8DF5D97B0C039C003C10CE9913A3C40E6070135B3C039C08EE894F9963A3C40C9204D4EACC039C05CF8060B9E3A3C40723EB31AB0C039C06D350FB0913A3C403B00755BC1C039C0CB3C98108B3A3C4021A4A320BDC039C0DB75E3D98F3A3C404AE45F36B6C039C0C119129F8B3A3C40F7813BB5B3C039C0FA1F65E5893A3C40E992E3E0B5C039C0FB641178743A3C40AD6B5E49A9C039C0D7A4CA14753A3C40563D6865A8C039C0D7E5B9CB703A3C40498FFF47A6C039C06A27C40F6A3A3C4009B01985AFC039C017C59F8E673A3C407A7BD05AB0C039C0E822C270643A3C40D47598A1AFC039C0B7B412F0623A3C40928DAEA0ADC039C09C1752FE623A3C402BE57D3CACC039C05663969A623A3C404FA5C49FABC039C010EC0C126F3A3C40C3E7ECE99AC039C0	30	8	8	Mineral Sciences Building	8	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
31	0106000020E6100000010000000103000000010000000C0000001032432B873A3C40C2519D448FC039C0AAACADD3913A3C4080CD3D0795C039C089F9278A8C3A3C4044BA29A79CC039C0DC1E1A30823A3C40B8A0A1DB96C039C0BCED7254743A3C400878E3B096C039C02F9F925B743A3C400852B55894C039C035F6466A753A3C40C9359DBA90C039C04CC735F9763A3C40A91BFA618DC039C02B92D1417A3A3C40E7D3873C89C039C049BA74DF7C3A3C40E6AD59E486C039C07490809A813A3C40B625139584C039C01032432B873A3C40C2519D448FC039C0	31	9	9	AE Auditorium and Annex	9	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
32	0106000020E610000001000000010300000001000000050000006439E1268D3A3C408A6EE50A9DC039C0D5C3A845923A3C40C681F96A95C039C0B2CB7669A23A3C4040EE57449EC039C04241AF4A9D3A3C40D85094D9A5C039C06439E1268D3A3C408A6EE50A9DC039C0	32	10	10	Van der Graaf Accelerator	10	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
33	0106000020E6100000010000000103000000010000000500000092BD6A9AA03A3C409DF7496095C039C017CF2D53A03A3C40410CACEE8DC039C02C38D542AB3A3C40CE5A8CE78DC039C02C38D542AB3A3C40ACE4387995C039C092BD6A9AA03A3C409DF7496095C039C0	33	11	11	Stoneman Building	11	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
34	0106000020E6100000010000000103000000010000000500000055AA563AA83A3C40C2A1B6D082C039C061D6E0E9B23A3C402B94DA298BC039C0E7289359AE3A3C40ECF5E31D90C039C0DAFC08AAA33A3C40EC77C28B87C039C055AA563AA83A3C40C2A1B6D082C039C0	34	12	12	Vetman Building	12	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
35	0106000020E610000001000000010300000001000000050000000AB5AB1FAC3A3C40AB2B4EC77DC039C01AAD0732B53A3C404BDAD1717DC039C0084D6480B53A3C40775557A785C039C085A3E866AC3A3C40CF69B6BC85C039C00AB5AB1FAC3A3C40AB2B4EC77DC039C0	35	13	13	Bateman Building	13	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
36	0106000020E6100000010000000103000000010000000D0000005EB345DDA63A3C4046BBF34060C039C0492C4A43AC3A3C4000C6482664C039C0D209DF5EAA3A3C405D4BF31866C039C099C29C61B03A3C40D7F840A96AC039C09C4D7F0DB33A3C40BAD09D0B68C039C0A62F16C8B63A3C408821FFD36AC039C0325B5BB4AA3A3C406CC170BD77C039C05490BF6BA73A3C4034FC0C2E75C039C036272D17A93A3C4041EB640273C039C0ED287EBEA13A3C40DB8323556DC039C04AEF17689F3A3C40B3F70A8F6FC039C0FB58C5499B3A3C40D42C6F466CC039C05EB345DDA63A3C4046BBF34060C039C0	36	14	14	\N	14	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
37	0106000020E6100000010000000103000000010000000A000000356D6330C13A3C40E5421F0365C039C0DE3AB070D13A3C400840984171C039C02127574DC23A3C409670249081C039C0F6504B92BD3A3C40EDDF092B7EC039C0F2029BC1C73A3C400574C6DE72C039C0B05BA077C13A3C407029B85C6EC039C0E61700C9B83A3C4026274C2878C039C0E0013B71B33A3C400CCB7AED73C039C0E0013B71B33A3C400CCB7AED73C039C0356D6330C13A3C40E5421F0365C039C0	37	15	15	Botany Building	15	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
38	0106000020E6100000010000000103000000010000001A00000077CFB1E7DC3A3C40BDBF0A7B72C039C011EBD82EFC3A3C40BC928CFB8AC039C03D43C357F83A3C403740DA8B8FC039C097BF690CEF3A3C406930687A88C039C072FF22A9EF3A3C407353EEEB87C039C0B9B79BE8DE3A3C40F9277FC97AC039C0C04F3FAEDB3A3C40253F7A3B7BC039C0C04F3FAEDB3A3C40253F7A3B7BC039C081332710D83A3C40497DE23083C039C0C0CD6040E43A3C40F53D59BC8CC039C04F02AA6AE33A3C40E1F74CD98DC039C041D262DFE93A3C40A15956CD92C039C062C6D7DFEA3A3C4066C820DB91C039C03DC5A1C5EF3A3C403A7036B295C039C048ABF55BE23A3C40D58F1AD5A3C039C06DAC2B76DD3A3C406B5C07C59FC039C02E4F2421DE3A3C405BE2CC449FC039C02E4F2421DE3A3C405BE2CC449FC039C0ECA729D7D73A3C404AA9817B9AC039C0E55075C8D63A3C40A1D7775F9BC039C06180A1C6D23A3C40235E586C98C039C0E50F8611DB3A3C402553EB728FC039C04358FE28D03A3C40654C680487C039C099450556D53A3C40FFE4265781C039C0E284A365D83A3C40A3E15AD276C039C077CFB1E7DC3A3C40BDBF0A7B72C039C0	38	16	16	Mathematics Building	16	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
39	0106000020E610000001000000010300000001000000200000006A608FB2423B3C40C23CA2864DC039C021E001EC433B3C400B3B51DF54C039C036260ECF423B3C4025D811D154C039C0A7F1C4A4433B3C40F6B355455AC039C0C14D96DF473B3C4000D7DBB659C039C043938735493B3C40F9FD483A61C039C01C894DDD423B3C400055FD4862C039C0012D7CA23E3B3C4032049C805FC039C0C59ABC29103B3C4027A0265864C039C0514423A80C3B3C40F9FD483A61C039C0CD734FA6083B3C40C4C3C75661C039C0D7D7C4CE033B3C4055CF4FDD67C039C0D7D7C4CE033B3C4055CF4FDD67C039C01369FAC0043B3C40A565A2FB6BC039C0AC7FDAA5073B3C40BC36918A6DC039C018FDE0AA123B3C4048F8251C6DC039C0794E5D00133B3C40E1CD164A74C039C0BB7736B8103B3C40E1CD164A74C039C0BB7736B8103B3C40E1CD164A74C039C026EC387F103B3C40D3DEBE7576C039C0BCF91426083B3C4034303BCB76C039C0B6652E3CFA3A3C40F43CE4D06BC039C0B6652E3CFA3A3C40F43CE4D06BC039C06A5ABEC9F83A3C400C0ED35F6DC039C0A76DD229F13A3C40B520CC3268C039C0A6EBF3BBF93A3C40F772668E5EC039C049255A12FC3A3C4049C119D84CC039C0B96E327A053B3C40881E212D4CC039C09BC4B06E0B3B3C40CA842CC056C039C05B67A9190C3B3C40D4A7B23156C039C0B56171600B3B3C4002CC6EBD50C039C06A608FB2423B3C40C23CA2864DC039C0	39	17	17	Technical Services Building	17	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
40	0106000020E6100000010000000103000000010000001300000029771B2B133B3C401465876E6EC039C0A7F1C4A4433B3C40E98E7BB369C039C0571A83CF433B3C40AEFD45C168C039C0AA7CA750463B3C40E337C7A468C039C0D593A2C2463B3C401FC9FC9669C039C0DF75397D4A3B3C40AC8A912869C039C0DF75397D4A3B3C40AC8A912869C039C03FC7B5D24A3B3C408032A7FF6CC039C0DBA9671A4C3B3C402738DFB86DC039C0FD9DDC1A4D3B3C406247363D77C039C0FA94D8DC413B3C400033ECC283C039C04EFBB939333B3C40A6A2D4D678C039C02018ED64343B3C407434255677C039C02018ED64343B3C407434255677C039C0A83671372E3B3C40F986D7C572C039C0F02FD92D193B3C402BF5864674C039C040071B03193B3C40C44C56E272C039C0D99FD955133B3C407475140D73C039C029771B2B133B3C401465876E6EC039C0	40	18	18	Sci-Enza Centre	18	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
41	0106000020E6100000010000000103000000010000000B000000EEDA9F247F3A3C40061B18ED37C139C05A5760109F3A3C40297E5D6F4BC139C04AED6ABE993A3C40E026882A52C139C0DF467789933A3C40B3B41F584EC139C005D9D475923A3C40929633C54FC139C0A2B6E44B813A3C4008743E8F45C139C0C3BC20B37E3A3C4029656EFB48C139C014751B8B8A3A3C4063E7D9AE50C139C0B0F7007A853A3C409A86CB0357C139C06B15BCF4703A3C40835782684AC139C0EEDA9F247F3A3C40061B18ED37C139C0	41	19	\N	Music Building	19	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
42	0106000020E6100000010000000103000000010000000B0000005715EF877F3A3C4004349EE737C139C01043E6F6833A3C40A1D3A20031C139C02A62D6F18B3A3C406984E39035C139C0BBD49650903A3C40DCEE24592FC139C07DB78868973A3C405BC896F528C139C0B9796C699C3A3C408F6A7ED72AC139C046EC2CC8A03A3C402F04A7B12DC139C0A6179591A33A3C407ADB610830C139C04A1506ECA13A3C401D8B7D3739C139C0D4903EEA973A3C4033BEA3D946C139C05715EF877F3A3C4004349EE737C139C0	42	20	\N	Musaion	20	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
43	0106000020E6100000010000000103000000010000000D0000001015A470973A3C40775EFCE628C139C066E5FD81923A3C40BB8471DB1DC139C035A6C3669D3A3C40C884BE161CC139C005C6C26FA23A3C4048DC4C161DC139C0AAC74207A73A3C40FE0D4DE21EC139C034D26DD1AB3A3C40F5BEE71522C139C04676D260B03A3C40DB91CB4627C139C00B1B46FEB13A3C401E196A362BC139C0E288E811B33A3C403DFC28A22FC139C090EB1DBAA33A3C40E76B45D52FC139C0DB4948D0A03A3C40F2C055612DC139C04D3AD0D29C3A3C40B93531D02AC139C01015A470973A3C40775EFCE628C139C0	43	21	\N	Amphitheatre	21	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
44	0106000020E6100000010000000103000000010000000A000000F488B57EA43A3C40317233FC15C139C0FE3DB027A73A3C404E01486917C139C05F37C72DB73A3C403CD557F514C139C01702763BBB3A3C40C70D6BA50FC139C0EA4A4E68C13A3C40F7173B6913C139C03C94D327BA3A3C40DE8E79141DC139C009C1590DB73A3C4071B24CBD1BC139C0BEB94AA1A73A3C4006796D051EC139C07F6B451BA13A3C40F8076D6D1AC139C0F488B57EA43A3C40317233FC15C139C0	44	22	\N	Club Hall	22	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
45	0106000020E6100000010000000103000000010000001E000000269565AB773A3C40A2B185A808C139C0BFB0F3FB6B3A3C405F843E0302C139C0C806B580743A3C40B016F5DFF6C039C08C48E0BC753A3C40AC1EE587F7C039C087C4DCB1803A3C4010E0D132E9C039C00F8D75F9AF3A3C40C198B5CA05C139C009649CD5AE3A3C406C33C6EE06C139C06403E319B03A3C40595D3C0408C139C0D9B9FBDEAC3A3C40CD15350A0BC139C0986BF658A63A3C40A7C99DAC07C139C067249EC3A43A3C40B05FAED008C139C047E4F21EA83A3C4066311DEC0CC139C04F68F6299D3A3C40350EEE4714C139C065F3A625973A3C4013C482DD0CC139C05CA91258A13A3C4083511F0506C139C002A783B29F3A3C407BAB9C1404C139C0D0F4C441913A3C408FA3452E0CC139C057B28AF7923A3C40BB05C4D50DC139C07F5F18648E3A3C404300F2AA13C139C01C03B9FC7D3A3C409A20928309C139C07B916927813A3C40A777B92D05C139C054FF0B3B823A3C40E25727B105C139C08280D30D833A3C404A92124404C139C08D35CEB6853A3C40707BF29305C139C03D745B3F883A3C4068660A33F9C039C03A4B821B873A3C4059A7A0F8F8C039C0E371CC99863A3C409A12E2F0F9C039C032F9CFD3843A3C40C6C76BDBF8C039C06DED04987C3A3C40DDD80BCBFCC039C0269565AB773A3C40A2B185A808C139C0	45	23	\N	Aula	23	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
46	0106000020E61000000100000001030000000100000020000000A8B43001B73A3C40F1E4D48A53C139C0A659061AC33A3C40F6B39CC941C139C045680D8EBF3A3C4095D24BAD3FC139C07C01186BC33A3C403A94C29239C139C0EB9E9300D83A3C40A3BFDC5946C139C00719AEE2D33A3C40625E5DE24BC139C0106342B0C93A3C40AB8C4E4046C139C0D766EF71C53A3C40968079FB4CC139C00A119068C73A3C407CD1232E4EC139C03C1E79C0C93A3C40ECC238034CC139C09949E189CC3A3C408B7185D64DC139C0699F4093CA3A3C408012D6F24FC139C0EC332D25CB3A3C4004CF12A250C139C06E2B6218CC3A3C401B7E6CB84FC139C004F0D4BED23A3C40AF4073E253C139C055DA205AD13A3C40B87900AE56C139C0767D1460CE3A3C4072F250CA58C139C0E0B8A1B9C73A3C40E1EDB3DA54C139C083B61214C63A3C40F8DD9ABC56C139C0F909E377C23A3C40572E7B7454C139C0A659061AC33A3C40A61BA06D53C139C0D2DACDECC33A3C40A61BA06D53C139C0AC487000C53A3C4031E0F1F151C139C0A2937557C23A3C40FEFDE1CD50C139C06834DAB7BD3A3C40BFFF6D3157C139C02D7A1431C53A3C407C9C47D05BC139C0A71F97DCC33A3C40D3AFAB595FC139C0CA881BA5C13A3C40A206D33362C139C06403E319B03A3C405937391457C139C0EAC0A8CFB13A3C404D1B830655C139C0707E6E85B33A3C40E5E7EDA851C139C0A8B43001B73A3C40F1E4D48A53C139C0	46	24	\N	Theology Building	24	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
47	0106000020E61000000100000001030000000100000005000000054AA580E13A3C4039F8618A2BC139C0D9968CEAED3A3C40AE4CC7AB32C139C08AA422D5E23A3C40CF1C3B2142C139C0899C045BD63A3C4092AFD2B63AC139C0054AA580E13A3C4039F8618A2BC139C0	47	25	\N	Old Merensky Library	25	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
48	0106000020E6100000010000000103000000010000001400000012AE0FA9EE3A3C40DF2E823633C139C0BE87D8E3FE3A3C403FDB70DA3CC139C0B1B12291073B3C402320F46A30C139C08FB304A4163B3C4054187AA432C139C04A9F6E5B0F3B3C40F86F407259C139C084305BBE063B3C40489D716058C139C052237266043B3C40F5C6309361C139C0DFF87A26093B3C4059BA0B9A62C139C0DE32EA63083B3C40597350546BC139C0AA381312F63A3C4053E251A268C139C076C0C3DEE63A3C400A1705565FC139C00FE87EE6ED3A3C40A9CD202A57C139C0959D2622E33A3C40635FFE0051C139C06F0BC935E43A3C404374F22550C139C063903DCAE03A3C40D79ED6264EC139C070D159F8E43A3C40134D25CA48C139C0BD92CC6FE23A3C40E2BBAB6B47C139C07AE99C02E83A3C40240699B43FC139C020E70D5DE63A3C4084C5BDAD3EC139C012AE0FA9EE3A3C40DF2E823633C139C0	48	26	\N	Merensky 2 Library	26	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
49	0106000020E6100000010000000103000000010000000900000007B91A99F43A3C404BDCA25225C139C003F79813FA3A3C4009B9D34B28C139C08062AC81F93A3C40DAFEE36F29C139C044A8E6FA003B3C401219EC992DC139C02501E4B7FD3A3C4019CEE7B432C139C0F3E7CDA8E83A3C4031076AB826C139C0FF625914EC3A3C404A24411222C139C0EE63CA9DF33A3C406C29B37626C139C007B91A99F43A3C404BDCA25225C139C0	49	27	\N	Marketing Services Building\r	27	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
50	0106000020E61000000100000001030000000100000009000000915D2CBBEB3A3C404A911AFEF8C039C01F75C232FC3A3C40D67B01C701C139C055380059E63A3C406D3145E821C139C0F0B2C7CDD43A3C403D851BC418C139C054CD997DD93A3C40C58C5FD512C139C04E499672E43A3C40D0C8EAEF18C139C053DDD571F23A3C40F05CFACC04C139C0841C108DE73A3C40F6176EB2FEC039C0915D2CBBEB3A3C404A911AFEF8C039C0	50	28	\N	Old Arts Building	28	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
51	0106000020E61000000100000001030000000100000018000000ACEB91CE063B3C402EF5877909C139C0907177EC0A3B3C40143C3B3E0BC139C03CC19A8E0B3B3C406DCB12FC0BC139C03FEA73B20C3B3C408DEE16450CC139C0C8D0128C0F3B3C4098BD2FFB0DC139C09E7824DD0F3B3C404E607DCE0FC139C0CEBF7C72113B3C408E4A494913C139C0DFBE0BE9093B3C40D89A629718C139C0D01AA759053B3C4087CCBCDD1EC139C0FB729508053B3C40B141376C27C139C0A0D34EC4033B3C4094F3E19E28C139C0C27642CA003B3C40B91FAD8128C139C08E061111FE3A3C40FF2770D227C139C054A77571F93A3C40087E4B4125C139C0C634B512F53A3C40269B5BCD22C139C090613BF8F13A3C4084DE83771EC139C01582490FF43A3C40454C6BC11CC139C0D801F3C5FA3A3C409565D01A19C139C05EBFB87BFC3A3C405C13C43F18C139C03DB97C14FF3A3C40FAE575D412C139C09A819C7C013B3C4097CF67C90AC139C0FB729508053B3C40E585D1030BC139C0557524AE063B3C40A56294540AC139C0ACEB91CE063B3C402EF5877909C139C0	51	29	\N	ChancellorÃ¢â‚¬â„¢s Building	29	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
52	0106000020E61000000100000001030000000100000007000000625B16F5163B3C400D90AA0B12C139C03A341FE4243B3C404B9452251AC139C02C889CDA133B3C40C095D5A531C139C0C01B18E30C3B3C4064AED1C42DC139C0C023365D193B3C401CE711C51CC139C0259932F4113B3C401DF2396F18C139C0625B16F5163B3C400D90AA0B12C139C0	52	30	\N	Old Chemistry Building	30	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
53	0106000020E61000000100000001030000000100000007000000F3D110216B3A3C406248450304C139C0CBBA5504923A3C4033A08FD41AC139C05626520E6F3A3C4075EB5BB849C139C08A7E29594C3A3C40028CA46935C139C0E2F496794C3A3C402064C58130C139C0842C77114A3A3C40FD25701C2EC139C0F3D110216B3A3C406248450304C139C0	53	31	\N	Engineering 3	31	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
54	0106000020E610000001000000010300000001000000070000004595BA29283B3C403C7F835612C139C0C82B832B413B3C403F3A7EE903C139C021F6049D453B3C4056AFC0D704C139C0BDA34363423B3C40A2446C9714C139C04D2408FB3A3B3C4073F5701213C139C0365D5F5B2E3B3C40BD4112931AC139C04595BA29283B3C403C7F835612C139C0	54	1	1	Piazza 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
55	0106000020E61000000100000001030000000100000008000000B144A0C9463B3C40E92A0E0A05C139C03E545A72543B3C402D53A28607C139C012C890EA6C3B3C40CCD2F11025C139C08F7EFFAE6A3B3C4084068BAD2FC139C07744E4FA493B3C4023855D5C29C139C0D14F2EC84B3B3C409835DDE01FC139C0C485830B433B3C4048ED2A1915C139C0B144A0C9463B3C40E92A0E0A05C139C0	55	2	2	Piazza 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
56	0106000020E6100000010000000103000000010000000A00000003CBB8F34B3B3C40CBC2648E2CC139C08E5921E45D3B3C403240D3E92FC139C0FD2938D65D3B3C403389433B30C139C082566F5B633B3C400E0C501F31C139C07D1825AB633B3C40918EFB0630C139C0265C2C7D6A3B3C40D375A93A31C139C02C466BF2683B3C4087B8C79C37C139C009D8AD77543B3C407035A21734C139C03CE211944B3B3C404B0403B02EC139C003CBB8F34B3B3C40CBC2648E2CC139C0	56	3	3	Piazza 3	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
57	0106000020E610000001000000010300000001000000160000002208B80C4F3B3C4039BD51EB3FC139C022B6A290563B3C4075F2E04541C139C0E0656398553B3C40C2A62BBA45C139C0A82BD758623B3C405FC1AC0A48C139C029B223BC623B3C40C2A62BBA45C139C0811770D3673B3C4040884BBB46C139C000912370673B3C408CCD70F548C139C0793FE1C0733B3C4006D8F1454BC139C0ABBB107B743B3C404A7F3DB147C139C0171C38247C3B3C40A60EE04E49C139C0978852FA7A3B3C40CDBF648C4EC139C08637E3178C3B3C40C77705DE51C139C0A3B837408A3B3C40ACF1523F59C139C0D3B1C69E793B3C400BD8C53056C139C041576AFD783B3C4036288D085AC139C00366D947713B3C403287748C58C139C0251B928A723B3C40A5F4AE0053C139C02B564EB4533B3C40C8E1791B4DC139C07953D296523B3C408DE9543651C139C08D79F7504B3B3C40D5E2C5DB4FC139C02208B80C4F3B3C4039BD51EB3FC139C02208B80C4F3B3C4039BD51EB3FC139C0	57	4	4	Economic Management Science Building 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
58	0106000020E6100000010000000103000000010000000E000000FC45EC69913B3C402379F5FC43C139C095014DE1993B3C40B3E06FBF45C139C0A441E8B8983B3C4053905E684AC139C092A6A5C1AE3B3C4024E631AD4EC139C08C2C1B5FAF3B3C40364B15CF4BC139C0477073CCB43B3C404F6E08DA4CC139C0249383CAB03B3C400D0BD6525FC139C00B45BC30AA3B3C40D2FC88F15DC139C0ED7F8713AC3B3C40F98DF76756C139C032329DDB953B3C40280F88F251C139C0A27D7661923B3C4011414FE85FC139C0A9F4E3E4893B3C40CE9CE3275EC139C0D4262BC88C3B3C405907104452C139C0FC45EC69913B3C402379F5FC43C139C0	58	5	5	Economic Management Science Building 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
59	0106000020E6100000010000000103000000010000000F000000DB072F3B753B3C40ABC12EE42AC139C04D923F19873B3C40DED9F7C52EC139C05107D18C863B3C4085CC8CE830C139C058583450883B3C40C74FFF5D31C139C01B70E1E6873B3C40626FD2B932C139C05BBF742C8B3B3C402FD4A59233C139C0034FFE958A3B3C4004408A8335C139C061B7E8AA863B3C40593C0F8234C139C0C226CD93823B3C4006969AB643C139C012D48DF78E3B3C40FEE2894846C139C0B76982F48D3B3C408071523F4AC139C0DF7A16CA7C3B3C40C9E52A8F46C139C0BD0C14F47E3B3C40C71B97EB3DC139C02C93CEF8703B3C40259A1AFE3AC139C0DB072F3B753B3C40ABC12EE42AC139C0	59	6	6	Tukkiewerf	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
60	0106000020E6100000010000000103000000010000000E000000F6A30C7E8C3B3C40AE9A510122C139C08D1CD6888F3B3C40C10C30B922C139C03DA38B5C903B3C40635C96841FC139C0A4626939963B3C40618D7DDC20C139C0996B5C5A953B3C40412EE00624C139C0FEC2573F983B3C4008D617AD25C139C0923B5119943B3C40E90762CD34C139C0AD6118F1913B3C40A627EE3F34C139C053AA1EC1903B3C4088B65DC238C139C0D287B9108A3B3C408CA1422C37C139C0A7CB142C8B3B3C407D9A3B9433C139C098F82BE6873B3C409951DAB932C139C05B746251883B3C400D25AF6231C139C0F6A30C7E8C3B3C40AE9A510122C139C0	60	7	7	Chapel	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
61	0106000020E610000001000000010300000001000000090000000B638838AA3B3C4049622E501FC139C00EF5ABC7B93B3C40B2D490A822C139C0EDB79A39BA3B3C40D2921F1121C139C09754EEACBE3B3C40AF26B71A22C139C00F982631BA3B3C40CB85063432C139C05818A7ACA83B3C404D1678DC2DC139C03B0D975EAA3B3C40CB542F9E28C139C097C054F0A73B3C4020227F6F27C139C00B638838AA3B3C4049622E501FC139C0	61	8	8	Monastery Hall	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
62	0106000020E610000001000000010300000001000000050000009384D743A63B3C40B044507C35C139C0B61E8D59B73B3C40D499479639C139C0109D037AB53B3C40E39A183840C139C05BB33B43A43B3C4064D293253CC139C09384D743A63B3C40B044507C35C139C0	62	9	9	Monastery Hall 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
63	0106000020E61000000100000001030000000100000006000000F4996784BA3B3C405590F4274FC139C0643C8635BD3B3C406C59C7864FC139C0FBC5C160C33B3C40A4D83C9D51C139C0987057D8C13B3C401360B05657C139C053D8FDB8B83B3C40449A44FB54C139C0F4996784BA3B3C405590F4274FC139C0	63	10	10	Sanlam Auditorium	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
64	0106000020E61000000100000001030000000100000005000000B46FABFBBD3B3C407BA9D7AC57C139C0FD2B46C4CA3B3C400B22A8E55AC139C046FA17D2C73B3C4007615BA864C139C0077980D3BB3B3C40038D600261C139C0B46FABFBBD3B3C407BA9D7AC57C139C0	64	11	11	Sanlams Auditorium 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
65	0106000020E610000001000000010300000001000000050000004318E68CD13B3C40008C1B6C54C139C0A32565ACDC3B3C402BAB02315AC139C047AA6E2ED63B3C406159C1F963C139C07347413BCB3B3C40F60FE02A5EC139C04318E68CD13B3C40008C1B6C54C139C0	65	12	12	Sanlams Auditorium 3	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
66	0106000020E61000000100000001030000000100000005000000BCB02745CA3B3C40D736650863C139C05994DCEBD53B3C40EB919EE765C139C07C1429FFD13B3C40BA764A7F72C139C0DC64EB62C63B3C405C55378D6FC139C0BCB02745CA3B3C40D736650863C139C0	66	13	13	Sanlams Auditorium 4	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
67	\N	67	14	14	Conference Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
68	0106000020E610000001000000010300000001000000140000007E92A37D6F3B3C4011357A6764C139C0FEE85B76753B3C40D17786FC61C139C0EE1B58BAA53B3C40A6DAC1E06DC139C0DEFB0FE4AD3B3C406A2DAC067DC139C018F14ED2B23B3C40EB755B787DC139C08B69E145B63B3C401E8DD38579C139C0CD01C130B83B3C4042AC226474C139C08212338FBD3B3C409AF8805774C139C0526D058FC13B3C40A61B087A75C139C02B3EE29FD03B3C40DD7EB97B7CC139C0D7FE4210CD3B3C4045746B2D88C139C038BAE4FBBF3B3C401EE4078493C139C0660277A9AD3B3C40CB190F9D96C139C0BA6FF69FA43B3C4043723AD493C139C0F80B29F3A53B3C40AECD90FE8EC139C07F588088A13B3C402CBB3B968DC139C072D2273D993B3C408FDBF3C190C139C052DBD7266F3B3C403FEEA48A84C139C082814E8A693B3C40A22AA4997AC139C07E92A37D6F3B3C4011357A6764C139C0	68	15	15	Information Technology Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
69	0106000020E610000001000000010300000001000000070000007CDA73024D3B3C40714D0AE05EC139C0CF869032553B3C408EBDBCED5FC139C03BA69EA2513B3C4017DFDD5E73C139C07CCCAC074F3B3C40A5BBD42D73C139C01E2A49364C3B3C40AAE23DB372C139C0B23490B6493B3C40F92F406871C139C07CDA73024D3B3C40714D0AE05EC139C0	69	16	16	Junior Tukkie Administration Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
70	0106000020E6100000010000000103000000010000000500000094DCD9DD153B3C402E32408E52C139C032A27BE9293B3C4002D622BD55C139C0C0A0620B253B3C404A81D41A6FC139C0CB858CE4103B3C404418D6F06BC139C094DCD9DD153B3C402E32408E52C139C0	70	17	17	Faculty of Humanities Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
71	0106000020E61000000100000001030000000100000009000000A9A96F0B253B3C405C81941B6FC139C03277F0EB293B3C40770094BF55C139C0FE6667702F3B3C401648CBA456C139C03FF20D242F3B3C4042309EFC57C139C03EDEE6CD3D3B3C40084294505AC139C0102CCD003E3B3C405A3FDE2059C139C0715470594B3B3C40F97B863B5BC139C0A3E02D71463B3C4083BA537674C139C0A9A96F0B253B3C405C81941B6FC139C0	71	18	18	Client/Student Service Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
72	0106000020E61000000100000001030000000100000005000000A597D17F2A3B3C4061EE4C6D81C139C0D1B82E71303B3C40A658557C82C139C0648B325A2E3B3C40E514EA4E8CC139C0112D458A283B3C409F11D3308BC139C0A597D17F2A3B3C4061EE4C6D81C139C0	72	19	19	Visitors Reception	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
73	0106000020E610000001000000010300000001000000090000005EB3FB35B03B3C40942C82CEA7C139C04B82AC29B63B3C40DF7F1DFCA8C139C0EAD81387B43B3C404F3E0C78B2C139C07DCD4759BA3B3C409DD32200B4C139C05DFEC04ABD3B3C4053FC2A39ABC139C08D581D18C43B3C40F53956D0ACC139C035601EBBBE3B3C406A068CD6BDC139C03EB7314EAB3B3C40157B1F20B9C139C05EB3FB35B03B3C40942C82CEA7C139C0	73	20	20	Drama Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
74	0106000020E61000000100000001030000000100000015000000C49111A6FD3B3C40B874F01032C139C03384EC9F113C3C40DF49BA7F37C139C0B6626989193C3C40ED65281F39C139C0BCEAE357173C3C4062BF68E445C139C0E76F2C6D133C3C40660D0FCD58C139C05038EE242A3C3C40DF210A305CC139C0507C2B0C293C3C4006AE2F2C63C139C025A83F4D193C3C40F30EA44760C139C00DCB5B40123C3C406C9654ED5FC139C074D6FB70103C3C401891548665C139C098A5CBC30B3C3C401891548665C139C01D95BE2F0A3C3C406BC476C962C139C0842EA65D003C3C406BC476C962C139C0AF1DEE48EC3B3C40F5C297E05FC139C0D7CDB2AAF23B3C4010A7C9F64BC139C089DCAD5FF53B3C407BA9637446C139C079668538F93B3C40B2D2A55A40C139C0696845BCF53B3C40BF95652B3FC139C0C744B8E5F73B3C403418A2DF38C139C0952825B4FB3B3C4094A7CECB37C139C0C49111A6FD3B3C40B874F01032C139C0	74	21	21	Graduate Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
75	0106000020E6100000010000000103000000010000000700000043861F111F3C3C40DD22F3FD49C139C06ACF4F4B2E3C3C40F6A861694DC139C05457D2A72C3C3C40515B073754C139C0F696C76C213C3C40A185CDAC53C139C03A145158213C3C4063EA2AB950C139C0C52375301C3C3C405FB04E9450C139C043861F111F3C3C40DD22F3FD49C139C0	75	22	22	Centre for Responsible Leadership	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
76	0106000020E6100000010000000103000000010000000800000052F78500EB3B3C40010787C370C139C00907DFDB093C3C40859E634678C139C037EF8F1D0A3C3C405E4D5E0C7BC139C089883827093C3C40F20ACF6A7DC139C022811D2A073C3C4068DDB5617FC139C02918EE82E63B3C4061BD17E978C139C06237583EE83B3C4080BF057571C139C052F78500EB3B3C40010787C370C139C0	76	23	23	UP Shop and Vida e Cafe	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
78	0106000020E610000001000000010300000001000000080000008B313EAF173C3C408D0016C072C139C07B58579F253C3C406EF8FB6572C139C0BF23B903253C3C40832F542170C139C0196FF6FF2F3C3C406508301A73C139C0AB55732D2D3C3C40165EB66178C139C0B7EB90382D3C3C406259A89682C139C08B313EAF173C3C4092C4D02283C139C08B313EAF173C3C408D0016C072C139C0	78	25	25	FABI 2 Building 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
79	0106000020E61000000100000001030000000100000007000000AEDB45801B3C3C40DDC5888169C139C004E0B3E8243C3C403A2A6D2C6BC139C0FFB9E12B243C3C402124FAD86EC139C07567C9801D3C3C405698707A6DC139C053FFB04E1D3C3C40FACADEBE70C139C05AB48FB9193C3C40159646A26FC139C0AEDB45801B3C3C40DDC5888169C139C0	79	26	26	FABI 2 Building 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
80	0106000020E6100000010000000103000000010000000D00000020143E1F393C3C40C294370360C139C0152FEB6C433C3C40F129385062C139C059EC7055443C3C40666BD1EE60C139C074DA7547483C3C40E1B63DC061C139C04016DEAE473C3C400B0B41C563C139C038C306A7503C3C40A51A5BD765C139C01BD12A07503C3C40A8C8586C68C139C0903EADEA463C3C406A00284D66C139C0EF5F6A76463C3C40EC30D01D68C139C078E223A3413C3C401D94C4F066C139C003EFAA1E423C3C4068348E6165C139C0C884FC3D383C3C401FC3D4F362C139C020143E1F393C3C40C294370360C139C0	80	27	27	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
81	0106000020E610000001000000010300000001000000090000001E628C0A373C3C403E1C367366C139C09C796D37503C3C4016DB42426CC139C0638FEEDB4D3C3C40FFFAD93074C139C0D5E47E9B443C3C40AA22D22572C139C0C3E9DA12443C3C407792982674C139C00922E0FA3D3C3C4064A2A19672C139C0C11EF8553E3C3C4013ADAA0671C139C0F3791E76343C3C40ABAC14956EC139C01E628C0A373C3C403E1C367366C139C0	81	28	28	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
82	0106000020E61000000100000001030000000100000005000000FDCAA619483C3C40E689BEE972C139C0E9CD0A904A3C3C40E55A947573C139C013D646C2493C3C40B271F07F76C139C06F768842473C3C40BF25AEEB75C139C0FDCAA619483C3C40E689BEE972C139C0	82	29	29	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
83	0106000020E6100000010000000103000000010000000500000034EB8FBD383C3C40BB67FCA46FC139C04220E88D3A3C3C40EE1FF61870C139C037C96E013A3C3C40EB93FB7F72C139C026774302383C3C40286D6FFA71C139C034EB8FBD383C3C40BB67FCA46FC139C0	83	30	30	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
84	0106000020E610000001000000010300000001000000050000009B99515A323C3C408DAEF78070C139C0A75D6D8A3D3C3C4050F60C7173C139C0E19D7AE4393C3C4026E102B87EC139C0EEE492DB2E3C3C4083BF76EB7BC139C09B99515A323C3C408DAEF78070C139C0	84	31	31	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
85	0106000020E61000000100000001030000000100000005000000D01ED82B433C3C40845671F774C139C0445E37684E3C3C400ABD288E77C139C08F4B1A724B3C3C407C4BAE8982C139C01A0CBB35403C3C402155362F80C139C0D01ED82B433C3C40845671F774C139C0	85	32	32	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
86	0106000020E61000000100000001030000000100000009000000A826F44D303C3C407AF318D37FC139C0C7F81D914A3C3C4097F91EC885C139C0ADA0D3E4483C3C4066BDCA288CC139C0327065923D3C3C4044F50B7689C139C08F65D5243D3C3C40D11AEFCA8AC139C0519C3DDA373C3C40777CD7B489C139C095131FF8373C3C4066D00A4588C139C007E0E6652E3C3C407101F2FD85C139C0A826F44D303C3C407AF318D37FC139C0	86	33	33	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
87	0106000020E61000000100000001030000000100000005000000A57A1036E13B3C40CE51E53788C139C019D2763BF33B3C40CA275E328CC139C0281C9570F13B3C4057F1190093C139C0AE889952DF3B3C4059FB1BE88EC139C0A57A1036E13B3C40CE51E53788C139C0	87	34	34	JJ Theron Lecture Hall	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
88	0106000020E61000000100000001030000000100000005000000A134813BE13B3C400EA78D8D91C139C065AD4699F03B3C402582644595C139C0D9432C7DE93B3C40D9692875ACC139C070E55DF3D93B3C40994852BDA8C139C0A134813BE13B3C400EA78D8D91C139C0	88	35	35	Masker Theatre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
89	0106000020E6100000010000000103000000010000000D000000E20927FDF53B3C4064FD56028FC139C0A6B92072FD3B3C40D39A19D890C139C06BF44E10FA3B3C4013DBAEAB9BC139C07AD9AE11033C3C409A9E9ACC9DC139C00ED42F0B063C3C4039801CD193C139C032397D1D0C3C3C408BFE203695C139C0EF7134E2053C3C4074F36BD4A9C139C0FE2AFBDE003C3C40908A8590A8C139C02A70E0F4013C3C40268AA9A1A5C139C00201B5E0F63B3C4050823FD0A2C139C015904AB2F53B3C40837833DEA6C139C0F5541737EF3B3C407D659A3AA5C139C0E20927FDF53B3C4064FD56028FC139C0	89	36	36	Agriculture Annex	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
90	0106000020E610000001000000010300000001000000100000008FE09215103C3C40B8E3C27998C139C047D84F3C2A3C3C40C4B7770F9FC139C0720DD8902C3C3C40DC531142A1C139C0E11FBA09293C3C40180A3E15ACC139C0A3338108263C3C40B6FDDD99ABC139C0919F2516253C3C40B51F88D3AEC139C0A55272A3353C3C40037E52B4B1C139C02B05FE7C313C3C408394416BBDC139C026AC3C011F3C3C40BB0EA806B9C139C03D7484021C3C3C40868A8436B6C139C0F0B0F4421F3C3C408010E98AADC139C0D2F8BC1C233C3C4058A57A3CAEC139C02D0F6D4F243C3C402E3BD3FFAAC139C0CF93AFFC0F3C3C4035D384F3A5C139C0643197A40C3C3C40C77EF491A2C139C08FE09215103C3C40B8E3C27998C139C0	90	37	37	Natural and Agricultural Sciences BUilding	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
91	0106000020E61000000100000001030000000100000007000000BCB921BCF93B3C4076AC906EB9C139C0058A524B013C3C403D64E2E4BAC139C03108B875FB3B3C404AB9260ED1C139C0AEF26516EC3B3C407F72EFC3CDC139C02141FCCFED3B3C40A6C83D48C8C139C0FF056575F43B3C4047086078C9C139C0BCB921BCF93B3C4076AC906EB9C139C0	91	38	38	Lier Theatre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
92	0106000020E610000001000000010300000001000000050000001FED25D8FD3B3C404111AFE5CCC139C07FA98AE90C3C3C407B8CB05ED0C139C0E60107E20A3C3C40971FE59FD5C139C0511964D4FC3B3C4067B7D28ED1C139C01FED25D8FD3B3C404111AFE5CCC139C0	92	39	39	Lier Theatre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
93	0106000020E6100000010000000103000000010000000B0000004B72C48C363C3C401A1B5ACA44C139C09E45B1F3653C3C40FFD77C7A51C139C04F0CBFCD5F3C3C408B3564EB65C139C001D56926543C3C405C75D52963C139C0E76F1D01573C3C40E0E9D2BC58C139C0D4B2590B543C3C40DA9F932A58C139C018A2CAC8543C3C40E052F6F955C139C01F3AB64B513C3C401DC647C954C139C0395BDB054F3C3C408B3E11125AC139C0C82BCE94313C3C4098176B0652C139C04B72C48C363C3C401A1B5ACA44C139C0	93	40	40	Plant Sciences Complex	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
94	0106000020E61000000100000001030000000100000005000000B7A22C08BB393C4033D22B19BAC139C06B815DA3BC393C4024F6FD7FACC139C08E10A8F2F5393C40F22747FFB1C139C051019236F4393C40F3CECA0AC1C139C0B7A22C08BB393C4033D22B19BAC139C0	94	41	41	South Campus Building 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
95	0106000020E6100000010000000103000000010000000F0000008EFDC7CDF6393C4097CBD6AB9DC139C01CF25AE0033A3C40E18D4DEC9EC139C01CF25AE0033A3C4008E1BB60A0C139C02CBA649A1A3A3C403D7D08A5A2C139C03A2F8B7D1A3A3C40BBC47619A4C139C0C3536957223A3C404E8802D8A4C139C046FC9C70213A3C402D652538ACC139C01B1896351E3A3C40FFCB88E1ABC139C058C5CDCB1D3A3C40EBD795ABAFC139C068679C301A3A3C401008F56EAFC139C01F6CA0AD1A3A3C40E36AF070ABC139C01CF25AE0033A3C403274511BA9C139C0EA92E736043A3C40B3916C66A6C139C017CD5DDDF5393C407DD75003A5C139C08EFDC7CDF6393C4097CBD6AB9DC139C0	95	42	42	South Campus Building 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
96	0106000020E61000000100000001030000000100000005000000511B152BF5393C409F8BB6BDB8C139C02FEC110E1E3A3C4055C32B2ABDC139C0926F9D0F1D3A3C40E57B2AEEC5C139C0DBA00033F4393C40E470FB0CC1C139C0511B152BF5393C409F8BB6BDB8C139C0	96	43	43	South Campus Building 3	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
97	0106000020E61000000100000001030000000100000005000000122BC37C5B3A3C40B912A3BCABC139C0EA6ABF636C3A3C40C39A9B96ADC139C00AF9588D6B3A3C4000EA0D72B4C139C0280466585A3A3C40537D1598B2C139C0122BC37C5B3A3C40B912A3BCABC139C0	97	44	44	South Campus Building 8	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
98	0106000020E6100000010000000103000000010000000D000000D6424243323A3C40503A873CA6C139C0B6EFA110393A3C40CCD08306A7C139C0B04E0EE9383A3C40217CCA17A8C139C0B36277CB403A3C40401A6C05A9C139C0116F6D0D413A3C40F8FD1795A7C139C0B2D54C86483A3C401C9DB982A8C139C0FC5DF429483A3C401132C075AAC139C08FE1182C4F3A3C408027257BABC139C09823407B4F3A3C404C1D762EAAC139C00CE1EE8F553A3C40DBA2CDD4AAC139C03A44B46D543A3C40B3536ED0B2C139C0A3F87DB7303A3C4028F1AE67AEC139C0D6424243323A3C40503A873CA6C139C0	98	45	45	South Camus Building 6	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
99	0106000020E61000000100000001030000000100000005000000766A4413353A3C4054E844EFAEC139C0B60C5C45373A3C40FA62A228AFC139C0A3ED6EC0363A3C4086E6320CB3C139C007815A94343A3C403C0423B8B2C139C0766A4413353A3C4054E844EFAEC139C0	99	46	46	South Campus Builing 6	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
100	0106000020E6100000010000000103000000010000000D000000C7AAF7103F3A3C40CB42143DB3C139C0F1378F91463A3C40792DE9D5B3C139C096CD4599463A3C40E21F688FB2C139C066CCA18E483A3C40F42624B2B2C139C09CB832B5483A3C407546BE5DB1C139C0228C219B4A3A3C405DED439CB1C139C0A17423654A3A3C40AFA34A21B3C139C0972034984C3A3C40F680A774B3C139C0CDDDC8524C3A3C40D97A7E9AB6C139C04C19B91B523A3C405D8CB202B7C139C002BF4FA0513A3C4077F69F22BBC139C022E6449D3E3A3C4070813C4AB9C139C0C7AAF7103F3A3C40CB42143DB3C139C0	100	47	47	South Campus Building 6	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
101	0106000020E610000001000000010300000001000000050000009DE53D39173A3C40B9FA345EAFC139C0411921733B3A3C4018688D90B3C139C0DC748A7D3A3A3C40F13D31A4BAC139C01693432C163A3C4097AB5067B6C139C09DE53D39173A3C40B9FA345EAFC139C0	101	48	48	South Campus Builing 4	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
102	0106000020E61000000100000001030000000100000005000000EEB783784F3A3C401F7158D1C0C139C017CDE92D6A3A3C403D41E6B7C3C139C07514F8E6683A3C40491056C5CFC139C03AE7EC064E3A3C4040772305CCC139C0EEB783784F3A3C401F7158D1C0C139C0	102	49	49	South Campus Building 7	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
103	0106000020E61000000100000001030000000100000005000000917348C1353A3C40CDA940D5C0C139C030C858214F3A3C407421B180C3C139C04E72E2064E3A3C4065F47303CCC139C08BC456C4343A3C4099411AE7C8C139C0917348C1353A3C40CDA940D5C0C139C0	103	50	50	South Campus Building 5	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
104	0106000020E6100000010000000103000000010000000D000000BBFD6775723A3C4035E90473C5C139C020C441A1993A3C40EC16CE65CAC139C0506FE682993A3C402B34476DCCC139C04E5AC9CF973A3C4094466476CCC139C004CFC323973A3C4045AB6129D1C139C01985EA87943A3C40C2F63ECED0C139C06E6B03E6933A3C4018024EE6D4C139C05CC70309713A3C40BB30B944D1C139C063CA9931713A3C40ED5974FDCEC139C094839CDF6D3A3C4036C88BB4CEC139C04D0DB4E66E3A3C40E2AEBE4DC6C139C0BBFD6775723A3C40ED14E7FAC6C139C0BBFD6775723A3C4035E90473C5C139C0	104	51	51	The Javette UP Art Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
105	0106000020E6100000010000000103000000010000001B000000EF9C0A77753A3C4007DB8AE3ACC139C041C65C50753A3C40AC23C70EA9C139C0B727EAC96E3A3C4062D6699D92C139C0E6D6C993783A3C40D756177885C139C0AE86F577823A3C409D778467AAC139C082CF7AC1833A3C408742C94DAEC139C0DC00B2DC853A3C409F5D1607B2C139C0CAA302638A3A3C404C7FB9F5B3C139C0777678858E3A3C40AB9F2A9BB1C139C0A4DDB6EF933A3C406D1D2ED0B3C139C030D137A1943A3C40A33FB8FFB5C139C022B18893923A3C4022D68A7DBAC139C0DBB3BE4B8B3A3C40B37386D7B9C139C0A6E339608B3A3C40FED26CDBB8C139C0C68277A4893A3C4078D9C997B8C139C0FCADD96D893A3C40E228C6D9BAC139C0A895F2D0903A3C40FFB6168CBBC139C0FBCBA1238F3A3C40B135D645C8C139C0E4F69042873A3C40D9E1FE6DC7C139C031C1C71E873A3C40BB990C78C6C139C059E7332B723A3C40A46BDB45C4C139C0FD0AF7FC713A3C40B1C6B4F8C2C139C033017817703A3C407B914BEEC2C139C0A2D0924F713A3C40197E528CC1C139C09E2EBACE713A3C404BE9E44AB9C139C098A657CB733A3C4039B37B40B9C139C0EF9C0A77753A3C4007DB8AE3ACC139C0	105	52	52	The Javette-UP Art Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
106	0106000020E6100000010000000103000000010000000500000096DDCB19AE3A3C4011F7C5F6C0C139C038049F3DBE3A3C401F8E3250C3C139C0268E8772BC3A3C4062AEF4A3CDC139C0E447876AAC3A3C40A7A9A67CCBC139C096DDCB19AE3A3C4011F7C5F6C0C139C0	106	53	53	South Campus Building 9	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
107	0106000020E610000001000000010300000001000000050000008D2BE22B033B3C40327211C188C139C09BC561D6093B3C40082926E77EC139C0849DF5B7183B3C4094ACC42587C139C0A4F11400123B3C40A0850DF190C139C08D2BE22B033B3C40327211C188C139C0	107	54	54	Kya Rosa	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
108	0106000020E6100000010000000103000000010000001A0000000D9E92E5DA3A3C40A106A4AB7BC139C0B20627C1E53A3C40BEB69F837CC139C0CEE70BF2E43A3C40368A83FF81C139C006CA7A75E93A3C4001A5979C82C139C022A1AECCE93A3C40F1BD920B7FC139C01F136E50F03A3C40A4DCA6A87FC139C01EC153EEEF3A3C40FEB16D3786C139C07AAAD974E53A3C40EE54436985C139C05D25C07FE53A3C40B51991E083C139C0D095F18FE43A3C40B51991E083C139C07CB48A4EE43A3C40DA17225487C139C0272FEF48E33A3C40DA17225487C139C0ED24BC5EE33A3C405576914988C139C0C267A078FD3A3C405DBBE1BD8AC139C08A0B532CFD3A3C40850A5A6C8EC139C09A3C7FA8FC3A3C40FF2DE58293C139C0BF5C63E9F83A3C408DB5615493C139C0E9F2A1DAF83A3C402CFFF99994C139C0803514AFF53A3C40BCECA82F94C139C0803514AFF53A3C40416E21D692C139C05E490B71DE3A3C402CC6167E90C139C09279EBE2DE3A3C4097E1BEAF8CC139C06711FB00DA3A3C401A131E4A8CC139C0E4186440DA3A3C405BE158B888C139C0C5F8A130D93A3C407F06DF9F88C139C00D9E92E5DA3A3C40A106A4AB7BC139C0	108	55	55	Communication and Pathology Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
109	0106000020E610000001000000010300000001000000070000004D7BB3CC9A3A3C40B71AE3DC81C139C06CC88F16A53A3C400A933EA082C139C083E8FCC0A53A3C4008E2650186C139C08CA16812C63A3C409AA0D30E89C139C0511E28D5C33A3C408922099C9AC139C01ED57951983A3C403913877796C139C04D7BB3CC9A3A3C40B71AE3DC81C139C0	109	56	56	Building Sciene Building: Boukunde	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
110	0106000020E6100000010000000103000000010000000D00000039B11F44883A3C402F7665E665C139C0C03DC668923A3C405561B7A46AC139C0F7685DAF883A3C406AAE995F7FC139C07A20237E9A3A3C403215475782C139C0DA6B4FB5993A3C40D926AB7F87C139C05F8D02A1953A3C4052B0241387C139C035297685943A3C40443E7B8A8FC139C027880BAE843A3C402D4877818DC139C049F84AEC843A3C405A5AB50B8CC139C06494F8957E3A3C40A1B6C7238BC139C051185D367B3A3C40FD7ED94A8FC139C0B6EC5E93783A3C40093D9C7D85C139C039B11F44883A3C402F7665E665C139C0	110	57	57	Art Square	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
111	0106000020E61000000100000001030000000100000015000000340E08644B3A3C4075B4BBCA70C139C02032FB48673A3C40336DB72374C139C0E9792CB5663A3C40E55AB1757CC139C03771C6275E3A3C40F1F201AE7BC139C0143E65CB5D3A3C40E36D8AA97DC139C0D4CC8626613A3C40E519B4157EC139C0368562D3603A3C4069795D6681C139C0D79A80795A3A3C407AF847C880C139C0E1A82B6B5A3A3C40551E6A9F81C139C0853E3EF15F3A3C40840D672D82C139C056BE28B45F3A3C40169D93AD85C139C0619A62F8673A3C40020DA17B86C139C093E6A044673A3C40B7A1F8D58CC139C0F6705F44583A3C40BE5FA95E8BC139C00C6EF5EF583A3C402F5C0F3C83C139C08C2C912E573A3C40F0A1FB2583C139C05C09DCDC563A3C40EFB22AF785C139C07613BB05463A3C4073AA279B84C139C09B3EB604483A3C40C4D41AB177C139C0D57DD5374A3A3C4010D2248277C139C0340E08644B3A3C4075B4BBCA70C139C0	111	58	58	Visual Arts Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
112	0106000020E6100000010000000103000000010000009C00000050E72B56E8393C4066BF5A995FC139C002F66E57F7393C401B99632862C139C014099F10F8393C4088A76ACD5EC139C0DB5EBA24013A3C407861AD2B60C139C0F9EDDFBE003A3C4072BB06C163C139C04A324E38073A3C4012ACDA9964C139C0EBEDA291063A3C40390A03EF68C139C07A3DA6E0FF393C408D918F5068C139C01EF9FA39FF393C40C4F609956CC139C08C9B816FE2393C40965AB4D26AC139C08C9B816FE2393C40965AB4D26AC139C07FAE176AE2393C40BA561D876BC139C079D9905DDD393C404F5D4B916BC139C0A8385E51D8393C4007942DB06BC139C0D0B0D445D3393C4076F3C1E36BC139C0A5AB458DD2393C400B4FE4096CC139C0575562D5D1393C40FE8723336CC139C03E1E381ED1393C40A19A7C5F6CC139C02C69D467D0393C403F49EC8E6CC139C0728A44B2CF393C405D1C6FC16CC139C0E3C695FDCE393C40F96201F76CC139C0DF52D549CE393C40D1329F2F6DC139C05F511097CD393C40A768446B6DC139C0F7D253E5CC393C4096A8ECA96DC139C0E9D4AC34CC393C405E5E93EB6DC139C02F402885CB393C40BBBD33306EC139C088E8D2D6CA393C40C0C2C8776EC139C08D8BB929CA393C4034324DC26EC139C0BCCFE87DC9393C40F399BB0F6FC139C090436DD3C8393C4055510E606FC139C090436DD3C8393C4055510E606FC139C014B91BDEC7393C40B1AD154D6EC139C000C5482CC9393C405DD268326DC139C037BB9675CA393C403BED12126CC139C04511EDB9CB393C40267B29EC6AC139C0789B33F9CC393C405A63C2C069C139C0B28E5233CE393C40D6F5F38F68C139C029823268CF393C40AEE9D45967C139C02A71BC97D0393C405D5B7C1E66C139C0D0BCD9C1D1393C400ACB01DE64C139C0B02D74E6D2393C40C91A7D9863C139C085F57505D4393C40D48C064E62C139C0CEB0C91ED5393C40BAC1B6FE60C139C095A0BD26D6393C40E86993845FC139C0F6478A28D7393C40465237065EC139C0BE5E1E24D8393C40A71CBC835CC139C07C076919D9393C409BB13BFD5AC139C0A4D05908DA393C40B03ED07259C139C0A9B5E0F0DA393C40B23494E457C139C00D20EED2DB393C40E345A25256C139C071E872AEDC393C40346415BD54C139C094576083DD393C4074BF082453C139C092D95BC8DD393C40B87ABE3853C139C048408409E3393C40F718F1D654C139C0DD031BFEE2393C408347630355C139C0035476F3E2393C401D1F063055C139C0F4FF96E9E2393C40A83AD65C55C139C0EAC77DE0E2393C409831D08955C139C00F5D2BD8E2393C402F98F0B655C139C06B61A0D0E2393C40C5FF33E455C139C0DC67DDC9E2393C4007F7961156C139C00BF4E2C3E2393C403C0A163F56C139C05E7AB1BEE2393C4088C3AD6C56C139C0F55F49BAE2393C402EAB5A9A56C139C09CFAAAB6E2393C40D64719C856C139C0C990D6B3E2393C40CE1EE6F556C139C09559CCB1E2393C4050B4BD2357C139C0B97C8CB0E2393C40C48B9C5157C139C0881217B0E2393C4005287F7F57C139C0F0236CB0E2393C40A50B62AD57C139C07AAA8BB1E2393C402FB941DB57C139C0469075B3E2393C406FB31A0958C139C013B029B6E2393C40B17DE93658C139C03BD5A7B9E2393C40099CAA6458C139C0BDBBEFBDE2393C4095935A9258C139C03E1001C3E2393C40C0EAF5BF58C139C01270DBC8E2393C40892979ED58C139C043697ECFE2393C40C0D9E01A59C139C0977AE9D6E2393C405187294859C139C09E131CDFE2393C4084C04F7559C139C0B99415E8E2393C403D1650A259C139C02B4FD5F1E2393C40441C27CF59C139C020855AFCE2393C408569D1FB59C139C0C269A407E3393C4052984B285AC139C04321B213E3393C40A84692545AC139C0F1C08220E3393C406B16A2805AC139C07CEA1726E3393C4078CC709C5AC139C0274C282CE3393C40A9A825B85AC139C0726EB332E3393C400889BED35AC139C06DD0B839E3393C40C64D39EF5AC139C0BFE73741E3393C4067D9930A5BC139C0AF203049E3393C40E810CC255BC139C033DEA051E3393C40EBDBDF405BC139C0F979895AE3393C40E024CD5B5BC139C07544E963E3393C402ED991765BC139C0EE84BF6DE3393C405BE92B915BC139C08F790B78E3393C40364999AB5BC139C07157CC82E3393C40FDEFD7C55BC139C0AF4A018EE3393C408AD8E5DF5BC139C07376A999E3393C407401C1F95BC139C00BF5C3A5E3393C403B6D67135CC139C0F5D74FB2E3393C407022D72C5CC139C0F6274CBFE3393C40D72B0E465CC139C02EE5B7CCE3393C4094980A5F5CC139C0250792DAE3393C404C7CCA775CC139C0E77CD9E8E3393C404DEF4B905CC139C0152D8DF7E3393C40B30E8DA85CC139C0F9F5AB06E4393C4090FC8BC05CC139C0A3AD3416E4393C400BE046D85CC139C0F8212626E4393C408AE5BBEF5CC139C0CE187F36E4393C40D33EE9065DC139C004503E47E4393C403023CD1D5DC139C0997D6258E4393C4094CF65345DC139C0C94FEA69E4393C40BA86B14A5DC139C0216DD47BE4393C404B91AE605DC139C09F741F8EE4393C40FE3D5B765DC139C0CCFDC9A0E4393C40B9E1B58B5DC139C0D698D2B3E4393C40B3D7BCA05DC139C0ADCE37C7E4393C4094816EB55DC139C02221F8DAE4393C409547C9C95DC139C0FF0A12EFE4393C409F98CBDD5DC139C02D008403E5393C4069EA73F15DC139C0CC6D4C18E5393C4099B9C0045EC139C053BA692DE5393C40E089B0175EC139C0B245DA42E5393C4016E6412A5EC139C071699C58E5393C405960733C5EC139C0CE78AE6EE5393C402A92434E5EC139C0E4C00E85E5393C40851CB15F5EC139C0C488BB9BE5393C40FFA7BA705EC139C09F11B3B2E5393C40DFE45E815EC139C0E496F3C9E5393C40378B9C915EC139C0634E7BE1E5393C40015B72A15EC139C0726848F9E5393C40351CDFB05EC139C00F105911E6393C40DE9EE1BF5EC139C0066BAB29E6393C4038BB78CE5EC139C0149A3D42E6393C40C151A3DC5EC139C00AB90D5BE6393C40544B60EA5EC139C0F9DE1974E6393C403A99AEF75EC139C04F1E608DE6393C4040358D045FC139C00285DEA6E6393C40CF21FB105FC139C0B81C93C0E6393C40F969F71C5FC139C0E9EA7BDAE6393C40932181285FC139C007F196F4E6393C403F6597335FC139C0AA2CE20EE7393C40865A393E5FC139C0B0975B29E7393C40E42F66485FC139C06D280144E7393C40D71C1D525FC139C0CBD1D05EE7393C40F2615D5B5FC139C07983C879E7393C40EB4826645FC139C0122AE694E7393C40A624776C5FC139C041AF27B0E7393C4045514F745FC139C0F3F98ACBE7393C403634AE7B5FC139C079EE0DE7E7393C403A3C93825FC139C0B46EAE02E8393C4076E1FD885FC139C03F5A6A1EE8393C407AA5ED8E5FC139C09A8E3F3AE8393C40491362945FC139C050E72B56E8393C4066BF5A995FC139C0	112	59	59	Administration Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
113	0106000020E610000001000000010300000001000000090000003F9C3424F8393C40693AF02755C139C01F6C3332283A3C40E3996FD05CC139C0CBEB9C72283A3C40A25CDA655BC139C0103309A23B3A3C40D96D01015EC139C057B526DF393A3C400C4454D567C139C03A6825372B3A3C409496FD9B6AC139C02EB00C0D253A3C4045B1639364C139C0592CFB01F7393C4022EEB6BE5DC139C03F9C3424F8393C40693AF02755C139C0	113	60	60	Administration Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
114	0106000020E6100000010000000103000000010000007B010000AB13BB7ACB3B3C4021B8A7F53DC139C0DDB002D9CF3B3C409C793E603FC139C0BA23FDC5CF3B3C40E9957E673FC139C049836F9ADD3B3C400EE5DB0E43C139C052F23268DA3B3C40F37B0C044FC139C0F10B60ABD93B3C401F1D30BD4EC139C0F10B60ABD93B3C401F1D30BD4EC139C0B2E7D0DED83B3C405B66867450C139C081509B53D03B3C401698FB594EC139C01A199B3CCE3B3C40CD53A4FE54C139C00C53745BC33B3C40D30150AC51C139C0FE928333C53B3C40F29355DB4CC139C0B09F3885C83B3C40AAFF9AE84DC139C0474AA2FACA3B3C40A713FCFD45C139C0138C09F1CA3B3C40FB35F21046C139C0998A1CE7CA3B3C4081C5BC2346C139C0A00BDCDCCA3B3C40CE4B5A3646C139C06DDB48D2CA3B3C40F655C94846C139C0B6CC63C7CA3B3C40B074085B46C139C08EB82DBCCA3B3C406A3C166D46C139C0597EA7B0CA3B3C406A45F17E46C139C0B603D2A4CA3B3C40E92B989046C139C07134AE98CA3B3C40309009A246C139C06D023D8CCA3B3C40B11644B346C139C094657F7FCA3B3C40236846C446C139C0C15B7672CA3B3C409F310FD546C139C0B0E82265CA3B3C40B4249DE546C139C0E7158657CA3B3C408BF7EEF546C139C0A1F2A049CA3B3C40F664030647C139C0BB93743BCA3B3C40922CD91547C139C09D13022DCA3B3C40DA126F2547C139C024924A1ECA3B3C4042E1C33447C139C08C344F0FCA3B3C405166D64347C139C05A251100CA3B3C40B475A55247C139C0439491F0C93B3C405AE82F6147C139C016B6D1E0C93B3C40889C746F47C139C0A1C4D2D0C93B3C40F375727D47C139C09EFE95C0C93B3C40CF5D288B47C139C095A71CB0C93B3C40F042959847C139C0C507689FC93B3C40D219B8A547C139C00B6C798EC93B3C40BADC8FB247C139C0C625527DC93B3C40C38B1BBF47C139C0C08AF36BC93B3C40F22C5ACB47C139C00FF55E5AC93B3C404DCC4AD747C139C0FFC29548C93B3C40EE7BECE247C139C0F4569936C93B3C4011543EEE47C139C04C176B24C93B3C402A733FF947C139C0496E0C12C93B3C40F5FDEE0348C139C0EFC97EFFC83B3C40881F4C0E48C139C0EE9BC3ECC83B3C406409561848C139C07C59DCD9C83B3C4081F30B2248C139C0427BCAC6C83B3C40651C6D2B48C139C0377D8FB3C83B3C402AC9783448C139C087DE2CA0C83B3C4096452E3D48C139C07321A48CC83B3C4021E48C4548C139C033CBF678C83B3C4007FE934D48C139C0DA632665C83B3C4055F3425548C139C034763451C83B3C40F02A995C48C139C0A98F223DC83B3C40AB12966348C139C01F40F228C83B3C40491F396A48C139C0DA19A514C83B3C408CCC817048C139C05BB13C00C83B3C403F9D6F7648C139C0449DBAEBC73B3C403E1B027C48C139C0367620D7C73B3C4084D7388148C139C0B0D66FC2C73B3C402C6A138648C139C0F45AAAADC73B3C408272918A48C139C0E1A0D198C73B3C400197B28E48C139C0D647E783C73B3C406385769248C139C092F0EC6EC73B3C40A0F2DC9548C139C0113DE459C73B3C40FA9AE59848C139C06ED0CE44C73B3C40FD41909B48C139C0C34EAE2FC73B3C4088B2DC9D48C139C0055D841AC73B3C40CDBECA9F48C139C0E5A05205C73B3C4059405AA148C139C0AFC01AF0C63B3C4013188BA248C139C02C63DEDAC63B3C40412E5DA348C139C07B2F9FC5C63B3C408A72D0A348C139C0F5CC5EB0C63B3C40F4DBE4A348C139C00CE31E9BC63B3C40EA689AA348C139C02719E185C63B3C40351FF1A248C139C08116A770C63B3C40050CE9A148C139C00E82725BC63B3C40E54382A048C139C051024546C63B3C40C3E2BC9E48C139C0453D2031C63B3C40E90B999C48C139C032D8051CC63B3C40FAE9169A48C139C09677F706C63B3C40F1AE369748C139C0FBBEF6F1C53B3C401C94F89348C139C0DE5005DDC53B3C4016DA5C9048C139C08BCE24C8C53B3C40C5C8638C48C139C0FBD756B3C53B3C4053AF0D8848C139C0B80B9D9EC53B3C4025E45A8348C139C0B906F989C53B3C40DBC44B7E48C139C042646C75C53B3C4041B6E07848C139C0C6BDF860C53B3C404D241A7348C139C0C7AA9F4CC53B3C401382F86C48C139C0B5C06238C53B3C40C0497C6648C139C0CE924324C53B3C408AFCA55F48C139C000B24310C53B3C40AE22765848C139C0CBAC64FCC43B3C405E4BED5048C139C01C0FA8E8C43B3C40BB0C0C4948C139C038620FD5C43B3C40C703D34048C139C0932C9CC1C43B3C4059D4423848C139C0BAF14FAEC43B3C4011295C2F48C139C030322C9BC43B3C4049B31F2648C139C0506B3288C43B3C400B2B8E1C48C139C033176475C43B3C40FD4EA81248C139C090ACC262C43B3C4056E46E0848C139C09D9E4F50C43B3C40D1B6E2FD47C139C0F75C0C3EC43B3C40959804F347C139C08153FA2BC43B3C402D62D5E747C139C049EA1A1AC43B3C4073F255DC47C139C06D856F08C43B3C40802E87D047C139C0FF84F9F6C33B3C4099016AC447C139C0E844BAE5C33B3C401D5DFFB747C139C0CE1CB3D4C33B3C40733848AB47C139C0FC5FE5C3C33B3C40F790459E47C139C0415D52B3C33B3C40E469F89047C139C0DD5EFBA2C33B3C4043CC618347C139C062AAE192C33B3C40D3C6827547C139C09E800683C33B3C40F86D5C6747C139C0801D6B73C33B3C40A1DBEF5847C139C002B81064C33B3C40362F3E4A47C139C00D82F854C33B3C407E8D483B47C139C064A82346C33B3C408B20102C47C139C08D529337C33B3C40A317961C47C139C0B6A24829C33B3C4026A7DB0C47C139C0A4B5441BC33B3C407708E2FC46C139C099A2880DC33B3C40E579AAEC46C139C0407B1500C33B3C40903E36DC46C139C0954BECF2C23B3C40529E86CB46C139C0D4190EE6C23B3C40A3E59CBA46C139C064E67BD9C23B3C4082657AA946C139C0BEAB36CDC23B3C405973209846C139C0615E3FC1C23B3C40E268908646C139C0B9EC96B5C23B3C400EA4CB7446C139C0113F3EAAC23B3C40E886D36246C139C07B37369FC23B3C407977A95046C139C0C6B17F94C23B3C40B0DF4E3E46C139C067831B8AC23B3C40402DC52B46C139C06A7B0A80C23B3C4088D10D1946C139C063624D76C23B3C4075412A0646C139C05DFAE46CC23B3C4065F51BF345C139C0CDFED163C23B3C400769E4DF45C139C08124155BC23B3C40441B85CC45C139C09119AF52C23B3C401A8EFFB845C139C05685A04AC23B3C40824655A545C139C05908EA42C23B3C4052CC879145C139C0493C8C3BC23B3C401AAA987D45C139C0EBB38734C23B3C400D6D896945C139C015FBDC2DC23B3C40DAA45B5545C139C09D968C27C23B3C4094E3104145C139C052049721C23B3C408BBDAA2C45C139C0F1BAFC1BC23B3C4035C92A1845C139C01C2ABE16C23B3C40089F920345C139C053BADB11C23B3C405DD9E3EE44C139C0E9CC550DC23B3C404E1420DA44C139C0FDBB2C09C23B3C409BED48C544C139C076DA6005C23B3C40810460B044C139C0F773F201C23B3C40A4F9669B44C139C0E0CCE1FEC13B3C40E66E5F8644C139C042222FFCC13B3C404B074B7144C139C0E0A9DAF9C13B3C40D7662B5C44C139C02692E4F7C13B3C407032024744C139C028024DF6C13B3C40B60FD13144C139C0A01914F5C13B3C40EBA4991C44C139C0E7F039F4C13B3C40CE985D0744C139C0F998BEF3C13B3C4077921EF243C139C0701BA2F3C13B3C403D39DEDC43C139C0837AE4F3C13B3C4090349EC743C139C007B185F4C13B3C40D92B60B243C139C071B285F5C13B3C4059C6259D43C139C0D36AE4F6C13B3C400AABF08743C139C0E1BEA1F8C13B3C407C80C27243C139C0F38BBDFAC13B3C40B5EC9C5D43C139C004A837FDC13B3C400F95814843C139C0B9E10F00C23B3C40181E723343C139C066004603C23B3C40722B701E43C139C00CC4D906C23B3C40B35F7D0943C139C065E5CA0AC23B3C40405C9BF442C139C0E615190FC23B3C4032C1CBDF42C139C0C6FFC313C23B3C40322D10CB42C139C00346CB18C23B3C405C3D6AB642C139C06D842E1EC23B3C40198DDBA142C139C0AA4FED23C23B3C4006B6658D42C139C04035072AC23B3C40D04F0A7942C139C09EBB7B30C23B3C4015F0CA6442C139C09CA0B535C23B3C4073C21A5042C139C03DA24B3BC23B3C40C4B4823B42C139C045513D41C23B3C401E61042742C139C059378A47C23B3C40955FA11242C139C002D7314EC23B3C4020465BFE41C139C0BCAB3355C23B3C4075A833EA41C139C0FF298F5CC23B3C40E8172CD641C139C049BF4364C23B3C40542346C241C139C02BD2506CC23B3C40F45683AE41C139C052C2B574C23B3C40453CE59A41C139C098E8717DC23B3C40EE596D8741C139C00C978486C23B3C4098331D7441C139C00319ED8FC23B3C40D949F66041C139C024B3AA99C23B3C400F1AFA4D41C139C079A3BCA3C23B3C40471E2A3B41C139C07C2122AEC23B3C401BCD872841C139C0275EDAB8C23B3C409C99141641C139C00484E4C3C23B3C402DF3D10341C139C03EB73FCFC23B3C406D45C1F140C139C0B415EBDAC23B3C4014F8E3DF40C139C006B7E5E6C23B3C40E06E3BCE40C139C0AAAC2EF3C23B3C407109C9BC40C139C00002C5FFC23B3C4030238EAB40C139C061BCA70CC33B3C4039138C9A40C139C037DBD519C33B3C40392CC48940C139C00D584E27C33B3C4058BC377940C139C0A7261035C33B3C401C0DE86840C139C012351A43C33B3C405463D65840C139C0BF6B6B51C33B3C40FBFE034940C139C094AD0260C33B3C401F1B723940C139C008D8DE6EC33B3C40CBED212A40C139C031C3FE7DC33B3C40EDA7141B40C139C0E241618DC33B3C403E754B0C40C139C0C221059DC33B3C402D7CC7FD3FC139C05F2BE9ACC33B3C40C5DD89EF3FC139C04B220CBDC33B3C4098B593E13FC139C033C56CCDC33B3C40AB19E6D33FC139C0F8CD09DEC33B3C405D1A82C63FC139C0C8F1E1EEC33B3C4052C268B93FC139C037E1F3FFC33B3C4061169BAC3FC139C05B483E11C43B3C407F151AA03FC139C0E8CEBF22C43B3C40A7B8E6933FC139C043187734C43B3C40CEF201883FC139C0A8C36246C43B3C40C9B06C7C3FC139C03C6C8158C43B3C4040D927713FC139C02EA9D16AC43B3C40964C34663FC139C0D30D527DC43B3C40E0E4925B3FC139C0BF290190C43B3C40CC7544513FC139C0E488DDA2C43B3C4095CC49473FC139C0B1B3E5B5C43B3C40F1AFA33D3FC139C02B2F18C9C43B3C4004E052343FC139C00C7D73DCC43B3C404E16582B3FC139C0E11BF6EFC43B3C409D05B4223FC139C02A879E03C53B3C40045A671A3FC139C076376B17C53B3C40C5B872123FC139C07FA25A2BC53B3C404DC0D60A3FC139C04E3B6B3FC53B3C40200894033FC139C058729B53C53B3C40D320ABFC3EC139C099B5E967C53B3C40FF931CF63EC139C0BB70547CC53B3C4033E4E8EF3EC139C02D0DDA90C53B3C40F08C10EA3EC139C04AF278A5C53B3C40990294E43EC139C073852FBAC53B3C406EB273DF3EC139C0332AFCCEC53B3C408502B0DA3EC139C05E42DDE3C53B3C40BC5149D63EC139C02F2ED1F8C53B3C40B7F73FD23EC139C06B4CD60DC63B3C40D74494CE3EC139C082FAEA22C63B3C40348246CB3EC139C0AA940D38C63B3C4097F156C83EC139C009763C4DC63B3C4077CDC5C53EC139C0CEF87562C63B3C40F14893C33EC139C05276B877C63B3C40C58FBFC13EC139C03F47028DC63B3C4057C64AC03EC139C0ACC351A2C63B3C40A40935BF3EC139C03F43A5B7C63B3C40496F7EBE3EC139C04C1DFBCCC63B3C40780527BE3EC139C0FBA851E2C63B3C40FED22EBE3EC139C0663DA7F7C63B3C4041D795BE3EC139C0B831FA0CC73B3C403C0A5CBF3EC139C052DD4822C73B3C40865C81C03EC139C0EB979137C73B3C404CB705C23EC139C0AEB9D24CC73B3C405BFCE8C33EC139C05F9B0A62C73B3C401A062BC63EC139C079963777C73B3C4093A7CBC83EC139C05305588CC73B3C4075ACCACB3EC139C039436AA1C73B3C4015D927CF3EC139C096AC6CB6C73B3C4077EAE2D23EC139C00E9F5DCBC73B3C405296FBD63EC139C0A2793BE0C73B3C40128B71DB3EC139C0CD9C04F5C73B3C40E66F44E03EC139C0A96AB709C83B3C40BDE473E53EC139C00B47521EC83B3C405782FFEA3EC139C0A697D332C83B3C4048DAE6F03EC139C02AC43947C83B3C40FF7629F73EC139C06136835BC83B3C40D5DBC6FD3EC139C0535AAE6FC83B3C401285BE043FC139C0649EB983C83B3C40F6E70F0C3FC139C07173A397C83B3C40CB72BA133FC139C0F34C6AABC83B3C40E78CBD1B3FC139C019A10CBFC83B3C40C19618243FC139C0EAE888D2C83B3C40F5E9CA2C3FC139C064A0DDE5C83B3C4057D9D3353FC139C0984609F9C83B3C40FDB0323F3FC139C0C95D0A0CC93B3C4051B6E6483FC139C0886BDF1EC93B3C401A28EF523FC139C0D5F88631C93B3C40903E4B5D3FC139C03992FF43C93B3C40662BFA673FC139C0E4C74756C93B3C40E219FB723FC139C0CA2D5E68C93B3C40E62E4D7E3FC139C0BE5B417AC93B3C400589EF893FC139C090EDEF8BC93B3C409440E1953FC139C02783689DC93B3C40BB6721A23FC139C09CC0A9AEC93B3C40870AAFAE3FC139C0594EB2BFC93B3C40012F89BB3FC139C02ED980D0C93B3C403CD5AEC83FC139C06F1214E1C93B3C406DF71ED63FC139C00DB06AF1C93B3C40FC89D8E33FC139C0B16C8301CA3B3C409D7BDAF13FC139C0D3075D11CA3B3C4061B5230040C139C0D545F620CA3B3C40CF1AB30E40C139C019F04D30CA3B3C40F689871D40C139C01ED5623FCA3B3C408ADB9F2C40C139C090C8334ECA3B3C40F5E2FA3B40C139C068A3BF5CCA3B3C40706E974B40C139C0FE43056BCA3B3C401E47745B40C139C01F8E0379CA3B3C401E31906B40C139C0256BB986CA3B3C40ABEBE97B40C139C00DCA2594CA3B3C402F31808C40C139C08C9F47A1CA3B3C405EB7519D40C139C021E61DAECA3B3C40502F5DAE40C139C02E9EA7BACA3B3C409D45A1BF40C139C007CEE3C6CA3B3C4075A21CD140C139C00A82D1D2CA3B3C40B9E9CDE240C139C0B0CC6FDECA3B3C401CBBB3F440C139C09CC6BDE9CA3B3C4038B2CC0641C139C0B58EBAF4CA3B3C40AD66171941C139C0304A65FFCA3B3C403E6C922B41C139C0A324BD09CB3B3C40EA523C3E41C139C01950C113CB3B3C400CA7135141C139C01E05711DCB3B3C4075F1166441C139C0CF82CB26CB3B3C408DB7447741C139C0EC0ED02FCB3B3C406A7B9B8A41C139C0E2F57D38CB3B3C40F7BB199E41C139C0DE8AD440CB3B3C4007F5BDB141C139C0D627D348CB3B3C407E9F86C541C139C0972D7950CB3B3C40663172D941C139C0D503C657CB3B3C40161E7FED41C139C03019B95ECB3B3C404AD6AB0142C139C047E35165CB3B3C4046C8F61542C139C0BDDE8F6BCB3B3C40F35F5E2A42C139C0468F7271CB3B3C400107E13E42C139C0AF7FF976CB3B3C4005257D5342C139C0E841247CCB3B3C40971F316842C139C00E6FF280CB3B3C40775AFB7C42C139C070A76385CB3B3C40A737DA9142C139C099927789CB3B3C409017CCA642C139C056DF2D8DCB3B3C402059CFBB42C139C0BC438690CB3B3C40EA59E2D042C139C02D7D8093CB3B3C40487603E642C139C05F501C96CB3B3C407C0931FB42C139C05F895998CB3B3C40CF6D691043C139C099FB379ACB3B3C40B1FCAA2543C139C0D381B79BCB3B3C40DF0EF43A43C139C03AFED79CCB3B3C407DFC425043C139C05C5A999DCB3B3C403D1D966543C139C03087FB9DCB3B3C407CC8EB7A43C139C0117DFE9DCB3B3C406455429043C139C0C63BA29DCB3B3C400E1B98A543C139C07CCAE69CCB3B3C40A470EBBA43C139C0C637CC9BCB3B3C407DAD3AD043C139C0A099529ACB3B3C40452984E543C139C0690D7A98CB3B3C40193CC6FA43C139C0E3B74296CB3B3C40A93EFF0F44C139C02FC5AC93CB3B3C405C8A2D2544C139C0CB68B890CB3B3C406B794F3A44C139C08BDD658DCB3B3C400767634F44C139C09965B589CB3B3C4079AF676444C139C06C4AA785CB3B3C403FB05A7944C139C0C3DC3B81CB3B3C4030C83A8E44C139C0A074737CCB3B3C409D5706A344C139C040714E77CB3B3C406FC0BBB744C139C01639CD71CB3B3C40466659CC44C139C0BE39F06BCB3B3C409FAEDDE044C139C0FBE7B765CB3B3C40EC0047F544C139C0A6BF245FCB3B3C40BCC6930945C139C0AE433758CB3B3C40D36BC21D45C139C004FEEF50CB3B3C404F5ED13145C139C0997F4F49CB3B3C40C50EBF4545C139C0594CF5C2CC3B3C40C0F66B5840C139C0594CF5C2CC3B3C40C0F66B5840C139C0680CE6EACA3B3C401EE92EA03FC139C0680CE6EACA3B3C401EE92EA03FC139C0AB13BB7ACB3B3C4021B8A7F53DC139C0	114	61	61	Conference Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
\.


                                                                                                                                                                                                                                                                                                 4274.dat                                                                                            0000600 0004000 0002000 00000000005 14511212744 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4522.dat                                                                                            0000600 0004000 0002000 00000003525 14511212744 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E610000068A23AE31C3B3C40FE58D29B9BC139C0	1	2	Student Gate (Left of Main Entrance)	t	f
2	0101000020E610000036BEC6CE263B3C40375BFA7F85C139C0	2	4	Main Entrance 	t	t
3	0101000020E6100000057548D33B3B3C40CA5E13AC84C139C0	3	6	Main Entrance Right Student Gate	t	f
4	0101000020E61000008CC1B266483C3C4051FCC903ABC139C0	4	8	Nerina Student Gate	t	f
5	0101000020E6100000490743725D3C3C408F5FCE9F94C139C0	5	10	Lunnon Road Entrance 	t	t
6	0101000020E6100000B9C2B5393A3C3C401609330C3BC139C0	6	12	Duxbury & Hilda Street Entrance (Entrance 10)	t	f
7	0101000020E6100000DF19B6F7C73B3C40185EF607FAC039C0	7	14	South Street Entrance (House Nala & House Khutso)	t	f
8	0101000020E6100000597FF0468B3B3C4050B78175FBC039C0	8	16	Centenary Entrance 	t	t
9	0101000020E610000010B17FA6773B3C404490FFD9C1C039C0	9	18	Docendo Day House Entrance 	t	f
10	0101000020E61000008FD1F01C803B3C40BCABC3769CC039C0	10	20	Prospect Street Entrance 	t	t
11	0101000020E6100000682BE56B853B3C401DFFAAC88DC039C0	11	22	Prospect Street Entrance 2	t	f
12	0101000020E6100000D1F8320F683B3C4083F1FC3769C039C0	12	24	H17 Parking Entrance 	t	f
13	0101000020E6100000EC530A913E3B3C40D88C5FBA41C039C0	13	26	Burnett Street Entrance	t	f
14	0101000020E6100000E314E31D5C3A3C40808868CFC0C039C0	14	28	Mining Industry Entrance 	t	f
15	0101000020E6100000E59BD1B01A3A3C40009AD3A52DC139C0	15	30	University Road Entrance 	t	t
16	0101000020E61000003E2B536CD1393C40364F1A937FC139C0	16	32	Administration Building Entrance 	t	f
17	0101000020E61000009C36ADF7513A3C40F87AD7C48FC139C0	17	34	Visual Arts Building Entrance (Lynwood Road)	t	f
18	0101000020E6100000D4264D8DAC393C405EA036DBACC139C0	18	38	South Campus Main Entrance (Tengo Road)	t	t
19	0101000020E6100000AF8A8DC4C13A3C40C00E3F70AFC139C0	19	40	Javett Art Centre Entrance 	f	f
20	0101000020E6100000858EDE13703A3C40845254BBA5C139C0	20	41	South Campus Student Entrance (Lynwood Road)	t	f
\.


                                                                                                                                                                           4510.dat                                                                                            0000600 0004000 0002000 00000230365 14511212744 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0103000020E6100000010000000F000000CB6180C41F3B3C40CFCE8D0E7DC039C03708E519353B3C403ABA3A2D8CC039C0DEB31433373B3C403FA1C1F889C039C0D0B6A37E3D3B3C40F00CC96F8DC039C0F88BE8B71E3B3C40444495E1ADC039C0F87AE1C5183B3C40324AEB19AAC039C08F1899381B3B3C4056314152A6C039C06EC993150A3B3C405B5BC9C698C039C0BA31FA39143B3C409478251F8DC039C0CA3F72E0133B3C4006CE089A8AC039C042C13906173B3C408FAD8F6588C039C0F87AE1C5183B3C409F737A5789C039C025B650AB1D3B3C407217565B83C039C06FFCA8EB1B3B3C408DD4DC2681C039C0CB6180C41F3B3C40CFCE8D0E7DC039C0	1	1	1	Old  Agriculture Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
2	0103000020E61000000100000016000000EA9F7EF52A3B3C402487703CB3C039C0EEC18CD9363B3C4061C23832AEC039C049386BA4403B3C4061C23832AEC039C03A2AF3FD403B3C406B16864AB2C039C0B5ABBA23443B3C406B16864AB2C039C01E1F0AA3473B3C4076AC10E4BEC039C0A6AE496F4A3B3C40032BEB3EC4C039C0FF021A56483B3C40B309AA14C7C039C0D1D8B162493B3C400FD768EAC9C039C0B5ABBA23443B3C407136B502CEC039C0967EC3E43E3B3C400AA589E6CFC039C07651CCA5393B3C40DE72D087D0C039C065324D0D343B3C40100C2D37D0C039C0824E3D5A333B3C40B829846FCCC039C0EBB085E7303B3C40ECCD11B2CDC039C0FBBEFD8D303B3C40B309AA14C7C039C038F7DD272F3B3C407B9C06C4C6C039C0BF7516022C3B3C4062915785BFC039C0924BAE0E2D3B3C400FE082A1BDC039C0FAADF69B2A3B3C40AE799238B9C039C0DC91064F2B3B3C40B4AEBD54B7C039C0EA9F7EF52A3B3C402487703CB3C039C0	2	2	2	Thuto Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
3	0103000020E6100000010000001800000088115D651B3B3C40C2F26B2CB7C039C0DC91064F2B3B3C4076AC10E4BEC039C010B2A323243B3C4040002249C9C039C08E29A02A213B3C4013509406C8C039C0BB53081E203B3C4040002249C9C039C044E347EA223B3C4054EC997DCBC039C03FFE19FB2E3B3C40CF52AA7BCEC039C0B66EDA2E2C3B3C4099CFD5FED3C039C0FAADF69B2A3B3C405AB03725D7C039C05D090356283B3C408B1BF6FAD9C039C0E4873B30253B3C4047B86D2FDCC039C08F1899381B3B3C40FB10B569D5C039C0C2493DFF193B3C40C4884D33D6C039C069E46526163B3C40DEE5CA77D4C039C08C079246153B3C40BE812727D4C039C08C079246153B3C40C9496EC8D4C039C07925F3A2273B3C40F7BD72A6DFC039C035D5CF43233B3C40E477871BE6C039C0CE24A0CF073B3C40CF25AAE2D5C039C0F458D3E10C3B3C40CF52AA7BCEC039C0A40B3FCE0E3B3C40CF3DE695CFC039C00D90953F183B3C4010456883C2C039C0AA238293143B3C407E82DA40C1C039C088115D651B3B3C40C2F26B2CB7C039C0	3	3	3	North Hall (Chemistry Building)	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
4	0103000020E6100000010000000B000000F356DA67AD3A3C4077CA634EACC039C02FEEA8DACF3A3C40521137F0C0C039C0FF1128CEEE3A3C40A0C7C3CBBAC039C074D0CFE8093B3C4021C0E01ECCC039C08CD47C70033B3C40256B32AED3C039C0535FBCE1EC3A3C400A2F6373C6C039C0AE65A5E1CC3A3C40440B8FF6CBC039C00A5B87EFA63A3C406F1F9748B5C039C06BC79A9BAA3A3C40CB27F807B1C039C089E38AE8A93A3C4093B20D16B0C039C0F356DA67AD3A3C4077CA634EACC039C0	4	4	4	Natural Sciences 1 Building 	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
5	0103000020E6100000010000001500000097E0FB9CA33A3C401BB20A6DBBC039C046A46E7BAB3A3C407B4AA9ADBFC039C0BD142FAFA83A3C40EFDC004DC3C039C099F1028FA93A3C40C0945275C3C039C0B70DF3DBA83A3C4081E23C67C4C039C055B2E621AB3A3C4088531CD2C5C039C029887E2EAC3A3C4081E23C67C4C039C007A96ED6C43A3C4032D7A46BD2C039C0A54D621CC73A3C407BBF7E5FD0C039C044F25562C93A3C40D43F1729D1C039C07612F336C23A3C40B97B994BDAC039C086206BDDC13A3C40AEDB3C9CDAC039C0DD301FFCA73A3C40440B8FF6CBC039C0F94C0F49A73A3C4054EC997DCBC039C0CD22A755A83A3C4002ADAF8BCAC039C04D9AA35CA53A3C404706E62EC8C039C05BA81B03A53A3C404706E62EC8C039C07AC40B50A43A3C406A4AD020C9C039C096CFF4AA9D3A3C40F1998E8FC4C039C0B5EBE4F79C3A3C4081E23C67C4C039C097E0FB9CA33A3C401BB20A6DBBC039C0	5	5	5	Natural Sciences 2 Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
6	0103000020E6100000010000000B00000063305493D43A3C40DF89F693D2C039C0BF952B6CD83A3C403FFCCA10CDC039C08B758E97DF3A3C40FFA5BA79D1C039C0F7E8DD16E33A3C40969A8D2BE2C039C0B198BAB7DE3A3C4070DED233EAC039C0B98EEF98D83A3C40137F710DE7C039C0825D4BD2D93A3C40520A10E7E3C039C06C489758DA3A3C40C3031B6EE3C039C003D547D9D63A3C40445F6341D5C039C0733ECC39D43A3C407B068F5DD3C039C063305493D43A3C40DF89F693D2C039C0	6	6	6	Student Affairs Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
7	0103000020E6100000010000000A0000001CECF4CC353B3C40F18998E0D3C039C04B2764B23A3B3C401C0957B6D6C039C0E1C41B253D3B3C405F52DF81D4C039C010008B0A423B3C4082A6B365D6C039C03B19EC0B3B3B3C408B58500DE2C039C0EEC18CD9363B3C40A1EBC2CAE0C039C0C19724E6373B3C40043277B2DCC039C0854E3D5A333B3C40F676158CD9C039C0955CB500333B3C4043542B9AD8C039C01CECF4CC353B3C40F18998E0D3C039C0	7	7	7	Student Health Services	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
8	0103000020E61000000100000010000000D5F8C6CCF53A3C40A4F820BFF2C039C0F203B027EF3A3C40A62F79F7EEC039C0D709CEBEFB3A3C40043277B2DCC039C09AD1ED24FD3A3C40D5C1EEE6DEC039C0B9FEE463023B3C40826BFA06D7C039C0E7395449073B3C406CD7B8DCD9C039C06FB88C23043B3C40E01B81A0E3C039C06DA78531FE3A3C40DB47D12FEBC039C0AADF65CBFC3A3C403B9E8A8EEAC039C0C7FB5518FC3A3C40589C7480EBC039C08CD47C70033B3C40CA2463E9EFC039C0F636C5FD003B3C40AB1F98F3F4C039C01142AE58FA3A3C400FB9937CF1C039C0F425BE0BFB3A3C40CA2463E9EFC039C03E6C164CF93A3C40278B3256EEC039C0D5F8C6CCF53A3C40A4F820BFF2C039C0	8	8	8	Geography Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
9	0103000020E610000001000000080000009CF3FB08093B3C40043277B2DCC039C0B2679E5B2C3B3C400FB9937CF1C039C0762FBEC12D3B3C404659DA1DF2C039C09F2611DF1A3B3C4096A7530E0AC139C0D71AD5B0013B3C40CDE3CCFDF9C039C09D0403FB0E3B3C405098CCB8E7C039C0F647CCEF063B3C403CB3F35DE2C039C09CF3FB08093B3C40043277B2DCC039C0	9	9	9	Zoology Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
10	0103000020E61000000100000006000000BE00DEDD613B3C40ABC0513FD3C039C01C99CA8C773B3C40AFCD9D57D7C039C01C88C39A713B3C40CF924864EDC039C0DC0BC7385B3B3C4042412968E7C039C0EC2A46D1603B3C406A25F58FD3C039C0BE00DEDD613B3C40ABC0513FD3C039C0	10	10	10	Roosmaryn	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
11	0103000020E61000000100000008000000DE2DD51C673B3C4045AC0D5C9CC039C039A4B3E7703B3C40315C3FEF9DC039C066CE1BDB6F3B3C40C7F7937EA5C039C066CE1BDB6F3B3C40BB0522C1A6C039C0FD5ACC5B6C3B3C40967B37CFA5C039C0FD5ACC5B6C3B3C40BF73F02DA5C039C0FB49C569663B3C400E6BA98CA4C039C0DE2DD51C673B3C4045AC0D5C9CC039C0	11	11	11	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
12	0103000020E61000000100000005000000F5428996663B3C40FCF9C980ACC039C06DD557AE6F3B3C401973FB13AEC039C0AA0D38486E3B3C40FBDE1289B4C039C02E7B6930653B3C405FBE8FCDB2C039C0F5428996663B3C40FCF9C980ACC039C0	12	12	12	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
13	0103000020E610000001000000050000008AE04009693B3C40F6FA2A65C2C039C054EC7C37823B3C40DDB7E42AC9C039C0BD4EC5C47F3B3C409BAC2B33D1C039C0F5428996663B3C40F264726DCAC039C08AE04009693B3C40F6FA2A65C2C039C0	13	13	13	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
14	0103000020E6100000010000000500000067F029BF7B3B3C4058E1AD20C4C039C002B0EF158A3B3C4028BFF4C1C4C039C0FBA8B3428A3B3C40D273FA38C8C039C067F029BF7B3B3C405277BE1EC7C039C067F029BF7B3B3C4058E1AD20C4C039C0	14	14	14	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
15	0103000020E610000001000000050000008E1356DF7A3B3C407BE8A642B9C039C0DE9DCAE7903B3C404D0A6618BCC039C0FAB9BA34903B3C40F6FA2A65C2C039C0A4280A597A3B3C40A5FF6B8FBFC039C08E1356DF7A3B3C407BE8A642B9C039C0	15	15	15	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
16	0103000020E6100000010000000500000077FEA1657B3B3C406243EC7CB2C039C0CE8F5241913B3C409458B6D9B4C039C0CE8F5241913B3C401851C7D7B7C039C077FEA1657B3B3C40F6D1592AB5C039C077FEA1657B3B3C406243EC7CB2C039C0	16	16	16	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
17	0103000020E6100000010000000500000068DF22CD753B3C40B760F6459FC039C061E9EDEB7B3B3C40B760F6459FC039C05AE2B1187C3B3C4096C72E50A4C039C061D8E6F9753B3C40EC898078A4C039C068DF22CD753B3C40B760F6459FC039C0	17	17	17	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
18	0103000020E6100000010000000A000000892E28F0863B3C40EC898078A4C039C0CC7E4B4F8B3B3C40EC898078A4C039C0B86997D58B3B3C401C324D3CAEC039C03CE8CFAF883B3C40DA6E42B5AEC039C03CE8CFAF883B3C406A3B31B7ABC039C03DD7C8BD823B3C405F3A7858ACC039C01DBBD870833B3C40F624F9ACA6C039C073197476873B3C405F63A784A6C039C073197476873B3C406C0E24C9A4C039C0892E28F0863B3C40EC898078A4C039C0	18	18	18	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
19	0103000020E610000001000000050000007B31B73B8D3B3C40733E68039EC039C0400ADE93943B3C40EC7916DB9DC039C03703A2C0943B3C403105DD27A4C039C06B233F958D3B3C4096C72E50A4C039C07B31B73B8D3B3C40733E68039EC039C0	19	19	19	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
20	0103000020E6100000010000000B000000DFBFD8CB9C3B3C40CC8E36709CC039C0684F18989F3B3C40743F41F79BC039C0523A641EA03B3C40072C21629DC039C005F40BDEA13B3C40B5F0728A9DC039C00EFB47B1A13B3C405121B61BA2C039C06F56546B9F3B3C402D5E64F3A1C039C06F56546B9F3B3C40F624F9ACA6C039C022FFF4389B3B3C407DE64AD5A6C039C03A14A9B29A3B3C40451401CD9EC039C0CFB160259D3B3C4056C70B549EC039C0DFBFD8CB9C3B3C40CC8E36709CC039C0	20	20	20	Student Organisation	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
21	0103000020E6100000010000001000000014E075A0953B3C40F5CA99F7F3C039C0202BCE3BAD3B3C40F1C45B44FAC039C017249268AD3B3C40A26C24A1FCC039C0214DDC1FB93B3C405E2CA9F5F6C039C084B9EFCBBC3B3C40427F2F28FCC039C074AB7725BD3B3C40DCBFF86209C139C0C1F1CF65BB3B3C4002BDC4360FC139C0C1F1CF65BB3B3C407949A3A110C139C027320A0FAD3B3C40F5DB1D6F0BC139C03D47BE88AC3B3C403869891C0EC139C0540E8B1B8E3B3C40F5F9812E07C139C031EB5EFB8E3B3C40B84E94C502C139C0B77A9EC7913B3C400080AAD301C139C00AD939CD953B3C40AFDADDFFFBC039C03A03A2C0943B3C403EB450BDFAC039C014E075A0953B3C40F5CA99F7F3C039C0	21	21	21	Centenary Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
77	0103000020E610000001000000090000007CBBF91BFC3B3C40B61ED41966C139C0539250FFFB3B3C40625CE67E68C139C013884666F63B3C407BC75C5A66C139C0E15F7E6BF53B3C40C8B45D3E68C139C0A52685EAF43B3C4071035D316EC139C0940C9915143C3C4043C8705276C139C097CE2128163C3C406D1E47DF6FC139C076F1BF84123C3C40A2D9E39E6BC139C07CBBF91BFC3B3C40B61ED41966C139C0	77	24	24	Akanyang	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
22	0103000020E610000001000000210000000775089BD13B3C402DB7E40FF8C039C0C346F31FD93B3C405D3F202AF9C039C0F49269F7E33B3C40774E2BB1F8C039C00AA81D71E33B3C40AAECE886FBC039C08B41285CEC3B3C40BED55434FEC039C09C71AEE6F73B3C4039C8D278FCC039C0BB8D9E33F73B3C404FC6CB6800C139C09D82B5D8FD3B3C4099679F4C02C139C0F7D685BFFB3B3C40A78D94A30DC139C00FEC3939FB3B3C4090E2CFBD0EC139C0E3D2D837023C3C407670AE2810C139C09D93BCCA033C3C4087BE85A50AC139C08077CC7D043C3C406EDF902C0AC139C07B81979C0A3C3C40497B6F970BC139C02E3B3F5C0C3C3C40451D1AF807C139C076AD709F1C3C3C4087BE85A50AC139C00C3A2120193C3C40C17C28D415C139C0B9EC8C0C1B3C3C404CB4CB2416C139C0D00141861A3C3C40E968E5A918C139C0121F4F0F0D3C3C40C17C28D415C139C02E3B3F5C0C3C3C408D6E7D7319C139C0898F0F430A3C3C404139DA2219C139C0D4D56783083C3C40323E35B023C139C0DABA9572FC3B3C40238D10A421C139C05A43996BFF3B3C400AFD9E0818C139C0784E82C6F83B3C409FEB6E7516C139C0855CFA6CF83B3C4039112FC21CC139C0C102D757C13B3C40A307DB440EC139C076BC7E17C33B3C40C4BD6B2008C139C0E6360A6AC63B3C40C91FA73A09C139C0B20566A3C73B3C400188B9D104C139C0EF4E4D2FCC3B3C40A050A3C305C139C00775089BD13B3C402DB7E40FF8C039C0	22	22	22	Law Building	\N	Building	C:/Users/Keren/Downloads/Building.sqlite|layername=building
23	0103000020E610000001000000070000004711A8D2393A3C407CEEC909D7C039C00A49669C183A3C409A0B60A405C139C0E332E015393A3C4015752B3218C139C07E52C438473A3C4013EE056204C139C09116F2AD4E3A3C40376D5D0E08C139C0DC1DA544613A3C40785000ADEDC039C04711A8D2393A3C407CEEC909D7C039C0	23	1	1	Heavy Machinery Labs	1	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
24	0103000020E61000000100000015000000848FE178473A3C404EC92E490CC139C00A461EAC4A3A3C40342C6E570CC139C08082205F4D3A3C40C360B7810BC139C085F36B3C4F3A3C4050AF977A0BC139C0115CE303503A3C40AF1AAB9E0CC139C0D3E444E04F3A3C409708CD580FC139C094873D8B503A3C402BAE616010C139C023BC86B54F3A3C40915692C411C139C064FFF63B4E3A3C405B36A8AF12C139C0283CFC67493A3C401A38143719C139C063CD315A4A3A3C40F94F36C019C139C0A410A2E0483A3C40219B5FCF1BC139C08B594A20483A3C40693584641BC139C0E4EF87A33F3A3C40BBA215DF26C139C0F9B772F4353A3C40A412160721C139C0FE28BED1373A3C40AAC4509B1EC139C0DD3449D1363A3C40B4E7D60C1EC139C066B75767383A3C4071FFEC0B1CC139C07F6EAF27393A3C40983E7F911CC139C0FF4B59DE433A3C4081A312C00DC139C0848FE178473A3C404EC92E490CC139C0	24	2	2	CEFIM Building	2	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
25	0103000020E61000000100000019000000BE476F53433A3C40CF948B6DD9C039C0202DD292513A3C40BA207784C5C039C056CBDD39593A3C40BADF87CDC9C039C08D6DA6BC4F3A3C40530D6C35D7C039C0D5C6DB9A533A3C4017BCFB69D9C039C021D24B0D553A3C40EF70D25AD7C039C082C484016A3A3C40BF315570E3C039C0E5E1D2B9683A3C403C2C2941E5C039C0D34040516D3A3C40B1682BF4E7C039C0EBB6A85A723A3C4021D05706E1C039C0D463DB5D793A3C405CA1521FE5C039C0A92D02BB5B3A3C40990F4DFB0EC139C07BCC1354543A3C40A7D876770AC139C0F90444905B3A3C402588182800C139C001835087573A3C402562EACFFDC039C0FE758F6D5D3A3C4036D1B756F5C039C0AD5D5EE1613A3C40BE6D5DBBF7C039C03FDC9A00683A3C40248CD503EFC039C002A6EB93633A3C40F576434DECC039C0A06E060D643A3C404F710B94EBC039C0A57F84024D3A3C4042920725DEC039C0CDCAAD114F3A3C40492AABEADAC039C0E110BAF44D3A3C406DEAF14DDAC039C0D548BA084B3A3C40916949FADDC039C0BE476F53433A3C40CF948B6DD9C039C0	25	3	3	Engineering 2	3	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
26	0103000020E61000000100000005000000AE8873A54B3A3C40DC55DB3BC2C039C0555179833F3A3C4018C9BC83D3C039C0C36AF5C4423A3C40F9EC7596D5C039C0A7F0CFDF4E3A3C405D9BCC91C3C039C0AE8873A54B3A3C40DC55DB3BC2C039C0	26	4	4	\N	4	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
27	0103000020E61000000100000005000000F67D1EC0473A3C407322C82BBEC039C037809F8F4A3A3C4043599225C0C039C0C2066B013B3A3C402008437FD1C039C0A4DEC763383A3C40850BFA68CFC039C0F67D1EC0473A3C407322C82BBEC039C0	27	5	5	\N	5	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
28	0103000020E61000000100000011000000F4D02A8E663A3C406A72F652BEC039C0212915B7623A3C40D9FCBD71C3C039C0FC27DF9C673A3C40BE1E0EC9C7C039C0A5F9E8B8663A3C40D5EFFC57C9C039C0F85B0D3A693A3C409DE9A911CBC039C0C7ED5DB9673A3C403F231068CDC039C0D0CFF4736B3A3C40E25C76BECFC039C09F6145F3693A3C40EF0ADFDBD1C039C0C9F661F7723A3C40A649625ED7C039C06416461A813A3C40907C30ABC4C039C0B56F665D783A3C40542CEA6FBFC039C0332A7507773A3C40BBD41AD4C0C039C0EAEAD6F7733A3C40BFA0EC36BFC039C0582BAB21723A3C40473D929BC1C039C034AC53756E3A3C403A8F297EBFC039C0CD0323116D3A3C4036C3571BC1C039C0F4D02A8E663A3C406A72F652BEC039C0	28	6	6	Mining Study Centre	6	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
29	0103000020E610000001000000110000007A1F2022733A3C40F8775842D8C039C0AACA017E813A3C40076B6DF2C4C039C0C8F2A41B843A3C4088B05E48C6C039C0DFC393AA853A3C4061653539C4C039C00D2582118D3A3C40A6D801E6C8C039C09C59CB3B8C3A3C4038982DBCCAC039C024F670A08E3A3C40BADD1E12CCC039C0649467AC893A3C400CFF53DCD2C039C0CB7D87C7863A3C40F52D654DD1C039C02FDCC436813A3C40EE54D2D0D8C039C0C8F2A41B843A3C403A604243DAC039C0AE96D3E07F3A3C40A1C783F0DFC039C05B34AF5F7D3A3C40F46A9728DEC039C054DDFA507C3A3C4026D946A9DFC039C0E71E0595753A3C40261A3660DBC039C0C35EBE31763A3C403A604243DAC039C07A1F2022733A3C40F8775842D8C039C0	29	7	7	Engineering 1	7	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
30	0103000020E6100000010000001B00000010EC0C126F3A3C40C3E7ECE99AC039C05663969A623A3C404FA5C49FABC039C09C1752FE623A3C402BE57D3CACC039C0B7B412F0623A3C40928DAEA0ADC039C0E822C270643A3C40D47598A1AFC039C017C59F8E673A3C407A7BD05AB0C039C06A27C40F6A3A3C4009B01985AFC039C0D7E5B9CB703A3C40498FFF47A6C039C0D7A4CA14753A3C40563D6865A8C039C0FB641178743A3C40AD6B5E49A9C039C0FA1F65E5893A3C40E992E3E0B5C039C0C119129F8B3A3C40F7813BB5B3C039C0DB75E3D98F3A3C404AE45F36B6C039C0CB3C98108B3A3C4021A4A320BDC039C06D350FB0913A3C403B00755BC1C039C05CF8060B9E3A3C40723EB31AB0C039C08EE894F9963A3C40C9204D4EACC039C003C10CE9913A3C40E6070135B3C039C07EF038E78D3A3C40C8DF5D97B0C039C03F9331928E3A3C4062372D33AFC039C0472F92337A3A3C40358AE21BA3C039C0F857505E7A3A3C402510A89BA2C039C0DA2FADC0773A3C40D8043829A1C039C002BCC586753A3C408CB8D8FFA3C039C0AF59A105733A3C40856124F1A2C039C0487081EA753A3C406B0553B69EC039C010EC0C126F3A3C40C3E7ECE99AC039C0	30	8	8	Mineral Sciences Building	8	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
31	0103000020E6100000010000000C0000001032432B873A3C40C2519D448FC039C07490809A813A3C40B625139584C039C049BA74DF7C3A3C40E6AD59E486C039C02B92D1417A3A3C40E7D3873C89C039C04CC735F9763A3C40A91BFA618DC039C035F6466A753A3C40C9359DBA90C039C02F9F925B743A3C400852B55894C039C0BCED7254743A3C400878E3B096C039C0DC1E1A30823A3C40B8A0A1DB96C039C089F9278A8C3A3C4044BA29A79CC039C0AAACADD3913A3C4080CD3D0795C039C01032432B873A3C40C2519D448FC039C0	31	9	9	AE Auditorium and Annex	9	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
32	0103000020E610000001000000050000006439E1268D3A3C408A6EE50A9DC039C0D5C3A845923A3C40C681F96A95C039C0B2CB7669A23A3C4040EE57449EC039C04241AF4A9D3A3C40D85094D9A5C039C06439E1268D3A3C408A6EE50A9DC039C0	32	10	10	Van der Graaf Accelerator	10	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
33	0103000020E6100000010000000500000092BD6A9AA03A3C409DF7496095C039C02C38D542AB3A3C40ACE4387995C039C02C38D542AB3A3C40CE5A8CE78DC039C017CF2D53A03A3C40410CACEE8DC039C092BD6A9AA03A3C409DF7496095C039C0	33	11	11	Stoneman Building	11	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
34	0103000020E6100000010000000500000055AA563AA83A3C40C2A1B6D082C039C0DAFC08AAA33A3C40EC77C28B87C039C0E7289359AE3A3C40ECF5E31D90C039C061D6E0E9B23A3C402B94DA298BC039C055AA563AA83A3C40C2A1B6D082C039C0	34	12	12	Vetman Building	12	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
35	0103000020E610000001000000050000000AB5AB1FAC3A3C40AB2B4EC77DC039C085A3E866AC3A3C40CF69B6BC85C039C0084D6480B53A3C40775557A785C039C01AAD0732B53A3C404BDAD1717DC039C00AB5AB1FAC3A3C40AB2B4EC77DC039C0	35	13	13	Bateman Building	13	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
36	0103000020E6100000010000000D0000005EB345DDA63A3C4046BBF34060C039C0492C4A43AC3A3C4000C6482664C039C0D209DF5EAA3A3C405D4BF31866C039C099C29C61B03A3C40D7F840A96AC039C09C4D7F0DB33A3C40BAD09D0B68C039C0A62F16C8B63A3C408821FFD36AC039C0325B5BB4AA3A3C406CC170BD77C039C05490BF6BA73A3C4034FC0C2E75C039C036272D17A93A3C4041EB640273C039C0ED287EBEA13A3C40DB8323556DC039C04AEF17689F3A3C40B3F70A8F6FC039C0FB58C5499B3A3C40D42C6F466CC039C05EB345DDA63A3C4046BBF34060C039C0	36	14	14	\N	14	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
37	0103000020E6100000010000000A000000356D6330C13A3C40E5421F0365C039C0E0013B71B33A3C400CCB7AED73C039C0E0013B71B33A3C400CCB7AED73C039C0E61700C9B83A3C4026274C2878C039C0B05BA077C13A3C407029B85C6EC039C0F2029BC1C73A3C400574C6DE72C039C0F6504B92BD3A3C40EDDF092B7EC039C02127574DC23A3C409670249081C039C0DE3AB070D13A3C400840984171C039C0356D6330C13A3C40E5421F0365C039C0	37	15	15	Botany Building	15	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
38	0103000020E6100000010000001A00000077CFB1E7DC3A3C40BDBF0A7B72C039C0E284A365D83A3C40A3E15AD276C039C099450556D53A3C40FFE4265781C039C04358FE28D03A3C40654C680487C039C0E50F8611DB3A3C402553EB728FC039C06180A1C6D23A3C40235E586C98C039C0E55075C8D63A3C40A1D7775F9BC039C0ECA729D7D73A3C404AA9817B9AC039C02E4F2421DE3A3C405BE2CC449FC039C02E4F2421DE3A3C405BE2CC449FC039C06DAC2B76DD3A3C406B5C07C59FC039C048ABF55BE23A3C40D58F1AD5A3C039C03DC5A1C5EF3A3C403A7036B295C039C062C6D7DFEA3A3C4066C820DB91C039C041D262DFE93A3C40A15956CD92C039C04F02AA6AE33A3C40E1F74CD98DC039C0C0CD6040E43A3C40F53D59BC8CC039C081332710D83A3C40497DE23083C039C0C04F3FAEDB3A3C40253F7A3B7BC039C0C04F3FAEDB3A3C40253F7A3B7BC039C0B9B79BE8DE3A3C40F9277FC97AC039C072FF22A9EF3A3C407353EEEB87C039C097BF690CEF3A3C406930687A88C039C03D43C357F83A3C403740DA8B8FC039C011EBD82EFC3A3C40BC928CFB8AC039C077CFB1E7DC3A3C40BDBF0A7B72C039C0	38	16	16	Mathematics Building	16	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
39	0103000020E610000001000000200000006A608FB2423B3C40C23CA2864DC039C021E001EC433B3C400B3B51DF54C039C036260ECF423B3C4025D811D154C039C0A7F1C4A4433B3C40F6B355455AC039C0C14D96DF473B3C4000D7DBB659C039C043938735493B3C40F9FD483A61C039C01C894DDD423B3C400055FD4862C039C0012D7CA23E3B3C4032049C805FC039C0C59ABC29103B3C4027A0265864C039C0514423A80C3B3C40F9FD483A61C039C0CD734FA6083B3C40C4C3C75661C039C0D7D7C4CE033B3C4055CF4FDD67C039C0D7D7C4CE033B3C4055CF4FDD67C039C01369FAC0043B3C40A565A2FB6BC039C0AC7FDAA5073B3C40BC36918A6DC039C018FDE0AA123B3C4048F8251C6DC039C0794E5D00133B3C40E1CD164A74C039C0BB7736B8103B3C40E1CD164A74C039C0BB7736B8103B3C40E1CD164A74C039C026EC387F103B3C40D3DEBE7576C039C0BCF91426083B3C4034303BCB76C039C0B6652E3CFA3A3C40F43CE4D06BC039C0B6652E3CFA3A3C40F43CE4D06BC039C06A5ABEC9F83A3C400C0ED35F6DC039C0A76DD229F13A3C40B520CC3268C039C0A6EBF3BBF93A3C40F772668E5EC039C049255A12FC3A3C4049C119D84CC039C0B96E327A053B3C40881E212D4CC039C09BC4B06E0B3B3C40CA842CC056C039C05B67A9190C3B3C40D4A7B23156C039C0B56171600B3B3C4002CC6EBD50C039C06A608FB2423B3C40C23CA2864DC039C0	39	17	17	Technical Services Building	17	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
40	0103000020E6100000010000001300000029771B2B133B3C401465876E6EC039C0D99FD955133B3C407475140D73C039C040071B03193B3C40C44C56E272C039C0F02FD92D193B3C402BF5864674C039C0A83671372E3B3C40F986D7C572C039C02018ED64343B3C407434255677C039C02018ED64343B3C407434255677C039C04EFBB939333B3C40A6A2D4D678C039C0FA94D8DC413B3C400033ECC283C039C0FD9DDC1A4D3B3C406247363D77C039C0DBA9671A4C3B3C402738DFB86DC039C03FC7B5D24A3B3C408032A7FF6CC039C0DF75397D4A3B3C40AC8A912869C039C0DF75397D4A3B3C40AC8A912869C039C0D593A2C2463B3C401FC9FC9669C039C0AA7CA750463B3C40E337C7A468C039C0571A83CF433B3C40AEFD45C168C039C0A7F1C4A4433B3C40E98E7BB369C039C029771B2B133B3C401465876E6EC039C0	40	18	18	Sci-Enza Centre	18	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
41	0103000020E6100000010000000B000000EEDA9F247F3A3C40061B18ED37C139C06B15BCF4703A3C40835782684AC139C0B0F7007A853A3C409A86CB0357C139C014751B8B8A3A3C4063E7D9AE50C139C0C3BC20B37E3A3C4029656EFB48C139C0A2B6E44B813A3C4008743E8F45C139C005D9D475923A3C40929633C54FC139C0DF467789933A3C40B3B41F584EC139C04AED6ABE993A3C40E026882A52C139C05A5760109F3A3C40297E5D6F4BC139C0EEDA9F247F3A3C40061B18ED37C139C0	41	19	\N	Music Building	19	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
42	0103000020E6100000010000000B0000005715EF877F3A3C4004349EE737C139C0D4903EEA973A3C4033BEA3D946C139C04A1506ECA13A3C401D8B7D3739C139C0A6179591A33A3C407ADB610830C139C046EC2CC8A03A3C402F04A7B12DC139C0B9796C699C3A3C408F6A7ED72AC139C07DB78868973A3C405BC896F528C139C0BBD49650903A3C40DCEE24592FC139C02A62D6F18B3A3C406984E39035C139C01043E6F6833A3C40A1D3A20031C139C05715EF877F3A3C4004349EE737C139C0	42	20	\N	Musaion	20	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
43	0103000020E6100000010000000D0000001015A470973A3C40775EFCE628C139C04D3AD0D29C3A3C40B93531D02AC139C0DB4948D0A03A3C40F2C055612DC139C090EB1DBAA33A3C40E76B45D52FC139C0E288E811B33A3C403DFC28A22FC139C00B1B46FEB13A3C401E196A362BC139C04676D260B03A3C40DB91CB4627C139C034D26DD1AB3A3C40F5BEE71522C139C0AAC74207A73A3C40FE0D4DE21EC139C005C6C26FA23A3C4048DC4C161DC139C035A6C3669D3A3C40C884BE161CC139C066E5FD81923A3C40BB8471DB1DC139C01015A470973A3C40775EFCE628C139C0	43	21	\N	Amphitheatre	21	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
44	0103000020E6100000010000000A000000F488B57EA43A3C40317233FC15C139C0FE3DB027A73A3C404E01486917C139C05F37C72DB73A3C403CD557F514C139C01702763BBB3A3C40C70D6BA50FC139C0EA4A4E68C13A3C40F7173B6913C139C03C94D327BA3A3C40DE8E79141DC139C009C1590DB73A3C4071B24CBD1BC139C0BEB94AA1A73A3C4006796D051EC139C07F6B451BA13A3C40F8076D6D1AC139C0F488B57EA43A3C40317233FC15C139C0	44	22	\N	Club Hall	22	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
45	0103000020E6100000010000001E000000269565AB773A3C40A2B185A808C139C0BFB0F3FB6B3A3C405F843E0302C139C0C806B580743A3C40B016F5DFF6C039C08C48E0BC753A3C40AC1EE587F7C039C087C4DCB1803A3C4010E0D132E9C039C00F8D75F9AF3A3C40C198B5CA05C139C009649CD5AE3A3C406C33C6EE06C139C06403E319B03A3C40595D3C0408C139C0D9B9FBDEAC3A3C40CD15350A0BC139C0986BF658A63A3C40A7C99DAC07C139C067249EC3A43A3C40B05FAED008C139C047E4F21EA83A3C4066311DEC0CC139C04F68F6299D3A3C40350EEE4714C139C065F3A625973A3C4013C482DD0CC139C05CA91258A13A3C4083511F0506C139C002A783B29F3A3C407BAB9C1404C139C0D0F4C441913A3C408FA3452E0CC139C057B28AF7923A3C40BB05C4D50DC139C07F5F18648E3A3C404300F2AA13C139C01C03B9FC7D3A3C409A20928309C139C07B916927813A3C40A777B92D05C139C054FF0B3B823A3C40E25727B105C139C08280D30D833A3C404A92124404C139C08D35CEB6853A3C40707BF29305C139C03D745B3F883A3C4068660A33F9C039C03A4B821B873A3C4059A7A0F8F8C039C0E371CC99863A3C409A12E2F0F9C039C032F9CFD3843A3C40C6C76BDBF8C039C06DED04987C3A3C40DDD80BCBFCC039C0269565AB773A3C40A2B185A808C139C0	45	23	\N	Aula	23	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
46	0103000020E61000000100000020000000A8B43001B73A3C40F1E4D48A53C139C0707E6E85B33A3C40E5E7EDA851C139C0EAC0A8CFB13A3C404D1B830655C139C06403E319B03A3C405937391457C139C0CA881BA5C13A3C40A206D33362C139C0A71F97DCC33A3C40D3AFAB595FC139C02D7A1431C53A3C407C9C47D05BC139C06834DAB7BD3A3C40BFFF6D3157C139C0A2937557C23A3C40FEFDE1CD50C139C0AC487000C53A3C4031E0F1F151C139C0D2DACDECC33A3C40A61BA06D53C139C0A659061AC33A3C40A61BA06D53C139C0F909E377C23A3C40572E7B7454C139C083B61214C63A3C40F8DD9ABC56C139C0E0B8A1B9C73A3C40E1EDB3DA54C139C0767D1460CE3A3C4072F250CA58C139C055DA205AD13A3C40B87900AE56C139C004F0D4BED23A3C40AF4073E253C139C06E2B6218CC3A3C401B7E6CB84FC139C0EC332D25CB3A3C4004CF12A250C139C0699F4093CA3A3C408012D6F24FC139C09949E189CC3A3C408B7185D64DC139C03C1E79C0C93A3C40ECC238034CC139C00A119068C73A3C407CD1232E4EC139C0D766EF71C53A3C40968079FB4CC139C0106342B0C93A3C40AB8C4E4046C139C00719AEE2D33A3C40625E5DE24BC139C0EB9E9300D83A3C40A3BFDC5946C139C07C01186BC33A3C403A94C29239C139C045680D8EBF3A3C4095D24BAD3FC139C0A659061AC33A3C40F6B39CC941C139C0A8B43001B73A3C40F1E4D48A53C139C0	46	24	\N	Theology Building	24	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
47	0103000020E61000000100000005000000054AA580E13A3C4039F8618A2BC139C0899C045BD63A3C4092AFD2B63AC139C08AA422D5E23A3C40CF1C3B2142C139C0D9968CEAED3A3C40AE4CC7AB32C139C0054AA580E13A3C4039F8618A2BC139C0	47	25	\N	Old Merensky Library	25	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
48	0103000020E6100000010000001400000012AE0FA9EE3A3C40DF2E823633C139C020E70D5DE63A3C4084C5BDAD3EC139C07AE99C02E83A3C40240699B43FC139C0BD92CC6FE23A3C40E2BBAB6B47C139C070D159F8E43A3C40134D25CA48C139C063903DCAE03A3C40D79ED6264EC139C06F0BC935E43A3C404374F22550C139C0959D2622E33A3C40635FFE0051C139C00FE87EE6ED3A3C40A9CD202A57C139C076C0C3DEE63A3C400A1705565FC139C0AA381312F63A3C4053E251A268C139C0DE32EA63083B3C40597350546BC139C0DFF87A26093B3C4059BA0B9A62C139C052237266043B3C40F5C6309361C139C084305BBE063B3C40489D716058C139C04A9F6E5B0F3B3C40F86F407259C139C08FB304A4163B3C4054187AA432C139C0B1B12291073B3C402320F46A30C139C0BE87D8E3FE3A3C403FDB70DA3CC139C012AE0FA9EE3A3C40DF2E823633C139C0	48	26	\N	Merensky 2 Library	26	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
49	0103000020E6100000010000000900000007B91A99F43A3C404BDCA25225C139C0EE63CA9DF33A3C406C29B37626C139C0FF625914EC3A3C404A24411222C139C0F3E7CDA8E83A3C4031076AB826C139C02501E4B7FD3A3C4019CEE7B432C139C044A8E6FA003B3C401219EC992DC139C08062AC81F93A3C40DAFEE36F29C139C003F79813FA3A3C4009B9D34B28C139C007B91A99F43A3C404BDCA25225C139C0	49	27	\N	Marketing Services Building\r	27	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
50	0103000020E61000000100000009000000915D2CBBEB3A3C404A911AFEF8C039C0841C108DE73A3C40F6176EB2FEC039C053DDD571F23A3C40F05CFACC04C139C04E499672E43A3C40D0C8EAEF18C139C054CD997DD93A3C40C58C5FD512C139C0F0B2C7CDD43A3C403D851BC418C139C055380059E63A3C406D3145E821C139C01F75C232FC3A3C40D67B01C701C139C0915D2CBBEB3A3C404A911AFEF8C039C0	50	28	\N	Old Arts Building	28	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
52	0103000020E61000000100000007000000625B16F5163B3C400D90AA0B12C139C0259932F4113B3C401DF2396F18C139C0C023365D193B3C401CE711C51CC139C0C01B18E30C3B3C4064AED1C42DC139C02C889CDA133B3C40C095D5A531C139C03A341FE4243B3C404B9452251AC139C0625B16F5163B3C400D90AA0B12C139C0	52	30	\N	Old Chemistry Building	30	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
53	0103000020E61000000100000007000000F3D110216B3A3C406248450304C139C0842C77114A3A3C40FD25701C2EC139C0E2F496794C3A3C402064C58130C139C08A7E29594C3A3C40028CA46935C139C05626520E6F3A3C4075EB5BB849C139C0CBBA5504923A3C4033A08FD41AC139C0F3D110216B3A3C406248450304C139C0	53	31	\N	Engineering 3	31	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
54	0103000020E610000001000000070000004595BA29283B3C403C7F835612C139C0C82B832B413B3C403F3A7EE903C139C021F6049D453B3C4056AFC0D704C139C0BDA34363423B3C40A2446C9714C139C04D2408FB3A3B3C4073F5701213C139C0365D5F5B2E3B3C40BD4112931AC139C04595BA29283B3C403C7F835612C139C0	54	1	1	Piazza 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
55	0103000020E61000000100000008000000B144A0C9463B3C40E92A0E0A05C139C03E545A72543B3C402D53A28607C139C012C890EA6C3B3C40CCD2F11025C139C08F7EFFAE6A3B3C4084068BAD2FC139C07744E4FA493B3C4023855D5C29C139C0D14F2EC84B3B3C409835DDE01FC139C0C485830B433B3C4048ED2A1915C139C0B144A0C9463B3C40E92A0E0A05C139C0	55	2	2	Piazza 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
56	0103000020E6100000010000000A00000003CBB8F34B3B3C40CBC2648E2CC139C03CE211944B3B3C404B0403B02EC139C009D8AD77543B3C407035A21734C139C02C466BF2683B3C4087B8C79C37C139C0265C2C7D6A3B3C40D375A93A31C139C07D1825AB633B3C40918EFB0630C139C082566F5B633B3C400E0C501F31C139C0FD2938D65D3B3C403389433B30C139C08E5921E45D3B3C403240D3E92FC139C003CBB8F34B3B3C40CBC2648E2CC139C0	56	3	3	Piazza 3	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
57	0103000020E610000001000000160000002208B80C4F3B3C4039BD51EB3FC139C02208B80C4F3B3C4039BD51EB3FC139C08D79F7504B3B3C40D5E2C5DB4FC139C07953D296523B3C408DE9543651C139C02B564EB4533B3C40C8E1791B4DC139C0251B928A723B3C40A5F4AE0053C139C00366D947713B3C403287748C58C139C041576AFD783B3C4036288D085AC139C0D3B1C69E793B3C400BD8C53056C139C0A3B837408A3B3C40ACF1523F59C139C08637E3178C3B3C40C77705DE51C139C0978852FA7A3B3C40CDBF648C4EC139C0171C38247C3B3C40A60EE04E49C139C0ABBB107B743B3C404A7F3DB147C139C0793FE1C0733B3C4006D8F1454BC139C000912370673B3C408CCD70F548C139C0811770D3673B3C4040884BBB46C139C029B223BC623B3C40C2A62BBA45C139C0A82BD758623B3C405FC1AC0A48C139C0E0656398553B3C40C2A62BBA45C139C022B6A290563B3C4075F2E04541C139C02208B80C4F3B3C4039BD51EB3FC139C0	57	4	4	Economic Management Science Building 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
58	0103000020E6100000010000000E000000FC45EC69913B3C402379F5FC43C139C095014DE1993B3C40B3E06FBF45C139C0A441E8B8983B3C4053905E684AC139C092A6A5C1AE3B3C4024E631AD4EC139C08C2C1B5FAF3B3C40364B15CF4BC139C0477073CCB43B3C404F6E08DA4CC139C0249383CAB03B3C400D0BD6525FC139C00B45BC30AA3B3C40D2FC88F15DC139C0ED7F8713AC3B3C40F98DF76756C139C032329DDB953B3C40280F88F251C139C0A27D7661923B3C4011414FE85FC139C0A9F4E3E4893B3C40CE9CE3275EC139C0D4262BC88C3B3C405907104452C139C0FC45EC69913B3C402379F5FC43C139C0	58	5	5	Economic Management Science Building 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
59	0103000020E6100000010000000F000000DB072F3B753B3C40ABC12EE42AC139C04D923F19873B3C40DED9F7C52EC139C05107D18C863B3C4085CC8CE830C139C058583450883B3C40C74FFF5D31C139C01B70E1E6873B3C40626FD2B932C139C05BBF742C8B3B3C402FD4A59233C139C0034FFE958A3B3C4004408A8335C139C061B7E8AA863B3C40593C0F8234C139C0C226CD93823B3C4006969AB643C139C012D48DF78E3B3C40FEE2894846C139C0B76982F48D3B3C408071523F4AC139C0DF7A16CA7C3B3C40C9E52A8F46C139C0BD0C14F47E3B3C40C71B97EB3DC139C02C93CEF8703B3C40259A1AFE3AC139C0DB072F3B753B3C40ABC12EE42AC139C0	59	6	6	Tukkiewerf	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
60	0103000020E6100000010000000E000000F6A30C7E8C3B3C40AE9A510122C139C08D1CD6888F3B3C40C10C30B922C139C03DA38B5C903B3C40635C96841FC139C0A4626939963B3C40618D7DDC20C139C0996B5C5A953B3C40412EE00624C139C0FEC2573F983B3C4008D617AD25C139C0923B5119943B3C40E90762CD34C139C0AD6118F1913B3C40A627EE3F34C139C053AA1EC1903B3C4088B65DC238C139C0D287B9108A3B3C408CA1422C37C139C0A7CB142C8B3B3C407D9A3B9433C139C098F82BE6873B3C409951DAB932C139C05B746251883B3C400D25AF6231C139C0F6A30C7E8C3B3C40AE9A510122C139C0	60	7	7	Chapel	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
61	0103000020E610000001000000090000000B638838AA3B3C4049622E501FC139C00EF5ABC7B93B3C40B2D490A822C139C0EDB79A39BA3B3C40D2921F1121C139C09754EEACBE3B3C40AF26B71A22C139C00F982631BA3B3C40CB85063432C139C05818A7ACA83B3C404D1678DC2DC139C03B0D975EAA3B3C40CB542F9E28C139C097C054F0A73B3C4020227F6F27C139C00B638838AA3B3C4049622E501FC139C0	61	8	8	Monastery Hall	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
62	0103000020E610000001000000050000009384D743A63B3C40B044507C35C139C0B61E8D59B73B3C40D499479639C139C0109D037AB53B3C40E39A183840C139C05BB33B43A43B3C4064D293253CC139C09384D743A63B3C40B044507C35C139C0	62	9	9	Monastery Hall 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
63	0103000020E61000000100000006000000F4996784BA3B3C405590F4274FC139C0643C8635BD3B3C406C59C7864FC139C0FBC5C160C33B3C40A4D83C9D51C139C0987057D8C13B3C401360B05657C139C053D8FDB8B83B3C40449A44FB54C139C0F4996784BA3B3C405590F4274FC139C0	63	10	10	Sanlam Auditorium	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
64	0103000020E61000000100000005000000B46FABFBBD3B3C407BA9D7AC57C139C0077980D3BB3B3C40038D600261C139C046FA17D2C73B3C4007615BA864C139C0FD2B46C4CA3B3C400B22A8E55AC139C0B46FABFBBD3B3C407BA9D7AC57C139C0	64	11	11	Sanlams Auditorium 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
65	0103000020E610000001000000050000004318E68CD13B3C40008C1B6C54C139C0A32565ACDC3B3C402BAB02315AC139C047AA6E2ED63B3C406159C1F963C139C07347413BCB3B3C40F60FE02A5EC139C04318E68CD13B3C40008C1B6C54C139C0	65	12	12	Sanlams Auditorium 3	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
66	0103000020E61000000100000005000000BCB02745CA3B3C40D736650863C139C05994DCEBD53B3C40EB919EE765C139C07C1429FFD13B3C40BA764A7F72C139C0DC64EB62C63B3C405C55378D6FC139C0BCB02745CA3B3C40D736650863C139C0	66	13	13	Sanlams Auditorium 4	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
67	0103000020E610000000000000	67	14	14	Conference Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
68	0103000020E610000001000000140000007E92A37D6F3B3C4011357A6764C139C0FEE85B76753B3C40D17786FC61C139C0EE1B58BAA53B3C40A6DAC1E06DC139C0DEFB0FE4AD3B3C406A2DAC067DC139C018F14ED2B23B3C40EB755B787DC139C08B69E145B63B3C401E8DD38579C139C0CD01C130B83B3C4042AC226474C139C08212338FBD3B3C409AF8805774C139C0526D058FC13B3C40A61B087A75C139C02B3EE29FD03B3C40DD7EB97B7CC139C0D7FE4210CD3B3C4045746B2D88C139C038BAE4FBBF3B3C401EE4078493C139C0660277A9AD3B3C40CB190F9D96C139C0BA6FF69FA43B3C4043723AD493C139C0F80B29F3A53B3C40AECD90FE8EC139C07F588088A13B3C402CBB3B968DC139C072D2273D993B3C408FDBF3C190C139C052DBD7266F3B3C403FEEA48A84C139C082814E8A693B3C40A22AA4997AC139C07E92A37D6F3B3C4011357A6764C139C0	68	15	15	Information Technology Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
69	0103000020E610000001000000070000007CDA73024D3B3C40714D0AE05EC139C0CF869032553B3C408EBDBCED5FC139C03BA69EA2513B3C4017DFDD5E73C139C07CCCAC074F3B3C40A5BBD42D73C139C01E2A49364C3B3C40AAE23DB372C139C0B23490B6493B3C40F92F406871C139C07CDA73024D3B3C40714D0AE05EC139C0	69	16	16	Junior Tukkie Administration Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
70	0103000020E6100000010000000500000094DCD9DD153B3C402E32408E52C139C0CB858CE4103B3C404418D6F06BC139C0C0A0620B253B3C404A81D41A6FC139C032A27BE9293B3C4002D622BD55C139C094DCD9DD153B3C402E32408E52C139C0	70	17	17	Faculty of Humanities Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
71	0103000020E61000000100000009000000A9A96F0B253B3C405C81941B6FC139C0A3E02D71463B3C4083BA537674C139C0715470594B3B3C40F97B863B5BC139C0102CCD003E3B3C405A3FDE2059C139C03EDEE6CD3D3B3C40084294505AC139C03FF20D242F3B3C4042309EFC57C139C0FE6667702F3B3C401648CBA456C139C03277F0EB293B3C40770094BF55C139C0A9A96F0B253B3C405C81941B6FC139C0	71	18	18	Client/Student Service Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
72	0103000020E61000000100000005000000A597D17F2A3B3C4061EE4C6D81C139C0D1B82E71303B3C40A658557C82C139C0648B325A2E3B3C40E514EA4E8CC139C0112D458A283B3C409F11D3308BC139C0A597D17F2A3B3C4061EE4C6D81C139C0	72	19	19	Visitors Reception	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
73	0103000020E610000001000000090000005EB3FB35B03B3C40942C82CEA7C139C04B82AC29B63B3C40DF7F1DFCA8C139C0EAD81387B43B3C404F3E0C78B2C139C07DCD4759BA3B3C409DD32200B4C139C05DFEC04ABD3B3C4053FC2A39ABC139C08D581D18C43B3C40F53956D0ACC139C035601EBBBE3B3C406A068CD6BDC139C03EB7314EAB3B3C40157B1F20B9C139C05EB3FB35B03B3C40942C82CEA7C139C0	73	20	20	Drama Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
74	0103000020E61000000100000015000000C49111A6FD3B3C40B874F01032C139C03384EC9F113C3C40DF49BA7F37C139C0B6626989193C3C40ED65281F39C139C0BCEAE357173C3C4062BF68E445C139C0E76F2C6D133C3C40660D0FCD58C139C05038EE242A3C3C40DF210A305CC139C0507C2B0C293C3C4006AE2F2C63C139C025A83F4D193C3C40F30EA44760C139C00DCB5B40123C3C406C9654ED5FC139C074D6FB70103C3C401891548665C139C098A5CBC30B3C3C401891548665C139C01D95BE2F0A3C3C406BC476C962C139C0842EA65D003C3C406BC476C962C139C0AF1DEE48EC3B3C40F5C297E05FC139C0D7CDB2AAF23B3C4010A7C9F64BC139C089DCAD5FF53B3C407BA9637446C139C079668538F93B3C40B2D2A55A40C139C0696845BCF53B3C40BF95652B3FC139C0C744B8E5F73B3C403418A2DF38C139C0952825B4FB3B3C4094A7CECB37C139C0C49111A6FD3B3C40B874F01032C139C0	74	21	21	Graduate Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
75	0103000020E6100000010000000700000043861F111F3C3C40DD22F3FD49C139C0C52375301C3C3C405FB04E9450C139C03A145158213C3C4063EA2AB950C139C0F696C76C213C3C40A185CDAC53C139C05457D2A72C3C3C40515B073754C139C06ACF4F4B2E3C3C40F6A861694DC139C043861F111F3C3C40DD22F3FD49C139C0	75	22	22	Centre for Responsible Leadership	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
76	0103000020E6100000010000000800000052F78500EB3B3C40010787C370C139C06237583EE83B3C4080BF057571C139C02918EE82E63B3C4061BD17E978C139C022811D2A073C3C4068DDB5617FC139C089883827093C3C40F20ACF6A7DC139C037EF8F1D0A3C3C405E4D5E0C7BC139C00907DFDB093C3C40859E634678C139C052F78500EB3B3C40010787C370C139C0	76	23	23	UP Shop and Vida e Cafe	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
78	0103000020E610000001000000080000008B313EAF173C3C408D0016C072C139C07B58579F253C3C406EF8FB6572C139C0BF23B903253C3C40832F542170C139C0196FF6FF2F3C3C406508301A73C139C0AB55732D2D3C3C40165EB66178C139C0B7EB90382D3C3C406259A89682C139C08B313EAF173C3C4092C4D02283C139C08B313EAF173C3C408D0016C072C139C0	78	25	25	FABI 2 Building 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
79	0103000020E61000000100000007000000AEDB45801B3C3C40DDC5888169C139C004E0B3E8243C3C403A2A6D2C6BC139C0FFB9E12B243C3C402124FAD86EC139C07567C9801D3C3C405698707A6DC139C053FFB04E1D3C3C40FACADEBE70C139C05AB48FB9193C3C40159646A26FC139C0AEDB45801B3C3C40DDC5888169C139C0	79	26	26	FABI 2 Building 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
80	0103000020E6100000010000000D00000020143E1F393C3C40C294370360C139C0C884FC3D383C3C401FC3D4F362C139C003EFAA1E423C3C4068348E6165C139C078E223A3413C3C401D94C4F066C139C0EF5F6A76463C3C40EC30D01D68C139C0903EADEA463C3C406A00284D66C139C01BD12A07503C3C40A8C8586C68C139C038C306A7503C3C40A51A5BD765C139C04016DEAE473C3C400B0B41C563C139C074DA7547483C3C40E1B63DC061C139C059EC7055443C3C40666BD1EE60C139C0152FEB6C433C3C40F129385062C139C020143E1F393C3C40C294370360C139C0	80	27	27	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
81	0103000020E610000001000000090000001E628C0A373C3C403E1C367366C139C09C796D37503C3C4016DB42426CC139C0638FEEDB4D3C3C40FFFAD93074C139C0D5E47E9B443C3C40AA22D22572C139C0C3E9DA12443C3C407792982674C139C00922E0FA3D3C3C4064A2A19672C139C0C11EF8553E3C3C4013ADAA0671C139C0F3791E76343C3C40ABAC14956EC139C01E628C0A373C3C403E1C367366C139C0	81	28	28	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
82	0103000020E61000000100000005000000FDCAA619483C3C40E689BEE972C139C06F768842473C3C40BF25AEEB75C139C013D646C2493C3C40B271F07F76C139C0E9CD0A904A3C3C40E55A947573C139C0FDCAA619483C3C40E689BEE972C139C0	82	29	29	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
83	0103000020E6100000010000000500000034EB8FBD383C3C40BB67FCA46FC139C026774302383C3C40286D6FFA71C139C037C96E013A3C3C40EB93FB7F72C139C04220E88D3A3C3C40EE1FF61870C139C034EB8FBD383C3C40BB67FCA46FC139C0	83	30	30	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
84	0103000020E610000001000000050000009B99515A323C3C408DAEF78070C139C0A75D6D8A3D3C3C4050F60C7173C139C0E19D7AE4393C3C4026E102B87EC139C0EEE492DB2E3C3C4083BF76EB7BC139C09B99515A323C3C408DAEF78070C139C0	84	31	31	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
85	0103000020E61000000100000005000000D01ED82B433C3C40845671F774C139C0445E37684E3C3C400ABD288E77C139C08F4B1A724B3C3C407C4BAE8982C139C01A0CBB35403C3C402155362F80C139C0D01ED82B433C3C40845671F774C139C0	85	32	32	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
86	0103000020E61000000100000009000000A826F44D303C3C407AF318D37FC139C0C7F81D914A3C3C4097F91EC885C139C0ADA0D3E4483C3C4066BDCA288CC139C0327065923D3C3C4044F50B7689C139C08F65D5243D3C3C40D11AEFCA8AC139C0519C3DDA373C3C40777CD7B489C139C095131FF8373C3C4066D00A4588C139C007E0E6652E3C3C407101F2FD85C139C0A826F44D303C3C407AF318D37FC139C0	86	33	33	FABI 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
87	0103000020E61000000100000005000000A57A1036E13B3C40CE51E53788C139C019D2763BF33B3C40CA275E328CC139C0281C9570F13B3C4057F1190093C139C0AE889952DF3B3C4059FB1BE88EC139C0A57A1036E13B3C40CE51E53788C139C0	87	34	34	JJ Theron Lecture Hall	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
88	0103000020E61000000100000005000000A134813BE13B3C400EA78D8D91C139C065AD4699F03B3C402582644595C139C0D9432C7DE93B3C40D9692875ACC139C070E55DF3D93B3C40994852BDA8C139C0A134813BE13B3C400EA78D8D91C139C0	88	35	35	Masker Theatre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
89	0103000020E6100000010000000D000000E20927FDF53B3C4064FD56028FC139C0A6B92072FD3B3C40D39A19D890C139C06BF44E10FA3B3C4013DBAEAB9BC139C07AD9AE11033C3C409A9E9ACC9DC139C00ED42F0B063C3C4039801CD193C139C032397D1D0C3C3C408BFE203695C139C0EF7134E2053C3C4074F36BD4A9C139C0FE2AFBDE003C3C40908A8590A8C139C02A70E0F4013C3C40268AA9A1A5C139C00201B5E0F63B3C4050823FD0A2C139C015904AB2F53B3C40837833DEA6C139C0F5541737EF3B3C407D659A3AA5C139C0E20927FDF53B3C4064FD56028FC139C0	89	36	36	Agriculture Annex	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
90	0103000020E610000001000000100000008FE09215103C3C40B8E3C27998C139C047D84F3C2A3C3C40C4B7770F9FC139C0720DD8902C3C3C40DC531142A1C139C0E11FBA09293C3C40180A3E15ACC139C0A3338108263C3C40B6FDDD99ABC139C0919F2516253C3C40B51F88D3AEC139C0A55272A3353C3C40037E52B4B1C139C02B05FE7C313C3C408394416BBDC139C026AC3C011F3C3C40BB0EA806B9C139C03D7484021C3C3C40868A8436B6C139C0F0B0F4421F3C3C408010E98AADC139C0D2F8BC1C233C3C4058A57A3CAEC139C02D0F6D4F243C3C402E3BD3FFAAC139C0CF93AFFC0F3C3C4035D384F3A5C139C0643197A40C3C3C40C77EF491A2C139C08FE09215103C3C40B8E3C27998C139C0	90	37	37	Natural and Agricultural Sciences BUilding	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
91	0103000020E61000000100000007000000BCB921BCF93B3C4076AC906EB9C139C0058A524B013C3C403D64E2E4BAC139C03108B875FB3B3C404AB9260ED1C139C0AEF26516EC3B3C407F72EFC3CDC139C02141FCCFED3B3C40A6C83D48C8C139C0FF056575F43B3C4047086078C9C139C0BCB921BCF93B3C4076AC906EB9C139C0	91	38	38	Lier Theatre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
92	0103000020E610000001000000050000001FED25D8FD3B3C404111AFE5CCC139C07FA98AE90C3C3C407B8CB05ED0C139C0E60107E20A3C3C40971FE59FD5C139C0511964D4FC3B3C4067B7D28ED1C139C01FED25D8FD3B3C404111AFE5CCC139C0	92	39	39	Lier Theatre 	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
93	0103000020E6100000010000000B0000004B72C48C363C3C401A1B5ACA44C139C0C82BCE94313C3C4098176B0652C139C0395BDB054F3C3C408B3E11125AC139C01F3AB64B513C3C401DC647C954C139C018A2CAC8543C3C40E052F6F955C139C0D4B2590B543C3C40DA9F932A58C139C0E76F1D01573C3C40E0E9D2BC58C139C001D56926543C3C405C75D52963C139C04F0CBFCD5F3C3C408B3564EB65C139C09E45B1F3653C3C40FFD77C7A51C139C04B72C48C363C3C401A1B5ACA44C139C0	93	40	40	Plant Sciences Complex	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
94	0103000020E61000000100000005000000B7A22C08BB393C4033D22B19BAC139C051019236F4393C40F3CECA0AC1C139C08E10A8F2F5393C40F22747FFB1C139C06B815DA3BC393C4024F6FD7FACC139C0B7A22C08BB393C4033D22B19BAC139C0	94	41	41	South Campus Building 1	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
95	0103000020E6100000010000000F0000008EFDC7CDF6393C4097CBD6AB9DC139C017CD5DDDF5393C407DD75003A5C139C0EA92E736043A3C40B3916C66A6C139C01CF25AE0033A3C403274511BA9C139C01F6CA0AD1A3A3C40E36AF070ABC139C068679C301A3A3C401008F56EAFC139C058C5CDCB1D3A3C40EBD795ABAFC139C01B1896351E3A3C40FFCB88E1ABC139C046FC9C70213A3C402D652538ACC139C0C3536957223A3C404E8802D8A4C139C03A2F8B7D1A3A3C40BBC47619A4C139C02CBA649A1A3A3C403D7D08A5A2C139C01CF25AE0033A3C4008E1BB60A0C139C01CF25AE0033A3C40E18D4DEC9EC139C08EFDC7CDF6393C4097CBD6AB9DC139C0	95	42	42	South Campus Building 2	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
96	0103000020E61000000100000005000000511B152BF5393C409F8BB6BDB8C139C02FEC110E1E3A3C4055C32B2ABDC139C0926F9D0F1D3A3C40E57B2AEEC5C139C0DBA00033F4393C40E470FB0CC1C139C0511B152BF5393C409F8BB6BDB8C139C0	96	43	43	South Campus Building 3	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
97	0103000020E61000000100000005000000122BC37C5B3A3C40B912A3BCABC139C0EA6ABF636C3A3C40C39A9B96ADC139C00AF9588D6B3A3C4000EA0D72B4C139C0280466585A3A3C40537D1598B2C139C0122BC37C5B3A3C40B912A3BCABC139C0	97	44	44	South Campus Building 8	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
98	0103000020E6100000010000000D000000D6424243323A3C40503A873CA6C139C0B6EFA110393A3C40CCD08306A7C139C0B04E0EE9383A3C40217CCA17A8C139C0B36277CB403A3C40401A6C05A9C139C0116F6D0D413A3C40F8FD1795A7C139C0B2D54C86483A3C401C9DB982A8C139C0FC5DF429483A3C401132C075AAC139C08FE1182C4F3A3C408027257BABC139C09823407B4F3A3C404C1D762EAAC139C00CE1EE8F553A3C40DBA2CDD4AAC139C03A44B46D543A3C40B3536ED0B2C139C0A3F87DB7303A3C4028F1AE67AEC139C0D6424243323A3C40503A873CA6C139C0	98	45	45	South Camus Building 6	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
99	0103000020E61000000100000005000000766A4413353A3C4054E844EFAEC139C007815A94343A3C403C0423B8B2C139C0A3ED6EC0363A3C4086E6320CB3C139C0B60C5C45373A3C40FA62A228AFC139C0766A4413353A3C4054E844EFAEC139C0	99	46	46	South Campus Builing 6	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
100	0103000020E6100000010000000D000000C7AAF7103F3A3C40CB42143DB3C139C0F1378F91463A3C40792DE9D5B3C139C096CD4599463A3C40E21F688FB2C139C066CCA18E483A3C40F42624B2B2C139C09CB832B5483A3C407546BE5DB1C139C0228C219B4A3A3C405DED439CB1C139C0A17423654A3A3C40AFA34A21B3C139C0972034984C3A3C40F680A774B3C139C0CDDDC8524C3A3C40D97A7E9AB6C139C04C19B91B523A3C405D8CB202B7C139C002BF4FA0513A3C4077F69F22BBC139C022E6449D3E3A3C4070813C4AB9C139C0C7AAF7103F3A3C40CB42143DB3C139C0	100	47	47	South Campus Building 6	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
101	0103000020E610000001000000050000009DE53D39173A3C40B9FA345EAFC139C0411921733B3A3C4018688D90B3C139C0DC748A7D3A3A3C40F13D31A4BAC139C01693432C163A3C4097AB5067B6C139C09DE53D39173A3C40B9FA345EAFC139C0	101	48	48	South Campus Builing 4	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
102	0103000020E61000000100000005000000EEB783784F3A3C401F7158D1C0C139C017CDE92D6A3A3C403D41E6B7C3C139C07514F8E6683A3C40491056C5CFC139C03AE7EC064E3A3C4040772305CCC139C0EEB783784F3A3C401F7158D1C0C139C0	102	49	49	South Campus Building 7	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
103	0103000020E61000000100000005000000917348C1353A3C40CDA940D5C0C139C08BC456C4343A3C4099411AE7C8C139C04E72E2064E3A3C4065F47303CCC139C030C858214F3A3C407421B180C3C139C0917348C1353A3C40CDA940D5C0C139C0	103	50	50	South Campus Building 5	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
104	0103000020E6100000010000000D000000BBFD6775723A3C4035E90473C5C139C0BBFD6775723A3C40ED14E7FAC6C139C04D0DB4E66E3A3C40E2AEBE4DC6C139C094839CDF6D3A3C4036C88BB4CEC139C063CA9931713A3C40ED5974FDCEC139C05CC70309713A3C40BB30B944D1C139C06E6B03E6933A3C4018024EE6D4C139C01985EA87943A3C40C2F63ECED0C139C004CFC323973A3C4045AB6129D1C139C04E5AC9CF973A3C4094466476CCC139C0506FE682993A3C402B34476DCCC139C020C441A1993A3C40EC16CE65CAC139C0BBFD6775723A3C4035E90473C5C139C0	104	51	51	The Javette UP Art Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
105	0103000020E6100000010000001B000000EF9C0A77753A3C4007DB8AE3ACC139C098A657CB733A3C4039B37B40B9C139C09E2EBACE713A3C404BE9E44AB9C139C0A2D0924F713A3C40197E528CC1C139C033017817703A3C407B914BEEC2C139C0FD0AF7FC713A3C40B1C6B4F8C2C139C059E7332B723A3C40A46BDB45C4C139C031C1C71E873A3C40BB990C78C6C139C0E4F69042873A3C40D9E1FE6DC7C139C0FBCBA1238F3A3C40B135D645C8C139C0A895F2D0903A3C40FFB6168CBBC139C0FCADD96D893A3C40E228C6D9BAC139C0C68277A4893A3C4078D9C997B8C139C0A6E339608B3A3C40FED26CDBB8C139C0DBB3BE4B8B3A3C40B37386D7B9C139C022B18893923A3C4022D68A7DBAC139C030D137A1943A3C40A33FB8FFB5C139C0A4DDB6EF933A3C406D1D2ED0B3C139C0777678858E3A3C40AB9F2A9BB1C139C0CAA302638A3A3C404C7FB9F5B3C139C0DC00B2DC853A3C409F5D1607B2C139C082CF7AC1833A3C408742C94DAEC139C0AE86F577823A3C409D778467AAC139C0E6D6C993783A3C40D756177885C139C0B727EAC96E3A3C4062D6699D92C139C041C65C50753A3C40AC23C70EA9C139C0EF9C0A77753A3C4007DB8AE3ACC139C0	105	52	52	The Javette-UP Art Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
106	0103000020E6100000010000000500000096DDCB19AE3A3C4011F7C5F6C0C139C038049F3DBE3A3C401F8E3250C3C139C0268E8772BC3A3C4062AEF4A3CDC139C0E447876AAC3A3C40A7A9A67CCBC139C096DDCB19AE3A3C4011F7C5F6C0C139C0	106	53	53	South Campus Building 9	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
107	0103000020E610000001000000050000008D2BE22B033B3C40327211C188C139C09BC561D6093B3C40082926E77EC139C0849DF5B7183B3C4094ACC42587C139C0A4F11400123B3C40A0850DF190C139C08D2BE22B033B3C40327211C188C139C0	107	54	54	Kya Rosa	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
108	0103000020E6100000010000001A0000000D9E92E5DA3A3C40A106A4AB7BC139C0B20627C1E53A3C40BEB69F837CC139C0CEE70BF2E43A3C40368A83FF81C139C006CA7A75E93A3C4001A5979C82C139C022A1AECCE93A3C40F1BD920B7FC139C01F136E50F03A3C40A4DCA6A87FC139C01EC153EEEF3A3C40FEB16D3786C139C07AAAD974E53A3C40EE54436985C139C05D25C07FE53A3C40B51991E083C139C0D095F18FE43A3C40B51991E083C139C07CB48A4EE43A3C40DA17225487C139C0272FEF48E33A3C40DA17225487C139C0ED24BC5EE33A3C405576914988C139C0C267A078FD3A3C405DBBE1BD8AC139C08A0B532CFD3A3C40850A5A6C8EC139C09A3C7FA8FC3A3C40FF2DE58293C139C0BF5C63E9F83A3C408DB5615493C139C0E9F2A1DAF83A3C402CFFF99994C139C0803514AFF53A3C40BCECA82F94C139C0803514AFF53A3C40416E21D692C139C05E490B71DE3A3C402CC6167E90C139C09279EBE2DE3A3C4097E1BEAF8CC139C06711FB00DA3A3C401A131E4A8CC139C0E4186440DA3A3C405BE158B888C139C0C5F8A130D93A3C407F06DF9F88C139C00D9E92E5DA3A3C40A106A4AB7BC139C0	108	55	55	Communication and Pathology Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
109	0103000020E610000001000000070000004D7BB3CC9A3A3C40B71AE3DC81C139C01ED57951983A3C403913877796C139C0511E28D5C33A3C408922099C9AC139C08CA16812C63A3C409AA0D30E89C139C083E8FCC0A53A3C4008E2650186C139C06CC88F16A53A3C400A933EA082C139C04D7BB3CC9A3A3C40B71AE3DC81C139C0	109	56	56	Building Sciene Building: Boukunde	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
110	0103000020E6100000010000000D00000039B11F44883A3C402F7665E665C139C0C03DC668923A3C405561B7A46AC139C0F7685DAF883A3C406AAE995F7FC139C07A20237E9A3A3C403215475782C139C0DA6B4FB5993A3C40D926AB7F87C139C05F8D02A1953A3C4052B0241387C139C035297685943A3C40443E7B8A8FC139C027880BAE843A3C402D4877818DC139C049F84AEC843A3C405A5AB50B8CC139C06494F8957E3A3C40A1B6C7238BC139C051185D367B3A3C40FD7ED94A8FC139C0B6EC5E93783A3C40093D9C7D85C139C039B11F44883A3C402F7665E665C139C0	110	57	57	Art Square	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
111	0103000020E61000000100000015000000340E08644B3A3C4075B4BBCA70C139C02032FB48673A3C40336DB72374C139C0E9792CB5663A3C40E55AB1757CC139C03771C6275E3A3C40F1F201AE7BC139C0143E65CB5D3A3C40E36D8AA97DC139C0D4CC8626613A3C40E519B4157EC139C0368562D3603A3C4069795D6681C139C0D79A80795A3A3C407AF847C880C139C0E1A82B6B5A3A3C40551E6A9F81C139C0853E3EF15F3A3C40840D672D82C139C056BE28B45F3A3C40169D93AD85C139C0619A62F8673A3C40020DA17B86C139C093E6A044673A3C40B7A1F8D58CC139C0F6705F44583A3C40BE5FA95E8BC139C00C6EF5EF583A3C402F5C0F3C83C139C08C2C912E573A3C40F0A1FB2583C139C05C09DCDC563A3C40EFB22AF785C139C07613BB05463A3C4073AA279B84C139C09B3EB604483A3C40C4D41AB177C139C0D57DD5374A3A3C4010D2248277C139C0340E08644B3A3C4075B4BBCA70C139C0	111	58	58	Visual Arts Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
112	0103000020E6100000010000009C00000050E72B56E8393C4066BF5A995FC139C09A8E3F3AE8393C40491362945FC139C03F5A6A1EE8393C407AA5ED8E5FC139C0B46EAE02E8393C4076E1FD885FC139C079EE0DE7E7393C403A3C93825FC139C0F3F98ACBE7393C403634AE7B5FC139C041AF27B0E7393C4045514F745FC139C0122AE694E7393C40A624776C5FC139C07983C879E7393C40EB4826645FC139C0CBD1D05EE7393C40F2615D5B5FC139C06D280144E7393C40D71C1D525FC139C0B0975B29E7393C40E42F66485FC139C0AA2CE20EE7393C40865A393E5FC139C007F196F4E6393C403F6597335FC139C0E9EA7BDAE6393C40932181285FC139C0B81C93C0E6393C40F969F71C5FC139C00285DEA6E6393C40CF21FB105FC139C04F1E608DE6393C4040358D045FC139C0F9DE1974E6393C403A99AEF75EC139C00AB90D5BE6393C40544B60EA5EC139C0149A3D42E6393C40C151A3DC5EC139C0066BAB29E6393C4038BB78CE5EC139C00F105911E6393C40DE9EE1BF5EC139C0726848F9E5393C40351CDFB05EC139C0634E7BE1E5393C40015B72A15EC139C0E496F3C9E5393C40378B9C915EC139C09F11B3B2E5393C40DFE45E815EC139C0C488BB9BE5393C40FFA7BA705EC139C0E4C00E85E5393C40851CB15F5EC139C0CE78AE6EE5393C402A92434E5EC139C071699C58E5393C405960733C5EC139C0B245DA42E5393C4016E6412A5EC139C053BA692DE5393C40E089B0175EC139C0CC6D4C18E5393C4099B9C0045EC139C02D008403E5393C4069EA73F15DC139C0FF0A12EFE4393C409F98CBDD5DC139C02221F8DAE4393C409547C9C95DC139C0ADCE37C7E4393C4094816EB55DC139C0D698D2B3E4393C40B3D7BCA05DC139C0CCFDC9A0E4393C40B9E1B58B5DC139C09F741F8EE4393C40FE3D5B765DC139C0216DD47BE4393C404B91AE605DC139C0C94FEA69E4393C40BA86B14A5DC139C0997D6258E4393C4094CF65345DC139C004503E47E4393C403023CD1D5DC139C0CE187F36E4393C40D33EE9065DC139C0F8212626E4393C408AE5BBEF5CC139C0A3AD3416E4393C400BE046D85CC139C0F9F5AB06E4393C4090FC8BC05CC139C0152D8DF7E3393C40B30E8DA85CC139C0E77CD9E8E3393C404DEF4B905CC139C0250792DAE3393C404C7CCA775CC139C02EE5B7CCE3393C4094980A5F5CC139C0F6274CBFE3393C40D72B0E465CC139C0F5D74FB2E3393C407022D72C5CC139C00BF5C3A5E3393C403B6D67135CC139C07376A999E3393C407401C1F95BC139C0AF4A018EE3393C408AD8E5DF5BC139C07157CC82E3393C40FDEFD7C55BC139C08F790B78E3393C40364999AB5BC139C0EE84BF6DE3393C405BE92B915BC139C07544E963E3393C402ED991765BC139C0F979895AE3393C40E024CD5B5BC139C033DEA051E3393C40EBDBDF405BC139C0AF203049E3393C40E810CC255BC139C0BFE73741E3393C4067D9930A5BC139C06DD0B839E3393C40C64D39EF5AC139C0726EB332E3393C400889BED35AC139C0274C282CE3393C40A9A825B85AC139C07CEA1726E3393C4078CC709C5AC139C0F1C08220E3393C406B16A2805AC139C04321B213E3393C40A84692545AC139C0C269A407E3393C4052984B285AC139C020855AFCE2393C408569D1FB59C139C02B4FD5F1E2393C40441C27CF59C139C0B99415E8E2393C403D1650A259C139C09E131CDFE2393C4084C04F7559C139C0977AE9D6E2393C405187294859C139C043697ECFE2393C40C0D9E01A59C139C01270DBC8E2393C40892979ED58C139C03E1001C3E2393C40C0EAF5BF58C139C0BDBBEFBDE2393C4095935A9258C139C03BD5A7B9E2393C40099CAA6458C139C013B029B6E2393C40B17DE93658C139C0469075B3E2393C406FB31A0958C139C07AAA8BB1E2393C402FB941DB57C139C0F0236CB0E2393C40A50B62AD57C139C0881217B0E2393C4005287F7F57C139C0B97C8CB0E2393C40C48B9C5157C139C09559CCB1E2393C4050B4BD2357C139C0C990D6B3E2393C40CE1EE6F556C139C09CFAAAB6E2393C40D64719C856C139C0F55F49BAE2393C402EAB5A9A56C139C05E7AB1BEE2393C4088C3AD6C56C139C00BF4E2C3E2393C403C0A163F56C139C0DC67DDC9E2393C4007F7961156C139C06B61A0D0E2393C40C5FF33E455C139C00F5D2BD8E2393C402F98F0B655C139C0EAC77DE0E2393C409831D08955C139C0F4FF96E9E2393C40A83AD65C55C139C0035476F3E2393C401D1F063055C139C0DD031BFEE2393C408347630355C139C048408409E3393C40F718F1D654C139C092D95BC8DD393C40B87ABE3853C139C094576083DD393C4074BF082453C139C071E872AEDC393C40346415BD54C139C00D20EED2DB393C40E345A25256C139C0A9B5E0F0DA393C40B23494E457C139C0A4D05908DA393C40B03ED07259C139C07C076919D9393C409BB13BFD5AC139C0BE5E1E24D8393C40A71CBC835CC139C0F6478A28D7393C40465237065EC139C095A0BD26D6393C40E86993845FC139C0CEB0C91ED5393C40BAC1B6FE60C139C085F57505D4393C40D48C064E62C139C0B02D74E6D2393C40C91A7D9863C139C0D0BCD9C1D1393C400ACB01DE64C139C02A71BC97D0393C405D5B7C1E66C139C029823268CF393C40AEE9D45967C139C0B28E5233CE393C40D6F5F38F68C139C0789B33F9CC393C405A63C2C069C139C04511EDB9CB393C40267B29EC6AC139C037BB9675CA393C403BED12126CC139C000C5482CC9393C405DD268326DC139C014B91BDEC7393C40B1AD154D6EC139C090436DD3C8393C4055510E606FC139C090436DD3C8393C4055510E606FC139C0BCCFE87DC9393C40F399BB0F6FC139C08D8BB929CA393C4034324DC26EC139C088E8D2D6CA393C40C0C2C8776EC139C02F402885CB393C40BBBD33306EC139C0E9D4AC34CC393C405E5E93EB6DC139C0F7D253E5CC393C4096A8ECA96DC139C05F511097CD393C40A768446B6DC139C0DF52D549CE393C40D1329F2F6DC139C0E3C695FDCE393C40F96201F76CC139C0728A44B2CF393C405D1C6FC16CC139C02C69D467D0393C403F49EC8E6CC139C03E1E381ED1393C40A19A7C5F6CC139C0575562D5D1393C40FE8723336CC139C0A5AB458DD2393C400B4FE4096CC139C0D0B0D445D3393C4076F3C1E36BC139C0A8385E51D8393C4007942DB06BC139C079D9905DDD393C404F5D4B916BC139C07FAE176AE2393C40BA561D876BC139C08C9B816FE2393C40965AB4D26AC139C08C9B816FE2393C40965AB4D26AC139C01EF9FA39FF393C40C4F609956CC139C07A3DA6E0FF393C408D918F5068C139C0EBEDA291063A3C40390A03EF68C139C04A324E38073A3C4012ACDA9964C139C0F9EDDFBE003A3C4072BB06C163C139C0DB5EBA24013A3C407861AD2B60C139C014099F10F8393C4088A76ACD5EC139C002F66E57F7393C401B99632862C139C050E72B56E8393C4066BF5A995FC139C0	112	59	59	Administration Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
113	0103000020E610000001000000090000003F9C3424F8393C40693AF02755C139C0592CFB01F7393C4022EEB6BE5DC139C02EB00C0D253A3C4045B1639364C139C03A6825372B3A3C409496FD9B6AC139C057B526DF393A3C400C4454D567C139C0103309A23B3A3C40D96D01015EC139C0CBEB9C72283A3C40A25CDA655BC139C01F6C3332283A3C40E3996FD05CC139C03F9C3424F8393C40693AF02755C139C0	113	60	60	Administration Building	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
114	0103000020E6100000010000007B010000AB13BB7ACB3B3C4021B8A7F53DC139C0DDB002D9CF3B3C409C793E603FC139C0BA23FDC5CF3B3C40E9957E673FC139C049836F9ADD3B3C400EE5DB0E43C139C052F23268DA3B3C40F37B0C044FC139C0F10B60ABD93B3C401F1D30BD4EC139C0F10B60ABD93B3C401F1D30BD4EC139C0B2E7D0DED83B3C405B66867450C139C081509B53D03B3C401698FB594EC139C01A199B3CCE3B3C40CD53A4FE54C139C00C53745BC33B3C40D30150AC51C139C0FE928333C53B3C40F29355DB4CC139C0B09F3885C83B3C40AAFF9AE84DC139C0474AA2FACA3B3C40A713FCFD45C139C0138C09F1CA3B3C40FB35F21046C139C0998A1CE7CA3B3C4081C5BC2346C139C0A00BDCDCCA3B3C40CE4B5A3646C139C06DDB48D2CA3B3C40F655C94846C139C0B6CC63C7CA3B3C40B074085B46C139C08EB82DBCCA3B3C406A3C166D46C139C0597EA7B0CA3B3C406A45F17E46C139C0B603D2A4CA3B3C40E92B989046C139C07134AE98CA3B3C40309009A246C139C06D023D8CCA3B3C40B11644B346C139C094657F7FCA3B3C40236846C446C139C0C15B7672CA3B3C409F310FD546C139C0B0E82265CA3B3C40B4249DE546C139C0E7158657CA3B3C408BF7EEF546C139C0A1F2A049CA3B3C40F664030647C139C0BB93743BCA3B3C40922CD91547C139C09D13022DCA3B3C40DA126F2547C139C024924A1ECA3B3C4042E1C33447C139C08C344F0FCA3B3C405166D64347C139C05A251100CA3B3C40B475A55247C139C0439491F0C93B3C405AE82F6147C139C016B6D1E0C93B3C40889C746F47C139C0A1C4D2D0C93B3C40F375727D47C139C09EFE95C0C93B3C40CF5D288B47C139C095A71CB0C93B3C40F042959847C139C0C507689FC93B3C40D219B8A547C139C00B6C798EC93B3C40BADC8FB247C139C0C625527DC93B3C40C38B1BBF47C139C0C08AF36BC93B3C40F22C5ACB47C139C00FF55E5AC93B3C404DCC4AD747C139C0FFC29548C93B3C40EE7BECE247C139C0F4569936C93B3C4011543EEE47C139C04C176B24C93B3C402A733FF947C139C0496E0C12C93B3C40F5FDEE0348C139C0EFC97EFFC83B3C40881F4C0E48C139C0EE9BC3ECC83B3C406409561848C139C07C59DCD9C83B3C4081F30B2248C139C0427BCAC6C83B3C40651C6D2B48C139C0377D8FB3C83B3C402AC9783448C139C087DE2CA0C83B3C4096452E3D48C139C07321A48CC83B3C4021E48C4548C139C033CBF678C83B3C4007FE934D48C139C0DA632665C83B3C4055F3425548C139C034763451C83B3C40F02A995C48C139C0A98F223DC83B3C40AB12966348C139C01F40F228C83B3C40491F396A48C139C0DA19A514C83B3C408CCC817048C139C05BB13C00C83B3C403F9D6F7648C139C0449DBAEBC73B3C403E1B027C48C139C0367620D7C73B3C4084D7388148C139C0B0D66FC2C73B3C402C6A138648C139C0F45AAAADC73B3C408272918A48C139C0E1A0D198C73B3C400197B28E48C139C0D647E783C73B3C406385769248C139C092F0EC6EC73B3C40A0F2DC9548C139C0113DE459C73B3C40FA9AE59848C139C06ED0CE44C73B3C40FD41909B48C139C0C34EAE2FC73B3C4088B2DC9D48C139C0055D841AC73B3C40CDBECA9F48C139C0E5A05205C73B3C4059405AA148C139C0AFC01AF0C63B3C4013188BA248C139C02C63DEDAC63B3C40412E5DA348C139C07B2F9FC5C63B3C408A72D0A348C139C0F5CC5EB0C63B3C40F4DBE4A348C139C00CE31E9BC63B3C40EA689AA348C139C02719E185C63B3C40351FF1A248C139C08116A770C63B3C40050CE9A148C139C00E82725BC63B3C40E54382A048C139C051024546C63B3C40C3E2BC9E48C139C0453D2031C63B3C40E90B999C48C139C032D8051CC63B3C40FAE9169A48C139C09677F706C63B3C40F1AE369748C139C0FBBEF6F1C53B3C401C94F89348C139C0DE5005DDC53B3C4016DA5C9048C139C08BCE24C8C53B3C40C5C8638C48C139C0FBD756B3C53B3C4053AF0D8848C139C0B80B9D9EC53B3C4025E45A8348C139C0B906F989C53B3C40DBC44B7E48C139C042646C75C53B3C4041B6E07848C139C0C6BDF860C53B3C404D241A7348C139C0C7AA9F4CC53B3C401382F86C48C139C0B5C06238C53B3C40C0497C6648C139C0CE924324C53B3C408AFCA55F48C139C000B24310C53B3C40AE22765848C139C0CBAC64FCC43B3C405E4BED5048C139C01C0FA8E8C43B3C40BB0C0C4948C139C038620FD5C43B3C40C703D34048C139C0932C9CC1C43B3C4059D4423848C139C0BAF14FAEC43B3C4011295C2F48C139C030322C9BC43B3C4049B31F2648C139C0506B3288C43B3C400B2B8E1C48C139C033176475C43B3C40FD4EA81248C139C090ACC262C43B3C4056E46E0848C139C09D9E4F50C43B3C40D1B6E2FD47C139C0F75C0C3EC43B3C40959804F347C139C08153FA2BC43B3C402D62D5E747C139C049EA1A1AC43B3C4073F255DC47C139C06D856F08C43B3C40802E87D047C139C0FF84F9F6C33B3C4099016AC447C139C0E844BAE5C33B3C401D5DFFB747C139C0CE1CB3D4C33B3C40733848AB47C139C0FC5FE5C3C33B3C40F790459E47C139C0415D52B3C33B3C40E469F89047C139C0DD5EFBA2C33B3C4043CC618347C139C062AAE192C33B3C40D3C6827547C139C09E800683C33B3C40F86D5C6747C139C0801D6B73C33B3C40A1DBEF5847C139C002B81064C33B3C40362F3E4A47C139C00D82F854C33B3C407E8D483B47C139C064A82346C33B3C408B20102C47C139C08D529337C33B3C40A317961C47C139C0B6A24829C33B3C4026A7DB0C47C139C0A4B5441BC33B3C407708E2FC46C139C099A2880DC33B3C40E579AAEC46C139C0407B1500C33B3C40903E36DC46C139C0954BECF2C23B3C40529E86CB46C139C0D4190EE6C23B3C40A3E59CBA46C139C064E67BD9C23B3C4082657AA946C139C0BEAB36CDC23B3C405973209846C139C0615E3FC1C23B3C40E268908646C139C0B9EC96B5C23B3C400EA4CB7446C139C0113F3EAAC23B3C40E886D36246C139C07B37369FC23B3C407977A95046C139C0C6B17F94C23B3C40B0DF4E3E46C139C067831B8AC23B3C40402DC52B46C139C06A7B0A80C23B3C4088D10D1946C139C063624D76C23B3C4075412A0646C139C05DFAE46CC23B3C4065F51BF345C139C0CDFED163C23B3C400769E4DF45C139C08124155BC23B3C40441B85CC45C139C09119AF52C23B3C401A8EFFB845C139C05685A04AC23B3C40824655A545C139C05908EA42C23B3C4052CC879145C139C0493C8C3BC23B3C401AAA987D45C139C0EBB38734C23B3C400D6D896945C139C015FBDC2DC23B3C40DAA45B5545C139C09D968C27C23B3C4094E3104145C139C052049721C23B3C408BBDAA2C45C139C0F1BAFC1BC23B3C4035C92A1845C139C01C2ABE16C23B3C40089F920345C139C053BADB11C23B3C405DD9E3EE44C139C0E9CC550DC23B3C404E1420DA44C139C0FDBB2C09C23B3C409BED48C544C139C076DA6005C23B3C40810460B044C139C0F773F201C23B3C40A4F9669B44C139C0E0CCE1FEC13B3C40E66E5F8644C139C042222FFCC13B3C404B074B7144C139C0E0A9DAF9C13B3C40D7662B5C44C139C02692E4F7C13B3C407032024744C139C028024DF6C13B3C40B60FD13144C139C0A01914F5C13B3C40EBA4991C44C139C0E7F039F4C13B3C40CE985D0744C139C0F998BEF3C13B3C4077921EF243C139C0701BA2F3C13B3C403D39DEDC43C139C0837AE4F3C13B3C4090349EC743C139C007B185F4C13B3C40D92B60B243C139C071B285F5C13B3C4059C6259D43C139C0D36AE4F6C13B3C400AABF08743C139C0E1BEA1F8C13B3C407C80C27243C139C0F38BBDFAC13B3C40B5EC9C5D43C139C004A837FDC13B3C400F95814843C139C0B9E10F00C23B3C40181E723343C139C066004603C23B3C40722B701E43C139C00CC4D906C23B3C40B35F7D0943C139C065E5CA0AC23B3C40405C9BF442C139C0E615190FC23B3C4032C1CBDF42C139C0C6FFC313C23B3C40322D10CB42C139C00346CB18C23B3C405C3D6AB642C139C06D842E1EC23B3C40198DDBA142C139C0AA4FED23C23B3C4006B6658D42C139C04035072AC23B3C40D04F0A7942C139C09EBB7B30C23B3C4015F0CA6442C139C09CA0B535C23B3C4073C21A5042C139C03DA24B3BC23B3C40C4B4823B42C139C045513D41C23B3C401E61042742C139C059378A47C23B3C40955FA11242C139C002D7314EC23B3C4020465BFE41C139C0BCAB3355C23B3C4075A833EA41C139C0FF298F5CC23B3C40E8172CD641C139C049BF4364C23B3C40542346C241C139C02BD2506CC23B3C40F45683AE41C139C052C2B574C23B3C40453CE59A41C139C098E8717DC23B3C40EE596D8741C139C00C978486C23B3C4098331D7441C139C00319ED8FC23B3C40D949F66041C139C024B3AA99C23B3C400F1AFA4D41C139C079A3BCA3C23B3C40471E2A3B41C139C07C2122AEC23B3C401BCD872841C139C0275EDAB8C23B3C409C99141641C139C00484E4C3C23B3C402DF3D10341C139C03EB73FCFC23B3C406D45C1F140C139C0B415EBDAC23B3C4014F8E3DF40C139C006B7E5E6C23B3C40E06E3BCE40C139C0AAAC2EF3C23B3C407109C9BC40C139C00002C5FFC23B3C4030238EAB40C139C061BCA70CC33B3C4039138C9A40C139C037DBD519C33B3C40392CC48940C139C00D584E27C33B3C4058BC377940C139C0A7261035C33B3C401C0DE86840C139C012351A43C33B3C405463D65840C139C0BF6B6B51C33B3C40FBFE034940C139C094AD0260C33B3C401F1B723940C139C008D8DE6EC33B3C40CBED212A40C139C031C3FE7DC33B3C40EDA7141B40C139C0E241618DC33B3C403E754B0C40C139C0C221059DC33B3C402D7CC7FD3FC139C05F2BE9ACC33B3C40C5DD89EF3FC139C04B220CBDC33B3C4098B593E13FC139C033C56CCDC33B3C40AB19E6D33FC139C0F8CD09DEC33B3C405D1A82C63FC139C0C8F1E1EEC33B3C4052C268B93FC139C037E1F3FFC33B3C4061169BAC3FC139C05B483E11C43B3C407F151AA03FC139C0E8CEBF22C43B3C40A7B8E6933FC139C043187734C43B3C40CEF201883FC139C0A8C36246C43B3C40C9B06C7C3FC139C03C6C8158C43B3C4040D927713FC139C02EA9D16AC43B3C40964C34663FC139C0D30D527DC43B3C40E0E4925B3FC139C0BF290190C43B3C40CC7544513FC139C0E488DDA2C43B3C4095CC49473FC139C0B1B3E5B5C43B3C40F1AFA33D3FC139C02B2F18C9C43B3C4004E052343FC139C00C7D73DCC43B3C404E16582B3FC139C0E11BF6EFC43B3C409D05B4223FC139C02A879E03C53B3C40045A671A3FC139C076376B17C53B3C40C5B872123FC139C07FA25A2BC53B3C404DC0D60A3FC139C04E3B6B3FC53B3C40200894033FC139C058729B53C53B3C40D320ABFC3EC139C099B5E967C53B3C40FF931CF63EC139C0BB70547CC53B3C4033E4E8EF3EC139C02D0DDA90C53B3C40F08C10EA3EC139C04AF278A5C53B3C40990294E43EC139C073852FBAC53B3C406EB273DF3EC139C0332AFCCEC53B3C408502B0DA3EC139C05E42DDE3C53B3C40BC5149D63EC139C02F2ED1F8C53B3C40B7F73FD23EC139C06B4CD60DC63B3C40D74494CE3EC139C082FAEA22C63B3C40348246CB3EC139C0AA940D38C63B3C4097F156C83EC139C009763C4DC63B3C4077CDC5C53EC139C0CEF87562C63B3C40F14893C33EC139C05276B877C63B3C40C58FBFC13EC139C03F47028DC63B3C4057C64AC03EC139C0ACC351A2C63B3C40A40935BF3EC139C03F43A5B7C63B3C40496F7EBE3EC139C04C1DFBCCC63B3C40780527BE3EC139C0FBA851E2C63B3C40FED22EBE3EC139C0663DA7F7C63B3C4041D795BE3EC139C0B831FA0CC73B3C403C0A5CBF3EC139C052DD4822C73B3C40865C81C03EC139C0EB979137C73B3C404CB705C23EC139C0AEB9D24CC73B3C405BFCE8C33EC139C05F9B0A62C73B3C401A062BC63EC139C079963777C73B3C4093A7CBC83EC139C05305588CC73B3C4075ACCACB3EC139C039436AA1C73B3C4015D927CF3EC139C096AC6CB6C73B3C4077EAE2D23EC139C00E9F5DCBC73B3C405296FBD63EC139C0A2793BE0C73B3C40128B71DB3EC139C0CD9C04F5C73B3C40E66F44E03EC139C0A96AB709C83B3C40BDE473E53EC139C00B47521EC83B3C405782FFEA3EC139C0A697D332C83B3C4048DAE6F03EC139C02AC43947C83B3C40FF7629F73EC139C06136835BC83B3C40D5DBC6FD3EC139C0535AAE6FC83B3C401285BE043FC139C0649EB983C83B3C40F6E70F0C3FC139C07173A397C83B3C40CB72BA133FC139C0F34C6AABC83B3C40E78CBD1B3FC139C019A10CBFC83B3C40C19618243FC139C0EAE888D2C83B3C40F5E9CA2C3FC139C064A0DDE5C83B3C4057D9D3353FC139C0984609F9C83B3C40FDB0323F3FC139C0C95D0A0CC93B3C4051B6E6483FC139C0886BDF1EC93B3C401A28EF523FC139C0D5F88631C93B3C40903E4B5D3FC139C03992FF43C93B3C40662BFA673FC139C0E4C74756C93B3C40E219FB723FC139C0CA2D5E68C93B3C40E62E4D7E3FC139C0BE5B417AC93B3C400589EF893FC139C090EDEF8BC93B3C409440E1953FC139C02783689DC93B3C40BB6721A23FC139C09CC0A9AEC93B3C40870AAFAE3FC139C0594EB2BFC93B3C40012F89BB3FC139C02ED980D0C93B3C403CD5AEC83FC139C06F1214E1C93B3C406DF71ED63FC139C00DB06AF1C93B3C40FC89D8E33FC139C0B16C8301CA3B3C409D7BDAF13FC139C0D3075D11CA3B3C4061B5230040C139C0D545F620CA3B3C40CF1AB30E40C139C019F04D30CA3B3C40F689871D40C139C01ED5623FCA3B3C408ADB9F2C40C139C090C8334ECA3B3C40F5E2FA3B40C139C068A3BF5CCA3B3C40706E974B40C139C0FE43056BCA3B3C401E47745B40C139C01F8E0379CA3B3C401E31906B40C139C0256BB986CA3B3C40ABEBE97B40C139C00DCA2594CA3B3C402F31808C40C139C08C9F47A1CA3B3C405EB7519D40C139C021E61DAECA3B3C40502F5DAE40C139C02E9EA7BACA3B3C409D45A1BF40C139C007CEE3C6CA3B3C4075A21CD140C139C00A82D1D2CA3B3C40B9E9CDE240C139C0B0CC6FDECA3B3C401CBBB3F440C139C09CC6BDE9CA3B3C4038B2CC0641C139C0B58EBAF4CA3B3C40AD66171941C139C0304A65FFCA3B3C403E6C922B41C139C0A324BD09CB3B3C40EA523C3E41C139C01950C113CB3B3C400CA7135141C139C01E05711DCB3B3C4075F1166441C139C0CF82CB26CB3B3C408DB7447741C139C0EC0ED02FCB3B3C406A7B9B8A41C139C0E2F57D38CB3B3C40F7BB199E41C139C0DE8AD440CB3B3C4007F5BDB141C139C0D627D348CB3B3C407E9F86C541C139C0972D7950CB3B3C40663172D941C139C0D503C657CB3B3C40161E7FED41C139C03019B95ECB3B3C404AD6AB0142C139C047E35165CB3B3C4046C8F61542C139C0BDDE8F6BCB3B3C40F35F5E2A42C139C0468F7271CB3B3C400107E13E42C139C0AF7FF976CB3B3C4005257D5342C139C0E841247CCB3B3C40971F316842C139C00E6FF280CB3B3C40775AFB7C42C139C070A76385CB3B3C40A737DA9142C139C099927789CB3B3C409017CCA642C139C056DF2D8DCB3B3C402059CFBB42C139C0BC438690CB3B3C40EA59E2D042C139C02D7D8093CB3B3C40487603E642C139C05F501C96CB3B3C407C0931FB42C139C05F895998CB3B3C40CF6D691043C139C099FB379ACB3B3C40B1FCAA2543C139C0D381B79BCB3B3C40DF0EF43A43C139C03AFED79CCB3B3C407DFC425043C139C05C5A999DCB3B3C403D1D966543C139C03087FB9DCB3B3C407CC8EB7A43C139C0117DFE9DCB3B3C406455429043C139C0C63BA29DCB3B3C400E1B98A543C139C07CCAE69CCB3B3C40A470EBBA43C139C0C637CC9BCB3B3C407DAD3AD043C139C0A099529ACB3B3C40452984E543C139C0690D7A98CB3B3C40193CC6FA43C139C0E3B74296CB3B3C40A93EFF0F44C139C02FC5AC93CB3B3C405C8A2D2544C139C0CB68B890CB3B3C406B794F3A44C139C08BDD658DCB3B3C400767634F44C139C09965B589CB3B3C4079AF676444C139C06C4AA785CB3B3C403FB05A7944C139C0C3DC3B81CB3B3C4030C83A8E44C139C0A074737CCB3B3C409D5706A344C139C040714E77CB3B3C406FC0BBB744C139C01639CD71CB3B3C40466659CC44C139C0BE39F06BCB3B3C409FAEDDE044C139C0FBE7B765CB3B3C40EC0047F544C139C0A6BF245FCB3B3C40BCC6930945C139C0AE433758CB3B3C40D36BC21D45C139C004FEEF50CB3B3C404F5ED13145C139C0997F4F49CB3B3C40C50EBF4545C139C0594CF5C2CC3B3C40C0F66B5840C139C0594CF5C2CC3B3C40C0F66B5840C139C0680CE6EACA3B3C401EE92EA03FC139C0680CE6EACA3B3C401EE92EA03FC139C0AB13BB7ACB3B3C4021B8A7F53DC139C0	114	61	61	Conference Centre	\N	Suzi - Digitized Buildings suzi _ digitized buildings	C:/Users/Keren/Downloads/Suzi - Digitized Buildings.sqlite|layername=suzi _ digitized buildings
51	0103000020E61000000100000018000000ACEB91CE063B3C402EF5877909C139C0907177EC0A3B3C40143C3B3E0BC139C03CC19A8E0B3B3C406DCB12FC0BC139C03FEA73B20C3B3C408DEE16450CC139C0C8D0128C0F3B3C4098BD2FFB0DC139C09E7824DD0F3B3C404E607DCE0FC139C0CEBF7C72113B3C408E4A494913C139C0DFBE0BE9093B3C40D89A629718C139C0D01AA759053B3C4087CCBCDD1EC139C0FB729508053B3C40B141376C27C139C0A0D34EC4033B3C4094F3E19E28C139C0C27642CA003B3C40B91FAD8128C139C08E061111FE3A3C40FF2770D227C139C054A77571F93A3C40087E4B4125C139C0C634B512F53A3C40269B5BCD22C139C090613BF8F13A3C4084DE83771EC139C01582490FF43A3C40454C6BC11CC139C0D801F3C5FA3A3C409565D01A19C139C05EBFB87BFC3A3C405C13C43F18C139C03DB97C14FF3A3C40FAE575D412C139C09A819C7C013B3C4097CF67C90AC139C0FB729508053B3C40E585D1030BC139C0557524AE063B3C40A56294540AC139C0ACEB91CE063B3C402EF5877909C139C0	51	29	\N	Chancellors Building	29	Buildings	C:/Users/Keren/Downloads/Buildings.sqlite|layername=buildings
\.


                                                                                                                                                                                                                                                                           4275.dat                                                                                            0000600 0004000 0002000 00000000005 14511212744 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4276.dat                                                                                            0000600 0004000 0002000 00000000005 14511212744 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4506.dat                                                                                            0000600 0004000 0002000 00000006705 14511212744 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E610000008DFA062413B3C4067D90F8842C039C0	Burnett St entrance	-25.75101519	28.23146645	10:00 03/08	8	\N
2	0101000020E61000006FA35C75783B3C404C50E4C599C039C0	Prospect St entrance	-25.75234639	28.2323068	10:05 03/08	31	1 skateboard
3	0101000020E6100000888ED3C6C73B3C401C080B1FF8C039C0	South St entrance	-25.75378603	28.2335171	12:45 01/08	14	\N
4	0101000020E61000006ADFDC5F3D3C3C40948E8BCD3BC139C0	Duxbury Rd entrance	-25.75481877	28.2353115	12:52 01/08	15	\N
5	0101000020E6100000A1DD9D8C5C3C3C40B593DAEE92C139C0	Lunnon Rd entrance	-25.75614827	28.23578719	13:08 01/08	43	1 bicycle
6	0101000020E61000003BD3F8433B3B3C40F26C033584C139C0	Lynnwood Rd (main entrance)	-25.75592357	28.23137307	13:55 01/08	9	\N
7	0101000020E6100000E8851A095D3B3C40BB4988C986C039C0	Sci-Enza	-25.75205669	28.23188836	09:56 03/08	12	\N
8	0101000020E610000096F40735093B3C402D6E50B991C039C0	Old Agriculture	-25.75222357	28.23060924	10:11 03/08	3	\N
9	0101000020E610000085A20E65873A3C40ABA97697D5C039C0	Engineering 1	-25.75325915	28.22862846	10:52 03/08	13	\N
10	0101000020E61000001E1F88878B3A3C404EAC193AF2C039C0	Steers	-25.75369609	28.22869155	10:49 03/08	21	\N
11	0101000020E61000002F70B357A33A3C4049B61DC7CDC039C0	Natural Sciences 2	-25.75313992	28.22905491	10:56 03/08	9	\N
12	0101000020E6100000EDE8872A5F3A3C401F7FED8943C139C0	Engineering 3 (behind)	-25.75493681	28.22801462	10:44 03/08	6	\N
13	0101000020E6100000C3A9E6A4BD3A3C401369552A2CC139C0	Theology walkway	-25.75458016	28.22945624	10:35 03/08	25	\N
14	0101000020E6100000D71AE7C28A3A3C403AB61AE977C139C0	South Campus Bridge	-25.75573594	28.22867983	10:41 03/08	24	\N
15	0101000020E61000000A4DAF200F3B3C405DE5011355C139C0	Library	-25.75520438	28.23069958	13:50 01/08	44	\N
16	0101000020E6100000F5FF81A4153B3C40B4096AD708C139C0	Chancellor's Building	-25.75404116	28.23079899	12:11 01/08	57	\N
17	0101000020E61000001308BFFD4E3B3C40779FE3A3C5C039C0	Thuto	-25.75301575	28.23167406	09:51 03/08	10	\N
18	0101000020E61000004EDF6397453B3C40BAAAA22E08C139C0	Piazza Entrance	-25.7540311	28.23153063	12:31 01/08	76	\N
19	0101000020E61000003C1BEA5EC43B3C40314A0A0B72C139C0	EMS bridge	-25.75564641	28.23346513	13:24 01/08	48	\N
20	0101000020E61000004D9009DF983B3C40007178BD0BC139C0	Centenary	-25.75408539	28.23280138	12:37 01/08	11	\N
21	0101000020E610000076129536EA3B3C4060D761124FC139C0	Graduate Centre	-25.75511279	28.23404256	12:58 01/08	16	\N
22	0101000020E6100000EE9579ABAE3B3C4009645D791CC139C0	Monastery Hall	-25.75434073	28.233134	12:41 01/08	20	\N
23	0101000020E6100000D7CA5BE0B83B3C40C9A5754453C139C0	Behind EMS	-25.75517681	28.23328974	13:32 01/08	16	\N
24	0101000020E610000081AC0A811A3C3C407A4E1F2686C139C0	Bioinformatics Building	-25.7559532	28.23477942	13:05 01/08	23	\N
25	0101000020E61000000AA61621A73B3C4017AFE4F06AC139C0	IT building	-25.75553804	28.23301894	13:28 01/08	80	\N
26	0101000020E61000004F70B9134F3B3C40AD239A822DC139C0	SCU tunnel	-25.75460068	28.23167537	13:42 01/08	1	\N
27	0101000020E6100000307F09053A3B3C4050CB6A1558C139C0	SSC entrance	-25.7552503	28.23135406	13:46 01/08	21	\N
28	0101000020E610000034A4A37FF63A3C400DC53E7DDBC039C0	Geography-Thuto walkway	-25.75334914	28.23032377	11:01 03/08	20	\N
29	0101000020E610000014F6E5B3D93A3C40ABB7FE4402C139C0	Old Arts	-25.75394088	28.22988438	11:04 03/08	23	\N
30	0101000020E610000004ABC9D78E3B3C40D6DE0AD58BC139C0	Informatorium entrance	-25.75603992	28.23264836	09:58 07/08	2	1 bicycle, 1 golf-cart
31	0101000020E6100000AEDF02BFFC3B3C40FDF01C5FB5C139C0	Behind Agri Annex	-25.75667376	28.23432535	10:08 10/08	14	\N
\.


                                                           4512.dat                                                                                            0000600 0004000 0002000 00000017123 14511212744 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0103000020E610000001000000050000005F61846C6E3A3C4039D7414E09C139C01669F8678F3A3C40958B141C1DC139C04CE58A896D3A3C40959F2A3B48C139C0082846164D3A3C40286C7C4434C139C05F61846C6E3A3C4039D7414E09C139C0	1	1	Engineering 3 Parking
2	0103000020E6100000010000000700000022C16D6D573B3C40E65F8E8A63C139C0BA619335673B3C40782E609366C139C092BA9EB25E3B3C409BB3645D82C139C0D9612C74443B3C403F4B902D7BC139C0892048A5473B3C40E9D66B0873C139C0A8D8941B523B3C40340E0BF374C139C022C16D6D573B3C40E65F8E8A63C139C0	2	2	Parking
3	0103000020E6100000010000000500000071B5A6B5483B3C4050EE5BCD83C139C0983422187A3B3C40199332248FC139C04B1311F1783B3C40E2C9FEE492C139C02C521200483B3C4070CA99A287C139C071B5A6B5483B3C4050EE5BCD83C139C0	3	3	Parking
4	0103000020E6100000010000000A00000016A9403E373B3C40D2A9400296C139C089F36FC6373B3C408F1B5ED995C139C0F61DCCA63C3B3C406797500198C139C0480EB232403B3C409A4FB43D9AC139C0DC612C74443B3C409B2CA21D9DC139C0401F0A26423B3C401BE2CAAB9FC139C0CFD4DA9D413B3C40FB6CADD49FC139C0417008693B3B3C40007135519CC139C0B60B3634353B3C408648D65C99C139C016A9403E373B3C40D2A9400296C139C0	4	4	Parking
5	0103000020E610000001000000050000000C72EEEF163C3C409D55D29BC1C139C0F3B1FB00313C3C40D9C5893CC8C139C0170C45FD2D3C3C407031BCA8D1C139C02FCC37EC133C3C40D60994F3CAC139C00C72EEEF163C3C409D55D29BC1C139C0	5	5	Parking
6	0103000020E61000000100000008000000250EBB7A133C3C4017E8A73ACCC139C0AC7F92E62D3C3C407F54B760D2C139C002904B1A2D3C3C40FF6BFCC5D4C139C0C8EA33D62C3C3C407ED3289CD6C139C09465EF39283C3C409FDDED14DBC139C0F33325DF273C3C40D7185F29DBC139C0BAB233FF103C3C404DA86DDAD4C139C0250EBB7A133C3C4017E8A73ACCC139C0	6	6	Parking
7	0103000020E610000001000000050000005E430DD6693C3C4069D585D969C139C08B335A23903C3C40C789FAF372C139C0BFBCF17B823C3C40D7E60EEA9DC139C01693CD995D3C3C402960D87D94C139C05E430DD6693C3C4069D585D969C139C0	7	7	Parking
8	0103000020E61000000100000006000000835AC7411C3C3C40D3E212C032C139C0062EF5E3313C3C40B7E8D7873DC139C042A2E18C343C3C4007A7065E3FC139C0508031A6303C3C4097D4E3B44AC139C016306B61173C3C40350754EA45C139C0835AC7411C3C3C40D3E212C032C139C0	8	8	Parking
9	0103000020E6100000010000000F00000019A58F08FA3B3C40C084C305F5C039C0140C45FD2D3C3C4041ED8030F1C039C027883EE02E3C3C4034B46359F1C039C0566FD9B22E3C3C40D8E17210F4C039C0062EF5E3313C3C40D71B90E7F3C039C019AAEEC6323C3C400186FFE1FFC039C01FF7994D3E3C3C403A673A2705C139C0C8680AF8353C3C40136870F62BC139C017AE4183203C3C409399216A25C139C0B1F063D1223C3C407BDC40131AC139C0121098B91B3C3C404AE7825118C139C062007E451F3C3C40E48FAF1A0AC139C0A55A6080F93B3C40D4E598A5FDC039C092DE669DF83B3C40D4E598A5FDC039C019A58F08FA3B3C40C084C305F5C039C0	9	9	Parking
10	0103000020E61000000100000011000000242D8220C43B3C40CD76E99A2AC139C012DA0D60E53B3C401279F93032C139C03334575CE23B3C40F30D0C8543C139C01EE98814DF3B3C40D20D640A43C139C04212A775DE3B3C4069B8F2F542C139C02F96AD92DD3B3C4035FD4B5A47C139C0C709FB7BDD3B3C40E2F8F3D447C139C0A131DB5DD73B3C408AAF8A5046C139C0ACEF57CFD73B3C40E96031EC41C139C0B5ADD440D83B3C40205F897141C139C024D83021DD3B3C402F0DBC8F42C139C0982260A9DD3B3C40B10C685242C139C038542A04DE3B3C401560DDAE41C139C02F96AD92DD3B3C40170770E240C139C0BA7CA9A5DA3B3C408058E53E40C139C0C97E1F23C03B3C4041FAB48939C139C0242D8220C43B3C40CD76E99A2AC139C0	10	10	Parking
11	0103000020E610000001000000070000004DC212AE7F3B3C400814A82111C139C09841274F8E3B3C40322E24A514C139C08DD4A820873B3C404C3E4FD72CC139C0601134B2703B3C4080962F2128C139C06A7EB2E0773B3C40C8173E9D0FC139C024CA1FE87D3B3C4001FA53E410C139C04DC212AE7F3B3C400814A82111C139C0	11	11	Parking
12	0103000020E61000000100000008000000B714E8AE5B3B3C400FBFE0DCF4C039C096E776916E3B3C401E85CB2CF9C039C0D5D9395C7A3B3C40D7A92E21FCC039C097144F707E3B3C401A23B67CFDC039C079DAD81B7D3B3C400CEEFB9900C139C022CE72A46B3B3C403A48BD0CFCC039C0DF3D06105B3B3C409261B5E5F7C039C0B714E8AE5B3B3C400FBFE0DCF4C039C0	12	12	Parking
13	0103000020E61000000100000006000000C2D264205C3B3C40D6B36C17FBC039C0AA3F4A10863B3C404DE7FF7805C139C066DCB55A853B3C40B2FE7F4408C139C06700DCBE6E3B3C40955E0E9902C139C047CAB8265B3B3C401A23B67CFDC039C0C2D264205C3B3C40D6B36C17FBC039C0	13	13	Parking
14	0103000020E610000001000000080000006FC2ABEC5C3B3C40F4DC95E0ECC039C09B3422187A3B3C406F968C9FF4C039C04035C1D77C3B3C4076E19001E8C039C055808F1F803B3C408F091CA5E8C039C08F25A763803B3C405E3870E2E8C039C0CCEA914F7C3B3C408B5939F9F9C039C075B153F95A3B3C4030B46359F1C039C06FC2ABEC5C3B3C40F4DC95E0ECC039C0	14	14	Parking
15	0103000020E61000000100000005000000D7C7D5662D3B3C4018255E9C76C039C0D00506393F3B3C40C1359DA083C039C0792678A03D3B3C40FE2106DD85C039C0B0CFE2A02B3B3C40A35FE4AF78C039C0D7C7D5662D3B3C4018255E9C76C039C0	15	15	Parking
16	0103000020E61000000100000006000000F6524AFE273B3C400AA62DCD7BC039C030F86142283B3C40582EBCB87BC039C0180B9774323B3C4017AC0EB583C039C0E454273D303B3C4006AC94C885C039C0FF41F20A263B3C40045242CC7DC039C0F6524AFE273B3C400AA62DCD7BC039C0	16	16	Parking
17	0103000020E61000000100000008000000357FEADE573B3C40E571CC7740C039C047826C5E883B3C40D7152D1D3DC039C059DE92998D3B3C40E40C73AA41C039C02D95A190923B3C40ACD0762470C039C026EE454C673B3C40020F08586FC039C0B845134A593B3C409F756D914BC039C065042F7B5C3B3C40FE6C77B148C039C0357FEADE573B3C40E571CC7740C039C0	17	17	Parking
18	0103000020E61000000100000005000000E0C83FE2C73A3C403B8363F98AC039C08798B306CD3A3C4068C4FD0B8FC039C0937A56DCB63A3C401183A153A5C039C0C581C456B23A3C405F4042EFA0C039C0E0C83FE2C73A3C403B8363F98AC039C0	18	18	Parking
19	0103000020E61000000100000006000000C5DAC68BD6393C4098947A3049C139C098C2001ED9393C40A33A5E384EC139C034A71FF2CD393C40B39DD9795BC139C06C7D62D1CB393C4045CDCCC258C139C0B6CF9E93CA393C405869F22957C139C0C5DAC68BD6393C4098947A3049C139C0	19	19	Parking
20	0103000020E61000000100000005000000AA59BF2DF5393C403A4B43B03EC139C09E7B6F14F9393C40EA0C127142C139C0D671859BF2393C4029A6D5384DC139C0DA915843EE393C40B226FFE74AC139C0AA59BF2DF5393C403A4B43B03EC139C0	20	20	Parking
21	0103000020E61000000100000005000000FA6DCB1DE2393C40A79A59866CC139C0496BB6E0F9393C40C13A6A856EC139C0A46A1721F7393C40F661194E77C139C0A58E3D85E0393C40474472F471C139C0FA6DCB1DE2393C40A79A59866CC139C0	21	21	Parking
22	0103000020E61000000100000005000000627CA712D9393C40B27CC51077C139C0EB3E7DC1EC393C409A87B83879C139C0028A4B09F0393C408CD9282C7EC139C0B3BD8BE1D5393C40D1923E947AC139C0627CA712D9393C40B27CC51077C139C0	22	22	Parking
23	0103000020E6100000010000000600000078B0542D073A3C40AE85513864C139C095C6A41D1F3A3C40DB98D34B66C139C0C1DE6A8B1C3A3C40FE98BDA173C139C0C00291EF053A3C4044D9E75071C139C0A2C81A9B043A3C40B226596571C139C078B0542D073A3C40AE85513864C139C0	23	23	Admin Parking Lot
24	0103000020E61000000100000005000000E1E7B544203A3C40B084097070C139C0102D54912D3A3C40742E2B8F6FC139C0102D54912D3A3C40E5FEDA7873C139C0E1E7B544203A3C40E3B3D63074C139C0E1E7B544203A3C40B084097070C139C0	24	24	Parking
25	0103000020E610000001000000050000009FB1F96D2F3A3C409CA9F4286FC139C0FDDD328D3C3A3C40C13A6A856EC139C02CC5CD5F3C3A3C402E2CC63172C139C0D95611B22F3A3C4032618B8372C139C09FB1F96D2F3A3C409CA9F4286FC139C0	25	25	Parking
26	0103000020E610000001000000050000002703FE314E3A3C402D4BCE8753C139C01D4E333B743A3C4081CA65E256C139C07A1C69E0733A3C401877C28E5AC139C0BE764B1B4E3A3C4053122B3457C139C02703FE314E3A3C402D4BCE8753C139C0	26	26	Parking
27	0103000020E610000001000000050000002703FE314E3A3C404A4612845BC139C0DB6875A77C3A3C40BD0188BF5FC139C0F8D316977B3A3C400D135EEF66C139C0E29F697C4D3A3C403669CF2462C139C02703FE314E3A3C404A4612845BC139C0	27	27	Parking
28	0103000020E6100000010000000700000071553AF44C3A3C4056250AB266C139C0B37082E17A3A3C404303B6536BC139C0AAB205707A3A3C409BA98FCB71C139C0D17D20576C3A3C4080E9264770C139C0A29685846C3A3C40E79E875C6EC139C0C665F3274C3A3C40CDB4443F6BC139C071553AF44C3A3C4056250AB266C139C0	28	28	Parking
29	0103000020E6100000010000000500000007BB182B9E3A3C40B326596571C139C0BA51BB3BCA3A3C40CB99040776C139C0EE27FE1AC83A3C40F2D94D7281C139C002EC43C69B3A3C4072F64E937CC139C007BB182B9E3A3C40B326596571C139C0	29	29	Arcgitecture Parking
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             4514.dat                                                                                            0000600 0004000 0002000 00000055536 14511212744 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0105000020E610000001000000010200000005000000D0C8A42B0E3B3C40E588F2FB83C039C0FEB667F3093B3C40A5032DB481C039C0522B6404F83A3C401991970375C039C077BB2D91E23A3C40E6A1FCDF65C039C0866A83CCD63A3C40F443985F5CC039C0	1	\N
2	0105000020E61000000100000001020000000C00000014F7EBD7593B3C40F17D6C788FC039C07552EDEF593B3C4010499FDD8DC039C00598E2A35A3B3C4091980BCC8BC039C0515200405B3B3C406412D8FC7DC039C0515200405B3B3C40C54CE02972C039C0F32DE55F593B3C407ECF828C69C039C00E53A1AF543B3C4090BACE375DC039C09DDDEE5A483B3C401EE8FA734CC039C0A2E77E9E403B3C402E74CC3B42C039C0D61E52863D3B3C405972ADCC3DC039C0D61E52863D3B3C405972ADCC3DC039C0D61E52863D3B3C405972ADCC3DC039C0	2	\N
3	0105000020E610000001000000010200000012000000A2E77E9E403B3C402E74CC3B42C039C013E845AE3C3B3C408120B1CF41C039C03F44E835363B3C407AC7E7A742C039C068C6D42C233B3C400AA3EC1A45C039C00E633970183B3C40B7AAA52C47C039C00F76DE27123B3C4015B5359C48C039C01EE6B386FD3A3C40D207A92F4BC039C0702F9E06FC3A3C40D7518C534CC039C016549346FB3A3C4075095F6150C039C0214B7ED2F93A3C40C28B4A3357C039C0FCB9EBB1EF3A3C404D34E1BD58C039C090718F51E93A3C405F120A6059C039C00333D684DC3A3C40778E40385AC039C075339D94D83A3C408BB3235C5BC039C0866A83CCD63A3C40F443985F5CC039C0866A83CCD63A3C40F443985F5CC039C0E1060EB0CE3A3C40C8F3B07E65C039C042D0EE87CC3A3C40CA5EEC0168C039C0	3	\N
4	0105000020E610000001000000010200000004000000522B6404F83A3C401991970375C039C01001F3E2013B3C4091C7CFD28DC039C01001F3E2013B3C4091C7CFD28DC039C0CAF7030F033B3C40CD13343090C039C0	4	\N
5	0105000020E61000000100000001020000000C000000CE3F7056433B3C40B4D15DFA8BC039C0CE3F7056433B3C40B4D15DFA8BC039C0B13B85D23F3B3C40C47172738FC039C055D783452F3B3C40BAC516F0A2C039C0F233EDDC243B3C404FC81116AEC039C0BAC6AE8C203B3C4034510C36B1C039C083B52514173B3C40C6B8E396B4C039C09B26879F0B3B3C405933857CC4C039C087D1332FFE3A3C405521D7F7D5C039C03342CE0CFB3A3C40252CADFBD9C039C090287F31E83A3C400C0D453AF4C039C00C0477A1E73A3C4053E7491DF5C039C0	5	\N
6	0105000020E61000000100000001020000000700000083B52514173B3C40C6B8E396B4C039C083B52514173B3C40C6B8E396B4C039C06811EEE10B3B3C4068C26785B5C039C0E63AEB7EF73A3C40837C82CFB8C039C0643222C5E13A3C40B4B09F8EBBC039C0D17489F2DA3A3C40076B22B8B8C039C0D17489F2DA3A3C40076B22B8B8C039C0	6	\N
7	0105000020E61000000100000001020000000E00000013F7EBD7593B3C40F17D6C788FC039C0F0CF23FA583B3C40AD27D41794C039C00413A603553B3C40B2254A58A5C039C00413A603553B3C40B2254A58A5C039C01E34151B4E3B3C40C8355E33C4C039C0A16794504C3B3C400F02674CCBC039C0822B049D443B3C4012758266F0C039C09A39A432433B3C40EB57E0DFF5C039C09A39A432433B3C40EB57E0DFF5C039C092A783F2403B3C403678D0ACF9C039C09B4C49EA3C3B3C40B437EC8BFCC039C0E955EE69313B3C409F47F72203C139C089874100193B3C4032AC6E7A10C139C089874100193B3C4032AC6E7A10C139C0	7	\N
8	0105000020E610000001000000010200000007000000B2BDE7DC473B3C40FF6ADE87FCC039C036673AAA463B3C40B3E540D302C139C0024C952A423B3C402787799919C139C066157602403B3C40CB1D654F26C139C025ECB8F13E3B3C40200EE51A2CC139C03032C4AD3B3B3C405DFC34F83FC139C00B0400DA373B3C4046AAB76F55C139C0	8	\N
9	0105000020E61000000100000001020000000A00000066157602403B3C40CB1D654F26C139C05CE5AC422B3B3C40236DA2471BC139C0D5051C19283B3C4063E5E7B919C139C089874100193B3C4032AC6E7A10C139C089874100193B3C4032AC6E7A10C139C03841DB3E003B3C40E21B665803C139C05178371DC63A3C40C422DE82E1C039C0DD4FDEB0A53A3C404CA05D31CFC039C075E2F791993A3C407EA9E2BFC7C039C0B5A8D900963A3C402E22D1FCC5C039C0	9	Chancellors Avenue
10	0105000020E61000000100000001020000000A000000D5051C19283B3C4063E5E7B919C139C036F54660193B3C409751390931C139C00BB66597143B3C40504E787642C139C0B23AD13D113B3C400668F17652C139C0044073BF0A3B3C401ADC892E6EC139C024A06299093B3C40A580C9E171C139C024A06299093B3C40A580C9E171C139C024A06299093B3C40A580C9E171C139C025F74F4F083B3C40085D0A3175C139C025F74F4F083B3C40085D0A3175C139C0	10	\N
11	0105000020E61000000100000001020000001A000000B13AD13D113B3C400668F17652C139C00B0400DA373B3C4046AAB76F55C139C03DABF6E4483B3C404B93D08058C139C034D79DF44B3B3C4086FFC75257C139C07E4B5FE9523B3C40766D11A855C139C0E6F2B1D5553B3C4075DF4C6456C139C01A7ADEF4613B3C40C43CEC1A59C139C0E9496DA2703B3C40D35859095CC139C0FF5187AE733B3C40B8A234AB5CC139C0E5FE8D3A783B3C40E37334795DC139C058132F09893B3C4012D4C13A61C139C048B50F61913B3C40993EA03A63C139C048B50F61913B3C40993EA03A63C139C087326FAAA93B3C407EFBF99A69C139C02FE448CCB13B3C4095EF42776BC139C09078FB0BC53B3C4043BB26E970C139C0F39EE612E03B3C406C1D3CB677C139C05D83B5F7063C3C401D1C70C281C139C05D83B5F7063C3C401D1C70C281C139C0B01F3692133C3C40E29B083D84C139C0DA6ACFD23D3C3C40589F5DAE8EC139C05E56E83B513C3C4033773F2893C139C05E56E83B513C3C4033773F2893C139C05E56E83B513C3C4033773F2893C139C0DF152680553C3C4088C4BA7E93C139C0540348D8573C3C409E1136D593C139C0	11	Faculty Avenue
12	0105000020E610000001000000010200000008000000C469CBCAF63B3C401420762725C139C0C469CBCAF63B3C401420762725C139C0414A1720F53B3C408A0C52C92BC139C0EAE67B63EA3B3C403FA3481652C139C0F39EE612E03B3C406A1D3CB677C139C03C0F08DDDC3B3C401BDBF43B82C139C0C2322392D23B3C40787DC26B9DC139C0052C86F0CD3B3C401710A93BA7C139C0	12	\N
13	0105000020E6100000010000000102000000060000000B0477A1E73A3C4053E7491DF5C039C059BDC243D43A3C402C29CD2B0DC139C0BD9948D3CB3A3C4029B64BC119C139C0199C1C8BC33A3C408B213E9B24C139C0D39B3E72B93A3C4015D044EC32C139C0679F76F0993A3C408806200961C139C0	13	Tukkie Avenue
14	0105000020E610000001000000010200000017000000E6EE1798453A3C405FB6D2F630C139C095046E0C4A3A3C40B6E20E5034C139C0B7152E2C4E3A3C404921C02838C139C0B7152E2C4E3A3C404921C02838C139C05D86AE336D3A3C4089FFEDA349C139C027A01760933A3C40A59CFDD65EC139C0679F76F0993A3C408706200961C139C0300CEE30A23A3C4060CC0D6362C139C02189731ABD3A3C4090F5C6E462C139C0D0F3F4BBD73A3C4023BB646D65C139C09914D81DF93A3C406EF2962B6BC139C0044073BF0A3B3C401ADC892E6EC139C0044073BF0A3B3C401ADC892E6EC139C05A6AAB182B3B3C40BC902C2A74C139C05A6AAB182B3B3C40BC902C2A74C139C0C5A0724D433B3C406D1BBCF478C139C0DC1CD55A513B3C40CA08D4CE7BC139C00BB3DDC4683B3C409FCB939A82C139C0DC4E41357C3B3C40871CFC0288C139C0D2C84260B13B3C40262E570F95C139C0D2C84260B13B3C40262E570F95C139C0C1322392D23B3C40787DC26B9DC139C0C1322392D23B3C40787DC26B9DC139C0	14	\N
15	0105000020E6100000010000000102000000030000003841DB3E003B3C40E21B665803C139C0A9BA18E5EB3A3C409439135F1FC139C09304B724E53A3C401F22DF5228C139C0	15	\N
16	0105000020E61000000100000001020000000400000089874100193B3C4032AC6E7A10C139C089915D07143B3C40C157DCBA14C139C094A57D8E043B3C408987A10D2DC139C0696F2576FE3A3C408452A1D936C139C0	16	\N
17	0105000020E6100000010000000102000000040000000AB66597143B3C40504E787642C139C0686F2576FE3A3C408452A1D936C139C09304B724E53A3C401F22DF5228C139C0BD9948D3CB3A3C4029B64BC119C139C0	17	\N
18	0105000020E610000001000000010200000002000000A8BA18E5EB3A3C409439135F1FC139C094A57D8E043B3C408987A10D2DC139C0	18	\N
19	0105000020E61000000100000001020000000800000058BDC243D43A3C402B29CD2B0DC139C0D76229D5C33A3C4081F08E0205C139C0FE1555C1B93A3C405E90461EFFC039C0E2F86E19AB3A3C4082595600F7C039C0E2F86E19AB3A3C4082595600F7C039C0E14403F8913A3C4002B6FF7CE9C039C0F523BAED813A3C40E2C8560BE7C039C04890E3167E3A3C408F80E39DE6C039C0	19	Libri Avenue
20	0105000020E61000000100000001020000000E0000002EE448CCB13B3C4093EF42776BC139C02EE448CCB13B3C4093EF42776BC139C06B9A973CB73B3C40D407E1A158C139C0F407B0ECB83B3C40DCE379984FC139C05B1AA1E4B73B3C40CC632BE14BC139C0A2D16A24B43B3C4004B5699949C139C08589E823AB3B3C403670B01749C139C0C8F7A143A63B3C40E4039FFE47C139C06CD38663A43B3C40ED46504744C139C0301D38F39E3B3C4069E7B2F237C139C004D43A239F3B3C40FFFFBB5F32C139C0971C8433A43B3C40A7184D8D23C139C021D3AC03A73B3C404C2DD4DA17C139C021D3AC03A73B3C404C2DD4DA17C139C0	20	\N
21	0105000020E610000001000000010200000006000000404A1720F53B3C408A0C52C92BC139C0883520A0C13B3C40C53F24F71EC139C021D3AC03A73B3C404C2DD4DA17C139C0CAB290B1813B3C406092336C10C139C0C5BA74F2763B3C40DDAFB3F80DC139C0DE26659E493B3C40B5895B3F03C139C0	21	\N
22	0105000020E610000001000000010200000003000000DE26659E493B3C40B5895B3F03C139C0DE26659E493B3C40B5895B3F03C139C035673AAA463B3C40B3E540D302C139C0	22	\N
23	0105000020E61000000100000001020000000900000058132F09893B3C4011D4C13A61C139C0674E04D38E3B3C40EB2755B04CC139C01EE40E607B3B3C40B8C1659447C139C09C055CBF743B3C40A50FA68A40C139C027A3E41D703B3C40074298F63AC139C0E77357BE6D3B3C4039813B7D35C139C09787282A6D3B3C40CFEEAF4C33C139C0378A8E896A3B3C401E9E3DF33BC139C0EFB2F620683B3C40445628EE43C139C0	23	\N
24	0105000020E610000001000000010200000002000000EFB2F620683B3C40445628EE43C139C01EE40E607B3B3C40B8C1659447C139C0	24	\N
25	0105000020E610000001000000010200000002000000C5BA74F2763B3C40DDAFB3F80DC139C09787282A6D3B3C40CFEEAF4C33C139C0	25	\N
26	0105000020E61000000100000001020000000200000024ECB8F13E3B3C40200EE51A2CC139C09787282A6D3B3C40CFEEAF4C33C139C0	26	\N
27	0105000020E6100000010000000102000000100000005BE5AC422B3B3C40236DA2471BC139C06F13F2272A3B3C404C9D8E101EC139C04D2C1994293B3C4021375BC41FC139C037390CBD283B3C405C06BD2D22C139C0AABF8551283B3C40538D6ED523C139C0E682C21B283B3C402E322EF625C139C0511570F3273B3C40B2F1169C28C139C017523329283B3C40E18C42ED2AC139C00D5E676C283B3C40DA1638262DC139C098D7EDD7283B3C4015A3B49B2FC139C0860332EE2A3B3C40E07418D133C139C0119461FA2C3B3C407204CC4437C139C06161543C2F3B3C404A53C17D39C139C009D95CDC313B3C400BA28E173CC139C042CAEBE7343B3C40B3D868443EC139C02C10A6AF383B3C4008F4418B3FC139C0	27	\N
28	0105000020E61000000100000001020000000D0000002C10A6AF383B3C4008F4418B3FC139C02F32C4AD3B3B3C405DFC34F83FC139C05D46309D403B3C4044FD4F0440C139C035A452EB443B3C40ECF577A33FC139C06B95E1F6473B3C4053E918063FC139C09892A4454B3B3C40EDCF90E33DC139C07BE492504F3B3C407AA815543CC139C00D698E19513B3C40B28557193BC139C08517C0CD533B3C402A508B6539C139C0E6CC4A89553B3C40B434C09738C139C025B2A551583B3C40AD2A1E4F38C139C021E0F7925B3B3C40A53911BC38C139C02B74A4CE673B3C40BF902F7A3BC139C0	28	\N
29	0105000020E6100000010000000102000000020000002B74A4CE673B3C40BF902F7A3BC139C0368A8E896A3B3C401D9E3DF33BC139C0	29	\N
30	0105000020E6100000010000000102000000020000002C10A6AF383B3C4008F4418B3FC139C0B13AD13D113B3C400668F17652C139C0	30	\N
31	0105000020E6100000010000000102000000040000002F32C4AD3B3B3C405DFC34F83FC139C034D79DF44B3B3C4085FFC75257C139C0222B68765E3B3C407079A00664C139C0D5FC1361703B3C40A8C5C33868C139C0	31	\N
32	0105000020E6100000010000000102000000040000007E4B5FE9523B3C40756D11A855C139C067AE43FA623B3C402741ED1153C139C0197ADEF4613B3C40C33CEC1A59C139C0212B68765E3B3C407079A00664C139C0	32	\N
33	0105000020E61000000100000001020000000200000067AE43FA623B3C402741ED1153C139C0E8496DA2703B3C40D35859095CC139C0	33	\N
34	0105000020E610000001000000010200000003000000FE5187AE733B3C40B8A234AB5CC139C0D4FC1361703B3C40A8C5C33868C139C00BB3DDC4683B3C409FCB939A82C139C0	34	\N
35	0105000020E610000001000000010200000002000000DD4FDEB0A53A3C404BA05D31CFC039C0E14403F8913A3C4002B6FF7CE9C039C0	35	\N
36	0105000020E6100000010000000102000000150000004F75023EAE3A3C4088877FE8A2C039C0E4127FB0A93A3C40D1695B5BA1C039C09BF839D39A3A3C40F0FE63BA95C039C093124827993A3C40AC3E395590C039C0F11BC208A93A3C40E8B2769F79C039C0AFF9697BB33A3C404ADBA8BD77C039C05DE8B598B43A3C40012E0BD770C039C09C36F0CCB73A3C40362DD5726CC039C09C36F0CCB73A3C401DDF498A63C039C023A3E50DB93A3C40658FF4055FC039C0E95D1583BD3A3C406C3132465FC039C025AC4FB7C03A3C408EDD5C8861C039C042D0EE87CC3A3C40CA5EEC0168C039C0D8C2E0FAD73A3C4066C6481771C039C0CFDCEE4ED63A3C40CD1B735973C039C0378EA4E2CA3A3C40D7E73DC882C039C0BB07A14DCB3A3C402A1C5E0B86C039C05256EBB9D63A3C40AE0FC8D38EC039C0CFDCEE4ED63A3C4077A58BB691C039C06AED82C1C43A3C40824BA5A9A5C039C070CA0AC4BE3A3C402FA35EB0ACC039C0	36	\N
37	0105000020E6100000010000000102000000020000006AED82C1C43A3C40824BA5A9A5C039C051C56CA7EA3A3C4086020498AAC039C0	37	\N
38	0105000020E610000001000000010200000006000000332A8680923B3C40C6E6DBC391C039C011DCF8BC8D3B3C4081741D9E99C039C06CB4C3CE7F3B3C40DA68728BA7C039C02E247877773B3C403BD671FAAEC039C02954B5476D3B3C4030DF733AB7C039C0E5091894613B3C40692E03B9B5C039C0	38	\N
39	0105000020E61000000100000001020000000500000010DCF8BC8D3B3C4081741D9E99C039C02D66899A7C3B3C403825CB3C98C039C003BCED97663B3C401AA4115994C039C0871F792F603B3C40115CB5F893C039C0F0CF23FA583B3C40AD27D41794C039C0	39	\N
40	0105000020E6100000010000000102000000090000008042F12C663B3C40F27A1A3590C039C003BCED97663B3C401AA4115994C039C0E5091894613B3C40692E03B9B5C039C0CC4A3B665D3B3C40889E870AC8C039C091E68F5E533B3C407EDCA313F3C039C0E3EA3C17533B3C40FF1626D9F8C039C0D6962832923B3C406A5D970809C139C09E2331B4BE3B3C401AC76F7415C139C0DD7AD591C93B3C405BA3DF76F6C039C0	40	\N
41	0105000020E6100000010000000102000000030000009E2331B4BE3B3C401AC76F7415C139C01633A866F73B3C4008D6AD3F21C139C0C469CBCAF63B3C401420762725C139C0	41	\N
42	0105000020E61000000100000001020000000200000035673AAA463B3C40B3E540D302C139C0E855EE69313B3C409F47F72203C139C0	42	\N
43	0105000020E610000001000000010200000007000000B2BDE7DC473B3C40FF6ADE87FCC039C092A783F2403B3C403678D0ACF9C039C0F6256F422C3B3C40BE00B0EFEEC039C00DA2C139223B3C40D0AAC776E9C039C0868E65AC1C3B3C40FF3844EAE5C039C0DA1F7271033B3C4066DBE019D8C039C087D1332FFE3A3C405521D7F7D5C039C0	43	\N
44	0105000020E6100000010000000102000000070000003342CE0CFB3A3C40252CADFBD9C039C0388B33FCE93A3C4057E77152D0C039C0041A81CAE03A3C40701DF7D1CFC039C0D68EC044D93A3C408C70722FCDC039C08F5A9464D43A3C407ABC8650CEC039C0E807A969CF3A3C40F61EB9B4D2C039C05078371DC63A3C40C322DE82E1C039C0	44	\N
45	0105000020E6100000010000000102000000030000003B0F08DDDC3B3C401BDBF43B82C139C091566FD7F63B3C40B2582EDB88C139C00964076E493C3C40F37D72BA9CC139C0	45	\N
46	0105000020E6100000010000000102000000040000009304B724E53A3C401F22DF5228C139C09A19FD71DC3A3C4052A1272E2AC139C03E1C2E3FD13A3C4019489CF72CC139C0D39B3E72B93A3C4015D044EC32C139C0	46	\N
47	0105000020E610000001000000010200000008000000679F76F0993A3C408706200961C139C09A0FCE82943A3C40370BBBCB63C139C00B834530923A3C401D6E331267C139C0A48191C4863A3C40147B200C75C139C0CEEB70FB703A3C4099F5BEB693C139C0AD6A4614743A3C404908DFCEA8C139C0CEEB70FB703A3C40A7C256A0B7C139C0FA35D2F2233A3C40294BE653AFC139C0	47	\N
48	0105000020E610000001000000010200000016000000A48191C4863A3C40147B200C75C139C006B522D86A3A3C401DCBCF2474C139C096C979D6683A3C407FB9DC2777C139C07104E456693A3C4035D016D981C139C03A792F846C3A3C4005A2876B87C139C065DAAC866F3A3C40E930F8FD8CC139C058A2DD80683A3C4099EFF0588EC139C08791AAD0613A3C409D243A9B90C139C01C0991785E3A3C40986FA5CF91C139C09C1E714A5A3A3C40640618A991C139C0B90EC76D513A3C40492E99CC8EC139C08EAD496B4E3A3C4061511F4E90C139C05DB0E4E5473A3C40B0E7912790C139C0C8C64D8B413A3C40F37D040190C139C04F3FBD063C3A3C40876C41408FC139C02D7A27873C3A3C404AEAAEBB8AC139C0DB8C6CDE3E3A3C40C76334B476C139C0DB8C6CDE3E3A3C40C76334B476C139C0DFD3CB1C233A3C401BD5BA3578C139C06ADA8AE5133A3C40BD7BDBE07CC139C05BA2BBDF0C3A3C40FDF8B7A783C139C0A22CE7DE0B3A3C4087ADCB4F85C139C0	48	\N
49	0105000020E6100000010000000102000000060000000A834530923A3C401C6E331267C139C07ADDADCC9D3A3C4096D438096BC139C0AD8C1425A83A3C40027F19886BC139C0C674D2DFD23A3C4034CB7C026EC139C0F72CADB0F13A3C40A337422C72C139C024F74F4F083B3C40075D0A3175C139C0	49	\N
50	0105000020E61000000100000001020000000200000034D79DF44B3B3C4085FFC75257C139C0C5A0724D433B3C406C1BBCF478C139C0	50	\N
51	0105000020E6100000010000000102000000050000006C137E8A363A3C404933CD7730C139C0F8C55E3E2B3A3C40BC9D673D3AC139C06D3BDB71223A3C407595AE763DC139C05900E3B9163A3C40F112DBE242C139C08E88C089F6393C406165BAF04FC139C0	51	\N
52	0105000020E610000001000000010200000003000000F7C55E3E2B3A3C40BC9D673D3AC139C0937A48FE293A3C406851553844C139C0BB3B6E4D2A3A3C402D2D2BBD57C139C0	52	\N
53	0105000020E610000001000000010200000004000000DA8C6CDE3E3A3C40C76334B476C139C03FA70AF33F3A3C401455ACF26DC139C04A29A08C493A3C407145ADCB6EC139C05CAC412F4C3A3C40AB50F73A57C139C0	53	\N
54	0105000020E6100000010000000102000000060000005CAC412F4C3A3C40AB50F73A57C139C0B00F886E3B3A3C40A699FAC559C139C0BB3B6E4D2A3A3C402D2D2BBD57C139C0487D4117143A3C40B0788E5D55C139C099B5AD800D3A3C40AE122AE456C139C0915EF2BCF9393C40AAD9F2D653C139C0	54	\N
55	0105000020E6100000010000000102000000020000005800E3B9163A3C40F112DBE242C139C0487D4117143A3C40B0788E5D55C139C0	55	\N
56	0105000020E610000001000000010200000003000000E53AEB7EF73A3C40837C82CFB8C039C0BDE12449F73A3C406C525CB6A5C039C0DE9AEBFBF63A3C40E229EA769DC039C0	56	\N
57	0105000020E61000000100000001020000000400000000FAF718E63A3C40323A685CB0C039C04A4A9FBFEA3A3C40E6A02E22B2C039C0E53AEB7EF73A3C40837C82CFB8C039C09A26879F0B3B3C405933857CC4C039C0	57	\N
58	0105000020E6100000010000000102000000060000000498E2A35A3B3C4091980BCC8BC039C06458DDCD613B3C408D0866078BC039C000B9D4926D3B3C4091980BCC8BC039C055EF1BD9803B3C40F015AE068DC039C0A91ABDCF8D3B3C40FB40FC198EC039C0332A8680923B3C40C6E6DBC391C039C0	58	\N
59	0105000020E610000001000000010200000005000000BD9948D3CB3A3C4029B64BC119C139C07D1AEF85BB3A3C406F247A330FC139C0D8352527B23A3C40C69FB9A009C139C04C8E14ACAC3A3C40C11B4E4A0DC139C0FEE85013A83A3C40E8C7952E13C139C0	59	\N
60	0105000020E610000001000000010200000002000000FE1555C1B93A3C405E90461EFFC039C0D8352527B23A3C40C69FB9A009C139C0	60	\N
61	0105000020E61000000100000001020000000C000000D76229D5C33A3C4080F08E0205C139C07C1AEF85BB3A3C406E247A330FC139C04BA07CBEB33A3C4093CA4AB412C139C0FDE85013A83A3C40E8C7952E13C139C0E6A263A6A03A3C4055B8C11715C139C0322D8BA39A3A3C40CAD955C118C139C0258A14ED963A3C40E464FA581AC139C0331B2391933A3C40F06EAFDE19C139C03FAC3135903A3C40393A471E18C139C0A761AA03873A3C40716AEF4B14C139C0BF79965C6B3A3C40F0E8762D06C139C0CFDE9DB8673A3C400687BC3604C139C0	61	\N
62	0105000020E610000001000000010200000002000000321B2391933A3C40F06EAFDE19C139C05D86AE336D3A3C4089FFEDA349C139C0	62	\N
63	0105000020E610000001000000010200000003000000D5E9BCBC353C3C40E533C6C0C7C139C0A530DE34153C3C40B057B610C1C139C0F1BA05320F3C3C40932D8E10DAC139C0	63	\N
64	0105000020E610000001000000010200000006000000A530DE34153C3C40B057B610C1C139C056944E25143C3C401926C7F1B8C139C02C6BBED1EA3B3C40DAAF42DEAFC139C0C3C2BAE9D53B3C404562A591ABC139C0C4B98660D23B3C407E3ED910A8C139C0C1322392D23B3C40787DC26B9DC139C0	64	\N
65	0105000020E610000001000000010200000002000000C4B98660D23B3C407E3ED910A8C139C0DAE28820CE3B3C40CE7D86D2AAC139C0	65	\N
66	0105000020E61000000100000001020000000200000091566FD7F63B3C40B1582EDB88C139C02C6BBED1EA3B3C40DAAF42DEAFC139C0	66	\N
67	0105000020E61000000100000001020000000A00000023F74F4F083B3C40075D0A3175C139C0F91F38272A3B3C4012C9DEEA7AC139C0EE02FF10363B3C40A56199897DC139C0D0483167413B3C408D35A6C77FC139C0B54AE443563B3C4089D4E36088C139C0E7E826306C3B3C402661BA398FC139C0EFCA09A7883B3C400F8F09C195C139C0BE36AD12BD3B3C40882E7DE6A0C139C0B0B70681C73B3C40A220FFECA3C139C0DAE28820CE3B3C40CE7D86D2AAC139C0	67	\N
68	0105000020E610000001000000010200000003000000A2D16A24B43B3C4004B5699949C139C096BDFABABA3B3C401E4B01B136C139C0873520A0C13B3C40C53F24F71EC139C0	68	\N
69	0105000020E61000000100000001020000000B0000005E56E83B513C3C4033773F2893C139C0EBBAF790503C3C400BB6ABD485C139C0EAC32B1A543C3C4050B7479D78C139C0EACC5FA3573C3C408A9D97EB6AC139C0F75D6E47543C3C409AA2098D64C139C0928D59DD523C3C40FD9A694060C139C06D6EBD82323C3C4061A6ECCF57C139C06C6589F92E3C3C409AEA539059C139C0218A8D29153C3C405D01C53153C139C0629E421E1D3C3C40E7362FE535C139C0404A1720F53B3C408A0C52C92BC139C0	69	\N
70	0105000020E610000001000000010200000002000000629E421E1D3C3C40E7362FE535C139C0BCD4145B1E3C3C40E00362AF2FC139C0	70	\N
71	0105000020E6100000010000000102000000040000006B6589F92E3C3C409AEA539059C139C0FBF1FDD8293C3C406BCBA58E6BC139C0C76523FF1A3C3C40AF69228868C139C0B01F3692133C3C40E29B083D84C139C0	71	\N
72	0105000020E610000001000000010200000003000000189C1C8BC33A3C408A213E9B24C139C03D1C2E3FD13A3C4019489CF72CC139C09B50E9BAD73A3C40C161E2AE30C139C0	72	\N
73	0105000020E6100000010000000102000000090000009919FD71DC3A3C4051A1272E2AC139C09B50E9BAD73A3C40C161E2AE30C139C0AEDFBCF3D03A3C4080C617D739C139C08215228ADF3A3C400F7A386543C139C08BC11582DE3A3C40958A5CC647C139C00ADD8B26DC3A3C40BFEBD29A4FC139C06D7F1F34D93A3C40236A3BB357C139C02C8D5A06D83A3C4069524C8561C139C0D0F3F4BBD73A3C4023BB646D65C139C0	73	\N
74	0105000020E610000001000000010200000014000000B5A8D900963A3C402E22D1FCC5C039C07DB0F467923A3C4055E4F585C4C039C07AC18A6D883A3C40DE9C548FC0C039C0AC5E3E537D3A3C40E6A6DD16BAC039C0611EC43A773A3C403C14E820B8C039C018DE4922713A3C4086EBB5EEB7C039C00A8027F3693A3C40E03C1A53B8C039C05D249AB9643A3C40075779B2B9C039C04EADF95E603A3C400EE36EA8BBC039C0C571A9315E3A3C403FE25994BFC039C0268DBC525D3A3C40A2DCD511C5C039C0268DBC525D3A3C401A54ED2ACAC039C09D38EEF95D3A3C409E74D211CFC039C072E6B496603A3C40624485C6D3C039C0F8088798653A3C405125D91BD7C039C055D91F376D3A3C4092D6EF34DCC039C08C897BC9713A3C401BB8B2F8DDC039C0EF8B10BF733A3C401421A2E9E0C039C0EA591468793A3C401DFBBD07E5C039C04790E3167E3A3C408F80E39DE6C039C0	74	\N
75	0105000020E61000000100000001020000000B00000094046E0C4A3A3C40B6E20E5034C139C0ABF922FD4D3A3C40B443341E2BC139C0BF79965C6B3A3C40EFE8762D06C139C0F523BAED813A3C40E1C8560BE7C039C074E2F791993A3C407EA9E2BFC7C039C0CFE5D2E9A33A3C406AA6EC11B9C039C02279BF95AA3A3C40F7A85D6CAEC039C02DC09A58AE3A3C407B528353ACC039C010FDE891B13A3C407B528353ACC039C013688458D23A3C409BE07A5CBFC039C0633222C5E13A3C40B4B09F8EBBC039C0	75	\N
76	0105000020E610000001000000010200000002000000D68EC044D93A3C408C70722FCDC039C013688458D23A3C409BE07A5CBFC039C0	76	\N
77	0105000020E610000001000000010200000002000000E807A969CF3A3C40F61EB9B4D2C039C0CFE5D2E9A33A3C406AA6EC11B9C039C0	77	\N
78	0105000020E61000000100000001020000000B0000002179BF95AA3A3C40F7A85D6CAEC039C0D72CAEACA73A3C4021F166CFACC039C0F88E55B4A23A3C4088F2A83AAAC039C091A5A958963A3C403ECA2C11A5C039C0014B72088D3A3C403E4DA784A1C039C06542618A833A3C4084A018959FC039C0921AEBE97C3A3C404C8EC2AD9CC039C0D0074DE2723A3C409F9DD47399C039C00E6E8DC7733A3C40C34A4D8C91C039C0F2AADB00773A3C40B1E1D8C58AC039C0C26B5336813A3C40B970E83083C039C0	78	\N
79	0105000020E61000000100000001020000000A0000006C137E8A363A3C404933CD7730C139C02B73DC2E383A3C40A9084DFD2EC139C017F7052B3F3A3C4047DE91682CC139C06A52FB00443A3C40B0AACB702BC139C0CD5BCA04493A3C40735E1B3F27C139C080D26E60613A3C4031AAF1FB06C139C0EA591468793A3C401DFBBD07E5C039C07DB0F467923A3C4056E4F585C4C039C0F88E55B4A23A3C4088F2A83AAAC039C0E4127FB0A93A3C40D0695B5BA1C039C0	79	\N
80	0105000020E61000000100000001020000000A000000B13B85D23F3B3C40C37172738FC039C0162194D2273B3C40763332FF7EC039C0900D3845223B3C40C2E6EE387DC039C0BA7EC3391F3B3C40BDD63A627DC039C0D74175001C3B3C4093549AAC7EC039C0E7564D99183B3C40657975C580C039C0B0AC2908023B3C40F44FB8EF99C039C0BCE12449F73A3C406C525CB6A5C039C0494A9FBFEA3A3C40E6A02E22B2C039C0633222C5E13A3C40B4B09F8EBBC039C0	80	\N
81	0105000020E610000001000000010200000003000000AFAC2908023B3C40F44FB8EF99C039C05CDCF2A0163B3C40284B6674A8C039C0BAC6AE8C203B3C4033510C36B1C039C0	81	\N
82	0105000020E6100000010000000102000000020000005CDCF2A0163B3C40284B6674A8C039C06811EEE10B3B3C4069C26785B5C039C0	82	\N
83	0105000020E61000000100000001020000000500000091E68F5E533B3C407EDCA313F3C039C014ED39584A3B3C404AED3EFBF2C039C0812B049D443B3C4011758266F0C039C0D7FB3A04303B3C405C6DF8C0E5C039C00DA2C139223B3C40D0AAC776E9C039C0	83	\N
84	0105000020E6100000010000000102000000060000000DA2C139223B3C40D0AAC776E9C039C0F825EB35293B3C405AB9178FDCC039C0267753822D3B3C404774B086D8C039C0F057EE5F303B3C404EEA8BE9D1C039C048A103B4263B3C40C996A08DB4C039C0F233EDDC243B3C404FC81116AEC039C0	84	\N
85	0105000020E610000001000000010200000005000000F057EE5F303B3C404DEA8BE9D1C039C074044C82393B3C401245F496D1C039C052DA9B50403B3C4002542D9FD0C039C0C2914482453B3C40D26B9FAFCEC039C0A16794504C3B3C400D02674CCBC039C0	85	\N
86	0105000020E6100000010000000102000000030000001D34151B4E3B3C40C8355E33C4C039C018661845553B3C40C340252BC5C039C0CC4A3B665D3B3C40889E870AC8C039C0	86	\N
87	0105000020E6100000010000000102000000080000001D34151B4E3B3C40C8355E33C4C039C0219B13864A3B3C409D33E3AEBAC039C0250212F1463B3C40E6165EC7B2C039C09EEEB563413B3C40D272372AACC039C080B225B0393B3C401B93EB00ACC039C0738B6D952E3B3C406B4541E8AEC039C005D4C463293B3C40025CC674B2C039C048A103B4263B3C40C996A08DB4C039C0	87	\N
\.


                                                                                                                                                                  4504.dat                                                                                            0000600 0004000 0002000 00000006730 14511212744 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E610000008DFA062413B3C4067D90F8842C039C0	Burnett St entrance	-25.75101519	28.23146645	\N	8	\N
2	0101000020E61000006FA35C75783B3C404C50E4C599C039C0	Prospect St entrance	-25.75234639	28.2323068	\N	31	\N
3	0101000020E6100000888ED3C6C73B3C401C080B1FF8C039C0	South St entrance	-25.75378603	28.2335171	\N	14	\N
4	0101000020E61000006ADFDC5F3D3C3C40948E8BCD3BC139C0	Duxbury Rd entrance	-25.75481877	28.2353115	09:12 10/08	115	\N
5	0101000020E6100000A1DD9D8C5C3C3C40B593DAEE92C139C0	Lunnon Rd entrance	-25.75614827	28.23578719	08:16 11/08	109	\N
6	0101000020E61000003BD3F8433B3B3C40F26C033584C139C0	Lynnwood Rd (main entrance)	-25.75592357	28.23137307	\N	9	\N
7	0101000020E6100000E8851A095D3B3C40BB4988C986C039C0	Sci-Enza	-25.75205669	28.23188836	11:21 08/08	106	\N
8	0101000020E610000096F40735093B3C402D6E50B991C039C0	Old Agriculture	-25.75222357	28.23060924	11:24 08/08	14	\N
9	0101000020E610000085A20E65873A3C40ABA97697D5C039C0	Engineering 1	-25.75325915	28.22862846	11:22 03/08	20	\N
10	0101000020E61000001E1F88878B3A3C404EAC193AF2C039C0	Steers	-25.75369609	28.22869155	11:15 03/08	44	\N
11	0101000020E61000002F70B357A33A3C4049B61DC7CDC039C0	Natural Sciences 2	-25.75313992	28.22905491	11:19 03/08	70	\N
12	0101000020E6100000EDE8872A5F3A3C401F7FED8943C139C0	Engineering 3 (behind)	-25.75493681	28.22801462	10:35 04/08	8	\N
13	0101000020E6100000C3A9E6A4BD3A3C401369552A2CC139C0	Theology walkway	-25.75458016	28.22945624	11:20 08/08	43	1 golf-cart
14	0101000020E6100000D71AE7C28A3A3C403AB61AE977C139C0	South Campus Bridge	-25.75573594	28.22867983	11:23 08/08	37	\N
15	0101000020E61000000A4DAF200F3B3C405DE5011355C139C0	Library	-25.75520438	28.23069958	11:16 03/08	132	\N
16	0101000020E6100000F5FF81A4153B3C40B4096AD708C139C0	Chancellor's Building	-25.75404116	28.23079899	12:20 01/08	161	1 bicycle
17	0101000020E61000001308BFFD4E3B3C40779FE3A3C5C039C0	Thuto	-25.75301575	28.23167406	10:20 03/08	202	\N
18	0101000020E61000004EDF6397453B3C40BAAAA22E08C139C0	Piazza Entrance	-25.7540311	28.23153063	12:23 01/08	182	\N
19	0101000020E61000003C1BEA5EC43B3C40314A0A0B72C139C0	EMS bridge	-25.75564641	28.23346513	11:25 03/08	110	\N
20	0101000020E61000004D9009DF983B3C40007178BD0BC139C0	Centenary	-25.75408539	28.23280138	10:24 03/08	216	\N
21	0101000020E610000076129536EA3B3C4060D761124FC139C0	Graduate Centre	-25.75511279	28.23404256	11:24 08/08	89	2 bicycles
22	0101000020E6100000EE9579ABAE3B3C4009645D791CC139C0	Monastery Hall	-25.75434073	28.233134	10:27 03/08	64	\N
23	0101000020E6100000D7CA5BE0B83B3C40C9A5754453C139C0	Behind EMS	-25.75517681	28.23328974	11:28 03/08	58	\N
24	0101000020E610000081AC0A811A3C3C407A4E1F2686C139C0	Bioinformatics Building	-25.7559532	28.23477942	13:20 01/08	51	\N
25	0101000020E61000000AA61621A73B3C4017AFE4F06AC139C0	IT building	-25.75553804	28.23301894	11:22 03/08	242	1 golf-cart
26	0101000020E61000004F70B9134F3B3C40AD239A822DC139C0	SCU tunnel	-25.75460068	28.23167537	10;23 07/08	27	\N
27	0101000020E6100000307F09053A3B3C4050CB6A1558C139C0	SSC entrance	-25.7552503	28.23135406	11:19 03/08	87	\N
28	0101000020E610000034A4A37FF63A3C400DC53E7DDBC039C0	Geography-Thuto walkway	-25.75334914	28.23032377	11:28 03/08	123	1 bicycle
29	0101000020E610000014F6E5B3D93A3C40ABB7FE4402C139C0	Old Arts	-25.75394088	28.22988438	11:25 03/08	40	1 bicycle
30	0101000020E610000004ABC9D78E3B3C40D6DE0AD58BC139C0	Informatorium entrance	-25.75603992	28.23264836	12:21 08/08	41	1 golf-cart
31	0101000020E6100000AEDF02BFFC3B3C40FDF01C5FB5C139C0	Behind Agri Annex	-25.75667376	28.23432535	12:26 08/08	31	4 bicycles, 1 golf-cart
\.


                                        4516.dat                                                                                            0000600 0004000 0002000 00000002315 14511212744 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E6100000BAB098C8FE3B3C40C93B5F6C69C139C0	1	1	Alders Restuarant	Resturant 
2	0101000020E61000007711F8D5513B3C406D8E9F7B0FC139C0	2	2	Coffe Buzz	Restuarant
3	0101000020E61000002CC9AECA573B3C405E82511315C139C0	3	3	Piazza Foods	Restuaranct
4	0101000020E61000001C718C5A5C3B3C40BEC4644C19C139C0	4	4	Spaghetti's	Restuarant
5	0101000020E6100000F817ECC25E3B3C40080340681DC139C0	5	5	Torpedo's	Restuarant
6	0101000020E6100000E7AC76775B3B3C40CD80D51426C139C0	6	6	Lucky Bread	Coffee Shop
7	0101000020E6100000418078C0B23B3C404D62239324C139C0	7	7	Monstery Hall	Cafeteria
8	0101000020E6100000248C9CCCE93B3C403222351B76C139C0	8	8	UP Shop	Retail
9	0101000020E6100000400B5B7CF23B3C4050B1F17275C139C0	9	9	Vida e Cafe	Coffee Shop
10	0101000020E6100000D4244DD5B13A3C400ABD9BA71AC139C0	10	10	Pure Cafe	Restuarants
11	0101000020E6100000DFFC09C69F3A3C402AFA5D040FC139C0	11	11	Artisan Coffee	Restuarant
12	0101000020E610000075A200C6A63A3C409AFAFF1407C139C0	12	12	Artisan Coffee	Restuarant
13	0101000020E6100000A348989C923A3C408EB13252D3C039C0	13	13	Haloa Coffee	Coffee Shop
14	0101000020E610000051E25863793A3C40C43D218AF1C039C0	14	14	Steers	Restuarant
15	0101000020E61000005342681BA53A3C4056CBC40E02C139C0	15	15	Tribeca Campus	Coffee Shop
\.


                                                                                                                                                                                                                                                                                                                   4526.dat                                                                                            0000600 0004000 0002000 00000026040 14511212744 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0105000020E61000000100000001020000000D000000B2BDE7DC473B3C40FF6ADE87FCC039C089AD6307483B3C40499C8790FBC039C015ED39584A3B3C404BED3EFBF2C039C018661845553B3C40C340252BC5C039C0871F792F603B3C40115CB5F893C039C05EC717DC603B3C401B9732D68FC039C06458DDCD613B3C408D0866078BC039C0047347F5623B3C40BDBF290881C039C051B99F35613B3C40E73E3CBF74C039C06CC488905A3B3C40D3A1702B5FC039C06CC488905A3B3C40D3A1702B5FC039C0E32342D2513B3C4020384F6F49C039C0E32342D2513B3C4020384F6F49C039C0	1	Roper Street
2	0105000020E6100000010000000102000000080000004B4CEDA0993B3C4005C48A7F90C039C0332A8680923B3C40C6E6DBC391C039C0F79A06B0893B3C40F7E87AD991C039C09758EC2E763B3C40F7E87AD991C039C033EE619E6C3B3C40FDCFA5EB90C039C08042F12C663B3C40F27A1A3590C039C05EC717DC603B3C401B9732D68FC039C05EC717DC603B3C401B9732D68FC039C0	2	Prospect Street
3	0105000020E61000000100000001020000002C0000005EC717DC603B3C401B9732D68FC039C014F7EBD7593B3C40F17D6C788FC039C0F96223B74F3B3C40FABE890F8FC039C0CE2CCB9E493B3C40509D150C8EC039C0CE3F7056433B3C40B4D15DFA8BC039C09F122DB23E3B3C402ADFAD3B89C039C00CEB65EF303B3C404EA0E5ED7EC039C0354708772A3B3C402C6C379F7AC039C00123DA46273B3C40AEE12BD978C039C08BECA7CE233B3C40922E033778C039C08BECA7CE233B3C40922E033778C039C035BF777A203B3C40B127642178C039C07F11776E203B3C40B127642178C039C01FA44B6E1D3B3C401E43E07778C039C05589F9C1173B3C40BE6598897AC039C03B77E229163B3C40BEC4E9CD7BC039C010418A11103B3C40A05CA3E281C039C0D0C8A42B0E3B3C40E588F2FB83C039C0CAF7030F033B3C40CD13343090C039C0DF9AEBFBF63A3C40E229EA769DC039C051C56CA7EA3A3C4086020498AAC039C000FAF718E63A3C40333A685CB0C039C034C6FAC6E23A3C406F900E64B4C039C034C6FAC6E23A3C406F900E64B4C039C0FC58BC76DE3A3C40E0EE0884B7C039C0D17489F2DA3A3C40076B22B8B8C039C0DD625F0AD83A3C407CA2F8DDB8C039C04AC32844D43A3C40076B22B8B8C039C0FB7E06E6D13A3C408AE546AFB7C039C0A3647B49C83A3C400DC6188BB2C039C0A3647B49C83A3C400DC6188BB2C039C070CA0AC4BE3A3C402FA35EB0ACC039C04F75023EAE3A3C4088877FE8A2C039C0D82CAEACA73A3C4021F166CFACC039C0B5A8D900963A3C403022D1FCC5C039C006DEF1B7893A3C4064711725D7C039C04890E3167E3A3C408F80E39DE6C039C0D0DE9DB8673A3C400687BC3604C139C0E7EE1798453A3C405FB6D2F630C139C0E7EE1798453A3C405FB6D2F630C139C0661ECDD8443A3C40A496C11E32C139C029444771443A3C405ED849DD32C139C0E229C65D443A3C40FF1D12FF32C139C0C1B84444443A3C4060AA721B33C139C0	3	Ring Road
4	0105000020E61000000100000001020000001C0000007EB6869D463A3C40A546F71E35C139C07BDC26A0463A3C4077D3BF2735C139C07BDC26A0463A3C4077D3BF2735C139C07BDC26A0463A3C4077D3BF2735C139C09DE528C4463A3C40A031C40A36C139C00CE127B2463A3C4089AC743937C139C01BC12034463A3C40B578482738C139C0C4E51574453A3C40A9973FD438C139C095530884443A3C404D35915039C139C051F8F31B433A3C401760C86039C139C077F8E0CB413A3C401760C86039C139C0ECEACA45403A3C40B7DED7CE38C139C0BD58BD553F3A3C40D7208FA537C139C0A3EFB8073F3A3C403694BDEF35C139C0A3EFB8073F3A3C403694BDEF35C139C07306BE613F3A3C403998B2F134C139C0D181C6F73F3A3C40CBD5B42934C139C0AA81D947413A3C409863DA2033C139C0F91CE95B423A3C4088422ED532C139C08D6AFA8D433A3C40356E65E532C139C069C1FA93433A3C40356E65E532C139C0C1B84444443A3C4060AA721B33C139C0A3285455453A3C408C4409AC33C139C020AD5E0F463A3C40FF12923834C139C0416A202E463A3C40159FF25434C139C0ECD7258E463A3C4059511AF734C139C07EB6869D463A3C40A546F71E35C139C07EB6869D463A3C40A546F71E35C139C0	4	Ring Rd Circle
5	0105000020E610000001000000010200000003000000BC58BD553F3A3C40D7208FA537C139C07F78525F3C3A3C40377BBB1F40C139C051F8F31B433A3C401760C86039C139C0	5	\N
6	0105000020E61000000100000001020000002B0000007F78525F3C3A3C40377BBB1F40C139C0C28141333B3A3C405C65E7A441C139C0753D1FD5383A3C40B6A8577043C139C0446201C5363A3C4047C2244344C139C0CC2BCF4C333A3C40FC218A1045C139C0FA79943E2F3A3C40A6C6665145C139C04FBA694A2C3A3C406340EBFA44C139C0937A48FE293A3C406851553844C139C0D0F11692263A3C409D3A1C7D42C139C0918DEDB5233A3C40F644AEE93FC139C06D3BDB71223A3C407595AE763DC139C0B344CA45213A3C40042F87613AC139C067A9BA31203A3C404E1BEFF337C139C067A9BA31203A3C404E1BEFF337C139C06260AA111F3A3C4050D36AD735C139C0739790491D3A3C40550F17B033C139C0177375691B3A3C40E89F7C0A32C139C0847C51ED183A3C40183A782731C139C0B56A14B5143A3C40A02AE26430C139C08986E130113A3C4096D2734430C139C0617B9BA9FA393C40DBC9A8A92EC139C0217C3C19F4393C4014332D532EC139C014A10BB9F0393C40812B622B2FC139C0F2FCD3E0EC393C4083322DC630C139C086B47780E6393C406B86DDDA36C139C057350F48DF393C401B119F083EC139C04C802857CF393C40D8FA66554EC139C01AB8AFFEC6393C40DD7A903357C139C01E1465D6C1393C4094E69B4F5CC139C022701AAEBC393C40D1FF496462C139C0D582E505B9393C40C8BFFF3E6AC139C02815E0A5B8393C4030EC79086DC139C06B27E4EDB8393C40E81505EB70C139C04527F73DBA393C4070A55BF573C139C064821EF6BC393C4061F6612E78C139C045145286C0393C40B247FFB67AC139C02001C01EC8393C40DDCFA5927CC139C02001C01EC8393C40DDCFA5927CC139C035D6E801003A3C40B02363C083C139C0A22CE7DE0B3A3C4087ADCB4F85C139C06719DE54343A3C402264B73D89C139C0814A64C2343A3C40B7CE864889C139C02D7A27873C3A3C404AEAAEBB8AC139C0	6	Senaats Road
7	0105000020E6100000010000000102000000070000007306BE613F3A3C403998B2F134C139C06C137E8A363A3C404933CD7730C139C041DD2572303A3C407F76A5622DC139C0A2B9AB01283A3C40D67E06DA2AC139C02E961E411E3A3C40C32765A626C139C09B4DD530193A3C40E48AC13A23C139C09B4DD530193A3C40E48AC13A23C139C0	7	\N
8	0105000020E61000000100000001020000000800000056DF1B111E3A3C40E9A8870C1FC139C0A31E764D243A3C4015B164C021C139C0F9E6DB552B3A3C404F9B34B126C139C0095D426A323A3C40FA288D2E2CC139C02B73DC2E383A3C40A9084DFD2EC139C0FA56FF783F3A3C40727650F832C139C048F20E8D403A3C4036DE943E33C139C0AA81D947413A3C409863DA2033C139C0	8	\N
9	0105000020E61000000100000001020000002C0000000BE127B2463A3C4089AC743937C139C02C292F77543A3C40DAFBDF7A3FC139C09A0FCE82943A3C40370BBBCB63C139C00EEA4A239D3A3C40D839D4AA66C139C0B39BA4E8B73A3C40283594A868C139C0F1558E57CA3A3C40BD4151A669C139C001DAEBF9DE3A3C40AC71A4426BC139C024A06299093B3C40A580C9E171C139C0695EBFFE243B3C40363A802777C139C0DF9052282B3B3C40759F332C78C139C0A13C85B7323B3C406E2590C179C139C01C861288373B3C402A47BCFE7AC139C02B34730F403B3C401EACED197DC139C0EA231C85553B3C400A07CA4B83C139C05E1B28FF6E3B3C400F1FFB928BC139C05E1B28FF6E3B3C400F1FFB928BC139C0CA36B7A3BF3B3C403B50444F9DC139C06F9A2CC0C73B3C4029F027569FC139C0F4596A04CC3B3C40DB7EDE4AA2C139C0052C86F0CD3B3C401710A93BA7C139C0DAE28820CE3B3C40CE7D86D2AAC139C0DED973ACCC3B3C409F62DC32B1C139C042A35484CA3B3C40EB7D187DBAC139C0ACFE559CCA3B3C40EB7D187DBAC139C0185A57B4CA3B3C40F61EA15FBEC139C0AF4766BCCB3B3C40C27D947FC1C139C03E479FACCF3B3C40A05D8E65C6C139C0F47C30B5D93B3C40DDF6F288CAC139C016791ED7FB3B3C406D1AC295D4C139C0F2BA05320F3C3C40942D8E10DAC139C05D75F9A81C3C3C402676836CDEC139C050747ED9253C3C405009D1B0DFC139C0B773CA192B3C3C400EC75FADDEC139C0B773CA192B3C3C400EC75FADDEC139C04573030A2F3C3C4029B9AAB8DBC139C03B852DF2313C3C405C2C74A7D6C139C03B852DF2313C3C405C2C74A7D6C139C041174E32343C3C403AADAB60CEC139C0D5E9BCBC353C3C40E533C6C0C7C139C00A84C5723C3C3C402B38A2EAB1C139C00A84C5723C3C3C402B38A2EAB1C139C08EF1DD223E3C3C40049BDE14ADC139C04C31FF6E403C3C40120EA093A9C139C04FCC3423443C3C40BA96C2FCA5C139C0	9	Ring Road
10	0105000020E610000001000000010200000020000000824814524A3C3C40888A135D9AC139C0AC3A246C4B3C3C40104C0C9798C139C0B183348C4C3C3C4042E7937897C139C0FA7E46CA4D3C3C40B8AC5FA096C139C0349A5F864F3C3C400CBCA61E96C139C04A0C7948513C3C4002E924AD95C139C0E6429870533C3C40A1702BC895C139C0F374B686553C3C407434835F96C139C0ED7DCBFA563C3C408515120797C139C0A774DC26583C3C40F603AEE497C139C08074EF76593C3C409CEE2C1E99C139C00299F7065A3C3C40E1316E2C9AC139C03B6B00A35A3C3C40BCC637C79BC139C0801D02C15A3C3C4004F93E8D9DC139C0CF0FFF8A5A3C3C40EA2736E59FC139C02DE2F4D6593C3C405A11CF8AA1C139C07D2BDF56583C3C4041BCF90FA3C139C02207C476563C3C404E21A93EA4C139C085D0A44E543C3C405E32C3AAA4C139C0BE508856523C3C40C23AD0E0A4C139C0BE508856523C3C40C23AD0E0A4C139C0D37E591A4F3C3C404E21A93EA4C139C0153F38CE4C3C3C40B78C9825A3C139C0153F38CE4C3C3C40B78C9825A3C139C0FB2C21364B3C3C408BF5870CA2C139C0AA9111224A3C3C407A03E230A0C139C00964076E493C3C40E8955F149EC139C00964076E493C3C4020F321E99DC139C00964076E493C3C40F37D72BA9CC139C06C7F0DDA493C3C405455782A9BC139C0161D144F4A3C3C4078A72B649AC139C0824814524A3C3C40888A135D9AC139C0	10	\N
11	0105000020E610000001000000010200000004000000D37E591A4F3C3C404E21A93EA4C139C08B297FF7493C3C405D17B35AA4C139C04FCC3423443C3C40BA96C2FCA5C139C00964076E493C3C4020F321E99DC139C0	11	\N
12	0105000020E6100000010000000102000000100000002DE2F4D6593C3C405A11CF8AA1C139C055C7997E5D3C3C40021F4001A0C139C00E10D03E613C3C406D55BE8F9FC139C0BC6FF808643C3C40108F2CB09FC139C0C5F33BB3683C3C4040F4BE3AA1C139C00558658F6B3C3C405F8DCF53A2C139C0B1C0A2CD6F3C3C40E106A1A5A3C139C01A09FF2D763C3C4073A5CE62A4C139C05ABF4D9E7B3C3C40489AB1BEA4C139C01BF19154803C3C408A8687E4A4C139C0DC3A43E47A3C3C4014D96F05A2C139C0979BE67D743C3C40777912449FC139C082D7A727703C3C405936C4FF9DC139C0E7532B8D673C3C405B5E87C59BC139C0596797545D3C3C40AD22A55A99C139C0A774DC26583C3C40F603AEE497C139C0	12	Lunnon Road
13	0105000020E610000001000000010200000019000000ED7DCBFA563C3C408515120797C139C0540348D8573C3C409E1136D593C139C0A4BE5E6A593C3C40DE54F7448EC139C059E14ABB693C3C40C86576C05AC139C02CA1625F6B3C3C403215D5E154C139C0B705669B6B3C3C408E291AB552C139C0187859BD6A3C3C40C9CE6EF64FC139C084813541683C3C40AC8324224DC139C0B0780D7D653C3C402DBFF89C4BC139C03259CD0E613C3C40D661BDA94AC139C0953D9F7E3A3C3C404F3FAAF040C139C0C62B6246363C3C40DA527E6B3FC139C066BE3646333C3C4087F7A1B73CC139C0EAA3BEF92A3C3C403EE2C51D35C139C0EAA3BEF92A3C3C403EE2C51D35C139C02C649DAD283C3C401E5134CB32C139C0BCD4145B1E3C3C40E00362AF2FC139C0AEBB03AFFA3B3C40766F43FA25C139C0C569CBCAF63B3C401520762725C139C01D54F37BC43B3C40914CFB3C1AC139C0EF590E49913B3C40409747CF0CC139C0B93C6365503B3C40611FBE73FEC039C0B93C6365503B3C40611FBE73FEC039C0B2BDE7DC473B3C40FF6ADE87FCC039C0B2BDE7DC473B3C40FF6ADE87FCC039C0	13	Ring Road
14	0105000020E6100000010000000102000000060000002B649DAD283C3C401E5134CB32C139C01D5E5ABC353C3C40834C55C535C139C0DC38B1BC3B3C3C4049343F3C36C139C0EC5CF23C403C3C40B1BE24D035C139C04B1C43D1453C3C400377367634C139C04B1C43D1453C3C400377367634C139C0	14	Duxbury Road
15	0105000020E610000001000000010200000002000000617B9BA9FA393C40DBC9A8A92EC139C0356F57FCEE393C401034FE5148C139C0	15	\N
16	0105000020E610000001000000010200000010000000F782974D263B3C4023E2BFE08FC139C0421EB8DA283B3C405C24CE7F8EC139C09BD878EA2B3B3C408A7205A78EC139C0FC47C4252F3B3C4074EDECA58FC139C03D79CF5B313B3C40042AF3CA91C139C0C93DAAC8313B3C40869B035294C139C039C44430313B3C40E376D24F96C139C0880C9F922F3B3C402DEF3C6198C139C0C0CB431B2D3B3C401245F79A99C139C0834FC3102B3B3C4053EA92AE99C139C037B4A283283B3C40E6BFB51199C139C086FCFCE5263B3C409368FBD797C139C0D9445748253B3C40FE47F5B295C139C0C2702C9A243B3C40FFDDE42B93C139C0CCDA41F1243B3C40D1A7DE0691C139C0F782974D263B3C4023E2BFE08FC139C0	16	\N
17	0105000020E610000001000000010200000006000000F782974D263B3C4023E2BFE08FC139C0421EB8DA283B3C405610D6F98AC139C06F7B98622A3B3C4066C60E7685C139C0F2D55D782A3B3C40E23A47F27FC139C0F81F38272A3B3C4012C9DEEA7AC139C0DE9052282B3B3C40759F332C78C139C0	17	\N
18	0105000020E6100000010000000102000000060000001B861288373B3C402A47BCFE7AC139C0EE02FF10363B3C40A56199897DC139C0855F65BD333B3C40AAE91C1584C139C039C44430313B3C40A6683AE68AC139C029A5A4AD303B3C40C4B50F098FC139C03D79CF5B313B3C40042AF3CA91C139C0	18	\N
19	0105000020E61000000100000001020000000400000037B4A283283B3C40E6BFB51199C139C0CA2D081C293B3C40028C07229CC139C0D3971D73293B3C4039E8F4459FC139C037B4A283283B3C40F2C60090A3C139C0	19	\N
20	0105000020E610000001000000010200000002000000D3971D73293B3C4039E8F4459FC139C0C0CB431B2D3B3C401245F79A99C139C0	20	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                4528.dat                                                                                            0000600 0004000 0002000 00000010741 14511212744 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E61000003BC5AA41983B3C40B5519D0E64C139C0	1	-25.755433	28.232792
2	0101000020E610000069FF03AC553B3C40653733FAD1C039C0	2	-25.753204	28.231776
3	0101000020E6100000E5B8533A583B3C40A46C91B41BC139C0	3	-25.754329	28.231815
4	0101000020E6100000BAA0BE654E3B3C406C5CFFAECFC039C0	4	-25.753169	28.231665
5	0101000020E610000065AA6054523B3C40AE6186C613C139C0	5	-25.754208	28.231725
6	0101000020E610000014CFD902423B3C40F08AE07F2BC139C0	6	-25.75457	28.231476
7	0101000020E6100000ACCABE2B823B3C40FE65F7E461C139C0	7	-25.7554	28.232455
8	0101000020E6100000AF09698D413B3C406DACC43C2BC139C0	8	-25.754566	28.231469
9	0101000020E610000080D6FCF84B3B3C402D5F97E13FC139C0	9	-25.754881	28.231628
10	0101000020E6100000596ABDDF683B3C4088122D793CC139C0	10	-25.754829	28.232069
11	0101000020E610000041F33977BB3A3C409833DB15FAC039C0	11	-25.753816	28.229423
12	0101000020E61000007E8B4E965A3B3C4047AF06280DC139C0	12	-25.754107	28.231851
13	0101000020E61000009B7631CD743B3C40338B506C05C139C0	13	-25.753989	28.232251
14	0101000020E61000009D6516A1D83A3C401842CEFBFFC039C0	14	-25.753906	28.229868
15	0101000020E610000024D1CB28963B3C402CB6494563C139C0	15	-25.755421	28.23276
16	0101000020E6100000AB9509BFD43B3C40D9791B9B1DC139C0	16	-25.754358	28.233715
17	0101000020E6100000DFDE35E84B3B3C4034F3E49A02C139C0	17	-25.753946	28.231627
18	0101000020E610000018B0E42A163B3C407AC8940F41C139C0	18	-25.754899	28.230807
19	0101000020E61000001BF4A5B73F3B3C40F1F274AE28C139C0	19	-25.754527	28.231441
20	0101000020E6100000B35E0CE5443B3C40C8940F41D5C039C0	20	-25.753254	28.23152
21	0101000020E6100000999F1B9AB23B3C40A59F70766BC139C0	21	-25.755546	28.233194
22	0101000020E61000005726FC523F3B3C40389F3A5629C139C0	22	-25.754537	28.231435
23	0101000020E6100000070C923EAD3A3C40309E4143FFC039C0	23	-25.753895	28.229206
24	0101000020E6100000B0592E1B9D3B3C400458E4D70FC139C0	24	-25.754148	28.232866
25	0101000020E61000003C4CFBE6FE3A3C406DFE5F75E4C039C0	25	-25.753486	28.230452
26	0101000020E610000032056B9C4D3B3C40637D03931BC139C0	26	-25.754327	28.231653
27	0101000020E6100000433C122F4F3B3C40FCFF3861C2C039C0	27	-25.752966	28.231677
28	0101000020E6100000E42CEC69873B3C40E04C4C1762C139C0	28	-25.755403	28.232535
29	0101000020E6100000D36BB3B1123B3C403543AA285EC139C0	29	-25.755343	28.230754
30	0101000020E6100000CE33F6251B3B3C407BBC900E0FC139C0	30	-25.754136	28.230883
31	0101000020E6100000FDDAFAE93F3B3C4045813E9127C139C0	31	-25.75451	28.231444
32	0101000020E610000018247D5A453B3C40FC89CA8635C139C0	32	-25.754723	28.231527
33	0101000020E610000020990E9D9E3B3C40CADDE7F868C139C0	33	-25.755508	28.232889
34	0101000020E6100000E085ADD9CA3B3C40062D246074C139C0	34	-25.755682	28.233564
35	0101000020E6100000DFC14F1C403B3C401749BBD1C7C039C0	35	-25.753049	28.231447
36	0101000020E610000075C93846B23B3C40B83EAC376AC139C0	36	-25.755527	28.233189
37	0101000020E6100000EC2FBB270F3B3C4013D55B035BC139C0	37	-25.755295	28.2307
38	0101000020E610000062BD512B4C3B3C40FE7DC68503C139C0	38	-25.75396	28.231631
39	0101000020E61000008AE8D7D64F3B3C40884CF91054C139C0	39	-25.755189	28.231687
40	0101000020E6100000B7EF517FBD3A3C403D9D2B4A09C139C0	40	-25.754048	28.229454
41	0101000020E61000002D93E1783E3B3C408C2D043928C139C0	41	-25.75452	28.231422
42	0101000020E61000002E76FBAC323B3C40475854C4E9C039C0	42	-25.753567	28.231242
43	0101000020E6100000AB23473A033B3C40B37C5D86FFC039C0	43	-25.753899	28.230518
44	0101000020E6100000D20149D8B73B3C40CEE2C5C210C139C0	44	-25.754162	28.233274
45	0101000020E6100000390D51853F3B3C4045813E9127C139C0	45	-25.75451	28.231438
46	0101000020E6100000466117450F3C3C404739984D80C139C0	46	-25.755864	28.234608
47	0101000020E61000005BB56B425A3B3C4053910A630BC139C0	47	-25.75408	28.231846
48	0101000020E6100000D976DA1A113C3C40D591239D81C139C0	48	-25.755884	28.234636
49	0101000020E61000004241295AB93B3C40161406651AC139C0	49	-25.754309	28.233297
50	0101000020E6100000B62E35423F3B3C407D24253D0CC139C0	50	-25.754093	28.231434
51	0101000020E61000003E0455A3573B3C40ED6305BF0DC139C0	51	-25.754116	28.231806
52	0101000020E6100000E01115AA9B3B3C40B5519D0E64C139C0	52	-25.755433	28.232844
53	0101000020E61000008718AF79553B3C40A71FD4450AC139C0	53	-25.754063	28.231773
54	0101000020E6100000CEC64ACCB33A3C40041E1840F8C039C0	54	-25.753788	28.229306
55	0101000020E61000005726FC523F3B3C40A6F10BAF24C139C0	55	-25.754466	28.231435
56	0101000020E6100000DC2BF3565D3B3C404F7633A31FC139C0	56	-25.754389	28.231893
57	0101000020E6100000F58079C8943B3C402CB6494563C139C0	57	-25.755421	28.232739
58	0101000020E610000070986890823B3C4082ACA7565FC139C0	58	-25.755361	28.232461
59	0101000020E610000032225168593B3C40E789E76C01C139C0	59	-25.753928	28.231833
\.


                               4530.dat                                                                                            0000600 0004000 0002000 00000010732 14511212744 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E610000034BBEEAD483C3C404B5B5CE333C139C0	1	-25.754698	28.235484
2	0101000020E6100000E6CE4C309C3B3C40AA656B7D91C039C0	2	-25.75222	28.232852
3	0101000020E6100000B1DCD26A483C3C407286E28E37C139C0	3	-25.754754	28.23548
4	0101000020E6100000FAB836548C3B3C40670E492D94C039C0	4	-25.752261	28.23261
5	0101000020E61000005456D3F5443B3C4071033E3F8CC039C0	5	-25.75214	28.231521
6	0101000020E61000005DA96741283B3C402FDD240681C139C0	6	-25.755875	28.231083
7	0101000020E6100000C8073D9B553B3C400B45BA9F53C039C0	7	-25.751276	28.231775
8	0101000020E6100000C460FE0A993B3C4093718C648FC039C0	8	-25.752188	28.232804
9	0101000020E6100000859675FF583C3C4091EF52EA92C139C0	9	-25.756148	28.235733
10	0101000020E61000002F17F19D98393C40F0315871AAC139C0	10	-25.756507	28.224985
11	0101000020E6100000A323B9FC873C3C4076E09C11A5C139C0	11	-25.756425	28.23645
12	0101000020E61000001FBC7669C33D3C40D0B9DBF5D2C039C0	12	-25.753219	28.241263
13	0101000020E610000096E7C1DD593B3C40346953758FC039C0	13	-25.752189	28.23184
14	0101000020E61000007427D87F9D3B3C4046088F368EC039C0	14	-25.75217	28.232872
15	0101000020E61000004DA25EF0693A3C40B7CF2A33A5C139C0	15	-25.756427	28.228179
16	0101000020E6100000B29DEFA7C63B3C4041B8020AF5C039C0	16	-25.753739	28.2335
17	0101000020E6100000771211FE453C3C408C4AEA0434C139C0	17	-25.7547	28.235443
18	0101000020E6100000F146E6913F3C3C40EE3F321D3AC139C0	18	-25.754793	28.235345
19	0101000020E6100000FF3EE3C2813C3C40BD8C62B9A5C139C0	19	-25.756435	28.236355
20	0101000020E61000005D37A5BC563A3C40DF313CF6B3C039C0	20	-25.752746	28.227886
21	0101000020E610000088855AD3BC3B3C40A94D9CDCEFC039C0	21	-25.75366	28.23335
22	0101000020E61000000C5C1E6B463A3C400E828E56B5C039C0	22	-25.752767	28.227637
23	0101000020E6100000F7216FB9FA393C40A71FD4450AC139C0	23	-25.754063	28.226482
24	0101000020E6100000DFC5FB71FB393C40AC74779D0DC139C0	24	-25.754114	28.226493
25	0101000020E610000061FE0A992B3B3C401EC3633F8BC139C0	25	-25.756031	28.231134
26	0101000020E6100000213B6F63B33B3C40D905836BEEC039C0	26	-25.753638	28.233206
27	0101000020E610000001A777F17E3C3C40AC55BB26A4C139C0	27	-25.756411	28.236312
28	0101000020E6100000168733BF9A3B3C40B6476FB88FC039C0	28	-25.752193	28.23283
29	0101000020E610000057EC2FBB273B3C40FACF9A1F7FC139C0	29	-25.755846	28.231075
30	0101000020E61000002DB0C7444A3B3C40A7785C548BC039C0	30	-25.752126	28.231602
31	0101000020E6100000451152B7B33B3C403A765089EBC039C0	31	-25.753594	28.233211
32	0101000020E6100000FDA02E52283B3C40CE893DB48FC139C0	32	-25.756099	28.231084
33	0101000020E6100000888384285F3C3C4066118AADA0C139C0	33	-25.756358	28.235827
34	0101000020E610000085B35BCB643C3C401096B1A19BC139C0	34	-25.756281	28.235913
35	0101000020E6100000FED64E94843C3C40D2FBC6D79EC139C0	35	-25.75633	28.236398
36	0101000020E61000001C5C3AE63C3B3C40C6C210397DC139C0	36	-25.755817	28.231398
37	0101000020E6100000E257ACE1223B3C406B2C616D8CC139C0	37	-25.756049	28.231001
38	0101000020E6100000D61A4AED453C3C40F10F5B7A34C139C0	38	-25.754707	28.235442
39	0101000020E6100000354069A8513C3C406B6116DA39C139C0	39	-25.754789	28.235621
40	0101000020E6100000FE463B6EF8393C404ED4D2DC0AC139C0	40	-25.754072	28.226447
41	0101000020E6100000460C3B8C493B3C40E412471E88C039C0	41	-25.752077	28.231591
42	0101000020E6100000B4E6C75F5A3C3C408E1F2A8D98C139C0	42	-25.756234	28.235754
43	0101000020E61000000E12A27C413B3C40C03C64CA87C039C0	43	-25.752072	28.231468
44	0101000020E6100000B77C24253D3C3C40F261F6B2EDC039C0	44	-25.753627	28.235308
45	0101000020E61000002E1D739EB13B3C40B62FA017EEC039C0	45	-25.753633	28.233179
46	0101000020E61000004C1762F5473C3C40F3C98AE1EAC039C0	46	-25.753584	28.235473
47	0101000020E6100000F435CB65A33B3C40CD3B4ED191C039C0	47	-25.752225	28.232962
48	0101000020E610000020D1048A583C3C406CB1DB6795C139C0	48	-25.756186	28.235726
49	0101000020E61000006EC1525DC03B3C401B2FDD2406C139C0	49	-25.754	28.233404
50	0101000020E6100000CE50DCF1263B3C40DFFAB0DEA8C139C0	50	-25.756483	28.231063
51	0101000020E610000052280B5F5F3B3C402BBF0CC688C039C0	51	-25.752087	28.231924
52	0101000020E61000007AFF1F274C3C3C40D28E1B7E37C139C0	52	-25.754753	28.235537
53	0101000020E61000005051F52B9D3B3C40AD3594DA8BC039C0	53	-25.752134	28.232867
54	0101000020E6100000E2AB1DC5393A3C40EFE6A90EB9C139C0	54	-25.75673	28.227444
55	0101000020E6100000670C7382363D3C40B136C64E78C139C0	55	-25.755742	28.239113
56	0101000020E610000049F3C7B4363D3C405ABBED4273C139C0	56	-25.755665	28.239116
57	0101000020E61000009DF2E846583C3C4002124DA088C139C0	57	-25.755991	28.235722
58	0101000020E6100000BBEEAD484C3C3C407AFB73D190C139C0	58	-25.756116	28.235539
59	0101000020E6100000289A07B0C83B3C40C32E8A1EF8C039C0	59	-25.753786	28.233531
\.


                                      4532.dat                                                                                            0000600 0004000 0002000 00000010750 14511212744 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E6100000F3E7DB82A53A3C40AC1DC539EAC039C0	1	-25.753574	28.229088
2	0101000020E61000002B4CDF6B083A3C40990F087426C139C0	2	-25.754493	28.226691
3	0101000020E6100000F855B950F93B3C4003D19332A9C139C0	3	-25.756488	28.234273
4	0101000020E610000001DD9733DB393C40FCC3961E4DC139C0	4	-25.755083	28.226001
5	0101000020E610000042959A3DD03A3C4048FAB48AFEC039C0	5	-25.753884	28.22974
6	0101000020E6100000EBAA402D063B3C404CFDBCA948C139C0	6	-25.755015	28.230563
7	0101000020E61000009C1A683EE73A3C4049F59D5F94C039C0	7	-25.752264	28.230091
8	0101000020E610000035B39602D23A3C40A2B2614D65C139C0	8	-25.755452	28.229767
9	0101000020E61000004D11E0F42E3A3C409163EB19C2C139C0	9	-25.756868	28.227279
10	0101000020E61000005DE0F258333A3C4066683C11C4C139C0	10	-25.756898	28.227346
11	0101000020E61000000F45813E913B3C407F164B917CC139C0	11	-25.755807	28.232685
12	0101000020E6100000734A404CC23D3C40B2A03028D3C039C0	12	-25.753222	28.241246
13	0101000020E610000076A4FACE2F3A3C40ECF99AE5B2C139C0	13	-25.756636	28.227292
14	0101000020E6100000CEDE196D553A3C40CB10C7BAB8C139C0	14	-25.756725	28.227866
15	0101000020E61000004C35B396023A3C40BAD91F28B7C139C0	15	-25.756701	28.226602
16	0101000020E6100000D1031F83153B3C40726E13EE95C139C0	16	-25.756194	28.230797
17	0101000020E61000004359F8FA5A3B3C40FF1F274C18C139C0	17	-25.754277	28.231857
18	0101000020E6100000996725ADF83A3C408864C8B1F5C039C0	18	-25.753749	28.230357
19	0101000020E6100000B2BE81C98D3A3C40392BA226FAC039C0	19	-25.753817	28.228726
20	0101000020E610000051DB8651103C3C4017F549EEB0C139C0	20	-25.756606	28.234624
21	0101000020E6100000A1496249B93B3C4014D044D8F0C039C0	21	-25.753675	28.233296
22	0101000020E6100000D47FD6FCF83B3C40514B732B84C139C0	22	-25.755923	28.234268
23	0101000020E6100000855B3E92923A3C40A35698BED7C039C0	23	-25.753292	28.228799
24	0101000020E6100000376DC669883A3C40E5284014CCC039C0	24	-25.753114	28.228644
25	0101000020E6100000D1AFAD9FFE3B3C40B83EAC376AC139C0	25	-25.755527	28.234354
26	0101000020E61000009E4143FF043B3C400569C6A2E9C039C0	26	-25.753565	28.230545
27	0101000020E61000007E3B8908FF3A3C4086C954C1A8C039C0	27	-25.752575	28.230454
28	0101000020E61000006F2EFEB6273C3C405FCFD72C97C139C0	28	-25.756213	28.234981
29	0101000020E6100000A1681EC0223B3C407286E28E37C139C0	29	-25.754754	28.230999
30	0101000020E6100000E4D70FB1C13A3C40DE5A26C3F1C039C0	30	-25.753689	28.229518
31	0101000020E61000005915E126A33A3C40425A63D009C139C0	31	-25.754056	28.229052
32	0101000020E6100000C51A2E724F3B3C4044DFDDCA12C139C0	32	-25.754193	28.231681
33	0101000020E6100000460A65E1EB3B3C40427C60C77FC139C0	33	-25.755856	28.234068
34	0101000020E61000003255302AA93B3C40395E81E849C139C0	34	-25.755034	28.23305
35	0101000020E61000005039268BFB3B3C4034F8FBC56CC139C0	35	-25.755566	28.234307
36	0101000020E610000068E7340BB43B3C401D56B8E523C139C0	36	-25.754454	28.233216
37	0101000020E6100000FC389A232B3B3C40A051BAF42FC139C0	37	-25.754638	28.231127
38	0101000020E6100000A0DCB6EF513B3C4030D80DDB16C139C0	38	-25.754255	28.231719
39	0101000020E610000069A85148323B3C40F581E49D43C139C0	39	-25.754938	28.231236
40	0101000020E6100000855B3E92923A3C4015FE0C6FD6C039C0	40	-25.753272	28.228799
41	0101000020E61000004A29E8F6923A3C40A626C11BD2C039C0	41	-25.753206	28.228805
42	0101000020E6100000D2FC31AD4D3B3C409D2ADF3312C139C0	42	-25.754184	28.231654
43	0101000020E6100000CF4BC5C6BC3A3C40BBECD79DEEC039C0	43	-25.753641	28.229443
44	0101000020E6100000CD5CE0F2583B3C408CF337A110C139C0	44	-25.75416	28.231826
45	0101000020E610000015713AC9563B3C40A60EF27A30C139C0	45	-25.754646	28.231793
46	0101000020E61000006FBA6587F83B3C402CD32F116FC139C0	46	-25.755601	28.234261
47	0101000020E6100000DDCF29C8CF3A3C409EF0129CFAC039C0	47	-25.753824	28.229733
48	0101000020E61000006667D13B153C3C4094A2957B81C139C0	48	-25.755882	28.234699
49	0101000020E610000007EFAB72A13A3C40AFEDED96E4C039C0	49	-25.753488	28.229026
50	0101000020E6100000C4978922A43A3C403EAE0D15E3C039C0	50	-25.753465	28.229067
51	0101000020E6100000481630815B3B3C408CF337A110C139C0	51	-25.75416	28.231865
52	0101000020E610000093AAED26F83A3C40D7187442E8C039C0	52	-25.753544	28.230349
53	0101000020E6100000956247E3503B3C40958098840BC139C0	53	-25.754082	28.231703
54	0101000020E6100000DA01D715333A3C40986BD102B4C139C0	54	-25.756653	28.227342
55	0101000020E6100000E658DE550F3C3C40E7374C3448C139C0	55	-25.755008	28.234609
56	0101000020E61000004E0E9F74223D3C40171230BABCC139C0	56	-25.756786	28.238807
57	0101000020E6100000AFEE586C933A3C40D576137CD3C039C0	57	-25.753227	28.228812
58	0101000020E61000000F9BC8CC053A3C406DE690D442C139C0	58	-25.754926	28.226651
59	0101000020E6100000F9F4D896013B3C407E6FD39FFDC039C0	59	-25.75387	28.230493
\.


                        4508.dat                                                                                            0000600 0004000 0002000 00000061252 14511212744 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-08-17T10:23:01.533+02:00	2023-08-17T10:26:28.883+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	Yes	-25.755433 28.232792 0 0	-25.755433	28.232792	-25.754698 28.235484 0 0	-25.754698	28.235484	0	0	-25.753574 28.229088 0 0	-25.753574	28.229088	0	0	261169765	3eedc830-6ff9-4b0b-903a-17bfa5dcb133	2023-08-17T08:26:32	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	1
2	2023-08-17T10:26:46.212+02:00	2023-08-17T10:27:49.348+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.753204 28.231776 0 0	-25.753204	28.231776	-25.75222 28.232852 0 0	-25.75222	28.232852	0	0	-25.754493 28.226691 0 0	-25.754493	28.226691	0	0	261169979	7221e39f-3966-4037-bcf2-3fce369769a3	2023-08-17T08:27:49	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	2
3	2023-08-17T10:58:25.430+02:00	2023-08-17T11:01:09.166+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Sometimes	Walking	1	0	0	0	0	No	Yes	No	-25.754329 28.231815 0 0	-25.754329	28.231815	-25.754754 28.23548 0 0	-25.754754	28.23548	0	0	-25.756488 28.234273 0 0	-25.756488	28.234273	0	0	261177744	7d36019e-9c5a-451d-a5eb-1326e6bee485	2023-08-17T09:01:11	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	3
4	2023-08-17T10:59:54.347+02:00	2023-08-17T11:01:19.768+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.753169 28.231665 0 0	-25.753169	28.231665	-25.752261 28.23261 0 0	-25.752261	28.23261	0	0	-25.755083 28.226001 0 0	-25.755083	28.226001	0	0	261177796	5e3d1cb9-7805-4fd9-976e-ba224dbfe6eb	2023-08-17T09:01:21	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	4
5	2023-08-17T10:51:53.853+02:00	2023-08-17T11:02:46.513+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.754208 28.231725 0 0	-25.754208	28.231725	-25.75214 28.231521 0 0	-25.75214	28.231521	0	0	-25.753884 28.22974 0 0	-25.753884	28.22974	0	0	261178210	d6331227-d70e-434a-a76f-3744779e5a23	2023-08-17T09:02:48	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	5
6	2023-08-17T11:11:35.903+02:00	2023-08-17T11:14:28.248+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Sometimes	Sometimes	Walking	1	0	0	0	0	Yes	Yes	Yes	-25.75457 28.231476 0 0	-25.75457	28.231476	-25.755875 28.231083 0 0	-25.755875	28.231083	0	0	-25.755015 28.230563 0 0	-25.755015	28.230563	0	0	261181653	134dfd08-b281-4074-817f-42bcbbab5343	2023-08-17T09:14:30	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	6
7	2023-08-17T11:31:21.824+02:00	2023-08-17T11:34:06.885+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking Skating	1	0	1	0	0	Yes	No	Yes	-25.7554 28.232455 0 0	-25.7554	28.232455	-25.751276 28.231775 0 0	-25.751276	28.231775	0	0	-25.752264 28.230091 0 0	-25.752264	28.230091	0	0	261187037	1fbe7402-2938-49c6-82be-bdb5b3a823be	2023-08-17T09:34:07	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	7
8	2023-08-17T11:47:01.044+02:00	2023-08-17T11:56:34.061+02:00	Undergraduate	Other	Natural and Agricultural Sciences	Never	Never	Walking Cycling	1	1	0	0	0	Yes	No	Yes	-25.754566 28.231469 0 0	-25.754566	28.231469	-25.752188 28.232804 0 0	-25.752188	28.232804	0	0	-25.755452 28.229767 0 0	-25.755452	28.229767	0	0	261192792	2021a8fa-5d69-4b1b-98d7-ad5421646563	2023-08-17T09:56:34	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	8
9	2023-08-17T21:25:19.256+02:00	2023-08-17T21:30:25.527+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Never	Sometimes	Walking	1	0	0	0	0	No	No	No	-25.754881 28.231628 0 0	-25.754881	28.231628	-25.756148 28.235733 0 0	-25.756148	28.235733	0	0	-25.756868 28.227279 0 0	-25.756868	28.227279	0	0	261403846	61703eec-3dbc-447c-8019-ac294ffe3ac2	2023-08-17T19:30:27	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	9
10	2023-08-17T21:36:14.189+02:00	2023-08-17T21:41:39.929+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Sometimes	Never	Walking	1	0	0	0	0	Yes	No	Yes	-25.754829 28.232069 0 0	-25.754829	28.232069	-25.756507 28.224985 0 0	-25.756507	28.224985	0	0	-25.756898 28.227346 0 0	-25.756898	28.227346	0	0	261406187	6091d4d9-929e-455a-adcf-c14137cfe847	2023-08-17T19:41:42	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	10
11	2023-08-17T21:33:22.991+02:00	2023-08-17T21:44:23.989+02:00	Undergraduate	First Year	Economic and Management Sciences	Never	Sometimes	Walking	1	0	0	0	0	No	No	Yes	-25.753816 28.229423 0 0	-25.753816	28.229423	-25.756425 28.23645 0 0	-25.756425	28.23645	0	0	-25.755807 28.232685 0 0	-25.755807	28.232685	0	0	261406740	5dc43def-7ef3-4a15-a70b-4f10f3b38dbb	2023-08-17T19:44:26	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	11
12	2023-08-17T21:42:12.539+02:00	2023-08-17T21:47:55.041+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Never	Sometimes	Walking	1	0	0	0	0	No	No	Yes	-25.754107 28.231851 0 0	-25.754107	28.231851	-25.753219 28.241263 1394.2000732421875 18	-25.753219	28.241263	1394.20007324219	18	-25.753222 28.241246 1394.2000732421875 15.760000228881836	-25.753222	28.241246	1394.20007324219	15.7600002288818	261407253	272f8f05-af20-4e84-a7b6-ede9fb6cd406	2023-08-17T19:47:56	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	12
13	2023-08-17T22:05:19.905+02:00	2023-08-17T22:10:49.773+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Never	Never	Cycling	0	1	0	0	0	Yes	No	No	-25.753989 28.232251 0 0	-25.753989	28.232251	-25.752189 28.23184 0 0	-25.752189	28.23184	0	0	-25.756636 28.227292 0 0	-25.756636	28.227292	0	0	261412767	fa617697-71c9-4267-b37f-856af30538fa	2023-08-17T20:10:49	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	13
14	2023-08-18T08:01:57.486+02:00	2023-08-18T08:05:51.544+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Never	Never	Walking	1	0	0	0	0	Yes	No	No	-25.753906 28.229868 0 0	-25.753906	28.229868	-25.75217 28.232872 0 0	-25.75217	28.232872	0	0	-25.756725 28.227866 0 0	-25.756725	28.227866	0	0	261482449	fecba3b7-d826-4e61-9e0b-272d2417bf24	2023-08-18T06:05:55	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	14
15	2023-08-21T10:10:38.702+02:00	2023-08-21T10:16:40.720+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Never	Never	Walking Driving	1	0	0	1	0	Yes	No	No	-25.755421 28.23276 0 0	-25.755421	28.23276	-25.756427 28.228179 0 0	-25.756427	28.228179	0	0	-25.756701 28.226602 0 0	-25.756701	28.226602	0	0	262323888	b6d6938f-2335-45d1-a6a0-11f44b93deb5	2023-08-21T08:16:43	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	15
16	2023-08-22T11:46:44.770+02:00	2023-08-22T11:48:15.917+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.754358 28.233715 0 0	-25.754358	28.233715	-25.753739 28.2335 0 0	-25.753739	28.2335	0	0	-25.756194 28.230797 0 0	-25.756194	28.230797	0	0	262658914	c839ba8a-0d99-4ac3-8c0b-adbbb26eefe2	2023-08-22T09:48:16	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	16
17	2023-08-17T10:22:51.847+02:00	2023-08-24T09:40:49.291+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	Yes	Yes	No	-25.753946 28.231627 0 0	-25.753946	28.231627	-25.7547 28.235443 0 0	-25.7547	28.235443	0	0	-25.754277 28.231857 0 0	-25.754277	28.231857	0	0	263275983	ad2b45f8-3518-42c6-bd3b-15ddfaad0b17	2023-08-24T07:40:50	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	17
18	2023-08-24T09:39:26.967+02:00	2023-08-24T09:41:27.450+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Sometimes	Walking	1	0	0	0	0	No	Yes	Yes	-25.754899 28.230807 0 0	-25.754899	28.230807	-25.754793 28.235345 0 0	-25.754793	28.235345	0	0	-25.753749 28.230357 0 0	-25.753749	28.230357	0	0	263276167	ed70a937-8a9d-4a08-a6b5-80ec692d633e	2023-08-24T07:41:29	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	18
19	2023-08-24T09:40:29.835+02:00	2023-08-24T09:41:56.013+02:00	Undergraduate	Second Year	Engineering, Built Environment and Information Technology	Sometimes	Sometimes	Walking	1	0	0	0	0	No	No	Yes	-25.754527 28.231441 0 0	-25.754527	28.231441	-25.756435 28.236355 0 0	-25.756435	28.236355	0	0	-25.753817 28.228726 0 0	-25.753817	28.228726	0	0	263276325	86eff6c8-36b4-4fe4-ae11-864582ef281d	2023-08-24T07:41:57	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	19
20	2023-08-24T09:37:25.810+02:00	2023-08-24T09:42:21.692+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	No	No	-25.753254 28.23152 0 0	-25.753254	28.23152	-25.752746 28.227886 0 0	-25.752746	28.227886	0	0	-25.756606 28.234624 0 0	-25.756606	28.234624	0	0	263276420	a608f013-a924-4dce-97fc-e78f59530796	2023-08-24T07:42:24	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	20
21	2023-08-24T09:37:07.453+02:00	2023-08-24T09:42:27.534+02:00	Undergraduate	Fourth Year	Engineering, Built Environment and Information Technology	Sometimes	Never	Walking	1	0	0	0	0	No	No	No	-25.755546 28.233194 0 0	-25.755546	28.233194	-25.75366 28.23335 0 0	-25.75366	28.23335	0	0	-25.753675 28.233296 0 0	-25.753675	28.233296	0	0	263276428	2e88dc69-43dc-45a1-9b47-ab41a354e150	2023-08-24T07:42:27	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	21
22	2023-08-24T09:38:09.058+02:00	2023-08-24T09:44:33.695+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	Yes	Yes	No	-25.754537 28.231435 0 0	-25.754537	28.231435	-25.752767 28.227637 0 0	-25.752767	28.227637	0	0	-25.755923 28.234268 0 0	-25.755923	28.234268	0	0	263276912	32fcc851-556f-47f2-ab39-a0a68b7ed07b	2023-08-24T07:44:35	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	22
23	2023-08-24T09:40:49.364+02:00	2023-08-24T09:49:40.596+02:00	Undergraduate	First Year	Engineering, Built Environment and Information Technology	Sometimes	Sometimes	Walking Cycling	1	1	0	0	0	No	Yes	No	-25.753895 28.229206 0 0	-25.753895	28.229206	-25.754063 28.226482 0 0	-25.754063	28.226482	0	0	-25.753292 28.228799 0 0	-25.753292	28.228799	0	0	263278131	507f7d33-a5a9-4713-aafc-801f4080f0a0	2023-08-24T07:49:41	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	23
24	2023-08-24T09:49:43.805+02:00	2023-08-24T09:55:43.454+02:00	Undergraduate	Second Year	Engineering, Built Environment and Information Technology	Never	Never	Walking	1	0	0	0	0	No	No	No	-25.754148 28.232866 0 0	-25.754148	28.232866	-25.754114 28.226493 0 0	-25.754114	28.226493	0	0	-25.753114 28.228644 0 0	-25.753114	28.228644	0	0	263279620	42e9b9af-5350-42aa-94d2-9e66a4c5cc50	2023-08-24T07:56:05	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	24
25	2023-08-24T09:49:40.660+02:00	2023-08-24T09:57:41.698+02:00	Undergraduate	Second Year	Natural and Agricultural Sciences	Never	Never	Walking	1	0	0	0	0	Yes	Yes	Yes	-25.753486 28.230452 0 0	-25.753486	28.230452	-25.756031 28.231134 0 0	-25.756031	28.231134	0	0	-25.755527 28.234354 0 0	-25.755527	28.234354	0	0	263280141	43a460f2-4b91-481c-a804-85b0a18683bb	2023-08-24T07:57:42	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	25
26	2023-08-17T10:23:45.325+02:00	2023-08-24T10:01:27.785+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.754327 28.231653 0 0	-25.754327	28.231653	-25.753638 28.233206 0 0	-25.753638	28.233206	0	0	-25.753565 28.230545 0 0	-25.753565	28.230545	0	0	263281102	bcf7b6d4-9251-4f0a-9e9f-39151566220a	2023-08-24T08:01:27	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	26
27	2023-08-24T09:56:51.879+02:00	2023-08-24T10:02:00.521+02:00	Undergraduate	Fourth Year	Law	Never	Sometimes	Walking	1	0	0	0	0	No	Yes	Yes	-25.752966 28.231677 0 0	-25.752966	28.231677	-25.756411 28.236312 0 0	-25.756411	28.236312	0	0	-25.752575 28.230454 0 0	-25.752575	28.230454	0	0	263281282	94492664-7a33-49aa-8d8a-3d6f7fc341ee	2023-08-24T08:02:02	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	27
28	2023-08-24T09:54:44.119+02:00	2023-08-24T10:04:07.073+02:00	Undergraduate	Third Year	Economic and Management Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	No	No	-25.755403 28.232535 0 0	-25.755403	28.232535	-25.752193 28.23283 0 0	-25.752193	28.23283	0	0	-25.756213 28.234981 0 0	-25.756213	28.234981	0	0	263281799	21056a6e-c228-41de-a6a6-fca65a63a05f	2023-08-24T08:04:09	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	28
29	2023-08-24T10:04:09.737+02:00	2023-08-24T10:05:02.732+02:00	Undergraduate	First Year	Humanities	Often	Often	Skating	0	0	1	0	0	No	Yes	No	-25.755343 28.230754 0 0	-25.755343	28.230754	-25.755846 28.231075 0 0	-25.755846	28.231075	0	0	-25.754754 28.230999 0 0	-25.754754	28.230999	0	0	263282030	ebc299a1-2f5e-4097-843c-6c991b90009a	2023-08-24T08:05:04	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	29
30	2023-08-24T10:01:27.824+02:00	2023-08-24T10:05:58.126+02:00	Postgraduate	Other	Economic and Management Sciences	Never	Never	Walking Driving	1	0	0	1	0	Yes	No	No	-25.754136 28.230883 0 0	-25.754136	28.230883	-25.752126 28.231602 0 0	-25.752126	28.231602	0	0	-25.753689 28.229518 0 0	-25.753689	28.229518	0	0	263282230	18bda7f4-4c99-48df-b289-ce153d2cd934	2023-08-24T08:05:57	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	30
31	2023-08-24T10:05:58.280+02:00	2023-08-24T10:07:45.947+02:00	Undergraduate	First Year	Engineering, Built Environment and Information Technology	Never	Often	Walking Cycling	1	1	0	0	0	No	Yes	No	-25.75451 28.231444 0 0	-25.75451	28.231444	-25.753594 28.233211 0 0	-25.753594	28.233211	0	0	-25.754056 28.229052 0 0	-25.754056	28.229052	0	0	263282659	625ea26b-b52e-49cd-adb9-ffeb7ad4249b	2023-08-24T08:07:45	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	31
32	2023-08-24T09:57:41.761+02:00	2023-08-24T10:07:46.850+02:00	Undergraduate	First Year	Economic and Management Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.754723 28.231527 0 0	-25.754723	28.231527	-25.756099 28.231084 0 0	-25.756099	28.231084	0	0	-25.754193 28.231681 0 0	-25.754193	28.231681	0	0	263282672	49832599-b00d-4291-8a7c-ef075e742da0	2023-08-24T08:07:48	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	32
33	2023-08-24T10:05:02.791+02:00	2023-08-24T10:08:16.574+02:00	Postgraduate	Other	Economic and Management Sciences	Often	Never	Walking Cycling	1	1	0	0	0	No	Yes	No	-25.755508 28.232889 0 0	-25.755508	28.232889	-25.756358 28.235827 0 0	-25.756358	28.235827	0	0	-25.755856 28.234068 0 0	-25.755856	28.234068	0	0	263282792	446c2750-ae08-417b-b759-7b399f4752d5	2023-08-24T08:08:18	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	33
34	2023-08-24T10:08:16.646+02:00	2023-08-24T10:09:38.492+02:00	Undergraduate	Second Year	Economic and Management Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.755682 28.233564 0 0	-25.755682	28.233564	-25.756281 28.235913 0 0	-25.756281	28.235913	0	0	-25.755034 28.23305 0 0	-25.755034	28.23305	0	0	263283125	9e03de7a-0136-4254-8aca-fbd027396e08	2023-08-24T08:09:39	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	34
35	2023-08-24T10:07:46.905+02:00	2023-08-24T10:10:26.218+02:00	Undergraduate	First Year	Law	Sometimes	Sometimes	Walking Skating	1	0	1	0	0	Yes	Yes	No	-25.753049 28.231447 0 0	-25.753049	28.231447	-25.75633 28.236398 0 0	-25.75633	28.236398	0	0	-25.755566 28.234307 0 0	-25.755566	28.234307	0	0	263283328	8844a7ea-e7b6-4467-a4a0-1a489a466f1e	2023-08-24T08:10:27	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	35
36	2023-08-24T10:07:45.990+02:00	2023-08-24T10:10:35.106+02:00	Undergraduate	First Year	Theology and Religion	Sometimes	Often	Walking	1	0	0	0	0	Yes	Yes	No	-25.755527 28.233189 0 0	-25.755527	28.233189	-25.755817 28.231398 0 0	-25.755817	28.231398	0	0	-25.754454 28.233216 0 0	-25.754454	28.233216	0	0	263283350	dc8cd0d2-2de3-4ec7-8d81-1cd100de59f6	2023-08-24T08:10:34	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	36
37	2023-08-24T10:09:38.553+02:00	2023-08-24T10:10:53.795+02:00	Undergraduate	Second Year	Humanities	Often	Sometimes	Walking Skating	1	0	1	0	0	No	Yes	Yes	-25.755295 28.2307 0 0	-25.755295	28.2307	-25.756049 28.231001 0 0	-25.756049	28.231001	0	0	-25.754638 28.231127 0 0	-25.754638	28.231127	0	0	263283418	e36f2c15-26e9-4802-aa44-0a87527bb5ca	2023-08-24T08:10:55	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	37
38	2023-08-24T10:10:26.267+02:00	2023-08-24T10:12:21.817+02:00	Undergraduate	First Year	Humanities	Sometimes	Sometimes	Walking Skating	1	0	1	0	0	Yes	Yes	No	-25.75396 28.231631 0 0	-25.75396	28.231631	-25.754707 28.235442 0 0	-25.754707	28.235442	0	0	-25.754255 28.231719 0 0	-25.754255	28.231719	0	0	263283708	eb17222b-c8e9-4c6c-a384-75fd11139b57	2023-08-24T08:12:22	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	38
39	2023-08-24T10:10:53.846+02:00	2023-08-24T10:13:29.694+02:00	Undergraduate	Third Year	Humanities	Sometimes	Never	Walking	1	0	0	0	0	No	No	Yes	-25.755189 28.231687 0 0	-25.755189	28.231687	-25.754789 28.235621 0 0	-25.754789	28.235621	0	0	-25.754938 28.231236 0 0	-25.754938	28.231236	0	0	263283919	fed2e025-11e8-4a0a-98b2-46c45118afe8	2023-08-24T08:13:31	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	39
40	2023-08-24T10:12:21.857+02:00	2023-08-24T10:14:43.131+02:00	Undergraduate	First Year	Engineering, Built Environment and Information Technology	Sometimes	Never	Walking Cycling	1	1	0	0	0	Yes	Yes	No	-25.754048 28.229454 0 0	-25.754048	28.229454	-25.754072 28.226447 0 0	-25.754072	28.226447	0	0	-25.753272 28.228799 0 0	-25.753272	28.228799	0	0	263284188	23d40937-6f72-4c8a-a47f-89551a767ad5	2023-08-24T08:14:44	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	40
41	2023-08-24T10:10:35.147+02:00	2023-08-24T10:15:08.612+02:00	Undergraduate	Second Year	Theology and Religion	Never	Sometimes	Walking Skating	1	0	1	0	0	Yes	Yes	No	-25.75452 28.231422 0 0	-25.75452	28.231422	-25.752077 28.231591 0 0	-25.752077	28.231591	0	0	-25.753206 28.228805 0 0	-25.753206	28.228805	0	0	263284285	0176e88f-0b82-4f3c-87bd-c714ce35da12	2023-08-24T08:15:10	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	41
42	2023-08-24T10:14:43.168+02:00	2023-08-24T10:24:32.505+02:00	Undergraduate	First Year	Natural and Agricultural Sciences	Never	Never	Walking Cycling	1	1	0	0	0	Yes	Yes	No	-25.753567 28.231242 0 0	-25.753567	28.231242	-25.756234 28.235754 0 0	-25.756234	28.235754	0	0	-25.754184 28.231654 0 0	-25.754184	28.231654	0	0	263287062	9304ca21-cbaa-4065-b160-29983cce44a4	2023-08-24T08:24:33	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	42
43	2023-08-24T10:15:08.724+02:00	2023-08-24T10:29:02.361+02:00	Postgraduate	Fourth Year	Natural and Agricultural Sciences	Sometimes	Never	Walking Driving	1	0	0	1	0	Yes	No	No	-25.753899 28.230518 0 0	-25.753899	28.230518	-25.752072 28.231468 0 0	-25.752072	28.231468	0	0	-25.753641 28.229443 0 0	-25.753641	28.229443	0	0	263288074	4c3322fa-90ae-4423-b897-9fe376e78f94	2023-08-24T08:29:02	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	43
44	2023-08-24T10:24:32.556+02:00	2023-08-24T10:29:33.434+02:00	Undergraduate	First Year	Law	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.754162 28.233274 0 0	-25.754162	28.233274	-25.753627 28.235308 0 0	-25.753627	28.235308	0	0	-25.75416 28.231826 0 0	-25.75416	28.231826	0	0	263288160	d2a1dbf5-2acf-4016-8a99-443d0385f9ab	2023-08-24T08:29:34	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	44
45	2023-08-24T10:29:02.489+02:00	2023-08-24T10:41:12.655+02:00	Undergraduate	First Year	Veterinary Science	Sometimes	Sometimes	Walking Driving	1	0	0	1	0	No	Yes	No	-25.75451 28.231438 0 0	-25.75451	28.231438	-25.753633 28.233179 0 0	-25.753633	28.233179	0	0	-25.754646 28.231793 0 0	-25.754646	28.231793	0	0	263291196	faf67f59-3022-4710-94e9-75581f9e8216	2023-08-24T08:41:12	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	45
46	2023-08-24T10:29:33.483+02:00	2023-08-24T10:41:59.946+02:00	Undergraduate	Second Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	Yes	No	No	-25.755864 28.234608 0 0	-25.755864	28.234608	-25.753584 28.235473 0 0	-25.753584	28.235473	0	0	-25.755601 28.234261 0 0	-25.755601	28.234261	0	0	263291433	4cb56923-bd4f-4a1b-8530-97317c54b4e0	2023-08-24T08:42:01	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	46
47	2023-08-24T10:38:05.688+02:00	2023-08-24T10:42:35.424+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Never	Never	Walking	1	0	0	0	0	Yes	No	No	-25.75408 28.231846 0 0	-25.75408	28.231846	-25.752225 28.232962 0 0	-25.752225	28.232962	0	0	-25.753824 28.229733 0 0	-25.753824	28.229733	0	0	263291616	242c169a-8911-4e00-9a80-4c32369b83ec	2023-08-24T08:42:36	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	47
48	2023-08-24T10:41:59.995+02:00	2023-08-24T10:43:16.330+02:00	Undergraduate	First Year	Natural and Agricultural Sciences	Sometimes	Never	Walking Cycling	1	1	0	0	0	Yes	No	No	-25.755884 28.234636 0 0	-25.755884	28.234636	-25.756186 28.235726 0 0	-25.756186	28.235726	0	0	-25.755882 28.234699 0 0	-25.755882	28.234699	0	0	263291857	c467e615-a36f-478f-b2a8-13ff922c9d8a	2023-08-24T08:43:17	submitted_via_web	v6DMkdyrvks3Ts2Zd3YDBh	48
49	2023-08-24T10:13:29.750+02:00	2023-08-24T10:47:31.461+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	No	-25.754309 28.233297 0 0	-25.754309	28.233297	-25.754 28.233404 0 0	-25.754	28.233404	0	0	-25.753488 28.229026 0 0	-25.753488	28.229026	0	0	263293374	565db8bb-13a4-45af-b5a0-62bef7535cc7	2023-08-24T08:47:33	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	49
50	2023-08-24T10:49:11.565+02:00	2023-08-24T10:51:53.710+02:00	Undergraduate	First Year	Humanities	Sometimes	Never	Walking	1	0	0	0	0	No	Yes	Yes	-25.754093 28.231434 0 0	-25.754093	28.231434	-25.756483 28.231063 0 0	-25.756483	28.231063	0	0	-25.753465 28.229067 0 0	-25.753465	28.229067	0	0	263294563	db53479d-3942-49be-ad02-e39996dfc201	2023-08-24T08:52:00	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	50
51	2023-08-24T10:50:27.613+02:00	2023-08-24T10:53:27.961+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Often	Never	Walking	1	0	0	0	0	No	Yes	No	-25.754116 28.231806 0 0	-25.754116	28.231806	-25.752087 28.231924 0 0	-25.752087	28.231924	0	0	-25.75416 28.231865 0 0	-25.75416	28.231865	0	0	263294990	2074b22a-aed3-46c6-bbc6-c8860ce909d4	2023-08-24T08:53:29	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	51
52	2023-08-24T10:54:28.525+02:00	2023-08-24T10:56:03.717+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Never	Sometimes	Walking	1	0	0	0	0	No	No	Yes	-25.755433 28.232844 0 0	-25.755433	28.232844	-25.754753 28.235537 0 0	-25.754753	28.235537	0	0	-25.753544 28.230349 0 0	-25.753544	28.230349	0	0	263295710	33e709ac-ff96-495c-be6e-e868af3a4a6e	2023-08-24T08:56:09	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	52
53	2023-08-24T10:54:03.078+02:00	2023-08-24T11:08:27.025+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	No	No	Yes	-25.754063 28.231773 0 0	-25.754063	28.231773	-25.752134 28.232867 0 0	-25.752134	28.232867	0	0	-25.754082 28.231703 0 0	-25.754082	28.231703	0	0	263298885	bf1a2c47-b5b6-4e34-bacd-80b3fc8279a8	2023-08-24T09:08:28	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	53
54	2023-08-24T11:45:37.754+02:00	2023-08-24T11:48:26.717+02:00	Undergraduate	Third Year	Engineering, Built Environment and Information Technology	Never	Never	Walking Other	1	0	0	0	1	No	No	No	-25.753788 28.229306 0 0	-25.753788	28.229306	-25.75673 28.227444 0 0	-25.75673	28.227444	0	0	-25.756653 28.227342 0 0	-25.756653	28.227342	0	0	263310657	a8e467dd-bf71-4c92-8aaf-71f8c40e13f4	2023-08-24T09:48:27	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	54
55	2023-08-24T10:20:19.550+02:00	2023-08-24T12:53:29.032+02:00	Undergraduate	Fourth Year	Engineering, Built Environment and Information Technology	Often	Sometimes	Walking Driving	1	0	0	1	0	Yes	No	No	-25.754466 28.231435 0 0	-25.754466	28.231435	-25.755742 28.239113 0 0	-25.755742	28.239113	0	0	-25.755008 28.234609 0 0	-25.755008	28.234609	0	0	263330233	602b9b6f-f137-4770-83ad-71655d27add0	2023-08-24T10:53:28	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	55
56	2023-08-24T12:53:29.213+02:00	2023-08-24T12:57:49.420+02:00	Undergraduate	Fourth Year	Engineering, Built Environment and Information Technology	Sometimes	Never	Walking	1	0	0	0	0	Yes	No	No	-25.754389 28.231893 0 0	-25.754389	28.231893	-25.755665 28.239116 0 0	-25.755665	28.239116	0	0	-25.756786 28.238807 0 0	-25.756786	28.238807	0	0	263331591	d5017d05-1775-4f38-af6c-802b4b131dfe	2023-08-24T10:57:49	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	56
57	2023-08-24T14:31:40.378+02:00	2023-08-24T14:36:24.842+02:00	Undergraduate	Other	Engineering, Built Environment and Information Technology	Never	Never	Walking Driving	1	0	0	1	0	Yes	No	Yes	-25.755421 28.232739 0 0	-25.755421	28.232739	-25.755991 28.235722 0 0	-25.755991	28.235722	0	0	-25.753227 28.228812 0 0	-25.753227	28.228812	0	0	263364879	234d42f3-0ab9-4f82-b474-fea6ae57b9fe	2023-08-24T12:36:27	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	57
58	2023-08-24T21:30:49.515+02:00	2023-08-24T21:37:19.107+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Sometimes	Walking	1	0	0	0	0	No	Yes	No	-25.755361 28.232461 0 0	-25.755361	28.232461	-25.756116 28.235539 0 0	-25.756116	28.235539	0	0	-25.754926 28.226651 0 0	-25.754926	28.226651	0	0	263494178	53dd8255-beaf-4dca-8129-67d27e4e9870	2023-08-24T19:37:19	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	58
59	2023-08-28T09:56:21.761+02:00	2023-08-28T09:59:25.562+02:00	Undergraduate	Third Year	Natural and Agricultural Sciences	Sometimes	Never	Walking	1	0	0	0	0	Yes	No	No	-25.753928 28.231833 0 0	-25.753928	28.231833	-25.753786 28.233531 0 0	-25.753786	28.233531	0	0	-25.75387 28.230493 0 0	-25.75387	28.230493	0	0	264266140	41aef229-6bca-4bb7-80d2-3f4e5ab1c8fd	2023-08-28T07:59:25	submitted_via_web	v4n3omV5XPEFsHvK42iNyz	59
\.


                                                                                                                                                                                                                                                                                                                                                      4518.dat                                                                                            0000600 0004000 0002000 00000003362 14511212744 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E610000034DD0CD5E3393C403E4927AF5CC139C0	1	1
2	0101000020E61000008BFCD28E5E3A3C40764D3B987EC139C0	2	2
3	0101000020E6100000B78B25557F3A3C405FF1606E8AC139C0	3	3
4	0101000020E6100000A1A35008863A3C40622544D9B2C139C0	4	4
5	0101000020E61000003A3F1F4C513A3C4060ECC578C2C139C0	5	5
6	0101000020E61000007D0A9ACCA63A3C40C95BFB3087C139C0	6	6
7	0101000020E61000005AAA9581A43B3C40F18D8CE36FC139C0	7	7
8	0101000020E6100000BDDA9993D03B3C4070290EB94AC139C0	8	8
9	0101000020E61000004C42ABA0073C3C40F0E556CF95C139C0	9	9
10	0101000020E6100000F3052B64F73B3C40442B8DD274C139C0	10	10
11	0101000020E61000000F908DD3383C3C40CE8FEB2E7CC139C0	11	11
12	0101000020E610000072E67E2EFB3B3C408A2E742642C139C0	12	12
13	0101000020E610000081228B20AB3B3C40012D4E082AC139C0	13	13
14	0101000020E61000009EC82DBB4B3B3C4008C038630CC139C0	14	14
15	0101000020E6100000E176EC589B3A3C40B0E7B919FBC039C0	15	15
16	0101000020E6100000F14A7A97883A3C40A7823669CCC039C0	16	16
17	0101000020E6100000565D30C2AB3A3C4059A746A5CCC039C0	17	17
18	0101000020E6100000C1065BF5293B3C4002F654A2D4C039C0	18	18
19	0101000020E6100000E36CFD74453B3C4019807CCCBEC039C0	19	19
20	0101000020E610000078F67618463B3C40F243F6AC7BC039C0	20	20
21	0101000020E61000006329D781E03A3C402FC8E8289EC039C0	21	21
22	0101000020E6100000E97C2977A43A3C406CEF925219C139C0	22	22
23	0101000020E61000001990525F0D3B3C40E5856FCF10C139C0	23	23
24	0101000020E6100000EC2E3350903A3C401A82419434C139C0	24	24
25	0101000020E6100000E5F658CC973B3C40F249ED6A05C139C0	25	25
26	0101000020E6100000117683722E3C3C40E347DE10B3C139C0	26	26
27	0101000020E61000002A6059BF073B3C40F29405F738C139C0	27	27
28	0101000020E61000002B6C455F2C3B3C40E6319EB167C139C0	28	28
29	0101000020E6100000657D4564E53B3C406ED7BCF6A6C139C0	29	29
30	0101000020E6100000F9195C24383B3C405F642B7357C039C0	30	30
\.


                                                                                                                                                                                                                                                                              4520.dat                                                                                            0000600 0004000 0002000 00000001746 14511212744 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0101000020E61000007DB445E09F3A3C401918EB18FBC039C0	1	1
2	0101000020E6100000A0FB4EFEA83A3C406ADA0D9919C139C0	2	2
3	0101000020E61000005B48650E8A3A3C4038555A20B3C139C0	3	3
4	0101000020E61000008904688CAB3A3C400577158E87C139C0	4	4
5	0101000020E6100000CA3492DC823A3C407C541BE88AC139C0	5	5
6	0101000020E61000009566A74F2E3B3C407982169A67C139C0	6	6
7	0101000020E6100000AA54E51EA83B3C40A964AC2070C139C0	7	7
8	0101000020E61000000A49FD66FA3B3C40EF7399C874C139C0	8	8
9	0101000020E610000058D890733D3C3C40F76E91867CC139C0	9	9
10	0101000020E61000003B68B47D013C3C40C5154D3B42C139C0	10	10
11	0101000020E61000009556BB1EE83B3C406ED7BCF6A6C139C0	11	11
12	0101000020E6100000F3B3E8929A3B3C4034F0894205C139C0	12	12
13	0101000020E6100000E60826E24E3B3C40FD05D9970CC139C0	13	13
14	0101000020E6100000A0C68C464A3B3C40001252A1BEC039C0	14	14
15	0101000020E6100000E2008A6B493B3C40E31F1BAF7BC039C0	15	15
16	0101000020E610000028B7B10A3D3B3C40670C538556C039C0	16	16
17	0101000020E6100000F3A4E020B03A3C403F6F5A20CDC039C0	17	17
\.


                          restore.sql                                                                                         0000600 0004000 0002000 00000104471 14511212744 0015374 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

DROP DATABASE "MoveatUP";
--
-- Name: MoveatUP; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "MoveatUP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "MoveatUP" OWNER TO postgres;

\connect "MoveatUP"

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
-- Name: MoveatUP; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE "MoveatUP" SET search_path TO '$user', 'public', 'topology';


\connect "MoveatUP"

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
-- Name: postgres; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA postgres;


ALTER SCHEMA postgres OWNER TO postgres;

--
-- Name: topology; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA topology;


ALTER SCHEMA topology OWNER TO postgres;

--
-- Name: SCHEMA topology; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;


--
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Peak_Points; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres."Peak_Points" (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    point character varying(254),
    latitude character varying(254),
    longitude character varying(254),
    "time (peak" character varying(254),
    "number of" character varying(254),
    "other tran" character varying(254)
);


ALTER TABLE postgres."Peak_Points" OWNER TO postgres;

--
-- Name: Peak_Points_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres."Peak_Points_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres."Peak_Points_id_seq" OWNER TO postgres;

--
-- Name: Peak_Points_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres."Peak_Points_id_seq" OWNED BY postgres."Peak_Points".id;


--
-- Name: hatfield_campus_v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hatfield_campus_v1 (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    ogc_fid numeric,
    ogc_fid1 numeric,
    pkuid character varying(254),
    name character varying(254),
    ogc_fid0 numeric,
    layer character varying(254),
    path character varying(254)
);


ALTER TABLE public.hatfield_campus_v1 OWNER TO postgres;

--
-- Name: hatfield_campus_v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hatfield_campus_v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hatfield_campus_v1_id_seq OWNER TO postgres;

--
-- Name: hatfield_campus_v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hatfield_campus_v1_id_seq OWNED BY public.hatfield_campus_v1.id;


--
-- Name: gates; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.gates (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    fid bigint,
    "gate number or name" character varying,
    "walking student accessible" boolean,
    "cycling student accessible" boolean
);


ALTER TABLE topology.gates OWNER TO postgres;

--
-- Name: gates_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.gates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.gates_id_seq OWNER TO postgres;

--
-- Name: gates_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.gates_id_seq OWNED BY topology.gates.id;


--
-- Name: hatfield_campus; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.hatfield_campus (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326),
    ogc_fid bigint,
    ogc_fid1 bigint,
    pkuid character varying,
    name character varying,
    ogc_fid0 bigint,
    layer character varying,
    path character varying
);


ALTER TABLE topology.hatfield_campus OWNER TO postgres;

--
-- Name: hatfield_campus_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.hatfield_campus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.hatfield_campus_id_seq OWNER TO postgres;

--
-- Name: hatfield_campus_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.hatfield_campus_id_seq OWNED BY topology.hatfield_campus.id;


--
-- Name: offpeak_point; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.offpeak_point (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    point character varying(254),
    latitude character varying(254),
    longitude character varying(254),
    "time" character varying(254),
    num_people numeric,
    transport character varying(254)
);


ALTER TABLE topology.offpeak_point OWNER TO postgres;

--
-- Name: offpeak_point_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.offpeak_point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.offpeak_point_id_seq OWNER TO postgres;

--
-- Name: offpeak_point_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.offpeak_point_id_seq OWNED BY topology.offpeak_point.id;


--
-- Name: parking; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.parking (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326),
    ogc_fid bigint,
    pkuid integer,
    name character varying
);


ALTER TABLE topology.parking OWNER TO postgres;

--
-- Name: parking_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.parking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.parking_id_seq OWNER TO postgres;

--
-- Name: parking_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.parking_id_seq OWNED BY topology.parking.id;


--
-- Name: paths; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.paths (
    id integer NOT NULL,
    geom public.geometry(MultiLineString,4326),
    ogc_fid bigint,
    name character varying
);


ALTER TABLE topology.paths OWNER TO postgres;

--
-- Name: paths_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.paths_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.paths_id_seq OWNER TO postgres;

--
-- Name: paths_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.paths_id_seq OWNED BY topology.paths.id;


--
-- Name: peak_point; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.peak_point (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    point character varying(254),
    latitude character varying(254),
    longitude character varying(254),
    "time" character varying(254),
    num_people numeric,
    transport character varying(254)
);


ALTER TABLE topology.peak_point OWNER TO postgres;

--
-- Name: peak_point_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.peak_point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.peak_point_id_seq OWNER TO postgres;

--
-- Name: peak_point_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.peak_point_id_seq OWNED BY topology.peak_point.id;


--
-- Name: retail; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.retail (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    pkuid integer,
    name character varying,
    type character varying
);


ALTER TABLE topology.retail OWNER TO postgres;

--
-- Name: retail_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.retail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.retail_id_seq OWNER TO postgres;

--
-- Name: retail_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.retail_id_seq OWNED BY topology.retail.id;


--
-- Name: roads; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.roads (
    id integer NOT NULL,
    geom public.geometry(MultiLineString,4326),
    ogc_fid bigint,
    name character varying
);


ALTER TABLE topology.roads OWNER TO postgres;

--
-- Name: roads_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.roads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.roads_id_seq OWNER TO postgres;

--
-- Name: roads_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.roads_id_seq OWNED BY topology.roads.id;


--
-- Name: survey_congestion; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.survey_congestion (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    congestion_latitude character varying,
    congestion_longitude character varying
);


ALTER TABLE topology.survey_congestion OWNER TO postgres;

--
-- Name: survey_congestion_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.survey_congestion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.survey_congestion_id_seq OWNER TO postgres;

--
-- Name: survey_congestion_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.survey_congestion_id_seq OWNED BY topology.survey_congestion.id;


--
-- Name: survey_entrances; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.survey_entrances (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    entrance_latitude character varying,
    entrance_longitude character varying
);


ALTER TABLE topology.survey_entrances OWNER TO postgres;

--
-- Name: survey_entrances_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.survey_entrances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.survey_entrances_id_seq OWNER TO postgres;

--
-- Name: survey_entrances_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.survey_entrances_id_seq OWNED BY topology.survey_entrances.id;


--
-- Name: survey_freetime; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.survey_freetime (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    ft_latitude character varying,
    ft_longitude character varying
);


ALTER TABLE topology.survey_freetime OWNER TO postgres;

--
-- Name: survey_freetime_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.survey_freetime_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.survey_freetime_id_seq OWNER TO postgres;

--
-- Name: survey_freetime_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.survey_freetime_id_seq OWNED BY topology.survey_freetime.id;


--
-- Name: survey_results; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.survey_results (
    id integer NOT NULL,
    start character varying,
    "end" character varying,
    education_level character varying,
    year_of_study character varying,
    faculty character varying,
    late character varying,
    campus_map_usage character varying,
    campus_transport character varying,
    campus_transport_walking character varying,
    campus_transport_cycling character varying,
    campus_transport_skating character varying,
    campus_transport_driving character varying,
    campus_transport_other character varying,
    time_frame character varying,
    campus_navigation_difficulty character varying,
    map_usability character varying,
    congested_areas character varying,
    congested_areas_latitude character varying,
    congested_areas_longitude character varying,
    entrance character varying,
    entrance_latitude character varying,
    entrance_longitude character varying,
    entrance_altitude character varying,
    entrance_precision character varying,
    relaxation_areas character varying,
    relaxation_areas_latitude character varying,
    relaxation_areas_longitude character varying,
    relaxation_areas_altitude character varying,
    relaxation_areas_precision character varying,
    _id character varying,
    _uuid character varying,
    _submission_time character varying,
    _status character varying,
    __version__ character varying,
    _index character varying
);


ALTER TABLE topology.survey_results OWNER TO postgres;

--
-- Name: survey_results_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.survey_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.survey_results_id_seq OWNER TO postgres;

--
-- Name: survey_results_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.survey_results_id_seq OWNED BY topology.survey_results.id;


--
-- Name: toilets; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.toilets (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    pkuid integer
);


ALTER TABLE topology.toilets OWNER TO postgres;

--
-- Name: toilets_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.toilets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.toilets_id_seq OWNER TO postgres;

--
-- Name: toilets_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.toilets_id_seq OWNED BY topology.toilets.id;


--
-- Name: wc_toilets; Type: TABLE; Schema: topology; Owner: postgres
--

CREATE TABLE topology.wc_toilets (
    id integer NOT NULL,
    geom public.geometry(Point,4326),
    ogc_fid bigint,
    pkuid integer
);


ALTER TABLE topology.wc_toilets OWNER TO postgres;

--
-- Name: wc_toilets_id_seq; Type: SEQUENCE; Schema: topology; Owner: postgres
--

CREATE SEQUENCE topology.wc_toilets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE topology.wc_toilets_id_seq OWNER TO postgres;

--
-- Name: wc_toilets_id_seq; Type: SEQUENCE OWNED BY; Schema: topology; Owner: postgres
--

ALTER SEQUENCE topology.wc_toilets_id_seq OWNED BY topology.wc_toilets.id;


--
-- Name: Peak_Points id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres."Peak_Points" ALTER COLUMN id SET DEFAULT nextval('postgres."Peak_Points_id_seq"'::regclass);


--
-- Name: hatfield_campus_v1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hatfield_campus_v1 ALTER COLUMN id SET DEFAULT nextval('public.hatfield_campus_v1_id_seq'::regclass);


--
-- Name: gates id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.gates ALTER COLUMN id SET DEFAULT nextval('topology.gates_id_seq'::regclass);


--
-- Name: hatfield_campus id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.hatfield_campus ALTER COLUMN id SET DEFAULT nextval('topology.hatfield_campus_id_seq'::regclass);


--
-- Name: offpeak_point id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.offpeak_point ALTER COLUMN id SET DEFAULT nextval('topology.offpeak_point_id_seq'::regclass);


--
-- Name: parking id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.parking ALTER COLUMN id SET DEFAULT nextval('topology.parking_id_seq'::regclass);


--
-- Name: paths id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.paths ALTER COLUMN id SET DEFAULT nextval('topology.paths_id_seq'::regclass);


--
-- Name: peak_point id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.peak_point ALTER COLUMN id SET DEFAULT nextval('topology.peak_point_id_seq'::regclass);


--
-- Name: retail id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.retail ALTER COLUMN id SET DEFAULT nextval('topology.retail_id_seq'::regclass);


--
-- Name: roads id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.roads ALTER COLUMN id SET DEFAULT nextval('topology.roads_id_seq'::regclass);


--
-- Name: survey_congestion id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_congestion ALTER COLUMN id SET DEFAULT nextval('topology.survey_congestion_id_seq'::regclass);


--
-- Name: survey_entrances id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_entrances ALTER COLUMN id SET DEFAULT nextval('topology.survey_entrances_id_seq'::regclass);


--
-- Name: survey_freetime id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_freetime ALTER COLUMN id SET DEFAULT nextval('topology.survey_freetime_id_seq'::regclass);


--
-- Name: survey_results id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_results ALTER COLUMN id SET DEFAULT nextval('topology.survey_results_id_seq'::regclass);


--
-- Name: toilets id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.toilets ALTER COLUMN id SET DEFAULT nextval('topology.toilets_id_seq'::regclass);


--
-- Name: wc_toilets id; Type: DEFAULT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.wc_toilets ALTER COLUMN id SET DEFAULT nextval('topology.wc_toilets_id_seq'::regclass);


--
-- Data for Name: Peak_Points; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

COPY postgres."Peak_Points" (id, geom, point, latitude, longitude, "time (peak", "number of", "other tran") FROM stdin;
\.
COPY postgres."Peak_Points" (id, geom, point, latitude, longitude, "time (peak", "number of", "other tran") FROM '$$PATH$$/4502.dat';

--
-- Data for Name: hatfield_campus_v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hatfield_campus_v1 (id, geom, ogc_fid, ogc_fid1, pkuid, name, ogc_fid0, layer, path) FROM stdin;
\.
COPY public.hatfield_campus_v1 (id, geom, ogc_fid, ogc_fid1, pkuid, name, ogc_fid0, layer, path) FROM '$$PATH$$/4524.dat';

--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.
COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM '$$PATH$$/4274.dat';

--
-- Data for Name: gates; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.gates (id, geom, ogc_fid, fid, "gate number or name", "walking student accessible", "cycling student accessible") FROM stdin;
\.
COPY topology.gates (id, geom, ogc_fid, fid, "gate number or name", "walking student accessible", "cycling student accessible") FROM '$$PATH$$/4522.dat';

--
-- Data for Name: hatfield_campus; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.hatfield_campus (id, geom, ogc_fid, ogc_fid1, pkuid, name, ogc_fid0, layer, path) FROM stdin;
\.
COPY topology.hatfield_campus (id, geom, ogc_fid, ogc_fid1, pkuid, name, ogc_fid0, layer, path) FROM '$$PATH$$/4510.dat';

--
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
\.
COPY topology.topology (id, name, srid, "precision", hasz) FROM '$$PATH$$/4275.dat';

--
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.
COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM '$$PATH$$/4276.dat';

--
-- Data for Name: offpeak_point; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.offpeak_point (id, geom, point, latitude, longitude, "time", num_people, transport) FROM stdin;
\.
COPY topology.offpeak_point (id, geom, point, latitude, longitude, "time", num_people, transport) FROM '$$PATH$$/4506.dat';

--
-- Data for Name: parking; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.parking (id, geom, ogc_fid, pkuid, name) FROM stdin;
\.
COPY topology.parking (id, geom, ogc_fid, pkuid, name) FROM '$$PATH$$/4512.dat';

--
-- Data for Name: paths; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.paths (id, geom, ogc_fid, name) FROM stdin;
\.
COPY topology.paths (id, geom, ogc_fid, name) FROM '$$PATH$$/4514.dat';

--
-- Data for Name: peak_point; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.peak_point (id, geom, point, latitude, longitude, "time", num_people, transport) FROM stdin;
\.
COPY topology.peak_point (id, geom, point, latitude, longitude, "time", num_people, transport) FROM '$$PATH$$/4504.dat';

--
-- Data for Name: retail; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.retail (id, geom, ogc_fid, pkuid, name, type) FROM stdin;
\.
COPY topology.retail (id, geom, ogc_fid, pkuid, name, type) FROM '$$PATH$$/4516.dat';

--
-- Data for Name: roads; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.roads (id, geom, ogc_fid, name) FROM stdin;
\.
COPY topology.roads (id, geom, ogc_fid, name) FROM '$$PATH$$/4526.dat';

--
-- Data for Name: survey_congestion; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.survey_congestion (id, geom, ogc_fid, congestion_latitude, congestion_longitude) FROM stdin;
\.
COPY topology.survey_congestion (id, geom, ogc_fid, congestion_latitude, congestion_longitude) FROM '$$PATH$$/4528.dat';

--
-- Data for Name: survey_entrances; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.survey_entrances (id, geom, ogc_fid, entrance_latitude, entrance_longitude) FROM stdin;
\.
COPY topology.survey_entrances (id, geom, ogc_fid, entrance_latitude, entrance_longitude) FROM '$$PATH$$/4530.dat';

--
-- Data for Name: survey_freetime; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.survey_freetime (id, geom, ogc_fid, ft_latitude, ft_longitude) FROM stdin;
\.
COPY topology.survey_freetime (id, geom, ogc_fid, ft_latitude, ft_longitude) FROM '$$PATH$$/4532.dat';

--
-- Data for Name: survey_results; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.survey_results (id, start, "end", education_level, year_of_study, faculty, late, campus_map_usage, campus_transport, campus_transport_walking, campus_transport_cycling, campus_transport_skating, campus_transport_driving, campus_transport_other, time_frame, campus_navigation_difficulty, map_usability, congested_areas, congested_areas_latitude, congested_areas_longitude, entrance, entrance_latitude, entrance_longitude, entrance_altitude, entrance_precision, relaxation_areas, relaxation_areas_latitude, relaxation_areas_longitude, relaxation_areas_altitude, relaxation_areas_precision, _id, _uuid, _submission_time, _status, __version__, _index) FROM stdin;
\.
COPY topology.survey_results (id, start, "end", education_level, year_of_study, faculty, late, campus_map_usage, campus_transport, campus_transport_walking, campus_transport_cycling, campus_transport_skating, campus_transport_driving, campus_transport_other, time_frame, campus_navigation_difficulty, map_usability, congested_areas, congested_areas_latitude, congested_areas_longitude, entrance, entrance_latitude, entrance_longitude, entrance_altitude, entrance_precision, relaxation_areas, relaxation_areas_latitude, relaxation_areas_longitude, relaxation_areas_altitude, relaxation_areas_precision, _id, _uuid, _submission_time, _status, __version__, _index) FROM '$$PATH$$/4508.dat';

--
-- Data for Name: toilets; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.toilets (id, geom, ogc_fid, pkuid) FROM stdin;
\.
COPY topology.toilets (id, geom, ogc_fid, pkuid) FROM '$$PATH$$/4518.dat';

--
-- Data for Name: wc_toilets; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.wc_toilets (id, geom, ogc_fid, pkuid) FROM stdin;
\.
COPY topology.wc_toilets (id, geom, ogc_fid, pkuid) FROM '$$PATH$$/4520.dat';

--
-- Name: Peak_Points_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres."Peak_Points_id_seq"', 31, true);


--
-- Name: hatfield_campus_v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hatfield_campus_v1_id_seq', 114, true);


--
-- Name: gates_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.gates_id_seq', 20, true);


--
-- Name: hatfield_campus_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.hatfield_campus_id_seq', 114, true);


--
-- Name: offpeak_point_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.offpeak_point_id_seq', 31, true);


--
-- Name: parking_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.parking_id_seq', 29, true);


--
-- Name: paths_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.paths_id_seq', 87, true);


--
-- Name: peak_point_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.peak_point_id_seq', 31, true);


--
-- Name: retail_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.retail_id_seq', 15, true);


--
-- Name: roads_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.roads_id_seq', 20, true);


--
-- Name: survey_congestion_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.survey_congestion_id_seq', 59, true);


--
-- Name: survey_entrances_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.survey_entrances_id_seq', 59, true);


--
-- Name: survey_freetime_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.survey_freetime_id_seq', 59, true);


--
-- Name: survey_results_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.survey_results_id_seq', 59, true);


--
-- Name: toilets_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.toilets_id_seq', 30, true);


--
-- Name: wc_toilets_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.wc_toilets_id_seq', 17, true);


--
-- Name: Peak_Points Peak_Points_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres."Peak_Points"
    ADD CONSTRAINT "Peak_Points_pkey" PRIMARY KEY (id);


--
-- Name: hatfield_campus_v1 hatfield_campus_v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hatfield_campus_v1
    ADD CONSTRAINT hatfield_campus_v1_pkey PRIMARY KEY (id);


--
-- Name: gates gates_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.gates
    ADD CONSTRAINT gates_pkey PRIMARY KEY (id);


--
-- Name: hatfield_campus hatfield_campus_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.hatfield_campus
    ADD CONSTRAINT hatfield_campus_pkey PRIMARY KEY (id);


--
-- Name: offpeak_point offpeak_point_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.offpeak_point
    ADD CONSTRAINT offpeak_point_pkey PRIMARY KEY (id);


--
-- Name: parking parking_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.parking
    ADD CONSTRAINT parking_pkey PRIMARY KEY (id);


--
-- Name: paths paths_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.paths
    ADD CONSTRAINT paths_pkey PRIMARY KEY (id);


--
-- Name: peak_point peak_point_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.peak_point
    ADD CONSTRAINT peak_point_pkey PRIMARY KEY (id);


--
-- Name: retail retail_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.retail
    ADD CONSTRAINT retail_pkey PRIMARY KEY (id);


--
-- Name: roads roads_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.roads
    ADD CONSTRAINT roads_pkey PRIMARY KEY (id);


--
-- Name: survey_congestion survey_congestion_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_congestion
    ADD CONSTRAINT survey_congestion_pkey PRIMARY KEY (id);


--
-- Name: survey_entrances survey_entrances_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_entrances
    ADD CONSTRAINT survey_entrances_pkey PRIMARY KEY (id);


--
-- Name: survey_freetime survey_freetime_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_freetime
    ADD CONSTRAINT survey_freetime_pkey PRIMARY KEY (id);


--
-- Name: survey_results survey_results_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.survey_results
    ADD CONSTRAINT survey_results_pkey PRIMARY KEY (id);


--
-- Name: toilets toilets_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.toilets
    ADD CONSTRAINT toilets_pkey PRIMARY KEY (id);


--
-- Name: wc_toilets wc_toilets_pkey; Type: CONSTRAINT; Schema: topology; Owner: postgres
--

ALTER TABLE ONLY topology.wc_toilets
    ADD CONSTRAINT wc_toilets_pkey PRIMARY KEY (id);


--
-- Name: sidx_Peak_Points_geom; Type: INDEX; Schema: postgres; Owner: postgres
--

CREATE INDEX "sidx_Peak_Points_geom" ON postgres."Peak_Points" USING gist (geom);


--
-- Name: sidx_hatfield_campus_v1_geom; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sidx_hatfield_campus_v1_geom ON public.hatfield_campus_v1 USING gist (geom);


--
-- Name: sidx_gates_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_gates_geom ON topology.gates USING gist (geom);


--
-- Name: sidx_hatfield_campus_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_hatfield_campus_geom ON topology.hatfield_campus USING gist (geom);


--
-- Name: sidx_offpeak_point_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_offpeak_point_geom ON topology.offpeak_point USING gist (geom);


--
-- Name: sidx_parking_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_parking_geom ON topology.parking USING gist (geom);


--
-- Name: sidx_paths_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_paths_geom ON topology.paths USING gist (geom);


--
-- Name: sidx_peak_point_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_peak_point_geom ON topology.peak_point USING gist (geom);


--
-- Name: sidx_retail_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_retail_geom ON topology.retail USING gist (geom);


--
-- Name: sidx_roads_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_roads_geom ON topology.roads USING gist (geom);


--
-- Name: sidx_survey_congestion_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_survey_congestion_geom ON topology.survey_congestion USING gist (geom);


--
-- Name: sidx_survey_entrances_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_survey_entrances_geom ON topology.survey_entrances USING gist (geom);


--
-- Name: sidx_survey_freetime_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_survey_freetime_geom ON topology.survey_freetime USING gist (geom);


--
-- Name: sidx_toilets_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_toilets_geom ON topology.toilets USING gist (geom);


--
-- Name: sidx_wc_toilets_geom; Type: INDEX; Schema: topology; Owner: postgres
--

CREATE INDEX sidx_wc_toilets_geom ON topology.wc_toilets USING gist (geom);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       