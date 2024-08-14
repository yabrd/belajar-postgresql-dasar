-- Menambahkan data menggunakan sequence
INSERT INTO products (id, name, price, quantity, id_category) 
VALUES (nextval('products_id_seq'), 'Grooming Kit', 20000, 20, 3);
