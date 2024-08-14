-- Membuat role baru bernama eko
create role eko;

-- Membuat role baru bernama budi
create role budi;

-- Mengubah role eko menjadi bisa login dengan password 'rahasia'
alter role eko login password 'rahasia';

-- Mengubah role budi menjadi bisa login dengan password 'rahasia'
alter role budi login password 'rahasia';

-- Membuat role baru bernama admin
CREATE ROLE admin LOGIN PASSWORD 'adminpass';

-- Membuat role baru bernama user
CREATE ROLE user LOGIN PASSWORD 'userpass'