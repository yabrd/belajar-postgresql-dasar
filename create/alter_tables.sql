-- Menambahkan kolom 'deskripsi' pada tabel 'barang'
alter table barang
    add column deskripsi text;

-- Mengubah nama kolom 'name' menjadi 'nama' pada tabel 'barang'
alter table barang
    rename column name to nama;

-- Menambahkan primary key pada kolom 'id' di tabel 'products'
alter table products
    add primary key (id);