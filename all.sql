-- Menampilkan daftar tabel yang ada dalam skema 'public'
select *
from pg_tables
where schemaname = 'public';

-- Membuat tabel 'barang'
create table barang
(
    kode         int          not null,
    name         varchar(100) not null,
    harga        int          not null default 1000,
    jumlah       int          not null default 0,
    waktu_dibuat TIMESTAMP    not null default current_timestamp
);

-- Menambahkan kolom 'deskripsi' pada tabel 'barang'
alter table barang
    add column deskripsi text;

-- Menghapus kolom 'deskripsi' dari tabel 'barang'
alter table barang
    drop column deskripsi;

-- Mengubah nama kolom 'name' menjadi 'nama' pada tabel 'barang'
alter table barang
    rename column name to nama;

-- Menghapus semua data dalam tabel 'barang' tanpa menghapus strukturnya
truncate barang;

-- Menghapus tabel 'barang'
drop table barang;

-- Membuat tabel 'products' dengan kolom id, name, description, price, quantity, dan created_at
create table products
(
    id          varchar(10)  not null,
    name        varchar(100) not null,
    description text,
    price       int          not null,
    quantity    int          not null default 0,
    created_at  timestamp    not null default current_timestamp
);

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

-- Mengambil semua data dari tabel 'products'
select *
from products;

-- Mengambil kolom 'id', 'name', 'price', dan 'quantity' dari tabel 'products'
select id, name, price, quantity
from products;

-- Menambahkan primary key pada kolom 'id' di tabel 'products'
alter table products
    add primary key (id);

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

-- Mengambil semua data dari tabel 'products'
select *
from products;

-- Membuat tipe enum 'PRODUCT_CATEGORY' dan menambahkannya sebagai kolom 'category' di tabel 'products'
create type PRODUCT_CATEGORY as enum ('Makanan', 'Minuman', 'Lain-Lain');

alter table products
    add column category PRODUCT_CATEGORY;

-- Mengambil semua data dari tabel 'products' setelah penambahan kolom 'category'
select *
from products;

-- Mengupdate kolom 'category' menjadi 'Makanan' untuk produk dengan 'id' tertentu
update products
set category = 'Makanan'
where id = 'P0001';

-- (Mengupdate kategori 'Makanan' pada produk lainnya)
update products
set category = 'Makanan'
where id = 'P0002';

update products
set category = 'Makanan'
where id = 'P0003';

update products
set category = 'Makanan'
where id = 'P0004';

update products
set category = 'Makanan'
where id = 'P0005';

-- Mengupdate kolom 'category' dan 'description' untuk produk dengan 'id' P0003
update products
set category    = 'Makanan',
    description = 'Mie Ayam + Ceker'
where id = 'P0003';

-- Mengambil semua data dari tabel 'products' setelah update
SELECT *
from products;

-- Mengupdate kolom 'price' untuk produk dengan 'id' P0004
update products
set price = price + 5000
where id = 'P0004';

-- Menambahkan data baru ke dalam tabel 'products' dan kemudian menghapusnya
insert into products(id, name, price, quantity, category)
values ('P0009', 'Contoh', 10000, 100, 'Minuman');

delete
from products
where id = 'P0009';

-- Mengambil kolom 'id', 'price', dan 'description' dari tabel 'products'
select id as "Kode Barang", price as "Harga Barang", description as "Deskripsi Barang"
from products;

-- Mengambil data dengan alias dari tabel 'products'
select p.id          as "Kode Barang",
       p.price       as "Harga Barang",
       p.description as "Deskripsi Barang"
from products as p;

-- Mengambil data dari tabel 'products' di mana 'price' lebih dari 15000
select *
from products
where price > 15000;

-- Mengambil data dari tabel 'products' di mana 'price' kurang dari atau sama dengan 15000
select *
from products
where price <= 15000;

-- Mengambil data dari tabel 'products' di mana 'category' bukan 'Minuman'
select *
from products
where category != 'Minuman';

