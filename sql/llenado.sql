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