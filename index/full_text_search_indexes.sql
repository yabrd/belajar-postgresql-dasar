-- Menggunakan indeks untuk full-text search pada tabel 'products'
create index products_name_search on products using gin (to_tsvector('indonesian', name));
create index products_description_search on products using gin (to_tsvector('indonesian', description));
