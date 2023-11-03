# Aplikasi Pengelolaan Data Rental Mobil
### TIM 22
KAYLA VIRRLY .N (22091160)

NURUL VITA AZIZAH (2209116038)

## Deskripsi Project
Aplikasi Pengelolaan Data Rental Mobil ini adalah sebuah proyek perangkat lunak yang bertujuan untuk membantu perusahaan rental mobil dalam mengelola dan melacak data terkait pelanggan, staf, pemilik, kendaraan, peminjaman, dan transaksi. Aplikasi ini memiliki tiga package utama, yaitu `image`, `database`, dan `menu.rental`.

### Package `Database`
Package `Database` adalah inti dari aplikasi ini, yang berisi 7 kelas utama untuk mengelola data dalam basis data aplikasi. Berikut adalah penjelasan singkat tentang masing-masing kelas:

1. `Database`: Kelas ini bertanggung jawab untuk mengelola koneksi ke database dan operasi dasar seperti mengambil data.

2. `User`: Kelas ini mengelola data pengguna aplikasi, termasuk informasi login dan hak akses.

3. `Staff`: Kelas ini berfungsi untuk menyimpan dan mengelola informasi staf yang bekerja di perusahaan rental mobil.

4. `Owner`: Kelas ini digunakan untuk menyimpan data pemilik perusahaan rental mobil.

5. `Mobil`: Kelas ini mengatur informasi kendaraan yang tersedia untuk disewakan, termasuk merek, model, tahun, dan harga.

6. `Peminjam`: Kelas ini mengelola data peminjam, seperti nama, alamat, dan kontak.

7. `Transaksi`: Kelas ini digunakan untuk mencatat detail transaksi peminjaman mobil, termasuk tanggal peminjaman, tanggal pengembalian, harga, dan status peminjaman.

### Package `menu.rental`
Package `menu.rental` berisi berbagai kelas yang mengatur interaksi antara pengguna dan aplikasi. Beberapa kelas penting di dalamnya adalah:

1. `Login`: Kelas ini bertanggung jawab untuk proses otentikasi pengguna, mengelola login, dan mengarahkan pengguna ke menu yang sesuai role setelah login berhasil.

2. `Menu Owner`: Kelas ini digunakan oleh pemilik perusahaan rental mobil untuk mengakses dan mengelola data staf, mobil, dan transaksi.

3. `Menu Staff`: Kelas ini digunakan oleh staf perusahaan rental mobil untuk mengakses dan mengelola data transaksi, pelanggan, dan kendaraan.

## Cara Menggunakan Aplikasi
1. Pastikan Anda memiliki Java Runtime Environment (JRE) terinstal di komputer Anda.
2. Unduh dan ekstrak file aplikasi ke komputer Anda.
3. Jalankan aplikasi dengan menjalankan kelas `Login`.
4. Masukkan informasi login yang benar.
5. Setelah login berhasil, Anda akan diarahkan ke menu yang sesuai dengan peran Anda (owner atau staf).
6. Anda dapat mulai mengelola data perusahaan rental mobil melalui menu yang tersedia.

## Alur Program

1. `Login`: User diminta login terlebih dahulu sesuai dengan username, password dan role dari masing-masing akun jabatan.

   ![image](https://github.com/PBO-DBD-TIM22/RentalMobil/assets/121857360/df924097-33a2-47d2-8c47-02134df463f3)


3. `Menu Tampilan Utama`: Setelah login, menu utama akan muncul sesuai dengan jabatan masing user.

4. `Menu Utama Owner`: Pada menu utama owner, ada 4 menu yang dapat dipilih yaitu Staff, Mobil, Add peminjam

5. `Menu Staff`: Menu untuk melakukan create, delete, update dan read data dari staff yang bekerja pada rental mobil.

6. `Menu Mobil`: Menu untuk melakukan create, delete, update dan read data mobil yang disewakan pada rental mobil ini.

7. `Menu Transaksi`: Menu untuk melakukan create data transaksi yang dilakukan oleh peminjam. Data yang telah masuk ke data transaksi tidak bisa di update maupun delete.

8. `Add Peminjam`:Menu untuk CRUD data peminjam sekaligus menu untuk menambahkan data transaksi.

9. `Menu Staff`: Berikut merupakan tampilan awal dari menu staff, pada menu staff tidak tersedia menu “Staff” sehingga staff tidak bisa melakukan CRUD data sesama staff.
   
# MANAJEMEN RENTAL MOBIL
Merupakan aplikasi yang bertujuan untuk pengelolaan bisnis rental mobil yang bertujuan meningkankan efektifitas staff maupun owner dalam melakukan pekerjaan dalam bisnis ini.

## Daftar Isi
- [Sourcecode](#sourcecode)
- [Penjelasan](#penjelasan)
- [Penggunaan](#penggunaan)
- 

## Sourcecode
## Penjelasan
## Cara pengunaan


```bash
git clone https://github.com/username/nama-proyek.git
cd nama-proyek
# Langkah-langkah instalasi tambahan
