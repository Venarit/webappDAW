PGDMP     "                    {            NutriGuideDB    15.2    15.2 M    R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            U           1262    16740    NutriGuideDB    DATABASE     �   CREATE DATABASE "NutriGuideDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "NutriGuideDB";
                postgres    false            �            1259    16781 	   actividad    TABLE     �   CREATE TABLE public.actividad (
    idactividad integer NOT NULL,
    nombre character varying(50) NOT NULL,
    factor numeric,
    descripcion character varying(150)
);
    DROP TABLE public.actividad;
       public         heap    postgres    false            �            1259    16780    actividad_idactividad_seq    SEQUENCE     �   CREATE SEQUENCE public.actividad_idactividad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.actividad_idactividad_seq;
       public          postgres    false    217            V           0    0    actividad_idactividad_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.actividad_idactividad_seq OWNED BY public.actividad.idactividad;
          public          postgres    false    216            �            1259    16838 	   alimentos    TABLE     �  CREATE TABLE public.alimentos (
    idalimentos integer NOT NULL,
    r_tipo integer,
    nombre character varying(100) NOT NULL,
    cantidad_sugerida numeric,
    unidad character varying(20),
    peso_bruto numeric,
    peso_neto numeric,
    energia numeric,
    proteina numeric,
    lipidos numeric,
    hco numeric,
    fibra numeric,
    vitaminaa numeric,
    acido_ascorbico numeric,
    acido_folico numeric,
    hierro numeric,
    potasio numeric,
    indice_glicemico numeric,
    carga_glicemica numeric,
    azucar double precision,
    sodio numeric,
    calcio numeric,
    selenio numeric,
    fosforo numeric,
    colesterol numeric
);
    DROP TABLE public.alimentos;
       public         heap    postgres    false            �            1259    16837    alimentos_idalimentos_seq    SEQUENCE     �   CREATE SEQUENCE public.alimentos_idalimentos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.alimentos_idalimentos_seq;
       public          postgres    false    226            W           0    0    alimentos_idalimentos_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.alimentos_idalimentos_seq OWNED BY public.alimentos.idalimentos;
          public          postgres    false    225            �            1259    16797    macros    TABLE     �   CREATE TABLE public.macros (
    idmacros integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(100),
    hco numeric,
    lipidos numeric,
    proteina numeric
);
    DROP TABLE public.macros;
       public         heap    postgres    false            �            1259    16796    macros_idmacros_seq    SEQUENCE     �   CREATE SEQUENCE public.macros_idmacros_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.macros_idmacros_seq;
       public          postgres    false    221            X           0    0    macros_idmacros_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.macros_idmacros_seq OWNED BY public.macros.idmacros;
          public          postgres    false    220            �            1259    16790    objetivo    TABLE     �   CREATE TABLE public.objetivo (
    idobjetivo integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(100),
    calorias integer
);
    DROP TABLE public.objetivo;
       public         heap    postgres    false            �            1259    16789    objetivo_idobjetivo_seq    SEQUENCE     �   CREATE SEQUENCE public.objetivo_idobjetivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.objetivo_idobjetivo_seq;
       public          postgres    false    219            Y           0    0    objetivo_idobjetivo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.objetivo_idobjetivo_seq OWNED BY public.objetivo.idobjetivo;
          public          postgres    false    218            �            1259    16805    perfilnutricional    TABLE     �  CREATE TABLE public.perfilnutricional (
    r_usuario integer NOT NULL,
    peso double precision NOT NULL,
    altura numeric NOT NULL,
    sexo character varying(10) NOT NULL,
    edad integer,
    bmr integer,
    tdee integer,
    r_actividad integer,
    r_objetivo integer,
    r_macros integer,
    idperfil integer NOT NULL,
    nombreperfil character varying(45) NOT NULL,
    calorias integer
);
 %   DROP TABLE public.perfilnutricional;
       public         heap    postgres    false            �            1259    16852    perfilnutricional_idperfil_seq    SEQUENCE     �   CREATE SEQUENCE public.perfilnutricional_idperfil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.perfilnutricional_idperfil_seq;
       public          postgres    false    222            Z           0    0    perfilnutricional_idperfil_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.perfilnutricional_idperfil_seq OWNED BY public.perfilnutricional.idperfil;
          public          postgres    false    227            �            1259    18050 	   platillos    TABLE     �  CREATE TABLE public.platillos (
    idplatillo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    r_usuario integer NOT NULL,
    r_alimento1 integer NOT NULL,
    r_alimento2 integer,
    r_alimento3 integer,
    r_alimento4 integer,
    r_alimento5 integer,
    r_alimento6 integer,
    r_alimento7 integer,
    r_alimento8 integer,
    r_alimento9 integer,
    r_alimento10 integer,
    total_energia numeric,
    total_proteina numeric,
    total_lipidos numeric,
    total_hco numeric
);
    DROP TABLE public.platillos;
       public         heap    postgres    false            �            1259    18049    platillos_idplatillo_seq    SEQUENCE     �   CREATE SEQUENCE public.platillos_idplatillo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.platillos_idplatillo_seq;
       public          postgres    false    229            [           0    0    platillos_idplatillo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.platillos_idplatillo_seq OWNED BY public.platillos.idplatillo;
          public          postgres    false    228            �            1259    16831    tipo_alimentos    TABLE     q   CREATE TABLE public.tipo_alimentos (
    idtipo_alimentos integer NOT NULL,
    nombre character varying(100)
);
 "   DROP TABLE public.tipo_alimentos;
       public         heap    postgres    false            �            1259    16830 #   tipo_alimentos_idtipo_alimentos_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_alimentos_idtipo_alimentos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tipo_alimentos_idtipo_alimentos_seq;
       public          postgres    false    224            \           0    0 #   tipo_alimentos_idtipo_alimentos_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.tipo_alimentos_idtipo_alimentos_seq OWNED BY public.tipo_alimentos.idtipo_alimentos;
          public          postgres    false    223            �            1259    16774    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    nombre character varying(45) NOT NULL,
    apellidop character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16773    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    215            ]           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    214            �           2604    16784    actividad idactividad    DEFAULT     ~   ALTER TABLE ONLY public.actividad ALTER COLUMN idactividad SET DEFAULT nextval('public.actividad_idactividad_seq'::regclass);
 D   ALTER TABLE public.actividad ALTER COLUMN idactividad DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16841    alimentos idalimentos    DEFAULT     ~   ALTER TABLE ONLY public.alimentos ALTER COLUMN idalimentos SET DEFAULT nextval('public.alimentos_idalimentos_seq'::regclass);
 D   ALTER TABLE public.alimentos ALTER COLUMN idalimentos DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16800    macros idmacros    DEFAULT     r   ALTER TABLE ONLY public.macros ALTER COLUMN idmacros SET DEFAULT nextval('public.macros_idmacros_seq'::regclass);
 >   ALTER TABLE public.macros ALTER COLUMN idmacros DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16793    objetivo idobjetivo    DEFAULT     z   ALTER TABLE ONLY public.objetivo ALTER COLUMN idobjetivo SET DEFAULT nextval('public.objetivo_idobjetivo_seq'::regclass);
 B   ALTER TABLE public.objetivo ALTER COLUMN idobjetivo DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16853    perfilnutricional idperfil    DEFAULT     �   ALTER TABLE ONLY public.perfilnutricional ALTER COLUMN idperfil SET DEFAULT nextval('public.perfilnutricional_idperfil_seq'::regclass);
 I   ALTER TABLE public.perfilnutricional ALTER COLUMN idperfil DROP DEFAULT;
       public          postgres    false    227    222            �           2604    18053    platillos idplatillo    DEFAULT     |   ALTER TABLE ONLY public.platillos ALTER COLUMN idplatillo SET DEFAULT nextval('public.platillos_idplatillo_seq'::regclass);
 C   ALTER TABLE public.platillos ALTER COLUMN idplatillo DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16834    tipo_alimentos idtipo_alimentos    DEFAULT     �   ALTER TABLE ONLY public.tipo_alimentos ALTER COLUMN idtipo_alimentos SET DEFAULT nextval('public.tipo_alimentos_idtipo_alimentos_seq'::regclass);
 N   ALTER TABLE public.tipo_alimentos ALTER COLUMN idtipo_alimentos DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16777    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    214    215    215            C          0    16781 	   actividad 
   TABLE DATA           M   COPY public.actividad (idactividad, nombre, factor, descripcion) FROM stdin;
    public          postgres    false    217   f       L          0    16838 	   alimentos 
   TABLE DATA           -  COPY public.alimentos (idalimentos, r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, fibra, vitaminaa, acido_ascorbico, acido_folico, hierro, potasio, indice_glicemico, carga_glicemica, azucar, sodio, calcio, selenio, fosforo, colesterol) FROM stdin;
    public          postgres    false    226   g       G          0    16797    macros 
   TABLE DATA           W   COPY public.macros (idmacros, nombre, descripcion, hco, lipidos, proteina) FROM stdin;
    public          postgres    false    221   NI      E          0    16790    objetivo 
   TABLE DATA           M   COPY public.objetivo (idobjetivo, nombre, descripcion, calorias) FROM stdin;
    public          postgres    false    219   J      H          0    16805    perfilnutricional 
   TABLE DATA           �   COPY public.perfilnutricional (r_usuario, peso, altura, sexo, edad, bmr, tdee, r_actividad, r_objetivo, r_macros, idperfil, nombreperfil, calorias) FROM stdin;
    public          postgres    false    222   �J      O          0    18050 	   platillos 
   TABLE DATA           �   COPY public.platillos (idplatillo, nombre, r_usuario, r_alimento1, r_alimento2, r_alimento3, r_alimento4, r_alimento5, r_alimento6, r_alimento7, r_alimento8, r_alimento9, r_alimento10, total_energia, total_proteina, total_lipidos, total_hco) FROM stdin;
    public          postgres    false    229   ?K      J          0    16831    tipo_alimentos 
   TABLE DATA           B   COPY public.tipo_alimentos (idtipo_alimentos, nombre) FROM stdin;
    public          postgres    false    224   \K      A          0    16774    usuarios 
   TABLE DATA           Q   COPY public.usuarios (idusuario, nombre, apellidop, email, password) FROM stdin;
    public          postgres    false    215   ML      ^           0    0    actividad_idactividad_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.actividad_idactividad_seq', 5, true);
          public          postgres    false    216            _           0    0    alimentos_idalimentos_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.alimentos_idalimentos_seq', 2887, true);
          public          postgres    false    225            `           0    0    macros_idmacros_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.macros_idmacros_seq', 5, true);
          public          postgres    false    220            a           0    0    objetivo_idobjetivo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.objetivo_idobjetivo_seq', 4, true);
          public          postgres    false    218            b           0    0    perfilnutricional_idperfil_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.perfilnutricional_idperfil_seq', 28, true);
          public          postgres    false    227            c           0    0    platillos_idplatillo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.platillos_idplatillo_seq', 1, false);
          public          postgres    false    228            d           0    0 #   tipo_alimentos_idtipo_alimentos_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.tipo_alimentos_idtipo_alimentos_seq', 22, true);
          public          postgres    false    223            e           0    0    usuarios_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 16, true);
          public          postgres    false    214            �           2606    16788    actividad actividad_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.actividad
    ADD CONSTRAINT actividad_pkey PRIMARY KEY (idactividad);
 B   ALTER TABLE ONLY public.actividad DROP CONSTRAINT actividad_pkey;
       public            postgres    false    217            �           2606    16845    alimentos alimentos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.alimentos
    ADD CONSTRAINT alimentos_pkey PRIMARY KEY (idalimentos);
 B   ALTER TABLE ONLY public.alimentos DROP CONSTRAINT alimentos_pkey;
       public            postgres    false    226            �           2606    16804    macros macros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.macros
    ADD CONSTRAINT macros_pkey PRIMARY KEY (idmacros);
 <   ALTER TABLE ONLY public.macros DROP CONSTRAINT macros_pkey;
       public            postgres    false    221            �           2606    16795    objetivo objetivo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.objetivo
    ADD CONSTRAINT objetivo_pkey PRIMARY KEY (idobjetivo);
 @   ALTER TABLE ONLY public.objetivo DROP CONSTRAINT objetivo_pkey;
       public            postgres    false    219            �           2606    16855 (   perfilnutricional perfilnutricional_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_pkey PRIMARY KEY (idperfil);
 R   ALTER TABLE ONLY public.perfilnutricional DROP CONSTRAINT perfilnutricional_pkey;
       public            postgres    false    222            �           2606    18057    platillos platillos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_pkey PRIMARY KEY (idplatillo);
 B   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_pkey;
       public            postgres    false    229            �           2606    16836 "   tipo_alimentos tipo_alimentos_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tipo_alimentos
    ADD CONSTRAINT tipo_alimentos_pkey PRIMARY KEY (idtipo_alimentos);
 L   ALTER TABLE ONLY public.tipo_alimentos DROP CONSTRAINT tipo_alimentos_pkey;
       public            postgres    false    224            �           2606    17297    alimentos unique_nombre 
   CONSTRAINT     T   ALTER TABLE ONLY public.alimentos
    ADD CONSTRAINT unique_nombre UNIQUE (nombre);
 A   ALTER TABLE ONLY public.alimentos DROP CONSTRAINT unique_nombre;
       public            postgres    false    226            �           2606    16779    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    215            �           2606    16846    alimentos alimentos_r_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alimentos
    ADD CONSTRAINT alimentos_r_tipo_fkey FOREIGN KEY (r_tipo) REFERENCES public.tipo_alimentos(idtipo_alimentos);
 I   ALTER TABLE ONLY public.alimentos DROP CONSTRAINT alimentos_r_tipo_fkey;
       public          postgres    false    3227    226    224            �           2606    16815 4   perfilnutricional perfilnutricional_r_actividad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_actividad_fkey FOREIGN KEY (r_actividad) REFERENCES public.actividad(idactividad);
 ^   ALTER TABLE ONLY public.perfilnutricional DROP CONSTRAINT perfilnutricional_r_actividad_fkey;
       public          postgres    false    3219    217    222            �           2606    16825 1   perfilnutricional perfilnutricional_r_macros_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_macros_fkey FOREIGN KEY (r_macros) REFERENCES public.macros(idmacros);
 [   ALTER TABLE ONLY public.perfilnutricional DROP CONSTRAINT perfilnutricional_r_macros_fkey;
       public          postgres    false    221    3223    222            �           2606    16820 3   perfilnutricional perfilnutricional_r_objetivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_objetivo_fkey FOREIGN KEY (r_objetivo) REFERENCES public.objetivo(idobjetivo);
 ]   ALTER TABLE ONLY public.perfilnutricional DROP CONSTRAINT perfilnutricional_r_objetivo_fkey;
       public          postgres    false    222    219    3221            �           2606    16810 2   perfilnutricional perfilnutricional_r_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_usuario_fkey FOREIGN KEY (r_usuario) REFERENCES public.usuarios(idusuario);
 \   ALTER TABLE ONLY public.perfilnutricional DROP CONSTRAINT perfilnutricional_r_usuario_fkey;
       public          postgres    false    3217    215    222            �           2606    18108 %   platillos platillos_r_alimento10_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento10_fkey FOREIGN KEY (r_alimento10) REFERENCES public.alimentos(idalimentos);
 O   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento10_fkey;
       public          postgres    false    226    229    3229            �           2606    18063 $   platillos platillos_r_alimento1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento1_fkey FOREIGN KEY (r_alimento1) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento1_fkey;
       public          postgres    false    229    3229    226            �           2606    18068 $   platillos platillos_r_alimento2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento2_fkey FOREIGN KEY (r_alimento2) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento2_fkey;
       public          postgres    false    229    226    3229            �           2606    18073 $   platillos platillos_r_alimento3_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento3_fkey FOREIGN KEY (r_alimento3) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento3_fkey;
       public          postgres    false    3229    229    226            �           2606    18078 $   platillos platillos_r_alimento4_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento4_fkey FOREIGN KEY (r_alimento4) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento4_fkey;
       public          postgres    false    226    229    3229            �           2606    18083 $   platillos platillos_r_alimento5_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento5_fkey FOREIGN KEY (r_alimento5) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento5_fkey;
       public          postgres    false    229    226    3229            �           2606    18088 $   platillos platillos_r_alimento6_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento6_fkey FOREIGN KEY (r_alimento6) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento6_fkey;
       public          postgres    false    226    3229    229            �           2606    18093 $   platillos platillos_r_alimento7_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento7_fkey FOREIGN KEY (r_alimento7) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento7_fkey;
       public          postgres    false    229    226    3229            �           2606    18098 $   platillos platillos_r_alimento8_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento8_fkey FOREIGN KEY (r_alimento8) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento8_fkey;
       public          postgres    false    3229    226    229            �           2606    18103 $   platillos platillos_r_alimento9_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_alimento9_fkey FOREIGN KEY (r_alimento9) REFERENCES public.alimentos(idalimentos);
 N   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_alimento9_fkey;
       public          postgres    false    229    3229    226            �           2606    18058 "   platillos platillos_r_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillos
    ADD CONSTRAINT platillos_r_usuario_fkey FOREIGN KEY (r_usuario) REFERENCES public.usuarios(idusuario);
 L   ALTER TABLE ONLY public.platillos DROP CONSTRAINT platillos_r_usuario_fkey;
       public          postgres    false    3217    229    215            C   �   x�e��j�0D��W�������[�^s�H۲A�&�\ڿ��N��o�0�f�Ƽ��X0��fך�8���Ѕ�c��WI��A�B�LJ�3^d�f�����6D�D��)�$t��أ����Wn�`[�Ɵ*��]X�tCo^��D��h�<c�# d1���A�b�P�挋f!u
