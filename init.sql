
CREATE DATABASE IF NOT EXISTS mydb;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'example';
GRANT SELECT,UPDATE,INSERT ON mydb.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE mydb;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE INDEX idx_product_name ON products (name);

INSERT INTO products (name, description, price) VALUES
    ('Вася', 'Теорвер', 5),
    ('Вася', 'БЖД', 3),
    ('Афанасий', 'БЖД', 4),
    ('Петя', 'Программирование', 4),
    ('Маша', 'Сети', 3),
    ('Оля', 'Базы данных', 4),
    ('Алексей', 'БЖД', 5),
    ('Иван', 'Теорвер', 5),
    ('Петя', 'Искусственный интеллект', 4),
    ('Алексей', 'Базы данных', 5),
    ('Алексей', 'Программирование', 3),
    ('Вася', 'Искусственный интеллект', 4),
    ('Маша', 'Базы данных', 5),
    ('Иван', 'Сети', 4);




