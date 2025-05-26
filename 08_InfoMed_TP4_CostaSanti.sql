SELECT p.ciudad AS ciudad, s.descripcion AS sexo, COUNT(*) AS cantidad
FROM pacientes p
JOIN sexobiologico s ON p.id_sexo = s.id_sexo
GROUP BY p.ciudad, s.descripcion
ORDER BY ciudad, sexo;
