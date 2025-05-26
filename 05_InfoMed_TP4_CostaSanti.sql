UPDATE pacientes
SET ciudad = INITCAP(REGEXP_REPLACE(TRIM(ciudad), '\s+', ' ', 'g'));

CREATE TABLE ciudades_referencia (
    id_ciudad_referencia SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

INSERT INTO ciudades_referencia (id_ciudad_referencia, nombre) VALUES
(DEFAULT, 'Buenos Aires'),
(DEFAULT, 'Córdoba'),
(DEFAULT, 'Rosario'),
(DEFAULT, 'Mendoza'),
(DEFAULT, 'Santa Fé');

CREATE EXTENSION IF NOT EXISTS pg_trgm;

SELECT DISTINCT
  p.ciudad AS ciudad_original,
  cr.nombre AS ciudad_normalizada,
  similarity(p.ciudad, cr.nombre) AS similitud
FROM pacientes p
JOIN ciudades_referencia cr
  ON similarity(p.ciudad, cr.nombre) >= 0.2
ORDER BY ciudad_original, similitud DESC;

UPDATE pacientes p
SET ciudad = (
    SELECT cr.nombre
    FROM ciudades_referencia cr
    WHERE similarity(p.ciudad, cr.nombre) >= 0.2
    ORDER BY similarity(p.ciudad, cr.nombre) DESC
    LIMIT 1
)
WHERE EXISTS (
    SELECT 1
    FROM ciudades_referencia cr
    WHERE similarity(p.ciudad, cr.nombre) >= 0.2
);
