CREATE INDEX idx_ciudad ON pacientes(ciudad);

DROP INDEX idx_ciudad;

SELECT indexname, indexdef 
FROM pg_indexes
WHERE schemaname = 'public';