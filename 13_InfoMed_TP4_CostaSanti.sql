SELECT p.id_paciente AS id_pacintes, p.nombre AS nombres, COUNT(r.id_receta) AS cantidad_recetas
FROM pacientes p
LEFT JOIN recetas r ON p.id_paciente = r.id_paciente
GROUP BY p.id_paciente
ORDER BY cantidad_recetas DESC;
