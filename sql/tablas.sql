CREATE TABLE usuarios(
	idusuario serial primary key,
	nombre VARCHAR(45) NOT NULL,
	apellidop VARCHAR(50) NOT NULL,
	apellidom VARCHAR(50),
	fnacimiento DATE NOT NULL,
	email VARCHAR(50) NOT NULL,
	contraseña VARCHAR(50) NOT NULL
);

CREATE TABLE actividad(
	idactividad SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(150),
	factor DECIMAL
);

CREATE TABLE objetivo(
	idobjetivo SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(100),
	calorias INT
);

CREATE TABLE macros(
	idmacros SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(100),
	hco DECIMAL,
	lipidos DECIMAL,
	proteina DECIMAL
);

CREATE TABLE perfilnutricional(
	r_usuario INTEGER NOT NULL,
	peso DOUBLE PRECISION NOT NULL,
	altura DECIMAL NOT NULL,
	sexo VARCHAR(10) NOT NULL,
	edad INTEGER,
	BMR INT,
	TDEE INT,
	r_actividad INTEGER,
	r_objetivo INTEGER,
	r_macros INTEGER,
	FOREIGN KEY(r_usuario) REFERENCES usuarios(idusuario),
	FOREIGN KEY(r_actividad) REFERENCES actividad(idactividad),
	FOREIGN KEY(r_objetivo) REFERENCES objetivo(idobjetivo),
	FOREIGN KEY(r_macros) REFERENCES macros(idmacros)
);

CREATE TABLE tipo_alimentos(
	idtipo_alimentos SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE alimentos(
	idalimentos SERIAL PRIMARY KEY,
	r_tipo INT,
	FOREIGN KEY(r_tipo) REFERENCES tipo_alimentos(idtipo_alimentos),
	nombre VARCHAR(50) NOT NULL,
	cantidad_sugerida DECIMAL,
	unidad VARCHAR(20),
	peso_bruto DECIMAL,
	peso_neto DECIMAL,
	energia DECIMAL,
	proteina DECIMAL,
	lipidos DECIMAL,
	hco DECIMAL,
	fibra DECIMAL,
	vitaminaA DECIMAL,
	acido_ascorbico DECIMAL,
	acido_folico DECIMAL,
	hierro DECIMAL,
	potasio DECIMAL,
	indice_glicemico DECIMAL,
	carga_glicemica DECIMAL
);