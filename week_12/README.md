# Pemrograman Mobile - Pertemuan #12

NIM : 2141720064

Nama : Raden Rizki

#

<h3>Praktikum 1: Mengunduh Data dari Web Service (API)</h3>

#

<h4>Langkah 1: Buat Project Baru</h4>

![Screenshot flutter](docs/praktikum_1_langkah_1.png)

<h4>Langkah 2: Cek file pubspec.yaml</h4>

![Screenshot flutter](docs/praktikum_1_langkah_2.png)

<h4>Langkah 3: Buka file main.dart</h4>

[Kode Program main.dart](/week_12/src/books/lib/main.dart)

![Screenshot flutter](docs/praktikum_1_langkah_3.gif)

<h4>Langkah 4: Tambah method getData()</h4>

![Screenshot flutter](docs/praktikum_1_langkah_4_code.png)

![Screenshot flutter](docs/praktikum_1_langkah_4.png)

<h4>Langkah 5: Tambah kode di ElevatedButton</h4>

![Screenshot flutter](docs/praktikum_1_langkah_5_code.png)

![Screenshot flutter](docs/praktikum_1_langkah_5.gif)

- Setelah data JSON dari API diberikan ke client, data tersebut dirubah terlebih dahulu dirubah ke tipe data String dengan menggunakan method toString(), sedangkan method substring(0, 450) untuk mengambil karakter dari indeks 0 sampai 450. Kemudian catchError() berguna untuk menangani error yang terjadi saat proses asynchronous, dalam kode ini menghasilkan result berupa 'An error occurred'.

#

<h3>Praktikum 2: Menggunakan await/async untuk menghindari callbacks</h3>

#

<h4>Langkah 1: Buka file main.dart</h4>

![Screenshot flutter](docs/praktikum_2_langkah_1.png)

- Pada langkah 1 tersebut dibuat 3 future function yang masing-masing akan mengembailkan nilai integer dengan bobot dari 1, 2 dan 3 dari ketiga function tersebut. Pada setiap function tersebut akan dijalankan atau mengalami delay selama 3 detik sebelum akhirnya mereturn value.

<h4>Langkah 2: Tambah method count()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_2.png)

- Pada kode program diatas function yang sudah dibuat pada langkah pertama dipanggil secara bergantian dan menambahkan setiap value yang direturn setiap function ke variabel total. Variabel total ini yang akan digunakan untuk memperbarui state dengan result berupa konversi string dari total.

<h4>Langkah 3: Panggil count()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_3.png)

<h4>Langkah 4: Run</h4>

![Screenshot flutter](docs/praktikum_2_langkah_4.gif)

#

<h3>Praktikum 3: Menggunakan Completer di Future</h3>

#

<h4>Langkah 1: Buka main.dart</h4>

![Screenshot flutter](docs/praktikum_3_langkah_1.png)

<h4>Langkah 2: Tambahkan variabel dan method</h4>

![Screenshot flutter](docs/praktikum_3_langkah_2.png)

- Pada langkah kedua ini dibuat terlebih variabel late dengan tipe Completer, nantinya varibel completer ini akan diberi nilai melalui function getNumber(). Selanjutnya terdapat function calculate() yang memiliki delay waktu untuk menjalankan function ini selama 5 detik, yang selanjutnya akan menyelesaikan future dengan value 42. Dan terakhir terdapat function getNumber(), function ini melakukan inisialisasi pada variabel completer sebelumnya, kemudian memanggil function calculate untuk menyelsaikan future, value yang diterima dari calculate ini kemudian akan dikembalikan ke pemanggil function dengan mengakses value dari completer.future.

<h4>Langkah 3: Ganti isi kode onPressed()</h4>

![Screenshot flutter](docs/praktikum_3_langkah_3.png)

<h4>Langkah 4: Run</h4>

![Screenshot flutter](docs/praktikum_3_langkah_4.gif)

<h4>Langkah 5: Ganti method calculate()</h4>

![Screenshot flutter](docs/praktikum_3_langkah_5.png)

<h4>Langkah 6: Pindah ke onPressed()</h4>

![Screenshot flutter](docs/praktikum_3_langkah_6.png)

![Screenshot flutter](docs/praktikum_3_langkah_6.gif)

- Hal yang berbeda dari langkah 2 dengan langkah 5 -- 6 adalah pada langkah diterapkan try dan catch untuk menangai jika pada proses try terdapat error maka catch lah yang akan dijalankan. Jika pada try akan menyelesaikan future dengan memberikannya value, maka pada catch ini akan berupa status error, sehingga pada langkah keenam, saat proses getNumber() menghasilkan error, value variabel result akan diset 'An error occurred'.

#

<h3>Praktikum 4: Memanggil Future secara paralel</h3>

#

<h4>Langkah 1: Buka file main.dart</h4>

![Screenshot flutter](docs/praktikum_4_langkah_1.png)

<h4>Langkah 2: Edit onPressed()</h4>

![Screenshot flutter](docs/praktikum_4_langkah_2.png)

<h4>Langkah 3: Run</h4>

