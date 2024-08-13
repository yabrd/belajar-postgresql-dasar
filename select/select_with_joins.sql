-- Melakukan join antara 'wishlist' dan 'products'
select *
from wishlist
         join products on wishlist.id_product = products.id;

-- Melakukan join antara 'orders', 'orders_detail', dan 'products'
select *
from orders
         join orders_detail on orders_detail.id_order = orders.id
         join products on orders_detail.id_product = products.id;

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