-- Mengambil data dari tabel 'products' di mana 'price' lebih dari 15000 dan 'category' adalah 'Makanan'
select *
from products
where price > 15000
  and category = 'Makanan';

-- Mengambil semua data dari tabel 'products' setelah penambahan data 'Minuman'
SELECT *
FROM products;

-- Menambahkan beberapa data 'Minuman' ke dalam tabel 'products'
insert into products(id, name, price, quantity, category)
values ('P0006', 'Es teh tawar', 10000, 100, 'Minuman'),
       ('P0007', 'Es Campur', 20000, 100, 'Minuman'),
       ('P0008', 'Just Jeruk', 15000, 100, 'Minuman');

-- Mengambil data dari tabel 'products' di mana 'price' lebih dari 15000 atau 'category' adalah 'Makanan'
select *
from products
where price > 15000
   or category = 'Makanan';

-- Mengambil data dari tabel 'products' di mana 'quantity' lebih dari 100 atau 'category' adalah 'Makanan' dan 'price' lebih dari 15000
select *
from products
where quantity > 100
   OR category = 'Makanan' and price > 15000;

-- Mengambil data dari tabel 'products' di mana 'category' adalah 'Makanan' atau ('quantity' lebih dari 100 dan 'price' lebih dari 15000)
select *
from products
where category = 'Makanan'
   or (quantity > 100 and price > 15000);

-- Mengambil data dari tabel 'products' di mana 'name' mengandung kata 'es'
select *
from products
where name ilike '%es%';

-- Mengambil data dari tabel 'products' di mana 'description' adalah null
select *
from products
where description is null;

-- Mengambil data dari tabel 'products' di mana 'description' tidak null
select *
from products
where description is not null;

-- Mengambil data dari tabel 'products' di mana 'price' antara 10000 dan 20000
select *
from products
where price between 10000 and 20000;

-- Mengambil data dari tabel 'products' di mana 'price' tidak antara 10000 dan 20000
select *
from products
where price not between 10000 and 20000;

-- Mengambil data dari tabel 'products' di mana 'category' adalah 'Makanan' atau 'Minuman'
select *
from products
where category in ('Makanan', 'Minuman');

-- Mengambil semua data dari tabel 'products' dengan pengurutan berdasarkan 'price' naik dan 'id' turun
select *
from products
order by price asc, id desc;

-- Mengambil data dari tabel 'products' di mana 'price' lebih dari 0, diurutkan dan dibatasi 2 hasil
select *
from products
where price > 0
order by price asc, id desc
limit 2;

-- Mengambil data dari tabel 'products' dengan paginasi, dibatasi 2 hasil, dimulai dari offset ke-2
select *
from products
where price > 0
order by price asc, id desc
limit 2 offset 2;

-- Mengambil semua kategori dari tabel 'products'
select category
from products;

-- Mengambil kategori yang unik dari tabel 'products'
select distinct category
from products;

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

-- Membuat tabel 'admin' dengan kolom 'id', 'first_name', dan 'last_name'
create table admin
(
    id         serial       not null,             -- Kolom 'id' bertipe serial (auto increment)
    first_name varchar(100) not null,             -- Kolom 'first_name' bertipe varchar dengan panjang maksimal 100 karakter
    last_name  varchar(100),                      -- Kolom 'last_name' bertipe varchar dengan panjang maksimal 100 karakter, bisa null
    primary key (id)                              -- Menetapkan 'id' sebagai primary key
);

-- Menambahkan data ke dalam tabel 'admin'
insert into admin(first_name, last_name)
values ('Eko', 'Khannedy'),
       ('Budi', 'Nugraha'),
       ('Joko', 'Morro');

-- Mengambil semua data dari tabel 'admin'
select *
from admin;

-- Mengambil nilai current sequence dari kolom 'id' pada tabel 'admin'
select currval('admin_id_seq');

-- Membuat sequence baru bernama 'contoh_sequence'
create sequence contoh_sequence;

