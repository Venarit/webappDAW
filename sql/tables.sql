-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.actividad
(
    idactividad integer NOT NULL DEFAULT 'nextval('actividad_idactividad_seq'::regclass)',
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    factor numeric,
    descripcion character varying(150) COLLATE pg_catalog."default",
    CONSTRAINT actividad_pkey PRIMARY KEY (idactividad)
);

CREATE TABLE IF NOT EXISTS public.alimentos
(
    idalimentos integer NOT NULL DEFAULT 'nextval('alimentos_idalimentos_seq'::regclass)',
    r_tipo integer,
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    cantidad_sugerida numeric,
    unidad character varying(20) COLLATE pg_catalog."default",
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
    colesterol numeric,
    CONSTRAINT alimentos_pkey PRIMARY KEY (idalimentos),
    CONSTRAINT unique_nombre UNIQUE (nombre)
);

CREATE TABLE IF NOT EXISTS public.macros
(
    idmacros integer NOT NULL DEFAULT 'nextval('macros_idmacros_seq'::regclass)',
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(100) COLLATE pg_catalog."default",
    hco numeric,
    lipidos numeric,
    proteina numeric,
    CONSTRAINT macros_pkey PRIMARY KEY (idmacros)
);

CREATE TABLE IF NOT EXISTS public.objetivo
(
    idobjetivo integer NOT NULL DEFAULT 'nextval('objetivo_idobjetivo_seq'::regclass)',
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(100) COLLATE pg_catalog."default",
    calorias integer,
    CONSTRAINT objetivo_pkey PRIMARY KEY (idobjetivo)
);

CREATE TABLE IF NOT EXISTS public.perfilnutricional
(
    r_usuario integer NOT NULL,
    peso double precision NOT NULL,
    altura numeric NOT NULL,
    sexo character varying(10) COLLATE pg_catalog."default" NOT NULL,
    edad integer,
    bmr integer,
    tdee integer,
    r_actividad integer,
    r_objetivo integer,
    r_macros integer,
    idperfil integer NOT NULL DEFAULT 'nextval('perfilnutricional_idperfil_seq'::regclass)',
    nombreperfil character varying(45) COLLATE pg_catalog."default" NOT NULL,
    calorias integer,
    CONSTRAINT perfilnutricional_pkey PRIMARY KEY (idperfil)
);

CREATE TABLE IF NOT EXISTS public.platillos
(
    idplatillo integer NOT NULL DEFAULT 'nextval('platillos_idplatillo_seq'::regclass)',
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
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
    total_hco numeric,
    CONSTRAINT platillos_pkey PRIMARY KEY (idplatillo)
);

CREATE TABLE IF NOT EXISTS public.tipo_alimentos
(
    idtipo_alimentos integer NOT NULL DEFAULT 'nextval('tipo_alimentos_idtipo_alimentos_seq'::regclass)',
    nombre character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT tipo_alimentos_pkey PRIMARY KEY (idtipo_alimentos)
);

CREATE TABLE IF NOT EXISTS public.usuarios
(
    idusuario integer NOT NULL DEFAULT 'nextval('usuarios_idusuario_seq'::regclass)',
    nombre character varying(45) COLLATE pg_catalog."default" NOT NULL,
    apellidop character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(50) COLLATE pg_catalog."default" NOT NULL,
    password character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario)
);

ALTER TABLE IF EXISTS public.alimentos
    ADD CONSTRAINT alimentos_r_tipo_fkey FOREIGN KEY (r_tipo)
    REFERENCES public.tipo_alimentos (idtipo_alimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_actividad_fkey FOREIGN KEY (r_actividad)
    REFERENCES public.actividad (idactividad) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_macros_fkey FOREIGN KEY (r_macros)
    REFERENCES public.macros (idmacros) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_objetivo_fkey FOREIGN KEY (r_objetivo)
    REFERENCES public.objetivo (idobjetivo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.perfilnutricional
    ADD CONSTRAINT perfilnutricional_r_usuario_fkey FOREIGN KEY (r_usuario)
    REFERENCES public.usuarios (idusuario) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento10_fkey FOREIGN KEY (r_alimento10)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento1_fkey FOREIGN KEY (r_alimento1)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento2_fkey FOREIGN KEY (r_alimento2)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento3_fkey FOREIGN KEY (r_alimento3)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento4_fkey FOREIGN KEY (r_alimento4)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento5_fkey FOREIGN KEY (r_alimento5)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento6_fkey FOREIGN KEY (r_alimento6)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento7_fkey FOREIGN KEY (r_alimento7)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento8_fkey FOREIGN KEY (r_alimento8)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_alimento9_fkey FOREIGN KEY (r_alimento9)
    REFERENCES public.alimentos (idalimentos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.platillos
    ADD CONSTRAINT platillos_r_usuario_fkey FOREIGN KEY (r_usuario)
    REFERENCES public.usuarios (idusuario) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

END;