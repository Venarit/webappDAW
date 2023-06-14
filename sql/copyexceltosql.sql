COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, fibra, acido_folico, calcio, hierro, sodio, azucar, indice_glicemico, carga_glicemica)
FROM 'D:\Documentos\cerealescongrasa.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, vitaminaa, calcio, hierro, sodio, selenio)
FROM 'D:\Documentos\animalbag.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, vitaminaa, calcio, hierro, sodio, selenio)
FROM 'D:\Documentos\animalmag.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, vitaminaa, calcio, hierro, sodio, selenio)
FROM 'D:\Documentos\animalaag.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, vitaminaa, calcio, sodio)
FROM 'D:\Documentos\lechedesc.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, vitaminaa, calcio, sodio)
FROM 'D:\Documentos\lechesemi.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, vitaminaa, calcio, sodio)
FROM 'D:\Documentos\lecheent.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, vitaminaa, calcio, sodio, azucar)
FROM 'D:\Documentos\lecheazucar.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, sodio)
FROM 'D:\Documentos\aceitesygrasas.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, colesterol, sodio)
FROM 'D:\Documentos\aceitesygrasasproteina.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, sodio, azucar, indice_glicemico, carga_glicemica)
FROM 'D:\Documentos\azucaressingrasa.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, sodio, azucar, indice_glicemico, carga_glicemica)
FROM 'D:\Documentos\azucarescongrasa.csv' delimiter ',' csv header encoding 'LATIN1';

COPY alimentos (r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, lipidos, hco, sodio)
FROM 'D:\Documentos\alimentoslee.csv' delimiter ',' csv header encoding 'LATIN1';