-- Mengambil nilai berikutnya dari sequence 'contoh_sequence'
select nextval('contoh_sequence');

-- Mengambil nilai current dari sequence 'contoh_sequence'
select currval('contoh_sequence');

-- Mengambil kolom 'id', 'name', dan 'description' dari tabel 'products'
select id, name, description
from products;

-- Mengambil 'id', name dalam lowercase, panjang dari name, dan description dalam lowercase dari tabel 'products'
select id, lower(name), length(name), lower(description)
from products;

-- Mengambil semua data dari tabel 'products'
select *
from products;

-- Mengambil 'id', tahun, dan bulan dari kolom 'created_at' di tabel 'products'
select id, extract(year from created_at), extract(month from created_at)
from products;

-- Mengambil 'id' dan 'category' dari tabel 'products'
select id, category
from products;

-- Mengambil 'id', 'category', dan memberikan label berdasarkan nilai 'category' menggunakan CASE
select id,
       category,
       case category
           when 'Makanan' then 'Enak'
           when 'Minuman' then 'Seger'
           else 'Apa itu?'
           end as category_case
from products;

-- Mengambil 'id', 'price', dan memberikan label berdasarkan nilai 'price' menggunakan CASE
select id,
       price,
       case
           when price <= 15000 then 'Murah'
           when price <= 20000 then 'Mahal'
           else 'Mahal Banget'
           end as "apakah murah?"
from products;

-- Mengambil 'id', 'name', dan memberikan deskripsi default 'kosong' jika 'description' bernilai null menggunakan CASE
select id,
       name,
       case
           when description is null then 'kosong'
           else description
           end as description
from products;

-- Menghitung jumlah 'id' dari tabel 'products'
select count(id)
from products;

-- Menghitung rata-rata 'price' dari tabel 'products'
select avg(price)
from products;

-- Mengambil nilai maksimal dari 'price' dari tabel 'products'
select max(price)
from products;

-- Mengambil nilai minimal dari 'price' dari tabel 'products'
select min(price)
from products;

-- Mengelompokkan data berdasarkan 'category' dan menghitung jumlah 'id' dalam setiap kategori
select category, count(id) as "Total Product"
from products
group by category;

-- Mengelompokkan data berdasarkan 'category', menghitung rata-rata, minimum, dan maksimum 'price' dalam setiap kategori
select category,
       avg(price) as "Rata Rata Harga",
       min(price) as "Harga termurah",
       max(price) as "Harga termahal"
from products
group by category;

-- Mengelompokkan data berdasarkan 'category' dan menghitung jumlah 'id' dalam setiap kategori, hanya menampilkan kategori dengan lebih dari 3 produk
select category, count(id) as "Total Product"
from products
group by category
having count(id) > 3;

-- Mengelompokkan data berdasarkan 'category', menghitung rata-rata, minimum, dan maksimum 'price' dalam setiap kategori, hanya menampilkan kategori dengan rata-rata harga lebih dari atau sama dengan 20000
select category,
       avg(price) as "Rata Rata Harga",
       min(price) as "Harga termurah",
       max(price) as "Harga termahal"
from products
group by category
having avg(price) >= 20000;

-- Membuat tabel 'customer' dengan kolom 'id', 'email', 'first_name', dan 'last_name'
create table customer
(
    id         serial       not null,              -- Kolom 'id' bertipe serial (auto increment)
    email      varchar(100) not null,              -- Kolom 'email' bertipe varchar dengan panjang maksimal 100 karakter
    first_name varchar(100) not null,              -- Kolom 'first_name' bertipe varchar dengan panjang maksimal 100 karakter
    last_name  varchar(100),                       -- Kolom 'last_name' bertipe varchar dengan panjang maksimal 100 karakter, bisa null
    primary key (id),                              -- Menetapkan 'id' sebagai primary key
    constraint unique_email unique (email)         -- Menambahkan constraint agar 'email' unik
);

-- Mengambil semua data dari tabel 'customer'
select *
from customer;

