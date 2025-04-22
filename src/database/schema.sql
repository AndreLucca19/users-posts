DROP DATABASE IF exists users;

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
    
INSERT INTO usuarios (name, email, password) VALUES 
('Arthit', 'arthit@gmail.com', 'pwd1'),
('Benjawan', 'benjawan@gmail.com', 'pwd2'),
('Chaiya', 'chaiya@gmail.com', 'pwd3'),
('Darika', 'darika@gmail.com', 'pwd4'),
('Ekkachai', 'ekkachai@gmail.com', 'pwd5'),
('Fah', 'fah@gmail.com', 'pwd6'),
('Ganya', 'ganya@gmail.com', 'pwd7'),
('Hansa', 'hansa@gmail.com', 'pwd8'),
('Issara', 'issara@gmail.com', 'pwd9'),
('Jintana', 'jintana@gmail.com', 'pwd10'),
('Kamon', 'kamon@gmail.com', 'pwd11'),
('Lalana', 'lalana@gmail.com', 'pwd12'),
('Manop', 'manop@gmail.com', 'pwd13'),
('Niran', 'niran@gmail.com', 'pwd14'),
('Orasa', 'orasa@gmail.com', 'pwd15'),
('Pailin', 'pailin@gmail.com', 'pwd16'),
('Ratchanee', 'ratchanee@gmail.com', 'pwd17'),
('Sakda', 'sakda@gmail.com', 'pwd18'),
('Tida', 'tida@gmail.com', 'pwd19'),
('Udom', 'udom@gmail.com', 'pwd20'),
('Vichai', 'vichai@gmail.com', 'pwd21'),
('Wanida', 'wanida@gmail.com', 'pwd22'),
('Ying', 'ying@gmail.com', 'pwd23'),
('Anong', 'anong@gmail.com', 'pwd24'),
('Boonsri', 'boonsri@gmail.com', 'pwd25'),
('Chatchai', 'chatchai@gmail.com', 'pwd26'),
('Duangjai', 'duangjai@gmail.com', 'pwd27'),
('Ekkarat', 'ekkarat@gmail.com', 'pwd28'),
('Fuangfa', 'fuangfa@gmail.com', 'pwd29'),
('Grit', 'grit@gmail.com', 'pwd30'),
('Hathai', 'hathai@gmail.com', 'pwd31'),
('Inthira', 'inthira@gmail.com', 'pwd32'),
('Jirawat', 'jirawat@gmail.com', 'pwd33'),
('Kanchana', 'kanchana@gmail.com', 'pwd34'),
('Lawan', 'lawan@gmail.com', 'pwd35'),
('Montree', 'montree@gmail.com', 'pwd36'),
('Nipa', 'nipa@gmail.com', 'pwd37'),
('Orapin', 'orapin@gmail.com', 'pwd38'),
('Prasert', 'prasert@gmail.com', 'pwd39'),
('Rung', 'rung@gmail.com', 'pwd40'),
('Somchai', 'somchai@gmail.com', 'pwd41'),
('Thida', 'thida@gmail.com', 'pwd42'),
('Veera', 'veera@gmail.com', 'pwd43'),
('Wichai', 'wichai@gmail.com', 'pwd44'),
('Yupa', 'yupa@gmail.com', 'pwd45'),
('Anan', 'anan@gmail.com', 'pwd46'),
('Boonmee', 'boonmee@gmail.com', 'pwd47'),
('Chai', 'chai@gmail.com', 'pwd48'),
('Duang', 'duang@gmail.com', 'pwd49'),
('Ekkapong', 'ekkapong@gmail.com', 'pwd50');
    