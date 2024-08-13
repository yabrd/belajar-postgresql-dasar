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

-- Menghitung rata-rata harga dari semua produk di tabel products
select avg(price) from products;

-- Menampilkan semua produk yang harganya di atas rata-rata
select * from products
where price > (select avg(price) from products);

-- Menampilkan harga maksimum dari semua produk dalam tabel products menggunakan subquery
select max(price)
from (select products.price as price
      from categories
               join products on products.id_category = categories.id) as contoh;
