
CREATE USER boola@localhost IDENTIFIED BY 'parola';

# baza_de_date.tabela
GRANT SELECT ON magazin_online.articol TO boola@localhost;

GRANT SELECT, UPDATE ON magazin_online.articol TO boola@localhost;

GRANT ALL PRIVILEGES ON vremea.* TO boola@localhost;

GRANT ALL PRIVILEGES ON *.* TO boola@localhost;

REVOKE UPDATE ON *.* FROM boola@localhost;

REVOKE ALL PRIVILEGES ON *.* FROM boola@localhost;


CREATE DATABASE db_privilegii;

CREATE USER privilegii_admin@localhost IDENTIFIED BY 'xyz';
GRANT ALL PRIVILEGES ON db_privilegii.* TO privilegii_admin@localhost;

CREATE USER 'privilegii_user@127.0.0.1' IDENTIFIED BY '123';
GRANT SELECT, INSERT, UPDATE, DELETE ON db_privilegii.* 
	TO 'privilegii_user@127.0.0.1';

CREATE USER 'privilegii_viewer@%' IDENTIFIED BY 'abc';
GRANT SELECT ON db_privilegii.*
	TO 'privilegii_viewer@%';














