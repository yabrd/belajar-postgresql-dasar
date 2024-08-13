-- One-to-Many Relationship: Misalnya, tabel 'customer' dan 'wishlist'
select *
from customer
         join wishlist on customer.id = wishlist.id_customer;
