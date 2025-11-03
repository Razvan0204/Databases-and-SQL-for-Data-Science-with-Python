
SHOW DATABASES;

USE angajati;
SELECT * FROM studenti;

INSERT INTO studenti SET nume = "Andreea";
SELECT * FROM studenti;

INSERT INTO studenti SET nume = "George", id=6;
SELECT * FROM studenti;

DELETE FROM studenti WHERE id=10;
SELECT * FROM studenti;