-- Menambahkan data ke dalam tabel 'customer'
insert into customer(email, first_name, last_name)
values ('eko@pzn.com', 'Eko', 'Khannedy');

insert into customer(email, first_name, last_name)
values ('budi@pzn.com', 'Budi', 'Nugraha'),
       ('joko@pzn.com', 'Joko', 'Morro'),
       ('rully@pzn.com', 'Rully', 'Irwansyah');

-- Menghapus constraint 'unique_email' dari tabel 'customer'
alter table customer
    drop constraint unique_email;

-- Menambahkan kembali constraint 'unique_email' pada tabel 'customer'
alter table customer
    add constraint unique_email unique (email);

-- Menambahkan constraint pada kolom 'price' di tabel 'products' agar nilainya lebih dari 1000
alter table products
    add constraint price_check check ( price > 1000 );

-- Menambahkan constraint pada kolom 'quantity' di tabel 'products' agar nilainya tidak kurang dari 0
alter table products
    add constraint quantity_check check ( quantity >= 0 );

-- Menambahkan data ke dalam tabel 'products' yang melanggar constraint 'price_check'
insert into products(id, name, price, quantity, category)
values ('XXX1', 'Contoh Gagal', 10, 0, 'Minuman');

-- Menambahkan data ke dalam tabel 'products' yang melanggar constraint 'quantity_check'
insert into products(id, name, price, quantity, category)
values ('XXX1', 'Contoh Gagal', 10000, -10, 'Minuman');

-- Mengambil semua data dari tabel 'products'
select *
from products;

-- Membuat tabel 'sellers' dengan kolom 'id', 'name', dan 'email'
create table sellers
(
    id    serial       not null,               -- Kolom 'id' bertipe serial (auto increment)
    name  varchar(100) not null,               -- Kolom 'name' bertipe varchar dengan panjang maksimal 100 karakter
    email varchar(100) not null,               -- Kolom 'email' bertipe varchar dengan panjang maksimal 100 karakter
    primary key (id),                          -- Menetapkan 'id' sebagai primary key
    constraint email_unique unique (email)     -- Menambahkan constraint agar 'email' unik
);

-- Menambahkan data ke dalam tabel 'sellers'
insert into sellers(name, email)
values ('Galeri Olahraga', 'galeri@pzn.com'),
       ('Toko Tono', 'tono@pzn.com'),
       ('Toko Budi', 'budi@pzn.com'),
       ('Toko Rully', 'rully@pzn.com');

-- Mengambil semua data dari tabel 'sellers'
SELECT *
From sellers;

-- Membuat index pada kolom 'id' dan 'name' di tabel 'sellers'
create index sellers_id_and_name_index ON sellers (id, name);

-- Membuat index pada kolom 'email' dan 'name' di tabel 'sellers'
create index sellers_email_and_name_index ON sellers (email, name);

-- Membuat index pada kolom 'name' di tabel 'sellers'
create index sellers_name_index ON sellers (name);

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

-- Mengambil data dari tabel 'products' di mana 'name' cocok dengan to_tsquery 'mie'
select *
from products
where to_tsvector(name) @@ to_tsquery('mie');

-- Mengambil nama konfigurasi text search yang tersedia di PostgreSQL
select cfgname
from pg_ts_config;

-- Membuat index GIN pada kolom 'name' menggunakan konfigurasi 'indonesian' pada tabel 'products'
create index products_name_search on products using gin (to_tsvector('indonesian', name));

-- Membuat index GIN pada kolom 'description' menggunakan konfigurasi 'indonesian' pada tabel 'products'
create index products_description_search on products using gin (to_tsvector('indonesian', description));

-- Mengambil data dari tabel 'products' di mana 'name' cocok dengan to_tsquery 'ayam & tahu'
select *
from products
where name @@ to_tsquery('ayam & tahu');

-- Mengambil data dari tabel 'products' di mana 'description' cocok dengan to_tsquery 'mie'
select *
from products
where description @@ to_tsquery('mie');

