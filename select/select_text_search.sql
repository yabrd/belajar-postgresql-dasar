-- Mengambil data dari tabel 'products' di mana 'name' cocok dengan to_tsquery 'mie'
select *
from products
where to_tsvector(name) @@ to_tsquery('mie');

-- Mengambil nama konfigurasi text search yang tersedia di PostgreSQL
select cfgname
from pg_ts_config;
