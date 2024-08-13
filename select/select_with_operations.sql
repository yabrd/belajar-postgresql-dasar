-- Melakukan operasi matematika sederhana (10 + 10)
select 10 + 10 as hasil;

-- Mengambil data dari tabel 'products' dengan kolom 'price' yang dibagi 1000
select id, name, price / 1000 as price_in_k
from products;

-- Mengambil nilai pi
select pi();

-- Mengambil hasil pangkat 10 pangkat 2
select power(10, 2);

-- Mengambil hasil fungsi trigonometri
select cos(10), sin(10), tan(10);

-- Mengambil data dari tabel 'products' dan memangkatkan kolom 'quantity'
select id, name, power(quantity, 2) as quantity_power_2
from products;

-- Mengambil 'id', tahun, dan bulan dari kolom 'created_at' di tabel 'products'
select id, extract(year from created_at), extract(month from created_at)
from products;