-- Membuat tabel 'wishlist' dengan foreign key ke tabel 'products'
create table wishlist
(
    id          serial      not null,                   -- Kolom 'id' bertipe serial (auto increment)
    id_product  varchar(10) not null,                   -- Kolom 'id_product' bertipe varchar dengan panjang maksimal 10 karakter
    description text,                                   -- Kolom 'description' bertipe text, bisa null
    primary key (id),                                   -- Menetapkan 'id' sebagai primary key
    constraint fk_wishlist_product foreign key (id_product) references products (id)  -- Membuat foreign key ke tabel 'products'
);

-- Menambahkan data ke tabel 'wishlist'
insert into wishlist(id_product, description)
values ('P0001', 'Mie ayam kesukaan'),
       ('P0002', 'Mie ayam kesukaan'),
       ('P0005', 'Mie ayam kesukaan');

-- Menampilkan semua data dari tabel 'wishlist'
SELECT *
FROM wishlist;

-- Menghapus data dari tabel 'products' di mana 'id' adalah 'P0005'
delete
from products
where id = 'P0005';

-- Menghapus constraint foreign key dari tabel 'wishlist'
alter table wishlist
    drop constraint fk_wishlist_product;

-- Menambahkan kembali constraint foreign key pada tabel 'wishlist' dengan opsi cascade
alter table wishlist
    add constraint fk_wishlist_product foreign key (id_product) references products (id)
        on delete cascade on update cascade;

-- Menambahkan data ke tabel 'products'
insert into products(id, name, price, quantity, category)
values ('XXX', 'Xxx', 10000, 100, 'Minuman');

-- Menampilkan semua data dari tabel 'products'
SELECT *
FROM products;

-- Menambahkan data ke tabel 'wishlist'
insert into wishlist(id_product, description)
values ('XXX', 'Contoh');

-- Menampilkan semua data dari tabel 'wishlist'
select *
from wishlist;

-- Menghapus data dari tabel 'products' di mana 'id' adalah 'XXX'
delete
from products
where id = 'XXX';

-- Melakukan join antara 'wishlist' dan 'products' berdasarkan 'id_product'
select *
from wishlist
         join products on wishlist.id_product = products.id;

-- Menampilkan data 'id', 'name' dari tabel 'products' dan 'description' dari tabel 'wishlist'
select p.id, p.name, w.description
from wishlist as w
         join products as p on w.id_product = p.id;

-- Menambahkan kolom 'id_customer' ke tabel 'wishlist'
alter table wishlist
    add column id_customer int;

-- Menambahkan constraint foreign key 'id_customer' pada tabel 'wishlist'
alter table wishlist
    add constraint fk_wishlist_customer foreign key (id_customer) references customer (id);

-- Update 'wishlist' untuk mengisi kolom 'id_customer' dengan nilai tertentu
update wishlist
set id_customer = 1
where id in (2, 3);

update wishlist
set id_customer = 4
where id = 4;

-- Menampilkan semua data dari tabel 'customer'
select *
From customer;

-- Menampilkan semua data dari tabel 'wishlist'
select *
from wishlist;

-- Melakukan join antara 'wishlist', 'products', dan 'customer' untuk menampilkan data yang relevan
select c.email, p.id, p.name, w.description
from wishlist as w
         join products as p on w.id_product = p.id
         join customer as c on c.id = w.id_customer;

-- Membuat tabel 'wallet' dengan foreign key ke tabel 'customer'
create table wallet
(
    id          serial not null,                    -- Kolom 'id' bertipe serial (auto increment)
    id_customer int    not null,                    -- Kolom 'id_customer' bertipe int
    balance     int    not null default 0,          -- Kolom 'balance' bertipe int dengan nilai default 0
    primary key (id),                               -- Menetapkan 'id' sebagai primary key
    constraint wallet_customer_unique unique (id_customer),  -- Menambahkan constraint agar 'id_customer' unik
    constraint fk_wallet_customer foreign key (id_customer) references customer (id)  -- Membuat foreign key ke tabel 'customer'
);

