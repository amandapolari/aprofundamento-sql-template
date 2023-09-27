-- Active: 1695853516363@@127.0.0.1@3306
-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, 'bulbasaur', 'grass', 45, 49, 49, 65, 65, 45),
    (2, 'ivysaur', 'grass', 60, 62, 63, 80, 80, 60),
    (3, 'venusaur', 'grass', 80, 82, 83, 100, 100, 80),
    (4, 'charmander', 'fire', 39, 52, 43, 60, 50, 65),
    (5, 'charmeleon', 'fire', 58, 64, 58, 80, 65, 80),
    (6, 'charizard', 'fire', 78, 84, 78, 109, 85, 100),
    (7, 'squirtle', 'water', 44, 48, 65, 50, 64, 43),
    (8, 'wartortle', 'water', 59, 63, 80, 65, 80, 58),
    (9, 'blastoise', 'water', 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;

-- Práticas

-- PRÁTICA 2

-- parte 1

-- TODAS AS COLUNAS
SELECT * FROM pokemons
WHERE speed > 60

-- COLUNAS ESPECÍFICAS
SELECT name, id, speed FROM pokemons
WHERE speed > 60

-- parte 2

SELECT * FROM pokemons
WHERE attack >= 60 AND special_attack >= 60;

-- parte 3
SELECT * FROM pokemons
WHERE name LIKE '%saur';

-- PRÁTICA 2

-- parte 1
SELECT AVG(hp)
FROM pokemons;

-- parte 2
SELECT COUNT(*) FROM pokemons;

-- parte 3
SELECT AVG(hp) AS 'mediaHP'
FROM pokemons;

SELECT COUNT(*) AS 'totalPokemons' FROM pokemons;

SELECT COUNT(id) AS 'totalPokemons' FROM pokemons;

-- PRÁTICA 3

-- parte 1
SELECT * FROM pokemons
ORDER BY defense DESC;

-- parte 2
SELECT COUNT(*), type
FROM pokemons
GROUP BY type

-- parte 3
-- O Offset começa A PARTIR DA PRÓXIMA LINHA
-- SELECT * FROM pokemons
-- LIMIT 3
-- OFFSET 4;

-- outra forma de fazer:
-- a partir do quinto limitando a 3
SELECT * FROM pokemons
LIMIT 4, 3;

-- FIXAÇÃO
SELECT * FROM pokemons
WHERE type = 'fire' OR type = 'grass'
ORDER BY attack ASC
LIMIT 2, 3;