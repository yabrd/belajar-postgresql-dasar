-- Many-to-Many Relationship: Misalnya, tabel 'products' dan 'orders_detail'
select *
from orders_detail
         join products on orders_detail.id_product = products.id;
