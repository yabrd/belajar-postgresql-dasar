-- Menambahkan constraint unique pada kolom 'email' di tabel 'customer'
alter table customer
    add constraint unique_email unique (email);

-- Menambahkan constraint unique pada kolom 'id_customer' di tabel 'wallet'
alter table wallet
    add constraint wallet_customer_unique unique (id_customer);
