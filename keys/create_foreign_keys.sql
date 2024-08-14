-- Menambahkan foreign key pada tabel products
ALTER TABLE products
ADD CONSTRAINT fk_category
FOREIGN KEY (id_category) REFERENCES categories(id);
