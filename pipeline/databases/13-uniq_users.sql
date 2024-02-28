-- creates a table users with these attributes:
--  id, integer, never null, auto increment and primary key
--  email, string (255 characters), never null and unique
--  name, string (255 characters)
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
    );
