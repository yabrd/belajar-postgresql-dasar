-- Mengambil data dari tabel 'products' dengan paginasi, dibatasi 2 hasil, dimulai dari offset ke-2
select *
from products
where price > 0
order by price asc, id desc
limit 2 offset 2;
