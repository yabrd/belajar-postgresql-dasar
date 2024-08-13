-- Mengupdate kolom 'category' dan 'description' untuk produk dengan 'id' P0003
update products
set category    = 'Makanan',
    description = 'Mie Ayam + Ceker'
where id = 'P0003';

-- Mengupdate kolom 'price' untuk produk dengan 'id' P0004
update products
set price = price + 5000
where id = 'P0004';

-- Memperbarui deskripsi produk dengan id 'P0001'
update products
set description = 'Mie ayam original enak'
where id = 'P0001';
