CREATE DATABASE shop;

USE shop;

CREATE TABLE productCategories
(
	id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE products
(
	id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    productCategoryId INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (productCategoryId) REFERENCES productCategories(id)
);

INSERT INTO productCategories(name)
VALUES ('Laptops'), ('Notebooks'), ('Smartphones');

INSERT INTO products(name, price, productCategoryId)
VALUES ('Asus Zenfone 5', 19990, 3), ('Asus FX504GD', 63900, 2), ('Apple iPad Pro 11', 75990, 1), ('HP Envy 13', 99990, 2);

DELETE FROM products
WHERE price > 65000
LIMIT 5;

UPDATE products
SET name = 'Asus Zenfone Max Pro', price = 11990
WHERE id = 1; 




