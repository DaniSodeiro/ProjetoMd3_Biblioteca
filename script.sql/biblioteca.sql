-- Criando banco de dados 
CREATE DATABASE IF NOT EXISTS Biblioteca;

-- Selecionando banco de Dados 
USE Biblioteca;

-- Tabela para armazenar informações sobre os autores
CREATE TABLE IF NOT EXISTS `Autor` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR (255),
  `data_nascimento` DATE,
  `pais_origem` VARCHAR (255)
);

-- Tabela para armazenar informações sobre as editoras
CREATE TABLE IF NOT EXISTS `Editora` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR (255),
  `endereco` VARCHAR (255),
  `telefone` VARCHAR (255)
);

-- Tabela para armazenar informações sobre os generos
CREATE TABLE IF NOT EXISTS `Genero` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR (255)
);

-- Tabela para armazenar informações sobre os livros
CREATE TABLE IF NOT EXISTS `Livro` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `titulo` VARCHAR (255),
  `ISBN` VARCHAR (255),
  `ano_publicacao` INT,
  `editora_id` INT,
  `genero_id` INT,
  `autor_id` INT
);

-- Adicionando chave estrangeira na tabela Livro para relacionamentos
ALTER TABLE `Livro` ADD FOREIGN KEY (`editora_id`) REFERENCES `Editora` (`id`);

ALTER TABLE `Livro` ADD FOREIGN KEY (`genero_id`) REFERENCES `Genero` (`id`);

ALTER TABLE `Livro` ADD FOREIGN KEY (`autor_id`) REFERENCES `Autor` (`id`);


-- Inserindo dados na tabela Autor
INSERT INTO Autor (nome, data_nascimento, pais_origem)
VALUES
('jane', '1975-12-16', 'Inglaterra'),
('Lewis Carroll', '1832-01-27', 'Inglaterra'),
('Dan Brown', '1964-06-22', 'Estados Unidos'), 
('Harper Lee', '1960-04-28', 'Estados Unidos'), 
('Markus Zusak', '1975-06-23', 'Austrália');

-- Inserindo dados na tabela Editora
INSERT INTO Editora (nome, endereco, telefone)
VALUES
('Thomas Egerton', 'Rua Chicago,35', '(55) 3333-6549'),
('Editora Alice', 'Rua Brasil, 56', '(88) 5556-9809'),
('Editora Sextante', 'Rua Bahia 567', '(54)7689-9087'),
('Editora José Olympio', 'Rua Parana, 867', '(87) 5655-9876'),
('Editora Nova', 'Rua Geral,765', '(99) 5434-7865');

-- Inserindo dados na tabela Genero
INSERT INTO Genero (nome)
VALUES
('Romance'),
('Fantasia'),
('Suspense'),
('Drama'),
('Ficção');

-- Inserindo dados na tabela livro
INSERT INTO livro (titulo, ISBN, ano_publicacao,autor_id, editora_id, genero_id)
VALUES
  ('Orgulho e Preconceito', '9876543211234', 1813, 1, 1, 1),
  ('Alice no País das Maravilhas', '9875645435432', 1865, 2, 2, 2),
  ('O Código Da Vinci', '8575421459566', 2003, 3, 3, 3),
  ('O Sol é para Todos', '1238503010331', 1960, 4, 4, 4),
  ('A Menina que Roubava Livros', '6543289765432', 2005, 5, 5, 5);
