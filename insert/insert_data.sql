-- Menambahkan data ke dalam tabel 'products'
insert into products(id, name, price, quantity)
values ('P0001', 'Mie Ayam Original', 15000, 100);

-- Menambahkan data ke dalam tabel 'products' dengan deskripsi
insert into products(id, name, description, price, quantity)
values ('P0002', 'Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu', 20000, 100);

-- Menambahkan beberapa data ke dalam tabel 'products'
insert into products(id, name, price, quantity)
values ('P0003', 'Mie Ayam Ceker', 20000, 100),
       ('P0004', 'Mie Ayam Spesial', 25000, 100),
       ('P0005', 'Mie Ayam Yamin', 15000, 100);

-- Menambahkan data ke tabel 'wishlist'
insert into wishlist(id_product, description)
values ('P0001', 'Mie ayam kesukaan'),
       ('P0002', 'Mie ayam kesukaan'),
       ('P0005', 'Mie ayam kesukaan');

-- Menambahkan data ke tabel 'products'
insert into products(id, name, price, quantity, category)
values ('XXX', 'Xxx', 10000, 100, 'Minuman');

-- Menambahkan data ke tabel 'wallet'
insert into wallet(id_customer, balance)
values (1, 1000000),
       (4, 2000000),
       (5, 3000000),
       (6, 4000000);

-- Menambahkan data ke tabel 'categories'
insert into categories(id, name)
values ('C0001', 'Makanan'),
       ('C0002', 'Minuman');

-- Menambahkan beberapa data ke dalam tabel guestbooks
insert into guestbooks(email, title, content)
values ('eko@pzn.com', 'feedback eko', 'ini feedback eko'),
       ('eko@pzn.com', 'feedback eko', 'ini feedback eko'),
       ('budi@pzn.com', 'feedback budi', 'ini feedback budi'),
       ('rully@pzn.com', 'feedback rully', 'ini feedback rully'),
       ('tono@pzn.com', 'feedback tono', 'ini feedback tono'),
       ('tono@pzn.com', 'feedback tono', 'ini feedback tono');
