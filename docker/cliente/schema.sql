CREATE DATABASE IF NOT EXISTS lanchonete;
USE lanchonete;
CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT,
    cpf VARCHAR(20),
    nome VARCHAR(200),
    email VARCHAR(200),
    PRIMARY KEY (id),
    UNIQUE KEY (cpf),
    UNIQUE KEY (email)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

GRANT ALL PRIVILEGES ON *.* TO 'cliente'@'%' WITH GRANT OPTION;
flush privileges;