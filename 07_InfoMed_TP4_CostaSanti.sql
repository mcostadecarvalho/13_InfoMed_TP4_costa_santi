SELECT p.ciudad AS ciudad, COUNT(*) AS cantidad
FROM pacientes p
GROUP BY ciudad
ORDER BY cantidad DESC;

# AS ciudad_normalizada: estás usando un alias para que en el resultado, esa columna se muestre con el nombre ciudad_normalizada.
# COUNT(*) AS cantidad: contás cuántas filas (es decir, cuántos pacientes) hay para cada ciudad, y el resultado se mostrará con el nombre cantidad.

# GROUP BY ciudad: agrupás los datos por ciudad
# ORDER BY cantidad DESC: ordenás el resultado y con DESC hace de mayor a menor.
