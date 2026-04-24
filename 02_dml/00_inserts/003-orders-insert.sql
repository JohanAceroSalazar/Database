INSERT INTO orders (user_id, product_id, total)
VALUES 
(
    (SELECT id_user FROM users WHERE email = 'juan@example.com'),
    (SELECT id_product FROM products WHERE name = 'Laptop'),
    3500.00
),
(
    (SELECT id_user FROM users WHERE email = 'maria@example.com'),
    (SELECT id_product FROM products WHERE name = 'Mouse'),
    50.00
),
(
    (SELECT id_user FROM users WHERE email = 'carlos@example.com'),
    (SELECT id_product FROM products WHERE name = 'Teclado'),
    120.00
);