CREATE DATABASE seminario_grupo10_tema9;
CREATE TABLE usuario(
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    cpf CHAR(11) UNIQUE,
    idade INT,
    estado VARCHAR(50)
);

INSERT INTO usuario(nome, email, cpf, idade, estado) VALUE
('João', 'joao@email.com', '12365478965', 20, 'São Paulo'),
('Maria', 'maria@email.com', '14527841369', 32, 'Acre'),
('Carlos', 'carlos@email.com', '65471289345', 25, 'Rio de Janeiro'),
('Alex', 'alex@email.com', '65742189352', 30, 'São Paulo');

CREATE INDEX idx_estado ON usuario (estado);
SELECT * FROM usuario = 'São Paulo'

CREATE INDEX idx_email_cpf ON usuario (email, cpf);
SELECT * FROM usuario WHERE email = 'carlos@email.com' AND cpf = '65471289345';
