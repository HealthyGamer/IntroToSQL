CREATE TABLE IF NOT EXISTS second_table
(
    "id" SERIAL PRIMARY KEY,
    "rep" character varying NOT NULL
);

INSERT INTO second_table (rep)
SELECT DISTINCT rep 
FROM first_table;

ALTER TABLE first_table
	ADD COLUMN rep_id INTEGER NULL,
	ADD CONSTRAINT fk_first_second_rep FOREIGN KEY (rep_id) REFERENCES second_table (id);

UPDATE first_table f SET
    rep_id = s.id
FROM second_table s
WHERE f.rep = s.rep;

ALTER TABLE first_table
    DROP COLUMN rep;