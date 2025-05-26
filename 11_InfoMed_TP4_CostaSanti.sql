SELECT p.nombre AS nombre_paciente, c.fecha, c.diagnostico
FROM consultas c
JOIN pacientes p ON c.id_paciente = p.id_paciente
WHERE c.fecha BETWEEN '2024-08-01' AND '2024-08-31'
ORDER BY c.fecha;

#JOIN Pacientes p ON c.id_paciente = p.id_paciente	Relaciona cada consulta con su paciente
