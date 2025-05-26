SELECT m.nombre, COUNT(r.id_receta) AS cantidad_recetas
FROM medicos m
LEFT JOIN recetas r ON m.id_medico = r.id_medico
GROUP BY m.nombre
ORDER BY cantidad_recetas DESC;

# LEFT JOIN Recetas r ON m.id_medico = r.id_medico	une la tabla recetas con medicos, pero incluye todos los médicos, incluso si no tienen recetas.
# COUNT(r.id_receta) Cuenta cuántas recetas tiene cada médico (si no tiene, cuenta 0 gracias al LEFT JOIN).
