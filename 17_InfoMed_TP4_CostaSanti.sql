SELECT med.nombre AS medicamento, COUNT(*) AS total_recetas, 
       m.nombre AS medico, p.nombre AS paciente
FROM Recetas r
JOIN Medicamentos med ON r.id_medicamento = med.id_medicamento
JOIN Medicos m ON r.id_medico = m.id_medico
JOIN Pacientes p ON r.id_paciente = p.id_paciente
GROUP BY med.nombre, m.nombre, p.nombre
ORDER BY total_recetas DESC;
