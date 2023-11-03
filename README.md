# Aplikasi Pengelolaan Data Rental Mobil
### PROJECT-AKHIR-PBO-TIM-22
KAYLA VIRRLY (2209116011)

NURUL VITA AZIZAH (2209116038)

## Daftar Isi
## Daftar Isi
- [Penjelasan](#penjelasan)
- [Deskripsi Project](#deskripsi-project)
- [Flowchart](#flowchart)
- [ERD Logical](#erd-logical)
- [ERD Relational](#erd-relational)
- [Struktur Project](#struktur-project)
- [Hierarki Kelas](#hierarki-kelas)
- [Output & Alur Program](#output--alur-program)
  - [Halaman Utama Owner](#halaman-utama-owner)
    - [Login](#login)
    - [Halaman Utama Owner](#halaman-utama-owner)
    - [Menu Staff](#menu-staff)
    - [Menu Mobil](#menu-mobil)
    - [Menu Add Peminjam](#menu-add-peminjam)
    - [Menu Transaksi](#menu-transaksi)
    - [Menu Data Peminjam](#menu-data-peminjam)
    - [Menu Data Peminjaman](#menu-data-peminjaman)
    - [Logout](#logout)
  - [Halaman Utama Staff](#halaman-utama-staff)
    - [Login](#login)
    - [Halaman Utama Staff](#halaman-utama-staff)


## Deskripsi Project
Aplikasi Pengelolaan Data Rental Mobil ini adalah sebuah aplikasi yang bertujuan untuk membantu perusahaan rental mobil dalam mengelola dan melacak data terkait pelanggan, staf, pemilik, kendaraan, peminjaman, dan transaksi. Aplikasi ini memiliki tiga package utama, yaitu `image`, `database`, dan `menu.rental`.

## Flowchart
![flowchart pa pbo](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/cd45e087-673e-4054-87ca-8fef8cbef9dc)


## ERD Logical
ERD (Entity-Relationship Diagram), atau dalam bahasa Indonesia dikenal sebagai Diagram Entitas-Hubungan, adalah sebuah model data yang digunakan untuk menggambarkan entitas (objek atau konsep) dan hubungan antara entitas tersebut dalam sebuah sistem informasi atau basis data. ERD digunakan untuk merancang, menggambarkan, dan memvisualisasikan struktur data yang akan digunakan dalam suatu sistem atau aplikasi.
![Screenshot 2023-11-02 095116](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/dcb1757e-0b1d-4307-9a4a-a540d39f6203)

## ERD Relational
ERD Relasional (Relational Entity-Relationship Diagram) adalah sebuah perangkat yang digunakan dalam desain basis data relasional untuk menggambarkan entitas, atribut, dan hubungan antara entitas dalam konteks sistem yang berbasis pada model relasional. Basis data relasional menggunakan tabel (relations) untuk menyimpan data, dan ERD relasional membantu dalam merancang struktur tabel dan menjelaskan hubungan antara tabel-tabel tersebut.
![Screenshot 2023-11-02 095053](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/afd02eed-ee31-4a9a-a5d4-90852325d02c)

## Struktur Project
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/edb138df-9524-4127-856c-2087166acc9f)

- Package `image` berisi gambar dan icon yang digunakan di aplikasi ini.

- Package `koneksi.program` adalah inti dari aplikasi ini, yang berisi 7 kelas utama untuk mengelola data dalam basis data aplikasi. Berikut adalah penjelasan singkat tentang masing-masing kelas:

   a. `Database`: Kelas ini bertanggung jawab untuk mengelola koneksi ke database dan operasi dasar seperti mengambil data.

   b. `User`: Kelas ini mengelola data pengguna aplikasi, termasuk informasi login dan hak akses.

   c. `Staff`: Kelas ini berfungsi untuk menyimpan dan mengelola informasi staf yang bekerja di perusahaan rental mobil.

   d. `Owner`: Kelas ini digunakan untuk menyimpan data pemilik perusahaan rental mobil.

   e. `Mobil`: Kelas ini mengatur informasi kendaraan yang tersedia untuk disewakan, termasuk merek, model, tahun, dan harga.

   f. `Peminjam`: Kelas ini mengelola data peminjam, seperti nama, alamat, dan kontak.

   g. `Transaksi`: Kelas ini digunakan untuk mencatat detail transaksi peminjaman mobil, termasuk tanggal peminjaman, tanggal pengembalian, total, dan status peminjaman.

- Package `menu.rental` berisi berbagai kelas yang mengatur interaksi antara pengguna dan aplikasi. Beberapa kelas penting di dalamnya adalah:

   a. `Login`: Kelas ini bertanggung jawab untuk proses otentikasi pengguna, mengelola login, dan mengarahkan pengguna ke menu yang sesuai role setelah login berhasil.

   b. `Menu Owner`: Kelas ini digunakan oleh pemilik perusahaan rental mobil untuk mengakses dan mengelola data staf, mobil, dan transaksi.

   c. `Menu Staff`: Kelas ini digunakan oleh staf perusahaan rental mobil untuk mengakses dan mengelola data transaksi, pelanggan, dan kendaraan.

## Hierarki Kelas
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/31e4eb03-44db-494d-8f72-c0fc4dd2af8d)

## Penjelasan Codingan

## Output & Alur Program
- Halaman Utama Owner
1. `Login`: User diminta login terlebih dahulu sesuai dengan username, password dan role owner.

![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/1d89d214-86d7-4b36-bf94-3ae70fa002e4)

2. `Halaman Utama Owner`: Setelah login, menu utama akan muncul sesuai dengan jabatan user. Pada menu utama owner, ada 6 menu yang dapat dipilih yaitu Staff, Mobil, Add peminjam, Data Peminjam, Data Peminjaman dan Logout

![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/93bfc539-38d0-4d48-b67b-c7ca638382c1)

3.  `Menu Staff`: Menu untuk melakukan create, delete, update dan read data dari staff yang bekerja pada rental mobil.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/46dc46d7-b31b-4d01-a229-2f5ec8cca207)

4.  `Menu Mobil`: Menu untuk melakukan create, delete, update dan read data mobil yang disewakan pada rental mobil ini.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/ea071880-1334-4985-be37-ad6299c289d1)

5.  `Menu Add Peminjam`: Menu untuk CRUD data peminjam sekaligus menu untuk menambahkan data transaksi. Pada menu ini user diminta untuk menginput data peminjam, apabila data peminjam sudah ada maka user dapat memilih data peminjam yang sudah ada yang ditampilkan di tabel. Jika belum maka user akan diminta untuk memasukkan data peminjam yang baru.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/7b1cce3b-e737-4c75-8d75-0b3bc5b677f0)

6.  `Menu Transaksi`: Menu untuk melakukan create data transaksi yang dilakukan oleh peminjam. Data yang telah masuk ke data transaksi tidak bisa di update maupun delete.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/40555b98-4533-419b-90ec-78956d980939)

7.  `Menu Transaksi`: Apabila mobil tidak tersedia maka akan memunculkan output bahwa mobil tersebut sedang digunakan, sehingga tidak dapat dipinjam.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/1e06133e-ccbf-4a3b-9eb0-13ba88aa5e81)

8.  `Menu Transaksi`: Apabila mobil tersedia maka akan memunculkan output data transaksi berhasil disimpan, dan data peminjam serta transaksi tersebut masuk ke dalam database.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/c834fcf4-270b-4d55-99be-4b5daf0b286d)

9.  `Menu Data Peminjam`: Menu untuk menampilkan data peminjam yang telah meminjam di rental mobil ini. Di menu ini terdapat search untuk mencari data peminjam agar mudah menemukan data peminjam yang ingin dicari.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/4e8397d2-7864-4660-aea6-22c4eab5b517)
 
10.  `Menu Data Peminjaman`: Menu untuk menampilkan data peminjaman yang telah melakukan peminjaman di rental mobil ini. Di menu ini terdapat search untuk mencari data transaksi agar mudah menemukan data transaksi yang ingin dicari.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/449b17fd-97b2-48e3-bf32-a369cb8280eb)

11. `Logout`: Menu ini adalah menu untuk user jika ingin keluar dari program. Jika user memilih yes maka user akan keluar dari program.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/f76b8eeb-cdd7-401b-a1af-cf04be91c8ae)


- Halaman Utama Staff   
1.  `Login`: User diminta login terlebih dahulu sesuai dengan username, password dan role staff.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/ccdbad83-8609-4892-ae5c-3927c22abcbd)

2.  `Halaman Utama Staff`: Berikut merupakan tampilan awal dari menu staff, pada menu staff tidak tersedia menu “Staff” sehingga staff tidak bisa melakukan CRUD data sesama staff. Di Menu ini hanya terdapat menu mobil, add peminjam, show data peminjam, dan show data peminjaman sama seperti di owner.
![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/3017ad39-c64a-4089-b0d1-3eb53c398f2e)
