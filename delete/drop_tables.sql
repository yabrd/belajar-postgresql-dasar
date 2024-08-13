-- Menghapus kolom 'deskripsi' dari tabel 'barang'
alter table barang
    drop column deskripsi;

-- Menghapus tabel 'barang'
drop table barang;