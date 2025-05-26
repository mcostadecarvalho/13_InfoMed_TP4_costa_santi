WITH cantidad_recetas AS (
  SELECT m.nombre AS nombre_medicamento, COUNT(r.id_receta) AS total
  FROM recetas r 
  JOIN medicamentos m ON r.id_medicamento = m.id_medicamento
  GROUP BY m.nombre
)
SELECT nombre_medicamento, total AS cantidad_recetas
FROM cantidad_recetas
WHERE total = (SELECT MAX(total) FROM cantidad_recetas);
