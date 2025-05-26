SELECT id_paciente, nombre, fecha_nacimiento,
       DATE_PART('year', AGE(CURRENT_DATE, fecha_nacimiento)) AS edad
FROM pacientes;

# DATE_PART('year', ...)	Extrae solamente los años completos del intervalo.
# AGE(CURRENT_DATE, fecha_nacimiento)	Calcula la diferencia entre la fecha actual y la fecha de nacimiento → da un intervalo de tiempo (como "24 years 2 mons 3 days").
