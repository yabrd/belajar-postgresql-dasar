# Tipe Data PostgreSQL

PostgreSQL menawarkan berbagai jenis tipe data yang kaya untuk memenuhi berbagai kebutuhan saat merancang skema basis data. Dokumen ini memberikan gambaran umum tentang tipe data yang umum digunakan dalam PostgreSQL dan aplikasi tipikalnya.

## Tipe Numerik

- **`smallint`**: Menyimpan bilangan bulat dari -32.768 hingga 32.767. Cocok untuk nilai bilangan bulat kecil.
- **`integer`**: Menyimpan bilangan bulat dari -2.147.483.648 hingga 2.147.483.647. Umumnya digunakan untuk nilai bilangan bulat umum.
- **`bigint`**: Menyimpan bilangan bulat dari -9.223.372.036.854.775.808 hingga 9.223.372.036.854.775.807. Digunakan untuk bilangan bulat yang sangat besar.
- **`decimal`** / **`numeric`**: Menyimpan angka dengan jumlah digit tertentu sebelum dan setelah titik desimal. Berguna untuk perhitungan keuangan yang memerlukan presisi yang tepat.
- **`real`**: Menyimpan angka floating-point presisi tunggal. Cocok untuk perhitungan ilmiah dengan presisi sedang.
- **`double precision`**: Menyimpan angka floating-point presisi ganda. Digunakan untuk perhitungan ilmiah yang memerlukan presisi tinggi.

## Tipe Karakter

- **`char(n)`**: Tipe karakter dengan panjang tetap `n` karakter. Sering digunakan untuk menyimpan kode atau singkatan dengan panjang tetap.
- **`varchar(n)`**: Tipe karakter dengan panjang variabel hingga maksimum `n` karakter. Umumnya digunakan untuk nama, alamat, dan sebagainya.
- **`text`**: Tipe karakter dengan panjang variabel tanpa batas panjang tertentu. Ideal untuk menyimpan blok teks besar.

## Tipe Tanggal/Waktu

- **`date`**: Menyimpan tanggal kalender (tahun, bulan, hari). Digunakan untuk tanggal lahir, tanggal janji, dll.
- **`time [ (p) ] [ with time zone ]`**: Menyimpan waktu dalam hari dengan presisi opsional dan zona waktu. Berguna untuk penjadwalan acara.
- **`timestamp [ (p) ] [ with time zone ]`**: Menyimpan tanggal dan waktu dengan presisi opsional dan zona waktu. Umumnya digunakan untuk pencatatan dan penyimpanan data.
- **`interval`**: Menyimpan rentang waktu atau durasi. Berguna untuk menghitung selisih antara tanggal/waktu.

## Tipe Boolean

- **`boolean`**: Menyimpan `true`, `false`, atau `null`. Digunakan untuk pilihan biner atau bendera.

## Tipe Data Biner

- **`bytea`**: Menyimpan data biner ("byte array"). Berguna untuk menyimpan gambar, file, atau data biner lainnya.

## Tipe Alamat Jaringan

- **`inet`**: Menyimpan alamat IP dengan subnet opsional. Berguna untuk konfigurasi dan manajemen jaringan.
- **`cidr`**: Menyimpan alamat jaringan IP. Digunakan untuk mengelola rentang dan subnet IP.

## Tipe Geometris

- **`point`**: Menyimpan titik geometris dalam bidang 2D. Digunakan untuk data spasial.
- **`line`**: Menyimpan segmen garis. Berguna dalam perhitungan geometris.
- **`lseg`**: Menyimpan garis lurus. Berguna untuk analisis geometris.
- **`box`**: Menyimpan kotak 2D. Digunakan dalam aplikasi grafis dan geometris.
- **`path`**: Menyimpan jalur terbuka atau tertutup. Digunakan untuk representasi jalur geometris.
- **`polygon`**: Menyimpan poligon. Berguna dalam aplikasi pemodelan geografis.
- **`circle`**: Menyimpan lingkaran. Digunakan untuk representasi geometris yang melibatkan radius dan pusat.

## Tipe JSON

- **`json`**: Menyimpan data dalam format JSON. Berguna untuk menyimpan data terstruktur yang fleksibel.
- **`jsonb`**: Menyimpan data JSON dalam format biner yang lebih efisien untuk pencarian dan manipulasi.

## Tipe UUID

- **`uuid`**: Menyimpan Universal Unique Identifier. Digunakan untuk identifikasi unik dalam sistem distribusi atau database.

