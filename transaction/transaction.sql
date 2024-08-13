-- Memulai transaksi baru
start transaction;

-- Menambahkan beberapa data ke dalam tabel guestbooks dalam transaksi
insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 2');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 3');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 4');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 5');

-- Menyelesaikan transaksi
commit;

-- Memulai transaksi baru untuk rollback
start transaction;

-- Menambahkan beberapa data ke dalam tabel guestbooks yang akan di-rollback
insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 2');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 3');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 4');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 5');

-- Melakukan rollback transaksi
rollback;
