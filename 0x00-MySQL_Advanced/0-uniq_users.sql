-- A Script that create users table with some unique fields.

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NUll AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
