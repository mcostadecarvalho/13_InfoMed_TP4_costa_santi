SELECT m.nombre AS nombre_medico, COUNT(DISTINCT c.id_paciente) AS total_pacientes
FROM consultas c
JOIN medicos m ON c.id_medico = m.id_medico
GROUP BY m.nombre
ORDER BY total_pacientes DESC;
