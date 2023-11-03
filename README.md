# Aplikasi Pengelolaan Data Rental Mobil
### PROJECT-AKHIR-PBO-TIM-22
KAYLA VIRRLY (2209116011)

NURUL VITA AZIZAH (2209116038)

## Daftar Isi
- [Deskripsi Project](#deskripsi-project)
- [Flowchart](#flowchart)
- [ERD Logical](#erd-logical)
- [ERD Relational](#erd-relational)
- [Struktur Project](#struktur-project)
- [Hierarki Kelas](#hierarki-kelas)
- [Penjelasan Codingan](#penjelasan-codingan)
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
![flowchart pa pbo](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/764af679-e165-4821-a2d6-a206198acd96)



## ERD Logical
ERD (Entity-Relationship Diagram), atau dalam bahasa Indonesia dikenal sebagai Diagram Entitas-Hubungan, adalah sebuah model data yang digunakan untuk menggambarkan entitas (objek atau konsep) dan hubungan antara entitas tersebut dalam sebuah sistem informasi atau basis data. ERD digunakan untuk merancang, menggambarkan, dan memvisualisasikan struktur data yang akan digunakan dalam suatu sistem atau aplikasi.
![Screenshot 2023-11-02 095116](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/d60d0063-c405-46d4-b206-8472166e5a81)

## ERD Relational
ERD Relasional (Relational Entity-Relationship Diagram) adalah sebuah perangkat yang digunakan dalam desain basis data relasional untuk menggambarkan entitas, atribut, dan hubungan antara entitas dalam konteks sistem yang berbasis pada model relasional. Basis data relasional menggunakan tabel (relations) untuk menyimpan data, dan ERD relasional membantu dalam merancang struktur tabel dan menjelaskan hubungan antara tabel-tabel tersebut.
![Screenshot 2023-11-02 095053](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/60885eda-9305-4de0-a0cc-f8654ca9ace8)

## Struktur Project
![Screenshot 2023-11-03 221822](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/0ff0b6af-0999-4122-b085-e764024ee02c)

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
![Screenshot 2023-11-03 220719](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/60134ec3-5092-4f29-aeed-87dfe02f01c5)

## Penjelasan Codingan
### LOGIN
Ini adalah bagian dari sebuah program Java yang mengimplementasikan proses login untuk aplikasi yang terkait dengan manajemen akun pengguna.

```java
private void tblogin1ActionPerformed(java.awt.event.ActionEvent evt) {
```
Ini adalah metode yang dijalankan ketika suatu aksi tombol login (disebut tblogin1) dipicu.

```java
String username = txtUsername1.getText();
String password = txtPassword.getText();
String role = cbRole.getSelectedItem().toString();
```
Kode ini mengambil input pengguna berupa username, password, dan peran (role) dari elemen-elemen tampilan seperti teksbox (txtUsername1, txtPassword) dan combobox (cbRole).

```java
User userakun = new User();
```
Membuat objek User yang mungkin digunakan untuk melakukan operasi terkait pengguna, seperti verifikasi login.

```java
boolean logincek = userakun.login(username, password, role);
```
Mencoba untuk melakukan login dengan memanggil metode login pada objek User dengan parameter username, password, dan role yang diambil dari input pengguna. Hasil login disimpan dalam variabel logincek.

```java
if (logincek) {
    // Handle login berhasil berdasarkan peran
    // ...
} else {
    // Handle login gagal
    // ...
}
```
Mengecek apakah login berhasil atau tidak, kemudian menangani berdasarkan hasilnya. Jika berhasil, kode akan memeriksa peran pengguna (Owner atau Staff) dan membuka tampilan yang sesuai. Jika gagal, pesan kesalahan akan ditampilkan.

```java
}catch (HeadlessException e) {
    // Tangani kesalahan umum
    // ...
}
```
Menggunakan penanganan kesalahan untuk menangani kesalahan umum yang mungkin terjadi selama proses login, seperti masalah dalam menampilkan pesan kesalahan.

```java
System.out.println("["+ username + "]"+ "[" + password + "]"+ "[" + role +"]");
```
Mencetak informasi username, password, dan role ke konsol.

Selain itu, ada juga komentar yang memberikan petunjuk tambahan tentang apa yang dilakukan dalam blok kode tertentu. Ini adalah kode yang digunakan untuk mengimplementasikan logika dasar login dalam aplikasi Java, di mana pengguna akan memasukkan username, password, dan memilih peran sebelum mencoba untuk login. Jika login berhasil, aplikasi akan menampilkan tampilan yang sesuai berdasarkan peran pengguna. Jika login gagal, pesan kesalahan akan ditampilkan.

### Entitas Mobil
### Atribut
- `ID_Mobil`: String, ID unik untuk setiap mobil.
- `Merek`: String, merek atau produsen mobil.
- `Tahun_Produksi`: String, tahun produksi mobil.
- `Nomor_Polisi`: String, nomor polisi mobil.
- `Harga_Sewa`: Integer, harga sewa mobil.
- `Status`: String, status mobil (misalnya, tersedia atau disewa).
- `NIK`: String, nomor identitas pengemudi mobil.

### Metode

#### 1. `findMobil`
   - Digunakan untuk mencari data mobil dalam database berdasarkan kriteria tertentu seperti ID_Mobil, Merek, Tahun_Produksi, dan lainnya.
   - Mengembalikan `true` jika pencarian berhasil dan `false` jika tidak.
   
#### 2. `createMobil`
   - Mengizinkan penambahan data mobil baru ke dalam database.
   - Mengembalikan `true` jika penambahan berhasil dan `false` jika tidak.

#### 3. `updateMobil`
   - Digunakan untuk memperbarui data mobil yang sudah ada dalam database berdasarkan ID_Mobil.
   - Mengembalikan `true` jika pembaruan berhasil dan `false` jika tidak.

#### 4. `deleteMobil`
   - Mengizinkan penghapusan data mobil dari database berdasarkan ID_Mobil.
   - Mengembalikan `true` jika penghapusan berhasil dan `false` jika tidak.

### Penggunaan

Untuk menggunakan aplikasi ini, Anda dapat membuat objek dari kelas `Mobil` dan menggunakan metode yang sesuai untuk mengakses dan mengelola data mobil dalam database. Pastikan untuk memasukkan nilai-nilai yang sesuai ke dalam atribut kelas `Mobil` sebelum menjalankan metode pencarian, penambahan, pembaruan, atau penghapusan data.


## Output & Alur Program
- Halaman Utama Owner
1. `Login`: User diminta login terlebih dahulu sesuai dengan username, password dan role owner.

![Screenshot 2023-11-03 213434](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/2963a736-d300-4138-b529-0622ea450946)

2. `Halaman Utama Owner`: Setelah login, menu utama akan muncul sesuai dengan jabatan user. Pada menu utama owner, ada 6 menu yang dapat dipilih yaitu Staff, Mobil, Add peminjam, Data Peminjam, Data Peminjaman dan Logout

![Screenshot 2023-11-03 213856](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/baf83e1b-b6f9-4268-88c1-c1b7c23b84cf)

3.  `Menu Staff`: Menu untuk melakukan create, delete, update dan read data dari staff yang bekerja pada rental mobil.

![Screenshot 2023-11-03 223449](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/fde196a1-7826-4fa6-979b-e4ee7c8e892e)

4.  `Menu Mobil`: Menu untuk melakukan create, delete, update dan read data mobil yang disewakan pada rental mobil ini.

![Screenshot 2023-11-03 223754](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/872aed8d-9d64-4359-b8f4-2ac713017274)

  a. Output apabila id mobil tidak sesuai inputan
![Screenshot 2023-11-04 031128](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/8f404351-bbe6-4953-b707-911b9b0c66b4)

  b. Output apabila id mobil diinput sesuai inputan 
![Screenshot 2023-11-04 031431](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/d2f9e779-21be-4813-b2ca-21874e4df51a)

  c. Output Update Mobil
![Screenshot 2023-11-04 031601](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/20ddc72f-3d43-4328-b8ec-6cfe0cc7301c)

  d. Output Delete Mobil
![Screenshot 2023-11-04 031636](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/e91f30ac-158f-4f12-8538-e9de4d3311d3)


5.  `Menu Add Peminjam`: Menu untuk CRUD data peminjam sekaligus menu untuk menambahkan data transaksi. Pada menu ini user diminta untuk menginput data peminjam, apabila data peminjam sudah ada maka user dapat memilih data peminjam yang sudah ada yang ditampilkan di tabel. Jika belum maka user akan diminta untuk memasukkan data peminjam yang baru.

![Screenshot 2023-11-03 230402](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/4ee4c780-b2c0-481c-b8cf-1e15169d2f81)


6.  `Menu Transaksi`: Menu untuk melakukan create data transaksi yang dilakukan oleh peminjam. Data yang telah masuk ke data transaksi tidak bisa di update maupun delete.

![Screenshot 2023-11-03 224750](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/5ead05c3-2b3f-4289-90a1-b0ca1aed6d34)


7.  `Menu Transaksi`: Apabila mobil tidak tersedia maka akan memunculkan output bahwa mobil tersebut sedang digunakan, sehingga tidak dapat dipinjam.

![Screenshot 2023-11-03 225328](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/fd8a92e9-704c-4d44-ae9c-979576aa3296)


8.  `Menu Transaksi`: Apabila mobil tersedia maka akan memunculkan output data transaksi berhasil disimpan, dan data peminjam serta transaksi tersebut masuk ke dalam database.

![Screenshot 2023-11-03 225943](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/329e2254-6c46-4df1-bba7-2a1a309285ac)


  a. Output jika tanggal pengembalian kurang dari tanggal peminjaman
![Screenshot 2023-11-04 031951](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/de96a898-c625-4a4d-95d8-3675b7877810)

  b. Output jika tanggal pengembalian diinputkan sesuai dan data berhasil ditambahkan
![Screenshot 2023-11-04 032230](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/57257394-9cbf-4c5d-963f-1fc3075a0b09)



9.  `Menu Data Peminjam`: Menu untuk menampilkan data peminjam yang telah meminjam di rental mobil ini. Di menu ini terdapat search untuk mencari data peminjam agar mudah menemukan data peminjam yang ingin dicari.

![Screenshot 2023-11-03 224447](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/29d93534-0436-4fef-ab7c-7b74ff59da95)

 
10.  `Menu Data Peminjaman`: Menu untuk menampilkan data peminjaman yang telah melakukan peminjaman di rental mobil ini. Di menu ini terdapat search untuk mencari data transaksi agar mudah menemukan data transaksi yang ingin dicari.

![Screenshot 2023-11-03 231438](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/034c7ddb-bb34-4f21-9288-dd36ad4cf62a)


Output Pencarian Transaksi :

![Screenshot 2023-11-04 032324](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/40752ee7-0bae-4593-969e-3f79bc975b6f)


11. `Logout`: Menu ini adalah menu untuk user jika ingin keluar dari program. Jika user memilih yes maka user akan keluar dari program.

![Screenshot 2023-11-03 232457](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/87a4998e-55e0-4cf0-a09f-5c2bb699e048)


- Halaman Utama Staff   
1.  `Login`: User diminta login terlebih dahulu sesuai dengan username, password dan role staff.

![Screenshot 2023-11-03 232041](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/c1b34b04-46cb-4280-af7a-59d31f907149)

2.  `Halaman Utama Staff`: Berikut merupakan tampilan awal dari menu staff, pada menu staff tidak tersedia menu “Staff” sehingga staff tidak bisa melakukan CRUD data sesama staff. Di Menu ini hanya terdapat menu mobil, add peminjam, show data peminjam, dan show data peminjaman sama seperti di owner.

![Screenshot 2023-11-03 232102](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/47bffde3-5dac-4b20-8951-8eccbd85693e)

