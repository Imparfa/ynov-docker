CREATE DATABASE IF NOT EXISTS ynov;

USE ynov;

CREATE TABLE IF NOT EXISTS utilisateurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO utilisateurs (nom, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');