-- Menampilkan semua data dari tabel 'customer'
select *
from customer;

-- Menambahkan data ke tabel 'wallet'
insert into wallet(id_customer, balance)
values (1, 1000000),
       (4, 2000000),
       (5, 3000000),
       (6, 4000000);

-- Menampilkan semua data dari tabel 'wallet'
select *
from wallet;

-- Melakukan join antara 'customer' dan 'wallet' untuk menampilkan data yang relevan
select *
from customer
         join wallet on wallet.id_customer = customer.id;

-- Membuat tabel 'categories' untuk kategori produk
create table categories
(
    id   varchar(10)  not null,                    -- Kolom 'id' bertipe varchar dengan panjang maksimal 10 karakter
    name varchar(100) not null,                    -- Kolom 'name' bertipe varchar dengan panjang maksimal 100 karakter
    primary key (id)                               -- Menetapkan 'id' sebagai primary key
);

-- Menambahkan data ke tabel 'categories'
insert into categories(id, name)
values ('C0001', 'Makanan'),
       ('C0002', 'Minuman');

-- Menampilkan semua data dari tabel 'categories'
select *
from categories;

-- Menambahkan kolom 'id_category' ke tabel 'products'
alter table products
    add column id_category varchar(10);

-- Menambahkan constraint foreign key 'id_category' pada tabel 'products'
alter table products
    add constraint fk_product_category foreign key (id_category) references categories (id);

-- Menampilkan semua data dari tabel 'products'
select *
from products;

-- Mengupdate kolom 'id_category' pada tabel 'products' berdasarkan nilai kategori
update products
set id_category = 'C0001'
where category = 'Makanan';

update products
set id_category = 'C0002'
where category = 'Minuman';

-- Menghapus kolom 'category' dari tabel 'products'
alter table products
    drop column category;

-- Melakukan join antara 'products' dan 'categories' berdasarkan 'id_category'
select *
from products
         join categories on products.id_category = categories.id;

-- Membuat tabel 'orders' untuk menyimpan informasi pesanan
create table orders
(
    id         serial    not null,                 -- Kolom 'id' bertipe serial (auto increment)
    total      int       not null,                 -- Kolom 'total' bertipe int
    order_date timestamp not null default current_timestamp,  -- Kolom 'order_date' bertipe timestamp dengan nilai default waktu sekarang
    primary key (id)                               -- Menetapkan 'id' sebagai primary key
);

-- Membuat tabel 'orders_detail' untuk menyimpan detail pesanan
create table orders_detail
(
    id_product varchar(10) not null,              -- Kolom 'id_product' bertipe varchar dengan panjang maksimal 10 karakter
    id_order   int         not null,              -- Kolom 'id_order' bertipe int
    price      int         not null,              -- Kolom 'price' bertipe int
    quantity   int         not null,              -- Kolom 'quantity' bertipe int
    primary key (id_product, id_order)            -- Menetapkan 'id_product' dan 'id_order' sebagai primary key komposit
);

-- Menambahkan constraint foreign key 'id_product' pada tabel 'orders_detail'
alter table orders_detail
    add constraint fk_orders_detail_product foreign key (id_product) references products (id);

-- Menambahkan constraint foreign key 'id_order' pada tabel 'orders_detail'
alter table orders_detail
    add constraint fk_orders_detail_order foreign key (id_order) references orders (id);

-- Menambahkan data ke tabel 'orders'
insert into orders(total)
values (1),
       (1),
       (1);

-- Menampilkan semua data dari tabel 'orders'
select *
from orders;

-- Menampilkan semua data dari tabel 'products' dan mengurutkan berdasarkan 'id'
select *
from products
order by id;

-- Menambahkan data ke tabel 'orders_detail'
insert into orders_detail (id_product, id_order, price, quantity)
values ('P0001', 1, 1000, 2),
       ('P0002', 1, 1000, 2),
       ('P0003', 1, 1000, 2);