![Screenshot flutter](docs/praktikum_4_langkah_3.gif)

<h4>Langkah 4: Ganti variabel futureGroup</h4>

![Screenshot flutter](docs/praktikum_4_langkah_4.png)

![Screenshot flutter](docs/praktikum_4_langkah_4.gif)

- Pada langkah pertama setiap setiap function perlu ditambahkan terlebih dahulu sebagai future kedalam objek futureGroup dan perlu menggunakan method close agar objek tidak dapat menambahkan future lagi, yang selanjutnya setiap function ini akan dijalankan, barulah method then dijalankan. Sedangkan pada langkah keempat setiap function langsung dijalankan dan ditunggu hasilnya, sama seperti futureGroup Future.wait juga akan menghasilkan data bertipe list.

#

<h3>Praktikum 5: Menangani Respon Error pada Async Code</h3>

#

<h4>Langkah 1: Buka file main.dart</h4>

![Screenshot flutter](docs/praktikum_5_langkah_1.png)

<h4>Langkah 2: ElevatedButton</h4>

![Screenshot flutter](docs/praktikum_5_langkah_2.png)

<h4>Langkah 3: Run</h4>

![Screenshot flutter](docs/praktikum_5_langkah_3.png)

![Screenshot flutter](docs/praktikum_5_langkah_3.gif)

<h4>Langkah 4: Tambah method handleError()</h4>

![Screenshot flutter](docs/praktikum_5_langkah_4.png)

![Screenshot flutter](docs/praktikum_5_langkah_4_1.png)

![Screenshot flutter](docs/praktikum_5_langkah_4_2.png)

![Screenshot flutter](docs/praktikum_5_langkah_4.gif)

- Perbedaan antara langkah 1 dengan langkah 4 adalah pada langkah pertama penanganan error dilakukan pada ElevatedButton, sedangkan pada langkah keempat penanganan error ditangani oleh function handleError() terlebih dahulu sehingga pada ElevatedButton hanya perlu menjalankan function handleError() tanpa harus menindaklanjuti hasil dari function yang dipanggil. Sedangkan untuk skema penanganan error masih sama antara keduanya.

#

<h3>Praktikum 6: Menggunakan Future dengan StatefulWidget</h3>

#

<h4>Langkah 1: install plugin geolocator</h4>

![Screenshot flutter](docs/praktikum_6_langkah_1.png)

<h4>Langkah 2: Tambah permission GPS</h4>

![Screenshot flutter](docs/praktikum_6_langkah_2.png)

<h4>Langkah 3: Buat file geolocation.dart</h4>

![Screenshot flutter](docs/praktikum_6_langkah_3.png)

<h4>Langkah 4: Buat StatefulWidget</h4>

![Screenshot flutter](docs/praktikum_6_langkah_4.png)

<h4>Langkah 5: Isi kode geolocation.dart</h4>

[Kode Program kode geolocation.dart](/week_12/src/books/lib/geolocation.dart)

<h4>Langkah 6: Edit main.dart</h4>

![Screenshot flutter](docs/praktikum_6_langkah_6.png)

<h4>Langkah 7: Run</h4>

![Screenshot flutter](docs/praktikum_6_langkah_7.gif)

<h4>Langkah 8: Tambahkan animasi loading</h4>

![Screenshot flutter](docs/praktikum_6_langkah_8.png)

![Screenshot flutter](docs/praktikum_6_langkah_8_1.png)

![Screenshot flutter](docs/praktikum_6_langkah_8.gif)

![Screenshot flutter](docs/praktikum_6_langkah_8_2.png)

![Screenshot flutter](docs/praktikum_6_langkah_8_3.png)

- Lokasi saat ini dapat ditampilkan namun perlu untuk mengizinkan akses tersebut saat run melalui browser layaknya saat di android namun jika tetap belum diizinkan maka animasi loading akan terus terjadi.

#

<h3>Praktikum 7: Manajemen Future dengan FutureBuilder</h3>

#

<h4>Langkah 1: Modifikasi method getPosition()</h4>

![Screenshot flutter](docs/praktikum_7_langkah_1.png)

<h4>Langkah 2: Tambah variabel</h4>

![Screenshot flutter](docs/praktikum_7_langkah_2.png)

<h4>Langkah 3: Tambah initState()</h4>

![Screenshot flutter](docs/praktikum_7_langkah_3.png)

<h4>Langkah 4: Edit method build()</h4>

![Screenshot flutter](docs/praktikum_7_langkah_4.png)

![Screenshot flutter](docs/praktikum_7_langkah_4.gif)

- Dalam hal UI tidak ada yang berubah dari praktikum sebelumnya, hasil yang ditampilkan masih sama, hanya terdapat perbedaan dalam permission, jika praktikum sebelumnya aplikasi akan meminta izin untuk mengakses lokasi, pada praktikum saat ini hal ini tidak ada, karena method requestPermission() pada praktikum sebelumnya sudah dikomen. Hal menarik pada praktikum ini, tidak perlu menggunakan string format untuk memberikan keterangan pada value seperti latitude dan longitude.