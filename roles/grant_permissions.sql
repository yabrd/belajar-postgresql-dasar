-- Memberikan hak insert, update, dan select pada semua tabel di schema public untuk role eko
grant insert, update, select on all tables in schema public to eko;

-- Memberikan hak usage, select, dan update pada sequence guestbooks_id_seq untuk role eko
grant usage, select, update ON guestbooks_id_seq TO eko;

-- Memberikan hak insert, update, dan select pada tabel customer untuk role budi
grant insert, update, select on customer to budi;
