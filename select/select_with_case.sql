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
