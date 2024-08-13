-- Menambahkan data baru ke dalam tabel 'products' dan kemudian menghapusnya
insert into products(id, name, price, quantity, category)
values ('P0009', 'Contoh', 10000, 100, 'Minuman');

delete
from products
where id = 'P0009';
