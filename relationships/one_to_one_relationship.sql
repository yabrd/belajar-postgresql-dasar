-- One-to-One Relationship: Misalnya, tabel 'wallet' dan 'customer'
select *
from wallet
         join customer on wallet.id_customer = customer.id;
