-- Menambahkan constraint unique pada kolom email di tabel customer
ALTER TABLE customer ADD CONSTRAINT unique_email UNIQUE(email);