## Tipe HSTORE

- **`hstore`**: Menyimpan pasangan kunci-nilai. Berguna untuk menyimpan data terstruktur yang tidak memerlukan skema tetap.

Dokumen ini memberikan gambaran umum tentang berbagai tipe data dalam PostgreSQL dan bagaimana mereka dapat digunakan dalam desain basis data. Pilih tipe data yang sesuai dengan kebutuhan aplikasi Anda untuk memastikan efisiensi dan keakuratan penyimpanan data.

# Panduan Tipe Data di PostgreSQL & Contoh Pembuatan Tabel

Panduan ini memberikan gambaran umum mengenai tipe data yang sering digunakan dalam PostgreSQL, fungsinya, dan contoh praktis untuk membuat tabel menggunakan tipe data tersebut.

## Tipe Data Umum di PostgreSQL

### 1. `serial` / `bigserial`
- **Penggunaan**: Angka yang bertambah secara otomatis, umumnya digunakan untuk kunci utama (primary key).
- **Contoh**: 
  ```sql
  id serial PRIMARY KEY
  ```

### 2. `UUID`
- **Penggunaan**: Identifier unik secara universal, sering digunakan sebagai alternatif `serial` untuk kunci utama.
- **Contoh**: 
  ```sql
  id UUID PRIMARY KEY DEFAULT gen_random_uuid()
  ```

### 3. `varchar(n)`
- **Penggunaan**: Menyimpan teks dengan panjang yang dibatasi. `n` menentukan panjang maksimum karakter.
- **Contoh**: 
  ```sql
  nama varchar(255)
  ```

### 4. `text`
- **Penggunaan**: Menyimpan teks dengan panjang tidak terbatas. Digunakan ketika panjang teks tidak diketahui atau sangat panjang.
- **Contoh**: 
  ```sql
  deskripsi text
  ```

### 5. `integer` / `int`
- **Penggunaan**: Menyimpan bilangan bulat. `integer` atau `int` sering digunakan untuk kolom seperti jumlah atau umur.
- **Contoh**: 
  ```sql
  jumlah integer
  ```

### 6. `boolean`
- **Penggunaan**: Menyimpan nilai benar atau salah (`TRUE` atau `FALSE`).
- **Contoh**: 
  ```sql
  aktif boolean
  ```

### 7. `date`
- **Penggunaan**: Menyimpan tanggal dalam format tahun-bulan-hari.
- **Contoh**: 
  ```sql
  tanggal_lahir date
  ```

### 8. `timestamp`
- **Penggunaan**: Menyimpan informasi waktu (tanggal dan jam).
- **Contoh**: 
  ```sql
  waktu_pembuatan timestamp DEFAULT current_timestamp
  ```

### 9. `numeric(p, s)`
- **Penggunaan**: Menyimpan angka desimal dengan presisi yang ditentukan. `p` adalah total digit, dan `s` adalah jumlah digit setelah titik desimal.
- **Contoh**: 
  ```sql
  harga numeric(10, 2)
  ```

## Contoh Studi Kasus: Pembuatan Tabel

Berikut adalah contoh pembuatan tabel yang menggunakan berbagai tipe data di atas:

```sql
CREATE TABLE produk (
    id serial PRIMARY KEY,
    nama varchar(255) NOT NULL,
    deskripsi text,
    harga numeric(10, 2) NOT NULL,
    stok integer NOT NULL,
    tersedia boolean DEFAULT TRUE,
    tanggal_ditambahkan timestamp DEFAULT current_timestamp
);
```

### Penjelasan:
- **id**: Menggunakan tipe `serial` untuk kunci utama yang akan meningkat otomatis.
- **nama**: Menyimpan nama produk dengan panjang maksimal 255 karakter.
- **deskripsi**: Menyimpan deskripsi produk dengan panjang teks yang tidak terbatas.
- **harga**: Menyimpan harga produk dengan dua digit desimal.
- **stok**: Menyimpan jumlah produk yang tersedia.
- **tersedia**: Menyimpan status ketersediaan produk (`TRUE` atau `FALSE`).
- **tanggal_ditambahkan**: Menyimpan tanggal dan waktu produk ditambahkan ke dalam database, dengan nilai default adalah waktu saat ini.

---

Panduan ini diharapkan dapat membantu dalam memahami dan menggunakan tipe data di PostgreSQL secara efektif dalam pembuatan tabel dan pengelolaan data.