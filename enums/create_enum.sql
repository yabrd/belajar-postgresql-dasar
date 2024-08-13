-- Membuat tipe enum 'PRODUCT_CATEGORY' dan menambahkannya sebagai kolom 'category' di tabel 'products'
create type PRODUCT_CATEGORY as enum ('Makanan', 'Minuman', 'Lain-Lain');
