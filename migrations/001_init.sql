-- Migration 001
BEGIN;
CREATE TABLE schema_version(version INTEGER PRIMARY KEY,applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
INSERT INTO schema_version(version,description)VALUES(1,'Initial schema');
COMMIT;
