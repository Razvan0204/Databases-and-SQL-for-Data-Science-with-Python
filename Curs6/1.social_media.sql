
DROP DATABASE IF EXISTS social_media;
CREATE DATABASE social_media;
USE social_media;
CREATE TABLE utilizator 
	(id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255));

CREATE TABLE postare
	(id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(255),
    id_user INT, 
    FOREIGN KEY (id_user) REFERENCES utilizator(id));

INSERT INTO utilizator (name) VALUES 
	("albatros"), ("bibiblic"), ("coif"), ("dormitor");

SELECT * FROM utilizator

INSERT INTO postare (title, id_user) VALUES ("Vacanta", 1);
INSERT INTO postare (title, id_user) VALUES
	("Amuzant", 3),
    ("Gluma de seara", 3),
    ("Neverosimil", 4),
    ("A ramas interzis", 1),
    ("Cat e cozonacul?", 3),
    ("Cand cade 1 mai?", 4);

SELECT COUNT(*) AS 'Nr postari' FROM postare;

SELECT * FROM utilizator;
SELECT * FROM postare;

SELECT COUNT(*) FROM utilizator JOIN postare;
SELECT * FROM utilizator JOIN postare;

SELECT * FROM postare JOIN utilizator;

SELECT * FROM postare JOIN utilizator
ON postare.id_user = utilizator.id ;

SELECT * FROM utilizator JOIN postare
ON postare.id_user = utilizator.id ;

SELECT * FROM postare JOIN utilizator
ON postare.id_user = utilizator.id ;

SELECT postare.id, title, name FROM postare JOIN utilizator
ON postare.id_user = utilizator.id ;

SELECT postare.id, title, name FROM postare INNER JOIN utilizator
ON postare.id_user = utilizator.id ;

SELECT * FROM postare LEFT JOIN utilizator
ON postare.id_user = utilizator.id ;

SELECT * FROM postare RIGHT JOIN utilizator
ON postare.id_user = utilizator.id ;

INSERT INTO postare (title) VALUES ("Ttotul e pustiu"),
("Ce inseamna nimic?");

UPDATE postare SET title = "Totul e pustiu" WHERE id = 8;
SELECT * FROM postare;

SELECT * FROM utilizator LEFT JOIN postare
ON postare.id_user = utilizator.id ;

SELECT * FROM utilizator RIGHT JOIN postare
ON postare.id_user = utilizator.id ;

SELECT * FROM utilizator JOIN postare
ON postare.id_user = utilizator.id ;










