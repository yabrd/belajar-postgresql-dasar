-- Mengambil semua data dari tabel 'products'
select *
from products;

-- Mengambil kolom 'id', 'name', 'price', dan 'quantity' dari tabel 'products'
select id, name, price, quantity
from products;

-- Mengambil 'id', name dalam lowercase, panjang dari name, dan description dalam lowercase dari tabel 'products'
select id, lower(name), length(name), lower(description)
from products;