跤�9L?��]X�1/�g�[�ʿK�{S�e�w�BugVR�OVk<K��XmQ�=����!8�      L      x���˒$Ǒ%�v~Eʈ\R�o���ݗ � ��@c̣[j���Ȉ�x�]���䂋��+.o��5}�����W����"Pl�q{��㨪iM��/���xsw�܏�n�ㇱQ�m��Ѻ�ݴ�؍i��7F������5�n��K���៼ݴ�_��ͷ�ϯLk3���n�x��m l��!;?jhT���ԝ��.����W�xg����"����x�xx;�<M��q�PU�x�6L��m�����kaFm��2]�s���<�=oq���g���߀���t_�`��0����Z"��&�`���� .,�q�e�V'����_���`.Ƶaj�Az 9���᲋�"̩�[��-n|�h&���������*��ƿ�6��r:N�wӾ>��5�c�{�T��I �ۂ��a]��*�j	�W�O��N���Z�����5] �tTۮ"(D8��ӎ1�;>i6�� Ǜ&B��߾�¯�x���vF�07�q�#����z��Z8f�-�i�v��6_��É�Nᤵ��9�m��NX:T���	�0x��]8kK�������;���d?�7tm��Yi���W~���t��a�Ht��+�`�4���t��J���?�Eq��&-H���q7ގw��x�����/S?��AP�,�,��p�@h���:|woVg֕�ǰg�9b�'�<���N7�(�[�(&�G�a�l�%��t��x:ow��tWp��/�':���Q��H��Ϥvf����j�= ��n���lo�x����mpČ���˧Z~hz���[���/�3��(���ǰ� �*� O�#��Sj� ��6�yz�`u�v���:a�ݍO�����i������%<a�QӋ������@�nN�v%`;�oN���2��2Ŧ'̣���S�_��:
H��ǧ����,K�y:
������X�w]Ӎ���3�����9����Np�u��E�����hqzp��'S� �^|3}3����S���j��� ��:V����Uе¯�e�AbL!bXX��*�tO���).%jb!I�PC��E�񘀈V�59e��7G��k��$>��{*ݵ.��`X���jP~<N�ۨt�~�?��G��!�0(q���V�׋FG����׻��uO��?�۽�T�������Σ�o���M����:BK�z	��a���DVK>i �U���HGm�gPM�:1ZVL!��W|UA[�i:�Ꭴ�@F]�]�����MϩE(�	���|�Qj��eTN2���_�o���n�I�
�v�C8t���)E?\-e@#R^��9n��1$C��#V���@;̳��=��l���X=�C��	(��4�ZKoX<���X��=�*J�~��ҭ�`�K���9��i�;$��o���ZB d����YKS�jmȐA��^�`�\�Bܴ�d���q�#���.��/گ�m3�q{:����J�c�3�T�����S*�G����ߟ�;V'��b��t/?mO�Ux�ᒶ|�A'�ԵhQv�䧝�c�cPD��F)
ߑq�AO�
�+��'9f��5����.��g\4/.gOZ����(Z���rv�/���}���Y�p����W	�7|�؜�������/��Se�t�=9�]y�?:Rf{.�W_i�=-n������~>����Aj����㥴�6��	�s�G��UG�EA�ܞ7�~<��)m;�c�ь,��[-�-���y�,ǘ� �X����b�� wJe��Z�3�쪌vmD�g ��a�@WLώǧڣ��#{ò����s����(�T�]�'1��	����?�1�&�Y�)�&��ĦǗ��i��{G�U|！�R�
�xO�$�d_�!��V]f�����p��K
�C��Q17���>h/an���a��?�8lv����&��߬����y�e4���� ?N��ifk�~�w���nȏ�� �%�B�f�9��V��ɐ��d����éd-�	\&v�$v��o��@(�?�'�t�x��X����0�K�R��a<�1f2&�p�t�`���Q4E�		�OEo�d�#iq?0�n�{�<�hʠ|m����_�B|h����A3F�Xݚ���
�9X� 	1��SeϝƗױ�m�x���Qu����#���Mޠ^��%ͯj�ʐ�P�M��m�W���n���ߺ�^��j�u�6��0���|�Wg���x���Yʱ�Ȳ ��e��F�����	%�e{����q�0�Ñ�Jr�$n�r~�0@P�6J��9�56 �\A���x?A�*v�*5�Y��o��%�����I�!���\(�4n4?[�-��y�	g�$VA�L�q�Ac:J<Cʰ��}�H�i�H!B������31��t��x��x @�����I�Z��z�==��8>d�P)��d8�U��BuŐ�Ǯ�Sp<V��ws�,#)�V¯A�%�Vs�Ѿ$[#��V�T����d��D��<�0?�^w����_uACİ�'<���P����'��uˮgЙ=����ᯬ^��Y�3�V�n�b]�A�<{}4��uX+a�^���m%�x4ہ(6�� ˫V+����6�*0^�<��p�/�݁�P�:2E�7,?��:�����	����2�g�ߒ��r#,�"������ƿ^��[��m͂m�h�����i���4���~J�į:I$
�*�"@w���Л���Q��ځo�ݘ<�ѝ�0���k��V|�-W:�X��Z�O�*�N��sw^P"@�p��D&�ꅋ'C��#=H���Q��ȴKޯS�Owp+�(
�N�&���mĎ�!�z��r��OJ�a�� "HuN�� GU���� eۓ��o�H��ލ8��)�`f�,(.-��l(^;rT�,B]Ϣ6�E�Ǯ�{��H��o�
�1��T~�c���U��^�U�X�%:�j/F���0U�n� ��U�N��o���*4�&�H�&�[z�8��V���ըX�K�瑬⠷��9(Cfc�-ZsHx@�[�>~č��8=���8�C�6��F���m�
5���n�&����ێC{�q:��i�ߢ�>?��sS!�����x>�N�U�MEw�N���J�`�v��t�;=n���O���x;�d��y7 ��;32x4s��LƋd�����)/z�kAT	} �Z�5�t@qr���n��[�l�z/I��`��Qv|�����,X>tk�Ճ ���ކ{�6؍�ߌw	�H�@�6�m���G_yG�������5
ïE�u"����+��z�81p�Pc~ ݙxd*�\Vh;�YL\��g0��on���8Xݞ�cD�d좳����+�`���(wӑnBf�.��+���0��r�Z�VIy��υ|q��g�8�}��G}ob���2��n�b�s:�?�V�~=;��N�߰ȗL�F�Ql���bJ�G����Y0xyV��=�ə�q���@���QM�L^�ɴ4/�����:��<�Q�ӝIB�f`�f Y�I�C���[�cFX��q<I$��)֡
�3�����N�s�w�øA;���G�&��:䯦��{Q�LH �@N�䕀x�qt�#;Ρ��<ȁ�H��+B�"��>�l\5�*��?�ː\D���ӂ�A�A][y`,�0��F�CP����\�(������D�#����BR�7���Q��=��7��P���vuT��7Ӈ��(�p � ��?D%�AL���Ïi��rLu蘩�3����"9�p�v;Բ��s<�^ܮ�kq���Fbw�*����p�E�|4Чh84H�����AWY˾��( �E�?��3�t �`�ص|�=��4���j��")��CP�ko5��@v8!tD��̷�ê,E&c����5�?�Q����;�:C���\f��K"]��yE���dS;Q���u,
�Q�n������?�Ρ61<�� �9��ƲȲ�n�    �߃z8-��۞���iS����g�5P� EU�ڧ���}0����@R0�xf-�� ׿aɭp�$ȉ����֤�'����[-��rw�z\!��������:�N�\lE�&�Tu�Hm:�k06����� 
�� ƈ��_�n�a�CPpK�]�E�Y�ty��E�\��B��ʱ��f(�b�Ҙ%����n�6�]�d>��!�Ρ�ܥ�E/r�m����U�$j�~�h���`7�α�R$����*P/��2*�QuM�G��(�=n�١Z���ȬL0�û����g���NZ,��f�[$Y&���tL��M�#}�N�Q�R:IA�4:��#s2��E�kzL�Z8�"���Y�$�VA��iY���(8��Rio�B��JF!�̡PX8¦�'�C�\�-8|ô�0�5��E6�w���_������<��}�]��39�3NwkN����v�v�U�A��V��m��d�J<�oW���_~
"0���<ݣ-N�|bd�i�^lm͚����?��c�gAǙ2>�`�PQ��i��M������id��)xI�#�S7De��;)���"����f��寐��а!�7�Of7�nƟ�I`�n�R~?=�W�,u2��S<&s�	�5�s��"]�3�䜨Kº���8E�Ȫ�U�����@�������$��ou̞4jUb"o��YpBs�}6�u���P�2N@�^�xH�D������7)2;�L�Q��z�؇�Pz�UY����&q؍��o<���h@7_K�&E�,��~e��/�0��������=3,�4􈬴!��`׈������Tp�=�7�Ȍ6��cb�̽X�1�[���p��I�Dc�\��a����Grr]��ht���*�tbn�~�c����x�dȑ��mػ�ކ���Q����v�cg�"	�RK�}[�� $R�[t��b�ϗcN�M���I�����(����m�"h�s�!��4f�"bV #9�夦H�q�F&�fQNi�\X� i
HJ=�a:?�]s�ná�n��V-_�$�\����>k�`�T8�"�8o��{[�uoH�>��9�I?��~eaC�/v�Aۿ�'�#7`����
	�+g��)����|� W5m��O Ss08���)�A�O7�.�
��Q���Fa��,k P�c�j�	_�?�ư�Q�j���_SU1���z�5{jûc�b�����a/C��"Uq� մd�Ҕt��.l���/?��A�fMZ9��A��>] |#=:v�sE�~������/w���?\��ĳ����p��8��5��DJ 	�|��L�A!�N�T�2-�X�m"���ݒ����`7b�3�t%��ZJ@PZï�ZO6�a7�J�}�~�����
V�_r�c����O:*6��}�"��dG�SQ�P/�k����
 �O���V�UR�KP��&�1����Iy����(�Pwz�xC�B�ոE"/f;nD������G�c
�
Ng���:�Ff�=M; ;�+:P�q��WD�?溵|��op�=
�����`�5���'h��6���:�%�
9�mq���������<�=~����C�?���^��@M;�`��?�x�Y�A�"�<�J�g�7��DN;�]NU��P&\��(P��Q�P� ���(�&�Q�tM��Aq͗tΆ
]���>jː`�PJ.[A�l8\��I�mS��c�ߺ>)�}�cf�cs�e��`��A�=��`���%3�����oJIF�%s0*#�<��Wp�4$gގw�ḤPO�"'xQ�Š�
%�"q�B�⺦o�KD���q��sK�"�[��h<C-y���/��t�>�n���ƪ듀Mz�i<	Cj�68�>����2��^7���33p�Nxi,����,�oi|��gh�.�\ ��&�����#���xǷ�	��6-�DTI��UҩD���4�e��9[,�p<�o�O9':)`z���b� �i(3�%&��IwX�	��j	����k+�V ���(Y@��*�RYQ�^ <��!:=^����`G<�9�n;v�uiY��P+�����>���<nw�^�=^�WE	�&m��*�D�>^��eI�4���KZqR��7l�_#Yˌ%r걎L������Jx�q�wL4��j�!�r�Z�b�3�"�OȪ���]�7h�����.H~�AP� ~�k`���j{=��T_�
����IڵW|�)�����ׇD�p���o,
K��L��~L��$��6d��](?����O����%��\*$P8ݚ^(86D��O`�k><�����_ �b�2J�^Sy�"w�f�F����|�N`���J��[r��H�g�GW���Y�Ps7��fq[�������0D^��X��JC�/�J�
`������+�9���S�qb�I��s?~� ��V��P�b\��B���'�6����D�*�|܂Q��Ҡ��T�F��k==�:��>�֩�g3�����/�Oj �˼M}�9��#�����4w���F��4x����������{��	K4XE����a�Gk�ȑ��ZC1T��g�j����+>Y�`2���7�1��S޵�3��@.��5�fƲ�k(��`�`9ȑ���Y�l����-)�(�59V�Z��h�p�x�+�t���!�X���o�.L\bh�(�py�,���6d� }<�?��>!���aۖDWb��b�[�jTSs*���pƁWt���T��7>Aٷ@��|��'��(���j��n|G�%Oc��{�NE��g�e?`��-��H�Q}��/�Z�$�R0�e(6����|uA���|\��2v~���@�9��'�?��U�i�: 27���^:0���<E��2�1.�^{��^�߃�`��3 L|G=nC�o�ƃB��p�	���$��A�2�ڼǤچ*�19_�$/��8��4ݮ^m�2������xŢ^���;9�m�a���K�1Řˋ��T_@������'ŏ����Y��v�$�_(�?b�	���@>֑`���$��N��ym�_9���2�16����j�5̙q�0��}w+gV+��x+�B -u�����R�Ϟq�	�c�<vyP�bM�8��CN,D۳;��Q�.��Ġ��o���#��劋��X�&���)��x�Ki����%�?_3��]��(G9S)b�k�Wx���*$V5���o�.۝pF����CX`�H�i��n�ݍd���	�J�P��ʾ%��%�,��4|��1�]�<���	���iz�T�B��F�@t-�f���e��rL�\(�\��R�2c(0��M#{�Փ��][م�!_.�/��	`</=^�(B����oq��,��S�� ID���yd'����.O'�@��H�L�K����]�q���#��c���:��s�k���?o���h���XJ��i-@���!�k�r��9 .��A�� H�0}��	Mo�^چ���4ȇa��%����'9y���I`�Q3�j^U<��it(Cr��$�2V�2`%/0&�R �q�M�r�\�o�5��ށb�b�^N���P����I��q\RE�BC�,vALҷ�Ӵcw�Ivj�F��aI��בT���t���5�(9T�(�4�jxʲ~ɇ*Ȋ����m�VVF��l����t`piD�����=���@���q�;�<��)p��t��x�4;����_'8�L����z�/��ـdf���vU��p�Q��������R��F�KQ_H��|�UC�+4���-�	� 6��y:�w��1P��A����÷�Q�`��"@.p�B�M;�� �*�)�Z��VTo�	�*=�N��Pq?�f-�S/DV�v����Y���B������\>����b��eQ��1��t�>�3v���|n��Ï%�0y�u�6��ӭx��$Fm��Z��I�c�1������3P�"k�r�@uٓW��SA�R��p���Ⱥ4�7:�G�    ��D���j��9-0���.%�*Q%!ݐc�L��rKff#�C_�
���O������/�1�	������K��\
�yOP���D���X�"���5�p��Y�옎��g���JL'�φ���҉;�&k^��~P��e%J+~�A� �4V�S��[8��ރ�0��w��\!=��3M|�9��K�E�%rN�{b�[������1\��g����.�_~*|�PHZe�E#+�[x^,W�B��$�e�;漖��j?>��<�x-6�輑k*�!���0���d8,�W��b7�NCa�Zݓg�n֌\$�}C���I�wNPϽ��MԐ<f�{�����Dj�A>p/����;
�xw�����1�d/Bz��C2�6bI���f��Ա�Z��!��D�E/���Vh���b[��$a~���!��ѷ�N��'A�>C�8��ݖJ�J:�O럳���Ϙ&8�� ��Ox��%�8D^c����ͅ��"Fz��㣠��n)j��i�rC��;��H�e� 4�5_��9K&���=V�����r^��E/���.RI��g���A.|;�����pI�T2��bv-�H}�Ҡ<j�M��B9x�r B'Ccc�N�HDO�����蘺�;超��<^��c���i���E�4�,��`c�9wi"�."܍� f� 4�y$8%!�GAC��!I��X:E�Ar�&�#Y�9V��h��ʝ�S���"&�P.�0���b�O�a�"7�;������w����b�x�6T�ɀO���d�������wi���i>�Y,��5��'���F+v%���1`�i��Td�$�bP̶���^*�$�o��g�O�y��m�3b�G��i�s���_qD�e���E.�<Av�h�����s����Ԙ>��a�@'m���~ٖ.�*�\r�M6����� � ��/``�x�,�H(���e��w����9ƃM�Z��ӄ�?Dd�{"Y�Ӌi�>7�C�����%p�Z��C�w���H�-�W�2��qZ���[	����c?\����8_x�c��'����)����d����"�܂<�����1�qF����J,b�<�e&�楔~�ї ����Hq����|��Ѝ�slr�8搼���E2ܝ<#�����peb��J65�]Iz	끃�0"��\%;�����]�f���Y �j=���F���f?����Ŵ�=c���כ�j �Zh"�H�����!��ƸB��	W��L	_�~����;y/�������;b�:J�����;r��o��d�y�f�i�G�p�_~�'�	!$0'uj=ozAE�:?��!����ӤN`�dGg)&-h^L��I�w��H��a��8봇#4���X컂�I/�"B�|)>c��Xb��KŘ'���#���q[��2��-UǈFJLM��D G��QS�kg����=�\�DvMx�|� �頑΢�uA푿'��ߥhvb�X�|����%�~N�����  ~`�f�!���$qY)4�Tv�u�^8W�{<�ͯ�QP����W}<��"�sM��`8N��~��1�ϴ5��@<��ӻss1����]��-l\����9q|*����FK���A���G�9x?p�y��< ��S�^h<85%T�[�L3�#/C��F�2��F�\>���0\=�<^ Dn��0���,�YK�$����Vv�%Y9��K�ܼ.�B�.�$�^`U0�Ǵ+y��x0l�L���Oސ�Y#�Û8|ſ���h+�t��'�nj������m�ޯ��p�����l��p���솦x��ŧ/g��_(�t<Ng��YuD^D:2����,9Q�����W�0�p\ ;^�g��# ��������H�K�֙ /�q"��R#�}e���,��w*Á�������irɵ����]��t�A�m��=��<W�N��<>��	8�h������Q��(/x�W���yA�� T[�I��x�@����+�D���8��x�Mr�:�i}�Z��sA��o>��瑥�o�1��>�����j?QI@Rw�\�]x����k�xl�(��LaE).�Z��zb����z�6?`M�Bb[�̛�+�Y�J��°�|&�^;J�=����|f2).ܡI�g���\��Q�$*���,<��2�Z
�W�z�i�*'��2�k)n���'Bϓ��&j�pb�dt�b5o�d3�	���o�?��,Mg�y��������ݰ���~�v�j����U��G2��w�\k�� ������K�<q[<�R$�Hv����!����=�$rL���
h�F%�-�Q����.U����ѻ��f�I�,mє�|l��ׯ�/�8e3��1]t�)*6��#&׭leWE��{&��n~dq�"*bo"�Z��Qv��I(>�he%������٣�4&��0P�CN��vNt�c3�tu*$yZ=����i)Vv}b�,��ܼ�%M�hc�!b�������a,��\�@��@F��pfN������XW,�0�o��s 89[�8��\�MaH�R�.�n�Db�=)�]��<����� |>�H�@p���(k����R��HA�Q��-�@��6)7�m㘍����q�aJ
h	�c���DaPp/s�������fA��O��L�G� $%#�b�T���]V����N]���y7��bP�'b�+����0Ȇ�m�Wr!�쑋�����;��.�����G���sQ�Yws7�G:"�L9Q?�Ē�0U	���T�Y�d�ݒ����q�O�QDݐ���Fak(P�/�l�e���_r�z�$2� $�HHd��˕�s�Ĭ?�$"D�a]�T������\�������%��qĪ4E�U�L˪�`��L��`np�tD���ÈJ�����8�8zG��
Ɉ� �S\��n�Ͱ|�mu�[q��ޥ[����-�xlc�H]�,j�:�Ϊ��R�[��qO�k������9��t]/G�ӈ�ݫ�U�h!U։�;����#�)��Xk�RQ�5�ʷiܚ����.��@^'5lL�D����J���x�>�3�U},���<`,Ƿ�.�0�����I^0�Ɩ�=Mz.�ԫ�~I�����#��;|�s�b��Q�x�����^;��}u>.�,�dh663��'0����=4��J^�G��w��|�L]I�	�UR�Pk���^�Gz��}��5h<Ec�^YK�1gK)����c�#�/�ب���R�b���F��L7� ɤs��,������i�b�#�@+�>F���0�7�@��:��v����9|%�d�rΞ�����X6v�rH,X�˔1�pƐ�'���(�ą�2z.0��%>�]ީ��Gz_��3��W	�E'�X��@���F�'�����ˋS#�F�A&6�����}ǵN��
�,'\=�睊�<U��Q.aa|/���n%��/+꼦���z�pR(r�"in��Řr��0�������j��%��@$���Y߉@����f�*QI�>�8U�-���Q��Xs�w��3&`��v��ʁ�����
+_�W�g?�)��[���5h�y�GR��wL�S�P�-O��|я0��:��*��=��|�BV��JQ�
�C�p�����,y踾��l���g�[�]5*Ͽ�4CQ�-��}~�SrM�9C�(w ��Ĵ#[��*Sk�
B�*F�����PjAH5��<O�!87��o�F
��H�\(>剀wx��~5�?!�d��ځ�����&�,=z����nz8��5�{�ąJKdݐ�,öF�~�w��c�A���3�/�(P��Fc���y1��P���_��8�|�L�Iz�B�$,D�������jGPE&�f}?�wt�fY3/3:
�R]w�� ���푢y)�{�xn�kh���	RnC-���F>�8�gJ�R,̗B]^�D����]�f���&Pa�>�j�2�i�1ȧK�/�,�#����A��q�cF-8 �!$ڒ$�\�G�P��v�:�]    B���~�?����M����~z��1�Q����9����곂N+G�.��_����7��c��I�1�i�10(ԅ���!.�W/;�]�H�x %�` �{)��6���/-�����"��?m�w���'

�%�u�_t?�~d������ 3�m0�b��kf#�r�X�����r��Y�y(����-��ø�M�������<�~q��Ōi "�r�ȳf@�|��K���{WP�Y���Ȓ�3��������&�H��������z��OHa�pI���c�K^�������}<��>UL��p�a�C�!�a���]Κ���:�<C���E���w-{fz��W�B�^| (	����Db��7� uN�ͯO��O��.���=��
ը6]%4-H���.�`�Du�����=R�`���R���-"	a|� ���)p+�[ܒ9 ���@�u�b�B�CA�%�B��T�|
\�[�v�0�Ex��a7�xQ���J���J� h�$��ǾģG;�v�	.�z~�> ����~��~��*�iZ�.Ѡ9Y�`�l1u��}{����P��RD\lh�b��k�#<�g�p>��A5����B-��iD�=�Ao�����|ށ&u¡|�I��Ѝ$J�ݦ��S~H������yr^taei�r�;��W'�R�(�+�1h���t���9A'�OS�	��\�Xm�{C+N��t2��s�������o���
�o��zBb�iss�����i�o���n
�]8u�*ME��ѣ�AB���q���&�^>�.}ކX3�`�bO"����\�DQ%i!�^[�s�*�t�_��]�x5��^��*5��K��/����%1�:%���U7����A�
���ϡPrO�DK4O�N�Q=��r��4k��$g��mc�w�@�a�����<̌y��5D��ĭm��Lv./�}�	�B����p��+���r,V�{Z
���؂��ZV-� j���eI*�Zu-7��6��KA9�l�)P�����"�����}Z #�N¶�Ǒ�����'����#K���l�#P퓪��o_�s!�HN��|�)HI�Ց
�G�ݬ�#������'3H]_�j2�qT�+���4`����]�;-9�(cM�4�k��)q]9Ͱ��(ZlS���B2ˮ6U�7L�vlPE��ٵid澿�'w*L��.\:P�_i|��w�=8��r������XZ�Vg���A�/.+�\ϯP�=�d��́��/ˇ׺,]���SX�=D0� j�CTt���^uS�tW�31b���j=��s��4a�jt�����b����|8b��ӫ�m�W�B�2���5dM����X�&�T2{�I�w�7��FZ�iJ��P`痿oT�f��6~�F��\���J"���x�R�YB��b�MEt��CN����#I`���\��y��=���qX�SQsV6ֶ�$��Q3*��K�R��з�C�Ɩb �mj���d�㩧���#����������ѣ�
*R� ��|���^��nV�6D���<��C��L�'��©\+�U�r�< )�&h�qH��f-����"���N x�<���	'i��ў;�g��`�';6���*���!Hʠ�.�s�8���p?t��B��-ʖhbp�ω�Ojq�=��'
Kq|�J�ZU�3A ��A���x�L?
�A�j�~(��H&,רK�g��S�(��k`����z�(�U�0�ӸOQ�י ^�i9a��,K�zV�e�6�o�.lH`o����;�����Z�<�%�&���8��YjEb�U�4��cZ=�Z�=�o����6v6U~b����)�^�'���c,)\�� �f�2�[���� ����C��pY�^�̟��2�xT�V�R'ҵX_T�������PG���L9��� >���7�t-�����
ƒ-��sԱu|	���Ҝʚ�ax��?���G�WMIД��7��:�K %����P�
��n��k���� H+�E��7'hT��� �qC�t*�"����du����D.�jJ��'��4|�dtqh�uX��?�1EָPm�]���x�g;��+�� �F�^w�.%R�o�ƾ��2(��?<�������4��й
7�Z��&��Z���bgKy�+�Z����.���"H+A�'�H� �9_$O�ixx:�~}��xT� ��ɷw�4 �[-����m)�G�\�̙���g?�#���/34�l�LAA:��,�dʋ\�p̟,W�p�z�$(��Y �(C����VB>g%�
��@$�ȳ��Dc ��WW>����x��AE�Az,�h�lY�w8VTT(�R�x�U巛4�v�
3-t����5����������G +��nXO&�ϐ{���.ho}S��������_-��_��Z��"�)OYc�Ɖ�{��Yp;9�a�O���xW��w���:�ć�7�,�R�RHtV�B��8	�wؽ�u�4WC�P���e{ƀ2(h��&S��^|���5Υ-N��" �
03?��
$��/��L'x�h�Gbr��
�����ͧs}�TM)����	b�5��Z�]��H��2��������6�������(p1�₈6�j�i�~`�&���-�C���F�f~,y^XHu�
"�I�`�D�m�!�|���}�9 �]8��9�)�f֐�Tf��e�ӈe_{.Hx=.gH��<�Z�&�m�ΰ�_o�kT�9���۝,u]��L�y�wn�yv����Vy\9�%C!ۍ)��M�"�ٵ���1caҴ\�D�B#�DQ%o2�E����Aʾɉ����L ��ʥ-ح��G�};%sj�+��ӓ�$/�W`�]vwX�� �W�q�x��Z�:}�0��Y+PlF	��C]$���$5d�bS{�����J^,����n~���M��CB�0 G����E�ׇ��SW�������cK[�gR�|��٦��*f����'��F�ئ*��H���hk�1s&��)r٘��WTW(����z�J}ŗ�JM_) Q��Ǉ�t�Rw���v?�!�<���#����}����JD��%�R���ui���E�� �S�R��������Ɣ�|������Ub�"�6��b*+��/��(�;��d+�ם��nޔ"���h�$��r��^���̪��/Gb�<J'S�(�e���gk� ��!e,������e@�3����a�iS�vd�~$e鰄�~�dw֕r�� /�N��+ 
���W��)�4���D���e	UQ�+��.8���v��)�|�b�N��,f\��%�)`�4w$�g�������DO._��z���)0K�;��,y�s!%��%��n������Ÿ%��%�]��p;�ܜ�7�:%T��XŮ� �#o���~�v{7�m�ۈ &��2[:Ld�<K�����+�`L��q��e��*&�Sq�8�X2�6E6S ��� �̉�pV��o�]����jR�ue�k�]LǼît�}�·�D�!��Fe�BS�j�[ӛ�f���&`��R�y�6�j�a^ycjGIW�ً�LE�M��כnMkG��n�d�A5�*�/ͰѳwC�M-u��f�g6'H���H�eNT��!���Ibu��9�����z��2��=E/61�b��y�Y��:p���̥��)TV�O�{
u�wO��~\ �"3iw06I�F��68S��]��VW�"�s�����Z`��$�]���_8]�~�0¹�^F�f_1��;�'�l0�����M|�t�%���=c�xЮ8A=�e�[vb���n5k�E~j�;�CQU	B���3>�O���,5�s���(��<am��¹�c=�AM(}�I�*�uَr�y�g���(��M���尫ro�KY�m�O���|����6[�S�mߓ�2�?��:t��r��4�q�����?�aK��I���a�y�:�{H�=�6F�[El�9A��J���C"�Z,�e�    rŞ���h8���"!{/�65_HI[m��G]�S{�\i��c��_L*q��󇢴#e��&��T���JwbdIڻ�n���&�.9�䏕�9���$*����@��{h�]e�l0v1~�����pXGW{#H|��$�W���K����t�_:Af�nK��u��9�&�ZN#Ie�8}i�K�>P��m�4���EI������Ƅ�u1�e���r�gb$�9�nDr�Ǉ?NMQ�`�ק|��owaS ;��H�~`�6���F��Pv���M�M3`����C��^�]�b}t���R��^��0F��Xͦcў-��#�t��t��7��U4<n�S�g���˺m�ӻRz؀LPJN����!u��'�15-Z^/LKo81A@!S��	܇��*��u�\G���-oJ�Y��UA}�xz;������.�q}��oX:^� �L4Bu�ݴ �����u�J�WA\��llITV�srF��w���3ˁ+P�7��iLF���۝q���l��eЏ�a"O]Ln����e���7� �4wx�6�� }�3�Ž�4�.�du��	�M-��1Q�.}
_���߼��s�5.�#���YJ��{kJ�g��3k�ݍ5cEă�e�Y�O��b�(Ý����h��(]�3��ͳ��#wJ�/�X<ݖ0�I����7��p����ťА�SK5sKT��UٓT�Y���|b�JE!)����UW>^�]d�o.�3d��o�ޅ��;'U
�Do�"�{1o
�뷥K0 �%�hW@�hM��'x��U�U}����� �o�L��D��\L3�LE�i��t��0�]r��/�t�����Fmu��p����o�yb�`!�4n'?W�߮k#5�����x�~�ʿN���^E.r�YL�hX���� H�"��Z?��)X{p��a����>[��H�}E���)���~�b�Ǉ����Oه��h�K��L��-6|�,g S��p�����X�]I��
mi��Y�Q�7FHz���z�x���o�CV^�"��W�ӟ�Ӣ���:;-��P��o;
,_S?6\ٲ���>�/X���u�,����R�E��Pò�hL�,��\�ğN!8E�bԸ�ۀѕ����{��^#kr�^�����zA�pqn	��'�V�ďϛg���
4l�PH��v���ޫ�9�4��M
!���ħA�+<�b˺M��1U�`��0>�L*��ό}��\���Gz����rw��_�!u�r�8QE�l�sP��VP�2$��2	�1�7�?7�2ÐK���=�A�#����'7{c)���yh��RuANe�i�3��G=!q*W�-�T�r�Oi|(�s�H�C,B�r6X��T��J�����q}X��M������$�*ȗ���Me-Q9EqGY���KE}^�L�v4�h)�Z���(�Y�����)��GvGqz�4)7_z�@�p�ݓd�|c�0r+S���{�iD�op�NM��V@��	�!s�t�Ǹ.]<|o��?���߱�y;r�y,2�������7���!�R,	�SP�TqpṘ�i�xyS��+�� �=�f*9Au�� |P%�³̽kK�Ts�l|�P_3��	���O��]�{�@��Ф����������R_��l�#��q"I,b����75��C^�"���k5��u�q(�GL1�ʼ/� �Y`t#H�U�_S2.�����-����k�q��/j��(���X��X[:U_&�A�zS?H-�T�Կ%��
iT�\�M7�rg_sVZ�WO�$UJ�9�?� Y��v{<�y��f= �	�I���r����i�ג��e�#N%���Cǖ�ư�l%D���=��BÏ���ڽ�X���)�~����0`�XX�B��)+���펓[tn��w��Wm(���,�)K����T��y��x�����M��BN�W��[]��3���o�ŖS���x����m��I�.���������N����T��v���'ဠX v�T�	ϕ�F��\�p�����&�o_+bu�J�w���>a�1�����j;��^��n�7E�ѰQ�O��J�����C��b6��r�@B����F�M��}��^������[Eml͵��C�����1�I���mI0y�]V�8ݢ�!�E,Lt��i�1��M�XUd����,3�:	�o�b����G\�V6㪖�3O��ZO�����C�d�����WKl����TN%�J#�Z3���&(�J;W��A5����#��\ ��E�����AL��������Ci�s��}�MO�+>A瓻b����F��A� ��e�"����{.�H��y�?<���IU��M�!���M��-Ɖ뢂��� _�������/cq�i�=���?�.�0�g���	����+���&*�y�|�y�<�k*����C���ҡ�{.	��M�g��K�� z<��X�t���S���h#���������n��%Z�drq(�(u�	�b�bO9��0������'�?���Ȟ�~Bk ����%��@���#��Iü� �8�g|�>T�z:�x�:����A��9wJ��F�1T(}D�n�q�'p�}e|��l�ȇ��iHM�80�)�֤q2�Y��i�b�f����k��4�ˢq%w�	9��Fz�}Q�@�Ǹ�h��o��%���f}9��R�b)g��җ]��e��Q�*G|$�v������"3�T��Jq��H���oO��,��}�;�u?��jº
���EXX���x7���N���f�1��-�@�ԕ���s�;���(Zۍl�ko��-W��R
)�\@,Oќ��#����8ӁO[p�p�rah���"'��w��
��q��j:�'C�E��|�2-g���*�.������.̾��[�=<od�.!�-�@Tf�e"��aQ��YR�S��jZ�Ą�]��>�~<�G��cMO,��������lz�K�L�2NrGp�A�φu*ʼzT�F�1|��6�s/�x\��#�K�fVeb:��������0�j�;�@��MT�JW�t�L��yC~���m����W�{o*j�"|�7s�FW�6y��Ɍ�J,,���F��D����dLu����Wf���C��N<FeƂa��!T�V�FQh%j[�"�)H��-�%�:����+M6#pϑgD��e5@j�E-@�t�'�\i.%`�7)^�.
lC���\��7�G���]I¤h�%�Y=�\��w$��P�����6�១� І|%�%{2�O�'0ek��o�%j\����9�w��֓�,�%�t�!+����%ieZ8�0|X���$��s.�($�q�eW*U�Gu/Ei�M*Qh.�^9-�,g`��i7�x=V��Z�>`w�\�Mw9x�|i���H���o/�&���I�R�B�s�4���jG���x���n�%��'^G�O�]L;
��#�5��@!��+.7Q�z'���o�rI>Y�����򚙒s=�*�rG`
�k��|�ƕ�Kq9{.Mq��6LfH1�kv+l�����RH�$�_BaQ}��M!�������x�}�v[�P6O���b�=eܐ8A��h�u�Nv���5e]���gd-��.3�2*��\7���\�D,S��-���5lz9**Ҍ�)�Iv� ��:2ˁ}*���R�|!u�p���p�2��"Ն	,������T�h`��E�%E�E�G�*^ x۰�Z�'Z�vRܶI.��=Q���� S
��ng�}9���<x�j:-���S��9q�ڞ��s߳R�ļ�x�"�FV�C
�-�m������9,��f��(�#�R��X���eY�T����9�%��B.p�0U��K���[u�c����gGY0:�����b9�*���Uݤ�в�P���*�r=)�%L�,`��ϵh��Ҭ+�� ��*�E�H�td�"���.@���t7��ִ��/N�0Yx�{I1��m�����Oz~W�)N�a�����n̾<wi�E�E����j�^�4�,��.u�*��nI����V���
�    ���Ǉ�q<vre��Q�/8�s��D��dA����֞@����"p
|�Ei�4�n��YЋ[v6�Xh2�	�i����N"�E	{�ԗrhR�z{e�e/���N)J��M��Ƨ�^�n��v6����]�x�1��_�B�/�G��,V�N��XU*%��
C�Xڙ��/�We�J@p�(bg��.{��j?�/�ѽ��Th�Zb?����%�\���� j-+c����^~xQ�$�UdO�\�F��Z�톔BF�w���aډ�L��斶(Q�7����E��.=��z���J���-Z����%��K�e��ܫ�j���25ˇ>�i���߹�L��bç���yz�~�ZS�%zȗ=���.6�����4�� �������=���F�.��h~����j�.��.�w__���оi:��T��ԓo�JB"��*Mٴ}�Y�7P��CA{v�T9�^A0~�0$����W��������N�+�U�؅*���~ޫb>�ā����oPR:
T?��	ʎM��`�+^��l2��Io�l�t�A�&a��	)����C�$�T�\�L�O�y���ñ*]Ie}��'��1 zm����z�,�=�^^�3X���_���G��}u�M}+xw�<���f�.�l����~�/8�@��z*D�a:��j���@��U������?P�@��4�W*CAW�uW���q{�Ѫ���`��W�B�ՈC�����m9nK�PH[f#�jd���0��p����*Zt�����z9���RbUJ��Sʓ�=nw��;�B�����0�&X�Uך�O7���}.v�� ���Y�3��jѣ�
/N�����O�~77z��c���j�C_���|+�F�IFFOQ)����5ۃAU�BF����D�~^��OO�\CqS.��(�b��N��$(𸀛1�1
�c�R-x8�e5͏�+��wO�Y�=h[yil�^]�n���������VrH8�r_[p3TLd��t���6~x�U:�-i��楕��f�Z�,�
��^�S1>���ܢ���Ю:�F���2�a:"=��|겄Ձ׾^���c��k~{��Gj0+,�N��$z����z��$�����8�g�T7:�k����Y~��/GcC�3ȳ�$�j�d����\�j�ri�F3]\�z���0�*,���(\�Y"oJ��C�s@j��WV��OA��~�^M^Px�Z4��g�j$�Uʵ)�z6�dK�{4G:�-��j�T���R$*g��YX+fp�r�D��.�������0���z�m��>ųSq�0��Ӈ��	4��y�Yl�'a3s�<Q7����&���8���5���?A�SQ�q��0�k�(���CW�т�����	*���yfE�^J[3Og�V�'k������[������}��	 ���]����v[U>���Ǘ�������1 ,<���9�T�+b�S����]J�x7K��{Ԓ����'�p���į���ewVJ񪮐��`3�3������6U1z�OQ��E�R�t**���`D;*<�������`�g�g�aK����+����tyC��t��/���x>\}X����7ܼ]��.l��]I�6�z��q�O(�|ь�fO\嫏�%��T%�ߋS��%$�H�X%�4����<�]JUj�3<�D���*P�෥@��ۮ�a����[���>ލ���4��6�V�|
J�޹4<�]�����}=�����/�㱹l��ɲӅ�IWS��&���(�z�������.8��`���7]�"Ԋ-�HVRR�Ξ��v� �G�rtZ�g�D���҉:r��Sv�S�����d�� ?���4>��%Ȏ\�1Nv��>������	l�����Y4u�Q�D1XNIU�"�T�˶{8��"��8�A�D[���S���d4�"=܏;*�ؕ)��f_�ndEٙJQ=��Ⱈ�$���{R�<�ۻ��񰿗D� �{C��P�Yj�`z��Ň8���s��	R���Fo��<y޽�t�Z�R�h2D4e���S�ק¯!~=��S(T���7�G�X��7d�h�E+ p���g�D��PB��u�V�R�t��ҡj�^2
s��?z!;�ܭ��������n�4��R� NM��̽h%f�*����<�E��4��[�+¾�9:T�䖣kU�((�.�}�{9K)7ȇ?�s�'5M�`,N�YR�J�4K������A$���:S�!��4^�9W8�Yk�\-�2NUB��=k7���E�����rU�����7AE;bi%�a�Fk���c+c������O��=rkF)�8I3��U�ڟ���~��f:m-9�f�p�k+߹����������������p��7��#L|�� aѠ%vݗ&�B����V$��qO=��s?�xu5�~��\v����-�Q�J�P9�`��̣��]ZH����-�o%A������P��\wj�>�,ѶT�{-A�Gqw_��� ��#X�hKYx'����
�	@��8�2��8-`h���q:�O�:6��0��躕bx��<`�T�HTO`�*>���gB�
R��	��s`�`~._�x�vB�R#��d��}���s����cT��JO~8Q=�G����>|�d���� 媸1C{2g��/Ӈ��{ʡD�O��9��JqC�b���M�Jy�G�?��Ŵ���5���j`��_��/ �,t�I���YQD1lCrV���-@�ө�tŷ���NP��dSl�Xn�M ��7��@N =m�[�5G1���"���g#�YM�K�D9�2�J�@n����K��e�c=q9�����s�� �G��C�PD~�᧱��t��iz92�p`�Kw�a��6ߨ�pm����0�T� ����t��>��m�5o�X&%�8�l�W:�U���]����TU��ȶm	�r�6UA��p�,dY�=�����r�F���*��2�ݶ�8�L�}$����ư�~�y؅���:�T2�(��aB�Yb
I#�@43DnN�9Am�aA\MU�*��L�]Qr�m~���`��9XB�4�28u�N�|6�`w��U���8=�ƻ��R͉k�,��6�t2H�z%�������B�tX�K�4�
�f���r���cT8 ���qzW6#���b��s ��/�����*:i[�Gp�%���� K�5јϊ�z�)]e.(�����JA	���'������������̅��	V�����x	����mB�/O^W���t�2�Ҫ�8���p,���=�#�n��%ۙu���5wD����ǖ�45���yw١�Lf���s�X�8NrIr�D�����vۇ�3��K��+ Q@C���/�IԘ���={�R�C,Lڝ�<�cQ �%��l�t��sE�d~�)K�S�x�����j+X%���(�+_2�K"ݨ~X�y�I.�n3?u(4L}�@n�H�WHHpāc���U`H6�z�2���Z�p�5�)���x�A.���Ex�y���<���a��8��x����=k�ۢI��Ac�,�W�6=G�ߪ����6#e�s�!O�@E&ؒ,.a�W�@{���K��rw���q;��2>�bU��!��ч�����J_$��AQ��Un���<��� Il�$�._Jn��^N�����A�@�L$a:bM�zp4��lX����������4cj��K�(Y�R�֨Q�x��qH�^8�P� �e-{������۳D"79+��Zl�C�mq��]9��+_?����ƾV}$�_�J0�p��ɲ͗-"A�9�b#��tŕã�%̱-C�)����U��>�N��>���Y����L�瞢����#StUN��s�y֗g�U���j�C��P)\:��n�i��	��ܿE��L�:^�1�a�Cd,�>��飵���|����?�5d�-���XR�f4�	ޮNW�A˜�l�\˘c6��D=Js�g"�߸k�Df/��� ����5����qU������    �+l��p��e>�#ޕ�<�5[b�g��G��.������p��9���S���?�A������0SFm��,��FZ�UC��y�,#L���U�d�Og�$Us+:xcЧ6�K��s�l�<;d�Z��{�;g	Rz5呻k�y�L�!�����y0� V(����	'eşǷ�1'cg!H�����+ }�+�:[]$����X��ȵ�����*�,�O3�n
$b1�Hז!���̐�D�� � ��L� ���M�f�	�y�t��`��W�6�ꁎi��F���+&v��Y��QOa���];P�˺�	��[L޿�t�B��X���؉�J#p5O=����o|�1}��D>��i;�?NOOqBz���@^G�yK]U�(̰!�D��ڮ��}#pj��ԕ���9��q�R�9�F����T�3<��^��թ@Mv�Vn�%2~Ao�N81K�|�m�/��sσR��l0�� P)��@�����]�?��G�2�d�)K�N&"�U�g��=���O{_9S+�p���l(�Y��r��@g���ã�]��ov��w���DO���U� N���`��o�\*U��x}�W�6uz6G|�fCn3�J���5��@Bx�*<�����J������Zy������b�D��h���n���T�q�� ��2�*e��kW���+����Ȥ|L���ƹ���\K��-�C:��O�*���~���n�z�&?����>�
��?B��$����[~f��]B�9�۠gA��	�F�y�p���+��Sʅ�
(���P>�2�N�����فRBt��a~��F��{�-Э�^����e�����c�N(��n���b���T��puw14
A�w�BB�l�mJtW�G�h�ፃr����bp!�*R��V��=a�0��,�k{U��.�<9/.��b�	�+1��bbhsj�κ��O� ���p�F7s�D'�G+]�l�C�]]�l&����Z,�Ql]o��`�[v}@�y�}w:>�=e85�����#����r��������f_;�T��������b<���J��}��fc%Sn3U��l�_&ˈ�6�]�1�`��b�P��9��yp,��r�o�m�"��ͷ(S��IQ/f��(��9
�q�?\�P��D*1�.�a��ᖟX-��Wg�>c2a�T^:��W�(ga��"o(O��w�@�B��Y�˹���.��E(�4�*�ϡ�Q�T�Ewn�J!2����#g'��$�b�G,���iAEo���ɩ02�	N��s��5C�gі�ɕ�[n�4�Ȼq"�g%��-��V� �ܕ���<옂;J��{c�ny�HlQ��ǳ�����;d�j-b��C�*� �9� xW��H���|�ܓx��%�"+tsR�>h��}�պk<�#M�z���9�C�ȣ�[dZ�0x�P_�s�-"-�.%H�e�Jk��E5'�*mٟ?��WT,j�֋R9bQu�y��RJd����n���i�r��A�`Y���zB�'LX#���
a����((%���Q�%���A��&��J����IpSx���BIɅ��
2R�$��gC�2uP^5ڈ��d�D�	mvhV�M��B�/�w���'���1	'���*[�����Na���ȃDNlભ� ���=��{���������o���MP.�gMUv
�G��Zt��X��ݤ�Oђ��N`C��9tQ��C	���p�k���#�+�ѧO T�Q��A�l����;K��4Ev��N d̀ �Gt����+[���h�A�RH�U�C��7�Gߤ�☄�����,��wT��z�q:�@��<ܜ&��b��bUl��{��d3��Pmx�������:ll���K�*��ɪ��b� 8���#���K�����r��-k����z�ug�p�?�:�P��kLH�C�=k>���W�)��2r�UG�M�ͻx|�^D��Ti�Pu+o;.c�`Y��X��*�n���&<��0t'�[t~*.ؒ�����I��I�T�iUZJ���� I�7��"8"��Ul���Nk8���L�J+_~�6�[�	J�C�����)�͎���x���M�;�G�Z���;���*�ل�#�K���wA��q;���K؝�>No��ن��S���;��:�].���5�*� �6԰'�2 	����Ax͉��5v�䴠a�)����y�=U�����W�]��ߥ�Lb��ڕ�U܋�@��� ��
M�?A�j�T+9~x��i06e�����\f�xG�J�A��g��YcU3�I�HG�7T��@r@	(����v��\-E���������sV<g�2%���em	p����e[
3�'j�E�r�$�E��Y��`�R��^-q�(�і,M��lߖ��Z�N�z�+�w�h]C���T)�P+��ĭuS�@���=�H6Tix�hyOy�
�� فpz��N�]�r��j.�ܾ�:U�B
,ru_ ���0�o�����Y��mmH�$V\�	��R�?����(�)W�!�������|��Qݫ`��ҫ�]L�u��+�rL ��`҉L�#��<=]N�l�DB��=.��[?�
�3G�X����7Ā�����p��rM�������-�������ᯌ��f�B8�(�7���2�("�9�Yɖw9�Z��ϔ�:�R��tf�f ��&����H�m�[lrʺ*$:���I�I��8�ZRM� l����j[��d�7�������N#r����f��A��+"�9fz�>gA��mXb�P@x|g|�⯃P�1M�9�� ������%����L�>������������M'�II�=~��
���Q���%6^���e����Rs����M��aU�B�wl�F��ؚ���$@`��{��`�;~��#,��te�e�蘃B����=�B��X��Ut1�L����oȃΎP<ad-F�)
5��% ��|�x/�݄�"dy=��2zh:v=��9�{������0��n�kqᆐ�M�՛o����xq7}<�`�¸�}���=�F��g�e�������¢(H܋��q�~�%�����cC��i�����&e4q�|�@�22� z�>'b��|�0�!��M��A��n��1��?�W��Pz%���^ Hx����&��(��9�Y���)��6m`�����cTO�q�����E��l�]�D^ZE.=jD�����{��� ]��A�H~�c���������q�{��1��t>^>Hh��f�VLc�?�b?����o�s�bc�)7��?N���� �@�o���v_�l����U�B��D�##�@����]�与4�u�_��f2�Z��yG,)�"[MR��F6s���@UBY��JH���R-ڦW�l��	�g<@eYW�I��/�����)�"���+�
��vG-(P� �	P�l��!�S*��(��B#P��Yã�m �:X@�@�b��q̚.Ƀ۞m��"������i�,��E��i�1K7��Ώ%�����wvCrG��=j�������m�)��ݭ)�����R ��&�a����^5^�o�3(��TK�5�+�J�V$� ^��D�w�baw���z�&��x_(S���
�*OҘ�'����xi����eu�Ih��0�p�����%��@vB�y6u�}�)2����vz�Q%PqGB�C�x��������5����ن�䇿��"��D����;��,0�7�Ԧ�/#�%f�۸����L2T�T�%ǅ�d�0�"�#F��OwyT4٠�cR�
O0���,��u��E��_q2d� Y�d�_��,<d�����l��H�6��L�H�	E%(y��k!��d";���d�H����ˑ${���ek@�Q��`4k�$x4�85�R��r�!�bo�`�v�\��N搊�m�@�mT��2FoJ�a�8ƛ9��ZdjWg0pXӏ����JU�PK��k    m��Æs�_�9d�&E��`J?�2�-��kW����i!�k��	���l���"qh5�h�U�%��Ƒ԰m)��
�R��nw��E�'�P����4�1�:���Bk�x>z�|{��� �J�2#������U$:�/����%}��Ka��<Ƥ0�z����8���c!)p����1�ƛ������s�ᠨ����|0Q�j�H���~����@�DU-�1l��ѻ�"�M]'_����=��]I���@�IS
k i&A>aA�&��\I̕��R�)�'��0s62���i9Jo��S� ��~P���>�u����^.{v(�xc��20d��l��[yM�����h{;5��^�h,�/2����)�7����vwJ����77���ӓ�Q�c|���o��Mv��i�7�7~��=-�&�.�}�m&�N����K�wGO�����I3M�R�w]Ƞ�� h�"W�3�7���.���Qu��zg�}�9�����W]Gh:m���o� ��#�H�Z�Ld�,W��Q����lU����f���wL�{�x"���lh6;%"g ߵP��@C���%�l�,�U?��EiH'���w�ф���6�Y^�<�UxǢ ��ni��BO҄(-�+L&g0S�� 	��@v�b>��7 _����=B�� T�wN��6����c��ϧ�쀰�k�j��?�L�8N�H~��,~�rX�T{	a�:���)�c$\�`_�9I��#��w��8�f���$?[ޕWf�e�Yi
d������_���뛖�����������!ON&#LѰQ
�Q#)GV����S�vߒĹ?w�K�%W�d�i	*����j��A���\�d�;š8����o�zm��f2s$1B��c>d��8~x�_G�D�}�(�$����g�23XeC��*n�V��h*�p�7k��f�l�tĞ�咴�{��(�v�	w�(�pS�����M��`�r�Ĝ,��ځ��bZZ
�>�����n�Gi����|Aɞ������A�&���ɖ��
+�B"�F-�J
8E" ��G�MR�Zj7&�/@i��%�'���@ |��x~ۥou�����$������t$�U+U ��+R.��4Hߞ:>�Nf�2�e|��첓�J�� ���;.6W�˦y��$�����O�x���M��Q�pv��&���������?�$��t`�ߵo}�a4�PL�h(č�;T�UPLmz�p�4I2ҋ�rI��k��*Oq�R���(�@y�t=�0����(�����WD1����{�@^Z�B2 HF0�����-�'և8��PѮ�I�T�Z�:H\�ɐ��s��i�8b�B���He���0v+��`�+�(WK��w��1���L��d�τ@s&������P��⌮������B��kH��H�|�gW�	��|�m�}�i�C�U��AV3��=�p����aR�s^8�7m��&���
���p�}�z�\��S�<�)1��F��d������)����;�Hw�W�>{�����H��O������¯��Q��lw�ϻC�-��5�w��g�����v(C�����s>p�3X�j@h��5/��BkA��Pv��C5��wn���C{��Eoi�T��$�w4��sA��]�܏yS	�`��a$.���$:k��s�9��1t��fb�)+����̯�[ 	Vr0�J}w>�7��}NT��v�ßs�(���S��<����~ws~
[�`���h8n��Bo演�c3�ND�]��>=�ݯ�D{��o�Vt훌ITߣ�e��ݠ����+��Q��%�v*�.��
C�ޛ ā���h��$�L�U�1kz�;�'T[L���S{]U�l;|!��d���(���!X⋬o��Cw8Ȋ��K���;�DUil�66T�)0�����8�d��) &��=��X�7��j�4�M��[�(��ϏY̨�}*�m�Y��c{Ć��I���/�TD�s .�����@"$<_IUw�E�_���w��!�_B��)pWJpT��V�,���NO�Lu�^�
A��F���
^L���}4�=��B�i�j��M����u����=a�=����_M�̰�ޏ��;�}{;W�H�����ky�aK`���� �h�`
������:E>�D}�ې������J�&m��;A����J����<`��ڃ�2~Y�5VU*����l���1hƻ�p�~�E/%�+&�K]D11B~%x�� 0��L������%\J�����$�������b�[�������Vy�i��x��@������㈹���n�6�$_��ђ�c�@~�!8hR׿�1�i�,�Bmj��u�ϰ������ӱ��_���vвمM,v}��&�^�4��������C�+]�Yi��#��@�^K��K.3�zt�� ��RT�n�J�0T�Uv��KКᱪC�rq��M�^*Υ=���$��u0���A�����8S �;)���q=��@��'u��I3�@ً	`��+���S������Kct��ﺛ��u�{*C�j��o�V��]����ύ��`  &J!���@��]S*t��7kNQS���g�$�Ƅóx]7���TIY�D������c1*ޑ�]H��r��E#3�3_�Ĵ�w�"՝�ڪ�̯�$��b�WJ��i@��\Y�b�׏�圵x7�6���"������*��0�ˣ<�y������ `)��jP3��T��`�c�׏WL�Ra%x��C�f!��T��j�/��C�0B'��G8L�z�B�)z�(��G�CS(/��n�_��c�3s,!�H����a�}�hJOs��]%�@����a�׫6��� ��1���)��4����z����.�
���gb�2,#F�s�2h?�M�����1NH���(gWr�bxB�� ]��`l�	ĳ�x�7-�sk�� ����\�^A�3�E��eԘ"�0M�6d7�{}h�aba�֬9�F�ysY4+����� кX2��=�^$5�e�Ty���3i{�)���t�N��A�g=	�F�1�8��AH:+�I\�#��WI�fj�6{u�SF%GGԇ`fV�&���d5u�o�� $CL%di4">")��%}�w����'d�9L6{�����8����t��\�ѯ@2����R�6�98)������"�uu ��d�����j����`���3s���(�j~q31.@l���˺��*N$�V"��ռ߬�6159�.Q��Wk?����Q�4*K��ҫ���q�۽��T�L�*�X���0�,�˅x,���
1ӌ �?|h�������N����7���s�6���B� u:�>�H����F`�MN~2.ٟ�ʈ����{էa}������P�B/B�z�~;�J�#���\�7콏!q�)��b�	S�8��2�����K�Z���;����4l����F�����ڷlRXo�0�-E����f�(� R���?v�F`B[
�g������kU%�H|�G���8:,��������`?���Q��l<���l9��G0P�Ɣ�?b�Ŕ���Y��Y�``�77N��� �n ����bu��9s>`)�����;Lt�L��<�9� �����3�a����g �7J���X7��W
s�i��}��q A!�p��qP�N!j�>�Hu섘{�^�+�������{�N��|'
�q�_��M���X���@7�n��ȯw0!e��ax�����*�ͼ?���$��pO᦯��)ۧ$/��v����#<ʡQr���!Ȩ4�bu�X#ɠƃ�s�� �:,k���(���ݑ�~��O)��&��9��y���R�ü�Y#g��>�ͩ�i���, ��m5b��, �����5!K��TuP4uak���V���6�38���@ѥ�!�_7�~{߅��뙫�tD���pB�ա���rS�v5��I�    ��^�+8�q�Ʊ�fF�LO:%�7p�՗��'�f���9�W�2�Tȭ�"�a�}�5aHc��2������Q/<���W��jT$����w�+iϗ�bRd��u�:~��G~��
i;��� A'�`&Y.tP�$ E�iҷLęe�F
�f�ZU�X�36A
����61�����)T
��&��d.��=���iu�yY��4	� �(�㪋�U��Kp��5M�ď;L ��zyf�r�2v�v��@�������g���.C�L�(F9,$����ZI!7َfc���O~~���Ϊ	�40��B���M�V�WaB�FOa�;v�e!�̂���ﳴ��B����H3ou��n���� �3 X"F�)�k0C&L4mf�1�t�x����_�=��Y_����{�l�JI���$�*����l�S_��z��t.-��ξ:�a������'��^`��a�b���A�g�u%�\V.�����w��Q�NCB�V��p�D����P�64z�>��-s��=��N���}E�K.sY�/rH ����>v��Ɲp��9QM�-%5�V7�d��_}���p�bsCc8�s�(�SŌB� ��A�8��Y�����Yܣ7_O_#��O��3��X�2J[,P��4��0��F]p��.�� 
rg�͵Zl�����k�v�70�b�ǖ��>�f�����
f;P�[7�I�b��=ͻfo4h��1Y����O#~mphI̲r5d���4����.|�#��d��B&P����h��n5u��#�E�UC�b��)�l�Ќnd.Di����X�H��#=���x�/~5vNס酫�Uc��	 �7��_�4����7�9��(�"�omr�Ϡ�%^��E�����G]��=�>Kb�Ȟ��ot�w��D˜���u�R�(w8��;�=/�ʹ������#��c�
� �I�ۧ)pCC� "�|CL-n`$h��*��k?Z���Ro�%�(uȰa�;�+7"����hd�[k]���ߨ ��(�Mz��(<RWs�I8�*V��?}����ށ�D�/�4�ُI}�QM��� ^Ee��*t��y��pRm�(K�,q�����^X%�:��μ+ ��hv����
j��r�k<x�$0�
T��3�O�>D1O1W@�R������G�b?Ⱥ��p�n9Z��|�`��H%>]U�d&A��+�S������.�I��S1����8��Ť�l]!��>:Weu��\�Lް�vM{h ��?�q�2�@�b~,_�+�#\}uF�:e]�� NN�^C�g�(�H�+����+�.5������0ՍGW� �l�!�.=?�= ����m��;-����1$bN/������s����I,���X=��5��x�A�1��5� �mW��2j�0%��z>]8�m��/��eԯ/�poZ�pu� �_3��/f�%�WV4k)2�E�������.3��q���s	����ڋ?~�����c�ݵ�k~�����y���"�_�>`��sM�����_�ǿW��!9���TZ\��BѾ�>ل촂����yJ�,"��#D�S�K&k+l��V�����Ў�m>NJM��y�lh��E��?�=�^H� �2{kh1��?�y�!5d[�MDˡ_H[x�h׎�b/��&�u��f6'�A߮ʛ�א�W�iӠ`�����N����
�cxi� b���CF�M�dD��u�hĕ�1�$hJ�!�$�4��я� d��}�I.@�J��V�≱&�W+d�4 ~�G?%ԯ�"c;��~����K� 9~rF*�p!BƙOA������߮eJޫA߭I�6+uA��A�m�?u`��Rϕ�Ƹ�	�
|�z^�i����Yw�d�q��ؕ�ry��ޓ���a ��5�#����F�S�᳉�`4�w	���/���<0�����i=R�4��#�L��+��zC��c���@�ؼ;��"""M��_-��3D$��������x������l��Ϧ��V�Պ�>يx�՟��ۃg˓Z����p8�8��J�~��b�	��h�q��o6���Ic��5 \��$7tW�fTH[��5�Q�a�б�[�(YP�8��B��E�A�Ȟq�sy�uc���@��ˑ�0E��!��b�����nV'���s ���-����x������/5��P�fJC�E_m�=��}�!���ƨ�FT����^Q!sa3�Yoh�=+<
3)k+��3���N7���.�*�4��D�̸W�ɩ�*SSx�eBwRc�qf|�=.��� �ˀe���2�S}|f�|R���\��֖BB~�D�S��j%���\˲���
�D�7�Q���x��I�1lGo�L[����T@��ںi��ʂ�/L���/��B�ڑ��u�U�/_�`�Di��_}!�*�:h�&jr�SN��^��kN�uɓ��V���wߢ����8�/c��[q-�r2f'�I��XRܤ�
\^L�J���#\��a�I℞�/�ϒ^!aZ������QnG���]�2fÙ�m0��g��,����U�c*ͱ�$)�BJ��š�I���k��s��11+A���iNϪC�v�,�m?C��˖Pp�2��S���SZWq�BY?�ե���n0�s\�,OlI�����'
j�ϔo�M#��D���L,4���2�x�,^��0�+�J���i�~B=����EQ� h��|)�UcRW����qZ�bB���������ar��M'O4�	��03H�OV���r�A�Nu?���>���w��[��la(���٥�h�jh*1��"�:΋-��p�����"xc�|���q�eyKކ8<���	q�`3u��oр�Б�E�}s�L�S�y3��1'��B�������Ԩr�4��мvR��#����>����/$�NO�ԩ�X����g�~U�����n*D�S���ڡ^E9��+T6��T��:phBp��v���Ya�ڽ�6�A��ph�[惨t�͹%>��8�]d+��FH~�<�dXuEcÒ��8�ޖ��Ƃ}`T[�G�ܵ�#�!������~&�(W�ܙ>"L�<�4���_����n��eB\��]�ކtL{՞�2k��<eB��Q�p
�uį���G�A `�X ��ɽA/�/���&%����'>Ja�5g����H�2�c��[�(�8�-#��V���g����1�zr����J�f{�X��ŷ��خAiǈ���6R��bŔ��h��l��C곮.���p�_f|фLg=B0�Ƚ��S�)f�'���{5HL�(TUC�3y��%4S�ifD�����`���}g/�tI#<$,
�t}o��y�6#��F�ߔQ#i+��P���y}��� ���} <��|�K'D�3���x, ��c{��g}=�b�כ������pɅEK__WY�& ����C�.y{�	��М��	)T��Ɖ�X�kk�ۨ�BE����� ��?��"_hRd�J-�-��:�yQ��qK2�o������z���#��ǰ��*곢,��S�+Ӄ	���y�~�;>t��(@1f��h6�|m�������lP7�pӴ��
�����Du��'���hI#46�"��~���_�ظ
�%8b�_�s�*�!G�t�\����b7'� }�yC>��ܢWhx�� �,�q,VKH��'�W���$������F�GM�5�%9!5m��|��� CˑC;շ���c�xn�����kG-E�8(Y�D�� �F�w����aaM���G��Rr�EWF������V�����&������*���/\����f)�>Ԅ�e%�B_l�J.�o�]�H�S�!��Wc�t���0Vc�Yg\P=,�b��X�m���|x�,	4Si"���0�0 �;��C�/����AW*�"�B�C�D�L��N���G�҄�����~����    ᡻k�j�~��a���������G�Y�5�(��/�{D�}kY�O��Fץ��7�,��ߝ��S��3�0hD�mx�[�&-.�}��3����B�����M�@\����y�N�>�>K�8��&�D�zA@0�q������YC��zE�!���������D�0��+����w�G� ����8����M�c��Y��
�NV��B�<���W�%�I�����K�-���
,�X��U���姅$�S6M Z%/
��c?N�up�((j��n�䈊,b���-8�*BD������C�k���x�=`ҚZBP|�̸s]�(�I�d� ���`��xqq�̓�[̮�����jΨ~�<�Z�0�~/����.����z6�RQ�P� ��@ b~�}n���I�d������V�t�G���ظ�d�����_��s�A�1�V��f�f�r�u;�d��Q8voS�#Iu ��X��2�]<����~����w�O��-�kB�!�X�r���fYßaNMTc�Y�C%m)W���w��	pW@n��'X!5v��:6H'3hz`rV�7\����w`��Q�J?J�QQɂ��fE�=~`ռs �ڷWQX'�Q߯�}˲���w$=�@�^�|��%^T�d��5�D�5����T%v�P�9N�XH��bc�D�a2"}��ۏ�8�k�;���(d�����u���b�pr,TCc��^�c���y�ZaC�fC�ey\���&:/a���ɷw�>���v��p�n�w�̲����5����M��=����E�G�P�V���l�B�nOH�
����u�=w�_�c�5ܒ�'���i�(��mn�c{|0�
I�j$v��7�k$r�}��������pZJc�	����دpl
_UJg01�F��n�}طX����)VL���w��S��v����B[�(��G��7��4����`����b~�Uԛ���FI����A��ma���d?
S�j��>�b]g� ����n0�O�q�m1�ݤ�/Ό|��)��-���F�2�X9?C�b��2v�$>�
��R�p��]��H�~يTO� ��~ظ8�'�4V`  �Ua@Od�㇮�W;+�x;�s߮�uw�S�n�eA�p�W$�̪|tF�n`����sj�'Y�V��&X�m��0?P3Wm=q �\��[p�$M�|Cn�ImV5����.��2�f����*i1���8�=�� �w����z����)L6�����/E'�.��灑&�"x�T�S�����&�	�(	J���8�TŹ�v&$���v�)F9!]K�A���.��ƻ����l�J%*����4U�ڗ�Ua�DA�6М.�=���nV߫Pa���ʺH�q��k�F�>�I�}(�r��i��o��&4VB,Ֆ(L+��|���.$����oV_0y3J�}v�Q�f�)Ҳ��,��ǹ�W���K�����Fa̼L�8���V��{�����?����Ã�{iI��8�N����3�&<T$�ԃ�ɛn�J �c:eŅ�T�6�o�¢���h�s�"ʯZ �=��I�|�����z�oGQ�� XH��[mJ0.�O������������(���T�j;11Lr�@Q�9I&E�I��Ep��9&�T�u���� %�Y'.M���3b��vwhK~�iH��Kur��\"�3�%�[���	�W��e'(�*�����q�hx���h��$�7�]�a���݇�c�ة�G4�Jݯ`��g���;]����k��T6��$*jEtin�Ca����x���y~��ɝz7�����Q����z
0&�-Xb�4��\J�Ǭq������?�B�(ꭩ��ٝ#��&�F��$S�OE����!�1�!.�{L��C�����c�������A��1ς�H�8����N�ů	R����L�I(���˪&�]�RQ�q��C��p�o��^ڨ�/�������w�G�q���T@�ʆ2��~
�J�]Rc����W��4`��]�� �D��|�|�@�:+:֐7�t��]���H�@���$��^/V�\
���������vO ȥ�ȅ��`�7VC���q�zi�48��qv=�#8ap�� l��Q����rF6?�~WT���#[�rj���|.0�'�ɹ����.��m(��Q�\K�g�phu��=/��C#��S�&"�r�Sn�iT���<�]ܒ�Euo�U���.����і
�naF̮�ُ��4�z�	-F(*��D����H��e�N��nw��v�K�$�ߟK���Xk*ݰ�=�K�
��<������y�K݋�X�����-m2?���4�7(6C	�o�z`��k��}0X=�U�љdD�U��˃
�F<y[G�ȋ�Ả:�?��< �@Ғ�T�k*gk�FDѷ��d�Y��&�H��$=�@
9nw�#\��!���UQ�\
xr����J���+�x�?dpwG��}4Eh���B� ���o���ᅆ102DS1��s(~?Y�'?��Ps01Ҿ!]P�%��8�	�� �2�xR�� ��Kj�F���'��
l����K?��`��|���A�w�n´��Ո���QG��fH�����3�X���5Q����Z�+�(�E�%@����ișhc��Y۱�~��+Ax��8�"%q)QQ ��?���Ջ0ځWO�?ҴS�J`:hL8��+!U9ȒW�����b.�=���3��X`A`�=?�&����h4�>����xP���m����4I�t�^���p���0PVH���شs&�3�i�vUv�(�q+�U"���4"y ��g1U�yce6��a݇��H�·.Y
gh_i1��/�fXe����ц%�nȉQlQC�G.�Q$���M��t�^u�M�w��7�T������|,Q�a)v��7�~؁x����eW=֬J����a��@���|�#��9-*&CzE�`[@��Vm��(��J�9�QpO����}dJ�o6��ڔ�X�q��Y��c�2P?�K���	6d��7иٺ2��� �y�yt��6�vܛ�Rm��Y���  ��;z�@��*Pé+�1�5?v�	��З�$@>	��ù�|�6�$�\�BcU��"H�<�0��nYc�����>|=�"��$�d|Z����)$Y�4���5�t=�l�<)�Fl��ԉ���Y��D�f�Y@zt&1ۂ���'b Bn�0r��Nل+`z�B��6si[`{d�M��l��h��NH�J3\:���a�D�$b )@��ǡ=9�&%��q�#���;ed��.��Mw|ʵW�|�]B��+Vܲ��)$�A%����R�jGM>�U(�j�7�;#0�����2���x����b煡M��0LmD<6�:>`�+�J�ȷ��7|�f6�j�{H��0dEۈ\b�����D��( �����Mq#	��m�ߋ�b5=s��:ٸ���<���S|&�rcN�	*��2�d -M�,dG ��b� �Z��}^��I�2�����V�n�>T�Ca&�gl:��5e}yP�l��~���=����:=�!}��̀��\	:6���|c��B-P���y>�$Y�H�q��Q�"H�П���1t�A�-��
�!��^G���D��Ǚ�h��KqVLL/UE7�%"B$^ ��Sx�R��#F��-d|���tcFy�tO}���H;k͗'ZBC0�y�Z��)��-҉x)���&�zz� �JBW���Jl���Yק�_�OrY܉)��xM!605a��]i��i�
�='G`d�����_����f6��S����J()u�\eNgX�v���F'V?p�(u�lTT�hk|6�/�ćә	�p3�6����}�Ϩ��u,%U������1��딍�U��� ��j�v��F��v���4>�4h��]��`�\���%$    ݅������F���	�&�j��I�8T�����3�Z�I�#�'��U]v-�X�LD'�	�r��(g��������4�����{l���-�P�`��7���hZJb`����QL3��ͱK;��*�i�kbn�+�1?8����]�4JU�@��x��ҍ�*����9~��{(=°�8�8X�2U�L,;P^)�zi�v���C;�� �%H��w�w�
^A��b�M�)dbɤ�]�b���l�:Qߡ�c��fG�+�a�j��I��F�FX�Rq���Q�������8س(#�I.L���Y��A���#����Pe�P#�EA������Uh�"~� 7@�5b�I��k�ݤ�%�<�e�����3(�U>C���\u�U�ݶ�_��|)-��͏��5�3)�%�%�p��hۿS���ƥ����wj�	��K�PU�&�o��L/L�R�)���N^�:��]9>�� сGn�)�Q��p1��`���I���M�����B�s�ͬ�)5�
�ʟ��w����x~��1����l�y3��f��4�kMd�v7��]7a�6�s�+*J�|�i7�QUd��]	�۳H���H,�c+ +Fd����yړ�Џ,��`�{~��8e�&u�Ԁ��G_ɛ�(�x:V*۝+�D�6a2(���|������G�Ee�8��>W�t�3�d=�&ǌn�a��q	j^���VT��}5���D~�:>�lo��b����9���~��oI��N{3��*�Vx�Ĭ�X|��I��#	-C��۩�e*�%���yV�%�]a��{z�:����=1T��FN�74�"v\�[��p����5�'W9}:�>̆��c>�1_��T��z�&�QP<� �S�??M�s[O�v�nv��5���h@����ؿ����6D�.ȭN4��0y�]F�i T\ʜxm��Dꊊ�C�+�6h�������J���!>?���vQb�w>��Kؘ�[zJEG�����7��d�U��=x���d!#��"��m�Kn�@hr��n�#��?-E|[$rn���jS�	s���H�]�Ĝ�:����K�%JR�(%�򜓼T�>[&%qς}q��6:Ǝ�9�K������u�s���ae/� �M����w����C�tN���S�B������mO�n�����?���;��V>�׊*��(������"~�|	���Z묻w� �����:���H��I	��<���B.���"	��{�7ֻ���u�a6���8I�3��g咻B�@0e�^X.b�������4�����Jͭ����a=x��aP[����qx���]��mw�é�� ���_XE��f�2� ��jP�L��̣�>����5��d�3X�������h�@���]��jј�� �> �B�!$�ר������7ۆ�s��ەH�UğY�R��0uFցQ�p҃%9s����Z�_�}���XM���݌�uX~p�\�����k�Ʌ�����S�~5����F����9��[�@�]8�`]ϮQ�5*����ԑ&�U��I�+��8@��^�O>���˷O��e���S¾�߆�x0i�Od�S!ӷ >A�'<�t�g�]NN���7�Ƃ&�a��㏨�G��ʏ �&��>������?B�84�'�9jų�y�����Z?��` ��H>������V��������Ii�%���ڛ�:N��3�o���V�����䠾��G�[�9L_*$n�	�$b�*d������IEN���D�/Yh=� x�ׇc���h��i'?���uh�!����É�̦�����c���Q�)}�
�JBcbM�0���(G��GJ���,8�3��$bQ������{�ׁ5���G�* 'a2�x���`-B�J�~ehu�z�ӏFk��
i�bU��C�����f,� R���6���8;��_%{�-�D�O��5��{�l��j�+�F�nלp`�؂x� 	4�Q) �����������l�ʔݷ� ��@^@K�t�&yS��������{�~w�>�o���;�X�@�
m�f�	a�$�D�0X���>m3������\���# ꘙ ��_����X�� �Mn��h��h�f��g,��(7�o|��"�:�qY'*RǏ@=8s>�\|�_�VM��9Sbe�T�7��S{t�B6٥�%d�XGY��W#8��	�J�#�8
�c��hu����GSi��ȃ�c�k��7�1� q�&�^w�7Ϡ� A)D	�$`��" 7�;����|���_��i���?��������(�E���ʜm',A��*�v���c3"*�^xZ���b��l��z��8uR�#��'X5��=ưgZ������O�=*�Z��?��ĭ��_��W��	��I��=`04�5ID �g|��=t��~������������y_o�v܃kwZ�ڛ���fw<C��W�0}}�5��F7i�����f,��,*Y��#���Z����W�]��,$f�S�Z*�V�mpR���4_�������#�p����~���	���!��W���͘��ܥ��oy}���b���??�ǧ���n��t?������:}���
�97�1��6��-�K��O�lﾸʇC?�(��zޑ&3��7���^(]��-��~c�F�0�]8�|Y~3�:���}]�;!�\��i����D|s������a�p�)�k+*�����H�&�S���*cޕ��Dl��V��|jLE{��r�^0FS��	�S
�T�$����#�	���t����4®����g����W�~��N.�F����oj u˷%l Xɍ���Z�W�}DU�l�4f�ޞ�9��.hR#�1��=�~;���η�H]c�/@�5U��Y��m���~�����,7�5y��{g��Ԧ4A/A�j&�ȍ�� ��Ow��Ԧ��ߵ��t��Y��7|��h�3����X�d&'�,| R�/��
h�&�47L,b�Y@�hIٌ�'����ǀ��r{�� �Vд�2q!\\آ�c':l�d�`�V�j*��c�}j��2�J��`)�!���2�7Y�I��kl����e���J���+��9��5:�8;h0�| J+r -z��8��IV���w�t¼X�
[7X�'�H��$?�@��]���o0�ח��,^��?"pp����a��n3�aս�I�UT����`� =�� t�s� ���,��xpj*��=��R���;Y528��vU�#�q�6)�h{/(گ1m�M6�~b��`�۫c��T8+c�m�ed,&�Ѻ���=��?$����1)� ��W؀ð�tٞ�r��g�z�%��P����N|����_��s>#\*��KL��l�&�e��g�i���l�T���q�=����	:��z9P��0[��:^3���R�p�{k.`c��Tz#3�D�<��\��p�-��P)V�z����c�!�*�B�&�	`:�B���_b:�*4"���'!�n���$�A��hf? Q<=��_����Cj3m��SIs�l�L��>)e5����+�c��:=��*M ��:�v"iW<�l���^ڈ蓮�ͼ�8 J����q�ED;�¬��B�YM]s�����nW��J�����KU���5����e���ƪ���}J P��əH�+�oC��k� �r�&YY�4�}B^�C�OпL����m���|�p�v{�ka���z���ә;R"�����-Ϋ�q��Kn�w��<���Ĕ�[A�^*|�������=t{�^P����>x���_�>� ǭ�w�[�ĸ�$���v�;�'�������m�w�q�E1s(����,�cꛂp翎c��\xxE���t��P�������i�����;A5�i�bq���`{���u�Uq�p}�g|d�    ��v�ߩ��ayP6}5�T"AfG3��A!�pHj~!id�9 |*�^��D!��g��4,	�灢�1�T������	:�S�_b�:�N|{e�~1�7R.(�����"�luer��x�����-����qNM�0��p��G�R"��N!�u�٠:Hv�0�,2���ѣ֤9��U�����Nd�6�c�%���)�ʌ��� ^�
�0P��}-��M&t5	{�g��-Q�u��צ�̴�D�J���;���_�� ��#�h?�7s�T�$��T�$2^��¨��Y��~/@�v�"�HZ�l��r��|��`�˹j��M��������f��pb0���|�-��<��L����I��x�mB�qߝ�m{�ow����m����+���{�~�MN{�B�km��F���J�EI��ﯴ)��������}�֗��z����>���)��`���J�m&��m�+|;�0
F2��~������v���51~����;��@
��6��C}��+x�����WZE���~��JRW��$��|��p%1ƹ���?R�Z�S08?�נ�ǔ��ᮿ�Z�k���C~���������@�ÿ����ӏ}>��Cw�pv��e4y�GӰ�PJ;�c��e(��m��˴^�R�r'�#R=��S7 �h�JF���g�&�9���Dw��dЇ�o����9��5�<���a�;+����&(�)�T�U�!��mw�>L5��Y����%�&qbK�162!�5�Wb�~p�:
Q'��5�2���R�g8���m?���6.�Y@rn�Y:C:v�i�9�1)0;����`��b��3J����p���x3ܶ7��4�`8y�f�t� 3H6� {h����'Fq
�1���܏�w��%"x��M��UY�v���:��hR�7�A|���I���܏�dzH���xD��	���>{Q�%~�xPK<2��qM!��S��%1��Sdxj���J-AM%���tTN^glz����Vt&8�j�c��?��`�s7��Y��t���x��׻�~��y�%�aR��
C��ʄ\��	|�tl�1��;�H
Ue�"v���Ź������<-����+g� ���%�A�l;����-��!�1����1����r�RWZ��K�k�	�w�{w����:�s���y�vy�
q#�J���;��Y+���ᕐ
h�	�쭿D���0�><3�j�!醱�O��eP8�kP�ߦ�[���4ch�i^<�J�ě�9�ݦ#¡��?�P$h�]��s�h2���tJ ��K���?�OC��H��-�6I"C@�+����hL�(g�������=¹"e����ޏ�-�ɦ<]���~�b�ţ�]�BK�|�ϧj������}��_w����H\���� iHw0 �-��L�@�16���B��T彖.�(Oh�5�k-�u��܌�[��&r�/�$�Z2]���.4���&2y�n��_�$2�;�`0C����@!C~����S��:u�_n�Q�ؕ�=��d��K�0a(�v�R&�]��W���׷����ڶd�HB��<u`�Zՙ:��F4цgx�~��#��$��E�˒4��*�\DC�|�H�r��pŅd�L��	�����E�/]ظ���o��"���W��Ȕ/�کtUb�l)�3�n�24��7 �H���x_��UV$ h��R�r���M�(���RF��V��*�&�|Nu��gh���\;ˬ����i�} �+䐂�U�KW;Ke@,��
7N�m�a���˕�vcV:��)	�<�\"�.��śb����)��Q:�I���T�N蝬��q�ȕQ:���K��$����k>:FD�ɉ�b��_����h!� �䳫������{�hJc���˯������ QF����X qm�A�l4��6�aP�ב�\9�;�.`|���p<��q��2u yZ���C���;�"�$$�uw���
��� D�E.�ч~��z�@���|ɳјҐ���?���d_?/݀6�"��8�ݖ���x[����1Ƞ�J���:����3���@��g�L$�F��q�������@0��	������C��0��9��c\(̣�_R�����R|%��݆.�Ԋʥ/��%YGC�f�ka�n]�B4��9yd!��#*.ϿȤ�P�Z q�d�d��]A��đ��7y<WQ"[���KG����W�d���j{����ԉ{����-�w�b����cw�k�_�*��.d)���_��KuQ��������8�-�!�w��.]���L���������d�xZ&p�����t�X޼n�����d@�,.b�d��|xj��_��H�Ç��ʜ���ؔ�FP��w����?�O��|�(o��v?�D��ͱ�٠k���K����zJ_#��~�B����t�w��:��8w)G�f�?��GIm�����1�xl��2(/�-Mr�8nNQ�[B�n`Ǳ �  Wͅl�ʖ�D	o������'0[&�#�Z�.����|MW���H=��:�����[�x!2E��	�H�睾N��a�C]}8<�r�P����@H�Q��˴uF؅�٘��a���]�0b��m�l��-� ��ه:�R|.�T�+B9l�lPFb�Ȅ���Z]( UUb�+Fk��Y9�r�rخ��@�Y}3����	�-��}�p�{����89(�5��?=��#:Q�ؓj
�C�DX�MF� WA��~}J�jtњK�^d�2��T]B5����ڛ��:�����6�T��ɓav�Xl�/dc�g]�������s�ϛ��<꫼������@�w���ۯ��='��t �%Sv�~�W�C�����ڢ\�@��?��Z$,��)Ǻ�u��9��pǖ�`�A�u\�^p�c)u��ႝ�.LeV���A���Z�O� �i�_�Чm��%��m�t�U�s@?������L�A�������/���ۇA����8��#��B XW� 9�?��7���J>��N��c�ԣG�hb���E8�)VPO��ZC�l�V�\��,k�=B��q`���	R����bX����Q�2Z�EE(��o,ט�	+�*TNM 6�y�@���}l�?��ǮO2B�d�fp���g�L!���I�(�o<_��.�2�O�n۝���S�o��;E��o��7��h��a��o Ln��Rb\U$qh�I��n��Y���]����Z]�Qa ޚv���ǻ��p/w�6[F� _��z�;�I�(�ҫ������pk�L�x��/�/�� � �rY̓��:�m�0�-��l?�����RL ���˫C;�AݮA�KI�NK��=��}��!�	�N�{?�r���̅�9?Z�-��햁�Ӄq�\����Ӿ�$o�ؽ�WG~Ԃ[e\U����-[|�!/,����݈L�w�JہL�j{�Y�I'��_a��e{�����P�6i&p�bm��pLS�JL q��	=:�iA��ƠU�.�7zu�7\e�GOIB�N���݇�`�݈K�Da��m��
ħBi�t*fS_ʦo��D�a���u���©�]��C)�Z��=����a��|U�����b� ��T�+ � ��uv�ؘ���Fpr�Tq���Z5��G�p�!\��=<�����4/PsY(+���	���_�f�B!�o\&k-������vyaI�*8m.�g#�D�Eھ��wj"���V��dE�0��Tp\�9�(^͢�/��0L��/٤�i0`A+���\�X�2�cw���-�]�H~��E7�ti�67Ӛ�}��=��b��|-�v�+E|��d{���T蜠�����v=�|~u�R���A3�\]h�4z�p~��@$���O�,е��O��"Yd]���t��0?���K��ŷ�X])�@���O�����fy��Ɍ찮�JP��a۾ ��������    y*�w�s�0�̀�G wC��4��BR�#�un;�w_��a�}� �@�&�..�C�2�HK�#�cwz*�~��
]Aê.�eA��!����}��xv��`Z�C�w{�N	2ڻKe���V�=q�/�����6�S���3@â�0�����|�YN3+K�A�k��8*T��*�|k%=ՠ�sQw�n6��VO��r
���Q�[��J�4��IsT4��2���H��&ɬ�
�%��$�v��B�1��$}U>o֥���iƊ���y�ZԸM��[_�����_\�x�{�7�c$ܤ�3���0������~6`�pU�I�5����{\< W�xj'2�̙5�YQZ^H�9:�����;����q�:B.8)
Y�T��.����=��()!t�yz 9Z�X�m��}B���]7H�8�252ݙϑ�ΦT��L	�p��s!\���6:wQ=q����$FAYWg��� �zܥJ��7�Q<�bu~�Jf{��N�h3�u��N�D_E�!�Dg��v���	=s��YV�
�w�_VP��:2�<�Pc��)��Rc�Gv.��ӿ$�tqȵ���l��>�A1�l��`r�����7{v�F�DvY{�k�����t!�w跰^}W��!Pd�h�OcQ�nu��P|��*G}���\:rUnT���</΢�Eg�M��r��܍�7;�S��M�?%7K0��CWysT-QB�ov�qX�O9��п'��e��&��YI]�	�g��-X?I�B�N]���T�"��A�8�N�^rt�bw�1���=u�nG"�������<5�Z�*���m؀�\�5r��D5ʰ�Zf��T5�ۺp�Tw���Oy����r�� �j*k�o^}�F�H�|��-?�w ������/L�4�^���N�N>��vaz��X�ܾ�|�@&�CS�ܾ��+Q	���渃h�uhK�M�-��;�B�j5=���$���,y����?]��N�����͔�e.�w��!˦���(Lpl�}n�<{	6Ex �s��&˰��L�v\��?T%��0�cwh�z`C�.a�
�U=Nc�ȧ��n�Ҍf���`2H��G��N��b������&���I�P$�v���	��!�� %����WӠ���NTp�I��iM���!k�*%����$�<��Fj�jz��ws���9���_����=���n��ji��D�0�WL��~WI�*j;AT���m�>֣&4?7�*A���Z�oG��uI��S�m����=�Z����
����z�s�8A��S��pqO9t����x�]8a���eu�*ʢB�pr]�Ki�n�J�5�F�4��������N���xa��#SA�I�S^V�������N�^��UZ$���Bv���#E3(M��w�[L�I�X0M�L��kF"P"'�j5�O�\o� �|�VLyR�%��z�G���%a:��p`��jtO�N	���Э[p�aB�?�N ��P�Q��K�*��N��?cN���������>M;���[rÈ@iGJ�$6��m��*OgV�ߔq�okA��4C���h�}�*(���F���? 
�nKCh��7��Tĵa�zy�$fO=��@WL���aſ4b^Y�.��_F���?�����N�^��hڌ~�81����~}�{<�D<X���;�%��Ă"�%�B1�RN�}�XS���_�X�)S�����2"��pV�����%�NcT��Qp&`7�;(r<���L�����4����24�T2���-��qAA0��یz<�l�;��⁉0��c��7I_�%(P�4NU\}�>���¨�㮻moq���	�aF��^B��a#F�F��n�'�R@e�4��%�sv�@�똮L醏O$y����%�(��9E�VN�h������ �v5$�!�FF-��M�Iй�)�q^lAe�)�]#�?`� �p��d]ٙ�"�����a�42��Tn�bJII�����+��bH/��_S�=k�Q>�7]9�:����&�xӅ��ʡx6&\!>�#_�3�H��@�<�� ���|G�ƨ�A�Շ���K.2���b�K��K?�$3�dpF
����&��0
���G�8O�����׉&�F֫r�>��5�.tOJ����= �a����Y�j�;��t>'E�6��R�5��ܮ���_0��2���tc�|h-F�0.������� y_���<\j6є5`��ͽ�:|��1S���V�(��:���٠��9����#�$+%'�@LP��e��B��B3F�6��O9뒪d0zE��������HQ��g��}h�7�Q͙�F��e�N_/�	0O���!���xs���hF���{%x,?�Ӏ֗�k�}�����@[�������/h���Y4^z�<0(<~⇉.Z�GȲWb�}0���!҇���^)��V�Q0���\���㨈�p�w�n�/��c�/�B��(4��M���ué`�]
� *��O���F�������a {�٬/�V�b��+��L����bI����/�t�O�fx%�X*�q�����(5S�O�Nr�|�#�o��{;���ǐ)Ɩ}kc���+U���� ���}����%z��N9�K�IƇ�q?�P�9}�6�\����z�	��o���}4~�E��2�
�6��-ea�t�e�m�,�ځ4�u>�r�:�i�C�V�wN�)Jm�Ў)_L�l���l��l8{PA�����4����8� ���N��M��m�߶�;$�`�6��v{g����y_�J��8�z�Ӯ{�E�	���EW�eBcA-CS� ����CA�G�����A��S�}�b��0#ͳF&5(}�
6���n�� ����:Z�J ��ec���H�����)8n�X`�I��������L���������d��#���UZ
B�+Y�g��U�I����ُm�i�q�<��=DȜ9�gR�������8��EN4]K�][��b-d��E>�!\�[�I�MS�x��V %�$��䄸)%�4UN2F���B��W��.'��d�k"�E�ܐ�<���,1Gz�L\(:��2�����o��}��~��f=0�,����Fe�k��={~��ܴ\�T;�p����I	�̆}�y 0'
�u�� �,=�pC�&���L3Rp(�j�����<�}^6�߽��RjlMSf[�jcoĔ%-����AQ���Dn�}h!?�H�<p����~�NB(Q����7���X�vP%lג���Gg˭�����_��;�2Y�9����oXF��!�r�
$� ��?��A����n�?Fz���1���3j)�O������"��zibJ3�H��:�0���C�S������i�B'�*Lw�Lkz���[���Ag*�g��\9Y7�A�*�P��N�9i���Vn'N�ť&뜨�x�ASK�� =�ԥP��C���9@w��4����c�B- ?ڍ{�tn<����ˉJ���/:��p�]>���F��>�K�>7��#^�e#X?�p�F9.�F��}71*���AgD�\eV�1�&��ؖ�a����C̟�i h��o��i�>a55�ר���dCʑw�
�O}�>	�M���!ki�"��Q��(f��*�X�:��W1bH�R\�'���(�����i��Q"�!��J��$v�}n
h���n�>�w��}�������in�g(�7>�|�E3�Z�aT�!.6��D3��[!+��+��.7�L���#Ҿ��h*1@�s��5����u�/5u�5� ����'�& �	]`&m�_ʴ�F�0��V�����P儆h�͓}�j���e�R� MO�qG�'
�n��OKoz)֤�����u��������2�t�;:!;���S����;٪�ʏ-��q�/� �JUD�1*�[d-�1�d����,ˍ�Y�`�ߑ���ۿ>��W��c����=�l    ����hښ��������>�'Z�l_�=
f1��#\U�q�;L�����o��.����3Hxs|�p��\�Q�̈́�@;T��X�U�H�S�g�>b�rɑ
r@��R#<���rC�K��E��lFk4�@�-Q�+K�+�:Q��U����&�dR�B���/��`r����	CRA�L�[�ץ�n�]��e�$��f'��8dS��S���o���?���ש��
$A�L&�j��#tli�z(q�v��ɞ��r+����?�XH�7�>vΌ����f���7ԑ�2J���,މ9�j��� ��B)�U���B�������?�� �#�>�lTYq
(�$��_'�ذ\�$�(����&��oC�W��q K#�F���a<�4M[�1�͔FJLdg�~���(A�j���mO0�D9���T8�j���o�H��/ (f��Q�>�v'���;�}�e�%��������'j��4xn\B7]_,*���/�Qn�ˀ�����c���������k� �aD�R�a�=5|�w����,�r#ɏ�8P6wo~M3Mi��r-x`PZ�Ǯ�h�~�eE���|��~�bA:M�QB�Ǳ=��}F��)�o3:���rcJ�·�P���צ�ʫ��z�461�1���Y$�r����c��?��+�F�+g��{6�t�Z�<T��y�D5&C�Թ�"XB���@e���q�R�vl��3�|/��/�<r�/���gBQ7��?�x��!V�$#pT~����ǎV�x�X�]c&/��G�R��+U*[����~ ��ئ�]M"�qTĊ_:�u�>�a�y�W>K�?N�%�`w鳬� �����"ӿj����*�e&&��5�`\J�WS�5���l�$��Y	���O��k2S����ូ��t��Y=�)v�S�}>���H��H������/��G�����3�L��}������ԓ_���h*���m[��T�h��&7&�q�p��>#ߒ�A8�r�P/7��멙�֡�z�{�}��P�������jǎA�"���c���~����Q�Dmy�R��\/p�j�t8W�.w�R;�R�j��K�,rl�;����`���i����O/lz��X��\�����z�!1�*d\�;Z�6H���p�%��bkUa�?�I�D"3�M��sV�����b:���}�Py:`[��i𗚯�vm���7�}�-[Y� �]�t/a����PW�T�#ȁ����W�5�����H@�$�?��vt�k�D��>_�x���y�2a�����f��E�0�^�c���s^[���~j�XK�|�?��:�#V��b�������ʜ�Ai+)#WR��C��	UЌ�=�\�qf$�k�gA�i���	�u��#P��O�v��������MoR�ͼ;P��uv�����jP"BM���F�Dˈ���ъM+�r�nl��K�E�_��xk�����%7:��p&�j�x"0'���zi~Ǩ��6&��:�\o�l�� ��_�q0�q�k�|��ԆɄ��=���Ռzϊj�?�囄�?��5��ɧ9f�Eu=�Q����_�����*���-�8OI���jKz0���ꂮt�J��]@��"�D�ǆ^5�G�@�Uh���#\�k��!p��$�Z��EK ��=����ܯ�"h��]B���M`u�߯Tg@��4%�t��[�YƆβЅ�B0�};!�LP�.�+/�Hw�w��dpl�R|��y�UB��6W�r���m��?Lm
��Cҟ:m�H�����y>�qҢ�{-f*����qa��Jn7�.y%�s��"�ߠ�4�����o����a�����e������"���Ck�a���ii:)2�ŀ�*�d��7��9��\u*����7;����#+<G�v��)~|��ԃnj�6���?�SH�Io�S��awH��gE~�x#�k��v���L|�+#�.!������u(�c�^��9�$�в�xt�Ľ��)��CI���y
$,��ƈ��ڋ𐣦�����Gҷ����˅(Ȃ�����e$���9}������_NSG����Q'�� �b?��������i�ݶ�oz�u���ntF{��t��Ҫw�����i�K�]�Rt�fʱ��U>��d�/��b�}�'+��5Z�,@SV�'�j�rZD��� 9��Mn廕]tw��E�I���\5q]0b��aw�b,OY_�<��#]�O���7	��GE`C������������ι-�e��+S��fN>�����H}X��xx�'.6����)q�v<�G���h���i��	rY7oL5r
��N�t�Ӫ
�tqA#�d�yvx|���yۈI�PG�X�4�}������Ӏ0��=��>��a�����Y�QӨf���Kޅ��?�n0g��g�^���v���c�i|�pd��j��'���h�wn
j��L��I���g�m[j�K��	��?�E{''�����e����ň�����^J�L/�%�p����_ef�|�A��g���I��n� э�R��c���MB��&�%�?��g^|�}_P�K�&�]2^��>2�o���բd�"�vPz���KW�a�P�u�zz<�Ft����r�Xd�o�~T/���?�)1��"��5U��O6��^��]B��ˉ�Ϙ��~|��!O~{z춻������:��N^[y�EU^�kP<��Y;M�ۜa�^������韺�5�#�~������O3�?��[��Q�������
>�Ѕ��k0��<{aR��ۑgӶ�d
������֣G���Bj:�N��+C�~�Z�2eh�����w;p��r�|x�H\�GK-��<��to�{� R�OJ�
 ޏ=��{[]x��H��ԯ�ݡ��:89�h>̼�������x�����`�m�g�)|�L2�HJб�L�q��cgrʅ���$����~�s�S��B�'(K�O��H,�o�HM끦#kNg9���Z�� �i�5@05�0e�jH=�Ouy�5�``���]�Ԓk9�%�#H�?�U�6q���QD���b��M��}.�VE.d��������T����M|
��˞�>�@�0й����?�6��3���F�rC�� s�Y�����޷_j�S��=�l~核���Gي�HNK50-�w�Ew����l��-�C0 ZW�)���NH�2�ߤ���1�3��В�&��VmB[E�G9��1�?0��}9�I��U�ت�L'��hղe𨏉�*{����+�Z/�H�T�A�|��2��A�tߢ�a�4t6R�]��V%-#�j[�E���%Ԃ��ײ����^e9 �%`+M[�Ϡ�4;�=\6���5_ey�Qe���0�U���E6>�4?@U�VUK���j��SA��y�}T��9[�T���W��_�|���������"}X�M�ǥA@N*Ъk�6l�é�fh[�&d�cM��c����&�����ڧ�#u���X�מ�����;�<�Kt� U������6f�����w�a�*էr�/E��x��h9�� �>[�U�%�J�1�T���ˤ�H��y����%�N�aC��\|�9]o�2^�>(�f�^pS7��H	$�P�G�0�)(_'�z�B4�tݕ�<�����D�ਜ਼T4��� �6سJ:mY��0pL[2PQJ�{�%��t�!o�N�3&viH��i�A��f:˽m�ę��"�l��/�f$��I��;��
(�nc�̓�3�{��I��2��0}#ӆ�^���I��|I>�a�3�o#�O2]��?I���&�5�}.2	?ݨ9՟x~���p�V����/��B%�|���+���l���!���Orcu��*�$�Z�l�";�)7� �[�+ۿQ�k�0��ڬ�&;K`J��I�.�8/d�rK��i�ou��
����:@Z��Z��bG[��aU��A������6������d���$�6�#l��*�� L	#��cZWv���#l������1��۱q8&3��� �  ������Ԏ�<ՕS��L�~�vIѪ~��Sݓe��s���Q��R��g�30��K�T�(���IU�i��aD�3�&H��5/���F@A���g4=�	��[�D	!�0��b���^#�s�=�N��>�qG©��JA��;$y�W/{�tcӡ[� ���Og���z|�m�c	��4�7��d��t+i�oj̕��5\�� ��EX�fb��H��9���N�B�Qwb�Z�^��DUڍ����|���#M��C���9��F���_W��{��ub`�����)�RʪlU� gf��L_ ��K*�k�>D<�q�St�����x�o����d}�M�~uՆ'�@׮o���>6�q9�/��P_���ǋ7��ɶ���ӏ��/���>1ԟh1���SC��o<=y Z�OF��k��{�PZ�Mʗ�h���ncY5��믲��Z�L?9FGg����HAx������O56Y      G   �   x���A�0EםS���Z�+��FK�Cڲ���UHd!,�,&���#���VjTĮ�g�I�\i�D��Nq�mОw�YY�QU���k�3E~���;�����$�b�!d��(hcq����_K�D���(�!��&����_�޴5�IX�4��a��3���?��~�[ oI*�U      E   �   x�u�M
�0���)� j�؞�����P��)�D��&Pܽy�W�q@Z#��Kdt�&etBI-n�v��^�K;��1��xNPJX�c@qԣ��F�h����wQez/��������j��]ŷ���̞B��Ȧ�m����IJ��w\       H   v   x�M�!�@P�9EO��ϲ�\�����"""�&����"� >���͊���}����J8J6�яq#�T�Ba��<��rL���򀩊����U��<����طyM"��!�      O      x������ � �      J   �   x�}��n1E��W�Pã�%BbŚU7&�Wy 'YЯ����f���ʶUgd��^�#�*��: #,�P2�A�G��/ܨv-R�E�w�1�\�G��:LE&����W6p�\���c;g�k�fs�G?�>�,uj�7i�]{Rc/��`�W��H��������v�����ψ��f�ʍsEJ�L���نݎt\�}�L�K_�1!w�s���CM�Y      A   �   x�m�Ao�0�����p˨�� i����.H�i#j�*	���݊���^�<�!xcqv��^"�d��f��E�c��8h%�$��u묷1V>͉�x0W�_:k���M	8x�>�4��h$�D9%� ���hj���E���B����`���9i�x�X˫n��M�Й��u���~����k1	ӎs���M��xs���iw38O_�H#m���@�o'��\     