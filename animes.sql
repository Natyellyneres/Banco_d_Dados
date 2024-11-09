create database `bd_anime`;
use `bd_anime`;
CREATE TABLE Pessoa (
id_pessoa INT AUTO_INCREMENT KEY,
nome VARCHAR(50),
idade INT(3),
email VARCHAR(50)
);

CREATE TABLE Anime(
id_anime INT AUTO_INCREMENT KEY,
titulo VARCHAR(50),
genero VARCHAR(20),
ano_lancamento INT(4)
);

CREATE TABLE Assiste(
id_pessoa INT,
id_anime INT,
data_assistiu DATE,
FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa),
FOREIGN KEY (id_anime) REFERENCES Anime(id_anime),
PRIMARY KEY (id_pessoa, id_anime)
);
INSERT INTO Pessoa(nome, idade, email) VALUES
( 'Alice', 20, 'alice@example.com'),
( 'Bruno', 25, 'bruno@example.com'),
( 'Carla', 22, 'carla@example.com'),
( 'Diego', 30, 'diego@example.com'),
('Evelyn', 27, 'evelyn@example.com');


 INSERT INTO Anime (titulo, genero, ano_lancamento) VALUES
( 'Naruto', 'Ação', 2002),
( 'One Piece', 'Aventura', 1999),
( 'Attack on Titan', 'Ação', 2013),
( 'My Hero Academia', 'Ação', 2016),
( 'Death Note', 'Suspense', 2006);

INSERT INTO Assiste (id_pessoa, id_anime, data_assistiu) VALUES
(1, 1, '2024-01-01'),
(1, 2, '2024-02-15'),
(2, 3, '2024-03-10'),
(3, 1, '2024-04-20'),
(4,4, '2024-05-01'),
(4,2, '2024-06-18'),
(5,5, '2024-07-22'),
(2, 1, '2024-08-10'),
(3, 5, '2024-09-03'),
(5, 3, '2024-10-12');

-- 1
SELECT nome FROM Pessoa;
-- 2
SELECT titulo FROM Anime;
-- 3
SELECT genero FROM Anime
WHERE genero = 'Ação';

-- 4 
SELECT nome, idade from pessoa
where idade > 25;

-- 5
select titulo, ano_lancamento from Anime
where ano_lancamento < 2010;

-- 6
select Pessoa.nome 
from Pessoa 
join Assiste on Pessoa.id_pessoa = Assiste.id_pessoa
join Anime on Assiste.id_anime = Anime.id_anime
where Anime.titulo = 'Naruto';

-- 7
select Pessoa.nome 
from Pessoa 
join Assiste on Pessoa.id_pessoa = Assiste.id_pessoa
join Anime on Assiste.id_anime = Anime.id_anime
where Anime.titulo = 'One Piece';

-- 8
select Assiste.data_assistiu
from Assiste
join Pessoa on pessoa.id_pessoa = assiste.id_pessoa
join Anime on assiste.id_anime = anime.id_anime
where Pessoa.nome='Carla' and Anime.titulo='Death Note';

-- 9
Select Anime.titulo
from Anime
join Assiste on Assiste.id_anime = anime.id_anime
join Pessoa on pessoa.id_pessoa = assiste.id_pessoa
where Pessoa.nome='Diego';

-- 10
select Anime.titulo
from Anime 
join Assiste on anime.id_anime = assiste.id_anime
where year(data_assistiu) = 2024;

-- 11
select  