insert into orders_detail (id_product, id_order, price, quantity)
values ('P0004', 2, 1000, 2),
       ('P0006', 2, 1000, 2),
       ('P0007', 2, 1000, 2);

insert into orders_detail (id_product, id_order, price, quantity)
values ('P0001', 3, 1000, 2),
       ('P0004', 3, 1000, 2),
       ('P0005', 3, 1000, 2);

-- Menampilkan semua data dari tabel 'orders_detail'
select *
from orders_detail;

-- Melakukan join antara 'orders', 'orders_detail', dan 'products' untuk menampilkan data yang relevan
select *
from orders
         join orders_detail on orders_detail.id_order = orders.id
         join products on orders_detail.id_product = products.id;

-- Menampilkan data untuk 'order' dengan id tertentu dan melakukan join dengan 'orders_detail' dan 'products'
select *
from orders
         join orders_detail on orders_detail.id_order = orders.id
         join products on orders_detail.id_product = products.id
where orders.id = 3;

-- Menambahkan kategori baru ke tabel categories
insert into categories (id, name)
VALUES ('C0003', 'Gadget'),
       ('C0004', 'Laptop'),
       ('C0005', 'Pulsa');

-- Menampilkan semua data dari tabel categories
select * from categories;

-- Menampilkan semua data dari tabel products
select * from products;

-- Menambahkan produk baru ke tabel products
insert into products(id, name, price, quantity)
values ('X0001', 'Contoh 1', 10000, 100),
       ('X0002', 'Contoh 2', 10000, 100);

-- Inner join antara tabel categories dan products berdasarkan id_category
select *
from categories
         inner join products on products.id_category = categories.id;

-- Left join antara tabel categories dan products untuk menampilkan semua kategori termasuk yang tidak memiliki produk
select *
from categories
         left join products on products.id_category = categories.id;

-- Right join antara tabel categories dan products untuk menampilkan semua produk termasuk yang tidak memiliki kategori
select *
from categories
         right join products on products.id_category = categories.id;

-- Full join antara tabel categories dan products untuk menampilkan semua kategori dan produk termasuk yang tidak memiliki pasangan
select *
from categories
         full join products on products.id_category = categories.id;

-- Menghitung rata-rata harga dari semua produk di tabel products
select avg(price) from products;

-- Menampilkan semua produk yang harganya di atas rata-rata
select * from products
where price > (select avg(price) from products);

-- Menampilkan semua data dari tabel products
select * from products;

-- Menampilkan harga maksimum dari semua produk dalam tabel products menggunakan subquery
select max(price)
from (select products.price as price
      from categories
               join products on products.id_category = categories.id) as contoh;

-- Membuat tabel guestbooks untuk menyimpan feedback atau pesan tamu
create table guestbooks
(
    id      serial       not null,
    email   varchar(100) not null,
    title   varchar(100) not null,
    content text,
    primary key (id)
);

-- Menampilkan semua data dari tabel customer
select * from customer;

-- Menambahkan beberapa data ke dalam tabel guestbooks
insert into guestbooks(email, title, content)
values ('eko@pzn.com', 'feedback eko', 'ini feedback eko'),
       ('eko@pzn.com', 'feedback eko', 'ini feedback eko'),
       ('budi@pzn.com', 'feedback budi', 'ini feedback budi'),
       ('rully@pzn.com', 'feedback rully', 'ini feedback rully'),
       ('tono@pzn.com', 'feedback tono', 'ini feedback tono'),
       ('tono@pzn.com', 'feedback tono', 'ini feedback tono');

-- Menampilkan semua data dari tabel guestbooks
select * from guestbooks;

-- Menampilkan semua email unik dari tabel customer dan guestbooks menggunakan union
select distinct email
from customer
union
select distinct email
from guestbooks;

-- Menampilkan semua email dari tabel customer dan guestbooks menggunakan union all
select email
from customer
union all
select email from guestbooks;

