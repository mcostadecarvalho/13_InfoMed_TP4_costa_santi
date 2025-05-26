SELECT p.nombre AS nombre_paciente, c.fecha, c.diagnostico
FROM pacientes p
JOIN consultas c ON p.id_paciente = c.id_paciente
WHERE c.fecha = ( SELECT MAX(c.fecha) FROM consultas c WHERE c.id_paciente = p.id_paciente)
ORDER BY p.nombre;
