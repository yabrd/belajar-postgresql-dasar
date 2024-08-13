-- Menampilkan daftar tabel yang ada dalam skema 'public'
select *
from pg_tables
where schemaname = 'public';

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

-- Membuat tabel 'admin' dengan kolom 'id', 'first_name', dan 'last_name'
create table admin
(
    id         serial       not null,             -- Kolom 'id' bertipe serial (auto increment)
    first_name varchar(100) not null,             -- Kolom 'first_name' bertipe varchar dengan panjang maksimal 100 karakter
    last_name  varchar(100),                      -- Kolom 'last_name' bertipe varchar dengan panjang maksimal 100 karakter, bisa null
    primary key (id)                              -- Menetapkan 'id' sebagai primary key
);

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

-- Membuat tabel 'sellers' dengan kolom 'id', 'name', dan 'email'
create table sellers
(
    id    serial       not null,               -- Kolom 'id' bertipe serial (auto increment)
    name  varchar(100) not null,               -- Kolom 'name' bertipe varchar dengan panjang maksimal 100 karakter
    email varchar(100) not null,               -- Kolom 'email' bertipe varchar dengan panjang maksimal 100 karakter
    primary key (id),                          -- Menetapkan 'id' sebagai primary key
    constraint email_unique unique (email)     -- Menambahkan constraint agar 'email' unik
);

-- Membuat tabel 'wishlist'
create table wishlist
(
    id          serial      not null,
    id_product  varchar(10) not null,
    description text,
    primary key (id),
    constraint fk_wishlist_product foreign key (id_product) references products (id)
);

-- Membuat tabel 'wallet'
create table wallet
(
    id          serial not null,
    id_customer int    not null,
    balance     int    not null default 0,
    primary key (id),
    constraint wallet_customer_unique unique (id_customer),
    constraint fk_wallet_customer foreign key (id_customer) references customer (id)
);

-- Membuat tabel 'categories'
create table categories
(
    id   varchar(10)  not null,
    name varchar(100) not null,
    primary key (id)
);

-- Membuat tabel 'orders'
create table orders
(
    id         serial    not null,
    total      int       not null,
    order_date timestamp not null default current_timestamp,
    primary key (id)
);

-- Membuat tabel 'orders_detail'
create table orders_detail
(
    id_product varchar(10) not null,
    id_order   int         not null,
    price      int         not null,
    quantity   int         not null,
    primary key (id_product, id_order)
);

-- Membuat tabel 'guestbooks' untuk menyimpan feedback atau pesan tamu
create table guestbooks
(
    id      serial       not null,
    email   varchar(100) not null,
    title   varchar(100) not null,
    content text,
    primary key (id)
);
