-- Menetapkan 'id' di tabel 'admin' sebagai foreign key di tabel 'customer'
alter table customer
    add constraint fk_admin_id foreign key (id)
        references admin (id)
        on delete cascade;

-- Menetapkan foreign key pada tabel 'wishlist'
alter table wishlist
    add constraint fk_wishlist_product foreign key (id_product) references products (id);

-- Menetapkan foreign key pada tabel 'wallet'
alter table wallet
    add constraint fk_wallet_customer foreign key (id_customer) references customer (id);
