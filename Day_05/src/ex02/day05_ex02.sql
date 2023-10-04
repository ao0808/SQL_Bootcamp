CREATE INDEX IF NOT EXISTS idx_person_name ON person (UPPER(name));

SET ENABLE_SEQSCAN TO off;

EXPLAIN ANALYZE
SELECT name FROM person
WHERE name = UPPER('Nataly');