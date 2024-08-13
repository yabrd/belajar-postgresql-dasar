# Struktur Direktori SQL

Direktori ini berisi file-file SQL yang dikelompokkan berdasarkan fungsionalitas dan tujuan tertentu. Berikut adalah penjelasan mengenai setiap folder dan file di dalamnya:

## create/
Folder ini berisi script untuk membuat berbagai objek database seperti tabel, indeks, skema, role, dan database.

- **create_tables.sql**: Membuat tabel-tabel yang diperlukan di database.
- **create_indexes.sql**: Membuat indeks pada tabel-tabel untuk meningkatkan performa query.
- **create_sequences.sql**: Membuat urutan (sequence) yang dapat digunakan untuk auto-increment pada kolom.
- **create_enums.sql**: Membuat tipe data enum yang dapat digunakan untuk membatasi nilai-nilai kolom.
- **create_constraints.sql**: Membuat berbagai jenis constraint pada tabel, seperti unique, check, dll.
- **create_foreign_keys.sql**: Membuat foreign key untuk mengatur hubungan antar tabel.
- **create_schema.sql**: Membuat skema baru dalam database.
- **create_roles.sql**: Membuat role yang digunakan untuk kontrol akses.
- **create_database.sql**: Membuat database baru.

## insert/
Folder ini berisi script untuk menambahkan data ke dalam tabel.

- **insert_data.sql**: Menambahkan data awal ke dalam tabel-tabel yang ada.
- **insert_with_auto_increment.sql**: Menambahkan data ke tabel dengan kolom yang auto-increment.
- **insert_with_sequence.sql**: Menambahkan data menggunakan sequence untuk pengisian kolom.

## select/
Folder ini berisi script untuk query SELECT dengan berbagai kondisi dan fungsi.

- **select_data.sql**: Menampilkan data dari tabel tanpa kondisi.
- **select_with_conditions.sql**: Menampilkan data dengan kondisi tertentu.
- **select_with_joins.sql**: Menampilkan data dengan menggunakan operasi JOIN antar tabel.
- **select_with_aggregates.sql**: Menampilkan data dengan fungsi agregat seperti AVG, MAX, dll.
- **select_with_functions.sql**: Menampilkan data dengan menggunakan fungsi-fungsi SQL.
- **select_with_pagination.sql**: Menampilkan data dengan paginasi.
- **select_distinct.sql**: Menampilkan data dengan nilai unik.
- **select_with_text_search.sql**: Menampilkan data dengan pencarian teks.
- **select_with_order.sql**: Menampilkan data dengan pengurutan.
- **select_with_limit.sql**: Menampilkan data dengan batas jumlah hasil.
- **select_with_aliases.sql**: Menampilkan data dengan alias untuk tabel dan kolom.
- **select_with_numeric_functions.sql**: Menampilkan data dengan fungsi-fungsi numerik.
- **select_with_string_functions.sql**: Menampilkan data dengan fungsi-fungsi string.
- **select_with_date_functions.sql**: Menampilkan data dengan fungsi-fungsi tanggal.
- **select_with_flow_control.sql**: Menampilkan data dengan kontrol alur.
- **select_with_subqueries.sql**: Menampilkan data dengan subquery.
- **select_with_set_operators.sql**: Menampilkan data dengan operator set seperti UNION, INTERSECT, EXCEPT.
- **select_with_translations.sql**: Menampilkan data dengan terjemahan.
- **select_with_full_text_search.sql**: Menampilkan data dengan pencarian teks penuh.

## update/
Folder ini berisi script untuk memperbarui data dalam tabel.

- **update_data.sql**: Memperbarui data dalam tabel.
- **update_with_set_clause.sql**: Memperbarui data menggunakan klausa SET.

## delete/
Folder ini berisi script untuk menghapus data dari tabel.

- **delete_data.sql**: Menghapus data dari tabel.
- **delete_with_foreign_key_constraints.sql**: Menghapus data dengan memperhatikan constraint foreign key.

## keys/
Folder ini berisi script untuk mengelola primary key dan foreign key.

- **primary_key.sql**: Membuat primary key pada tabel.
- **foreign_key.sql**: Membuat foreign key pada tabel untuk mengatur relasi antar tabel.

## relationships/
Folder ini berisi script untuk mengatur hubungan antar tabel.

- **one_to_one_relationship.sql**: Mengatur hubungan satu ke satu antara tabel.
- **one_to_many_relationship.sql**: Mengatur hubungan satu ke banyak antara tabel.
- **many_to_many_relationship.sql**: Mengatur hubungan banyak ke banyak antara tabel.
- **table_relationships.sql**: Mengatur hubungan antar tabel secara umum.

## joins/
Folder ini berisi script untuk query JOIN dengan berbagai jenis.

- **inner_join.sql**: Menampilkan data dengan inner join.
- **left_join.sql**: Menampilkan data dengan left join.
- **right_join.sql**: Menampilkan data dengan right join.
- **full_outer_join.sql**: Menampilkan data dengan full outer join.
- **cross_join.sql**: Menampilkan data dengan cross join.

## constraints/
Folder ini berisi script untuk mengelola berbagai constraint pada tabel.

- **unique_constraints.sql**: Membuat constraint unik pada kolom.
- **not_null_constraints.sql**: Membuat constraint not null pada kolom.
- **check_constraints.sql**: Membuat constraint check pada kolom.

## indexes/
Folder ini berisi script untuk membuat dan mengelola indeks.

- **create_indexes.sql**: Membuat indeks pada tabel.
- **full_text_search_indexes.sql**: Membuat indeks untuk pencarian teks penuh.

## enums/
Folder ini berisi script untuk membuat dan menggunakan tipe data enum.

- **create_enum.sql**: Membuat tipe data enum.
- **use_enum.sql**: Menggunakan tipe data enum dalam tabel.

## sequences/
Folder ini berisi script untuk mengelola sequence.

- **create_sequences.sql**: Membuat sequence untuk auto-increment.
- **use_sequences.sql**: Menggunakan sequence dalam tabel.

## functions/
Folder ini berisi script untuk berbagai fungsi SQL.

- **numeric_functions.sql**: Fungsi-fungsi numerik dalam SQL.
- **string_functions.sql**: Fungsi-fungsi string dalam SQL.
- **date_functions.sql**: Fungsi-fungsi tanggal dalam SQL.
- **flow_control_functions.sql**: Fungsi-fungsi kontrol alur dalam SQL.

## transactions/
Folder ini berisi script untuk mengelola transaksi.

- **transactions.sql**: Mengelola transaksi seperti commit dan rollback.
- **locking.sql**: Mengunci data untuk transaksi.

## schema/
Folder ini berisi script untuk mengelola skema dan database.

- **schema_management.sql**: Mengelola skema, seperti membuat dan menghapus skema.
- **schema_restore.sql**: Mengembalikan skema dari cadangan.
- **backup_database.sql**: Membuat cadangan database.
- **restore_database.sql**: Mengembalikan database dari cadangan.

## roles/
Folder ini berisi script untuk mengelola role dan hak akses.

- **create_roles.sql**: Membuat role baru.
- **grant_permissions.sql**: Memberikan hak akses kepada role.

Jika ada pertanyaan atau tambahan lain yang perlu diatur, silakan beri tahu!
