CREATE TABLE Livro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    ISBN VARCHAR(20),
    ano_publicacao INT,
    editora_id INT,
    genero_id INT
);

CREATE TABLE Autor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE,
    pais_origem VARCHAR(255)
);

CREATE TABLE Editora (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(20)
);

CREATE TABLE Genero (
   id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);