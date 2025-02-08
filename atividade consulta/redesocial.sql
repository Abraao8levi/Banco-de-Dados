-- Tabela de usuários (Perfis)
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    bio TEXT,
    profile_pic VARCHAR(255),
    date_joined TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de postagens
CREATE TABLE posts (
    post_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    image_url VARCHAR(255),
    date_posted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de curtidas
CREATE TABLE likes (
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    post_id INT REFERENCES posts(post_id) ON DELETE CASCADE,
    liked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, post_id)
);

-- Tabela de seguidores
CREATE TABLE followers (
    follower_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    followed_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    followed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (follower_id, followed_id)
);

-- Tabela de comentários
CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    post_id INT REFERENCES posts(post_id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    date_commented TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (username, email, password_hash, bio, profile_pic)
VALUES 
('john_doe', 'john@example.com', 'hash_password1', 'Adoro tecnologia e música.', 'https://example.com/john.jpg'),
('jane_smith', 'jane@example.com', 'hash_password2', 'Fotógrafa amadora e amante de viagens.', 'https://example.com/jane.jpg'),
('alice_wonder', 'alice@example.com', 'hash_password3', 'Engenheira de software.', 'https://example.com/alice.jpg'),
('bob_builder', 'bob@example.com', 'hash_password4', 'Construtor e entusiasta de design.', 'https://example.com/bob.jpg'),
('carol_dancer', 'carol@example.com', 'hash_password5', 'Dançarina profissional e coreógrafa.', 'https://example.com/carol.jpg'),
('david_writer', 'david@example.com', 'hash_password6', 'Escritor e apaixonado por literatura.', 'https://example.com/david.jpg'),
('eve_artist', 'eve@example.com', 'hash_password7', 'Artista digital e pintora.', 'https://example.com/eve.jpg'),
('frank_gamer', 'frank@example.com', 'hash_password8', 'Gamer e criador de conteúdo.', 'https://example.com/frank.jpg'),
('grace_chef', 'grace@example.com', 'hash_password9', 'Chef de cozinha e amante de gastronomia.', 'https://example.com/grace.jpg'),
('harry_potter', 'harry@example.com', 'hash_password10', 'Mago nas horas vagas.', 'https://example.com/harry.jpg');

INSERT INTO users (username, email, password_hash, bio, profile_pic)
VALUES ('luna_moon', 'luna@example.com', 'hash_password11', 'Apaixonada por astronomia e viagens espaciais.', 'https://example.com/luna.jpg');


INSERT INTO posts (user_id, content, image_url)
VALUES 
(1, 'Acabei de aprender uma nova linguagem de programação!', NULL),
(2, 'Fotos incríveis da minha última viagem ao Japão!', 'https://example.com/japan.jpg'),
(3, 'Finalizando mais um projeto de código aberto!', NULL),
(4, 'Construindo minha nova casa do zero!', 'https://example.com/house.jpg'),
(5, 'Acabei de criar uma nova coreografia! Venham ver!', 'https://example.com/dance.jpg'),
(6, 'Escrevi um novo conto, espero que gostem!', NULL),
(7, 'Nova arte digital! Inspirada na natureza.', 'https://example.com/art.jpg'),
(8, 'Gameplay novo no canal! Confira minha batalha épica.', 'https://example.com/gameplay.jpg'),
(9, 'Receita nova de bolo de chocolate! Deliciosa!', 'https://example.com/cake.jpg'),
(10, 'Terminando a leitura de um clássico da magia.', NULL);

INSERT INTO comments (user_id, post_id, content)
VALUES 
(1, 2, 'Que fotos lindas, Jane!'),
(2, 1, 'Muito legal, John! Programar é fascinante.'),
(3, 4, 'Uau, Bob, sua casa parece incrível!'),
(4, 3, 'Parabéns pelo projeto, Alice!'),
(5, 7, 'Sua arte está fantástica, Eve!'),
(6, 8, 'Gameplay top, Frank!'),
(7, 6, 'David, seu conto é maravilhoso!'),
(8, 9, 'Vou tentar essa receita hoje mesmo!'),
(9, 5, 'Sua coreografia é incrível, Carol!'),
(10, 1, 'Magia e programação combinam, John!');
INSERT INTO comments (user_id, post_id, content)
VALUES 
(1, 3, 'Ótimo trabalho, Alice! Continue assim!'),
(2, 5, 'Carol, sua coreografia é impressionante!'),
(3, 6, 'David, eu amei seu conto! Muito inspirador.'),
(4, 7, 'Eve, sua arte está cada vez melhor!'),
(5, 8, 'Frank, seu gameplay foi muito divertido!'),
(6, 9, 'Grace, vou tentar sua receita no final de semana!'),
(7, 10, 'Harry, mal posso esperar para ler mais sobre magia!'),
(8, 1, 'John, qual linguagem de programação você aprendeu?'),
(9, 2, 'Jane, suas fotos estão incríveis!'),
(10, 4, 'Bob, sua casa está ficando incrível. Parabéns!');



INSERT INTO likes (user_id, post_id)
VALUES 
(1, 2),  
(2, 1),  
(3, 4),  
(4, 3),  
(5, 7),  
(6, 8),  
(7, 6),  
(8, 9),  
(9, 5),  
(10, 1),
(1, 5),  
(2, 6),  
(3, 8),  
(4, 9),  
(5, 10), 
(6, 3); 




INSERT INTO followers (follower_id, followed_id)
VALUES 
(1, 2),  
(2, 1),  
(3, 4),  
(4, 3),  
(5, 6),  
(6, 7),  
(7, 8),  
(8, 9),  
(9, 10), 
(10, 5); 

INSERT INTO followers (follower_id, followed_id)
VALUES 
(1, 3), 
(2, 4),  
(3, 5),  
(4, 6),  
(5, 7),  
(6, 8),  
(7, 9),  
(8, 10), 
(9, 1),  
(10, 2); 
