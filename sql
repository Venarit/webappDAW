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
INSERT INTO actividad (nombre, descripcion, factor)
VALUES 
('Sedentario','Poco a nada de ejercicio, por ejemplo, tener un trabajo de escritorio que no requiera de actividad fisica adicional', 1.2),
('Ligeramente activo', 'Ejercicio ligero, de 1 a 2 dias a la semana', 1.375),
('Moderadamente activo', 'Ejercicio moderado, de 3 a 5 dias a la semana', 1.55),
('Muy activo', 'Ejercicio intenso, de 6 a 7 dias a la semana', 1.725),
('Extremadamente activo', 'Ejercicio fisico muy intenso diario o actividad laboral fisica intensa', 1.9);
 
 INSERT INTO objetivo (nombre, descripcion, calorias)
 VALUES
 ('Mantener', 'Mantener el peso corporal actual', 0),
 ('Perdida leve', 'Perdida de peso corporal ligera, 1/4 kg por semana', -250),
 ('Perdida moderada', 'Perdida de peso corporal moderada, 1/2 kg por semana', -500),
 ('Ganar musculo/peso', 'Ganar peso corporal y aumentar porcentaje muscular', 500);
 
 INSERT INTO macros(nombre,descripcion,hco,lipidos,proteina)
 VALUES
 ('Balanceado', 'Distribucion de macronutrientes balanceada', 0.4, 0.3, 0.3),
 ('Bajo en lipidos', 'Distribucion de macronutrientes baja en grasas/lipidos', 0.4, 0.4, 0.2),
 ('Alta en proteina', 'Distribucion de macronutrientes alta en proteinas y baja en carbohidratos', 0.2, 0.5, 0.3),
 ('Alta en carbohidratos', 'Distribucion de macronutrientes alta en carbohidratos', 0.55, 0.25, 0.2),
 ('Keto', 'Distribucion de macronutrientes alta en lipidos y baja en carbohidratos', 0.05, 0.25, 0.7);

  
 INSERT INTO tipo_alimentos(nombre)
 VALUES
 ('Verduras'),('Frutas'),('Cereales sin grasa'),('Cereales con grasa'),('Leguminosas'),
 ('Alimentos de origen animal muy bajo aporte de grasa'),
 ('Alimentos de origen animal bajo aporte de grasa'),
 ('Alimentos de origen animal moderado aporte de grasa'),
 ('Alimentos de origen animal alto aporte de grasa'),
 ('Leche descremada'),('Leche semidescremada'),('Leche entera'),('Leche con azucar'),
 ('Aceites y grasas'), ('Aceites y grasas con proteina'), ('Azucares sin grasa'), ('Azucares con grasa'),
 ('Alimentos libres en energia'), ('Bebidas alcoholicas'), ('Productos yakult'), ('Platillos'), ('Comida rapida');
 
 INSERT INTO usuarios(nombre, apellidop, apellidom, fnacimiento, email, contraseña)
 VALUES
 ('Naomi', 'Espinosa', 'Cosme', '2001-06-30', 'naomis_306@hotmail.com', 'dorito');
 
 INSERT INTO perfilnutricional(r_usuario, peso, altura, sexo
 VALUES
 (1, 73.2, 1.73, 'Femenino');
