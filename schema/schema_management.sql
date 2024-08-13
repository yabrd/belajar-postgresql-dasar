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
