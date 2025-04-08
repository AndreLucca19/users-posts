CREATE DATABASE users;

\c users;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO usuarios (name, email, password) VALUES 
    ('Andre', 'andre@gmail.com', 'amods'),
    ('Carlos', 'carlos@gmail.com', 'amods'),
    ('Lucca', 'lucca@gmail.com', 'amods');

INSERT INTO post (title, content, user_id) VALUES 
    ('Post 1', 'Conteudo', 1),
    ('Post 2', 'Conteudo', 2),
    ('Post 2', 'Conteudo', 3);

INSERT INTO usuarios (name, email, password) VALUES 
    ('Joao', 'joao@gmail.com', '111'),
    ('Beatriz', 'beatriz@gmail.com', '222'),
    ('Lucas', 'lucas@gmail.com', '333'),
    ('Mariana', 'mariana@gmail.com', '444'),
    ('Gustavo', 'gustavo@gmail.com', '555'),
    ('Camila', 'camila@gmail.com', '666'),
    ('Felipe', 'felipe@gmail.com', '777');