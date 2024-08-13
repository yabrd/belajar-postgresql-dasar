-- Membuat index GIN pada kolom 'name' menggunakan konfigurasi 'indonesian' pada tabel 'products'
create index products_name_search on products using gin (to_tsvector('indonesian', name));

-- Membuat index GIN pada kolom 'description' menggunakan konfigurasi 'indonesian' pada tabel 'products'
create index products_description_search on products using gin (to_tsvector('indonesian', description));