-- Menampilkan email dan menghitung jumlah kemunculannya dari tabel customer dan guestbooks
select email, count(email)
from (select email
      from customer
      union all
      select email
      from guestbooks) as contoh
group by email;

-- Menampilkan email yang ada di tabel customer dan guestbooks (intersect)
select email
from customer
intersect
select email
from guestbooks;

-- Menampilkan email yang ada di tabel customer tapi tidak ada di tabel guestbooks (except)
select email
from customer
except
select email
from guestbooks;

-- Memulai transaksi baru
start transaction;

-- Menambahkan beberapa data ke dalam tabel guestbooks dalam transaksi
insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 2');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 3');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 4');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 5');

-- Menampilkan semua data dari tabel guestbooks
select * from guestbooks;

-- Menyelesaikan transaksi
commit;

-- Memulai transaksi baru untuk rollback
start transaction;

-- Menambahkan beberapa data ke dalam tabel guestbooks yang akan di-rollback
insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 2');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 3');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 4');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 5');

-- Menampilkan semua data dari tabel guestbooks sebelum rollback
select * from guestbooks;

-- Melakukan rollback transaksi
rollback;

-- Menampilkan semua data dari tabel products
select * from products;

-- Memulai transaksi baru untuk update data
start transaction;

-- Memperbarui deskripsi produk dengan id 'P0001'
update products
set description = 'Mie ayam original enak'
where id = 'P0001';

-- Menampilkan data produk dengan id 'P0001'
select * from products
where id = 'P0001';

-- Menyelesaikan transaksi
commit;

-- Memulai transaksi baru untuk lock data
start transaction;

-- Mengunci data produk dengan id 'P0001' untuk update
select * from products
where id = 'P0001' for update;

-- Membatalkan transaksi
rollback;

-- Menampilkan data produk dengan id 'P0001'
select * from products
where id = 'P0001';

-- Memulai transaksi baru untuk lock beberapa data
start transaction;

-- Mengunci data produk dengan id 'P0001' untuk update
select * from products
where id = 'P0001' for update;

-- Mengunci data produk dengan id 'P0002' untuk update
select * from products
where id = 'P0002' for update;

-- Membatalkan transaksi
rollback;

-- Menampilkan schema yang saat ini digunakan
select current_schema();

-- Membuat schema baru bernama contoh
create schema contoh;

-- Menghapus schema contoh
drop schema contoh;

-- Mengubah search path ke schema contoh
SET search_path TO contoh;

-- Menampilkan schema yang saat ini digunakan
select current_schema();

-- Menampilkan semua data dari tabel products di schema public
select * from public.products;

-- Membuat tabel products di schema contoh
create table contoh.products
(
    id   serial       not null,
    name varchar(100) not null,
    primary key (id)
);

-- Menampilkan semua data dari tabel products di schema contoh
select * from contoh.products;

-- Mengubah search path ke schema public
SET search_path TO public;

-- Menambahkan beberapa data ke dalam tabel products di schema contoh
insert into contoh.products(name)
values ('iphone'),
       ('Play Station');

-- Menampilkan semua data dari tabel products di schema contoh
select * from contoh.products;

-- Membuat role baru bernama eko
create role eko;

-- Membuat role baru bernama budi
create role budi;

-- Menghapus role eko
drop role eko;

-- Menghapus role budi
drop role budi;

-- Mengubah role eko menjadi bisa login dengan password 'rahasia'
alter role eko login password 'rahasia';

-- Mengubah role budi menjadi bisa login dengan password 'rahasia'
alter role budi login password 'rahasia';

-- Memberikan hak insert, update, dan select pada semua tabel di schema public untuk role eko
grant insert, update, select on all tables in schema public to eko;

-- Memberikan hak usage, select, dan update pada sequence guestbooks_id_seq untuk role eko
grant usage, select, update ON guestbooks_id_seq TO eko;

-- Memberikan hak insert, update, dan select pada tabel customer untuk role budi
grant insert, update, select on customer to budi;

-- Membuat database baru bernama belajar_restore
create database belajar_restore;