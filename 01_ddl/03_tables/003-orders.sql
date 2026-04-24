CREATE TABLE orders (
    id_order INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    total DECIMAL(10,2),
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),
    CONSTRAINT fk_orders_user FOREIGN KEY (user_id) REFERENCES users(id_user),
    CONSTRAINT fk_orders_product FOREIGN KEY (product_id) REFERENCES products(id_product)
);