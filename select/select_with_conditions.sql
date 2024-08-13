-- Mengambil data dari tabel 'products' di mana 'quantity' adalah 0
select id, name, price, quantity
from products
where quantity = 0;

-- Mengambil data dari tabel 'products' di mana 'price' adalah 20000
select id, name, price, quantity
from products
where price = 20000;

-- Mengambil data dari tabel 'products' di mana 'id' adalah 'P0004'
select id, name, price, quantity
from products
where id = 'P0004';

-- Mengambil data dari tabel 'products' di mana 'category' bukan 'Minuman'
select *
from products
where category != 'Minuman';

-- Mengambil data dari tabel 'products' di mana 'price' lebih dari 0, diurutkan dan dibatasi 2 hasil
select *
from products
where price > 0
order by price asc, id desc
limit 2;

-- Mengambil data dari tabel 'sellers' di mana 'id' adalah 1
select *
from sellers
where id = 1;

-- Mengambil data dari tabel 'sellers' di mana 'id' adalah 1 atau 'name' adalah 'Toko Tono'
select *
from sellers
where id = 1
   or name = 'Toko Tono';

-- Mengambil data dari tabel 'sellers' di mana 'email' adalah 'rully@pzn.com' atau 'name' adalah 'Toko Tono'
select *
from sellers
where email = 'rully@pzn.com'
   or name = 'Toko Tono';

-- Mengambil data dari tabel 'sellers' di mana 'name' adalah 'Toko Tono'
select *
from sellers
where name = 'Toko Tono';

-- Mengambil data dari tabel 'products' di mana 'name' mengandung kata 'mie'
select *
from products
where name ilike '%mie%';
