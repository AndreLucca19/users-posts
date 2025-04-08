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
    ('Lucca', 'lucca@gmail.com', 'amods'),
    ('Rafael', 'rafael@gmail.com', 'amods'),
    ('Fernanda', 'fernanda@gmail.com', 'amods');

INSERT INTO post (title, content, user_id) VALUES 
    ('Post 1', 'Conteúdo', 1),
    ('Post 2', 'Conteúdo', 2),
    ('Post 2', 'Conteúdo', 3);