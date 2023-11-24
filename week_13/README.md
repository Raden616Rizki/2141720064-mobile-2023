# Pemrograman Mobile - Pertemuan #13

NIM : 2141720064

Nama : Raden Rizki

#

<h3>Praktikum 1: Dart Streams</h3>

#

<h4>Langkah 1: Buat Project Baru</h4>

![Screenshot flutter](docs/praktikum_1_langkah_1.png)

<h4>Langkah 2: Buka file main.dart</h4>

![Screenshot flutter](docs/praktikum_1_langkah_2.png)

<h4>Langkah 3: Buat file baru stream.dart</h4>

![Screenshot flutter](docs/praktikum_1_langkah_3.png)

<h4>Langkah 4: Tambah variabel colors</h4>

![Screenshot flutter](docs/praktikum_1_langkah_4.png)

<h4>Langkah 5: Tambah method getColors()</h4>

![Screenshot flutter](docs/praktikum_1_langkah_5.png)

<h4>Langkah 6: Tambah perintah yield*</h4>

![Screenshot flutter](docs/praktikum_1_langkah_6.png)

- Kode yield* berfungsi untuk mengembalikan banyak value yang dimethod ini dihasilkan oleh streams.

- Pada method getColors() ini Stream disetiap 1 detik akan mengembalikan value dari setiap indeks list colors, indeks ini dihasilkan dari t sebagai waktu (detik) modulus dari panjang list colors. Sehingga disetiap detiknya value colors yang dikembalikan dapat berbeda-beda.

<h4>Langkah 7: Buka main.dart</h4>

![Screenshot flutter](docs/praktikum_1_langkah_7.png)

<h4>Langkah 8: Tambah variabel</h4>

![Screenshot flutter](docs/praktikum_1_langkah_8.png)

<h4>Langkah 9: Tambah method changeColor()</h4>

![Screenshot flutter](docs/praktikum_1_langkah_9.png)

<h4>Langkah 10: Lakukan override initState()</h4>

![Screenshot flutter](docs/praktikum_1_langkah_10.png)

<h4>Langkah 11: Ubah isi Scaffold()</h4>

![Screenshot flutter](docs/praktikum_1_langkah_11.png)

<h4>Langkah 12: Run</h4>

![Screenshot flutter](docs/praktikum_1_langkah_12.gif)

<h4>Langkah 13: Ganti isi method changeColor()</h4>

![Screenshot flutter](docs/praktikum_1_langkah_13.png)

![Screenshot flutter](docs/praktikum_1_langkah_13.gif)

- Perbedaan menggunakan listen dan await for adalah pada await for akan dilakukan perulangan dengan value yang didapat dari memanggil method getColors(), setiap value tersebut akan disimpan dalam variabel eventColor disetiap perulangannya, namun blok kode dalam for seperti setState akan dijalankan setelah proses pemanggilan method getColors() selesai dilakukan dan sudah mengembalikan nilai set yang setiap valuenya akan disimpan dalam eventColor. Sedankan listen() setiap event atau value yang sudah diterima dapat langsung digunakan dan setState dapat dijalankan tanpa perlu menunggu seluruh Stream selesai.

#

<h3>Praktikum 2: Stream controllers dan sinks</h3>

#

<h4>Langkah 1: Buka file stream.dart</h4>

![Screenshot flutter](docs/praktikum_2_langkah_1.png)

<h4>Langkah 2: Tambah class NumberStream</h4>

![Screenshot flutter](docs/praktikum_2_langkah_2.png)

<h4>Langkah 3: Tambah StreamController</h4>

![Screenshot flutter](docs/praktikum_2_langkah_3.png)

<h4>Langkah 4: Tambah method addNumberToSink</h4>

![Screenshot flutter](docs/praktikum_2_langkah_4.png)

<h4>Langkah 5: Tambah method close()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_5.png)

<h4>Langkah 6: Buka main.dart</h4>

![Screenshot flutter](docs/praktikum_2_langkah_6.png)

<h4>Langkah 7: Tambah variabel</h4>

![Screenshot flutter](docs/praktikum_2_langkah_7.png)

<h4>Langkah 8: Edit initState()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_8.png)

- Pada langkah kedelapan dibuat terlebih dahulu objek NumberStream yang berasal dari stream.dart, kemudian mengakses variabel controller dari numberStream dengan menyimpannya ke variabel numberStreamController, data stream dari numberStreamController ini akan disimpan dalam variabel stream bertipe data Stream, yang akhirnya value stream yang diperoleh ini akan digunakan untuk memperbarui value dari lastNumber.

<h4>Langkah 9: Edit dispose()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_9.png)

<h4>Langkah 10: Tambah method addRandomNumber()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_10.png)

- Method addRandomNumber() pertama-tama membuat objek Random() dengan nama random, yang kemudian objek ini akan digunakan untuk memperoleh value integer acak dengan rentang 0 sampai dengan 9 dan disimpan dalam variabel myNum. Selanjutnya memanggil method addNumbertoSink() dari objek numberStram yang dibuat dilangkah kedelapan sebelumnya. Dengann mengakses addNumbertoSink() dengan argument value dari myNum, maka value ini akan ditambahkan kedalam aliran data yang dibuat.

<h4>Langkah 11: Edit method build()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_11.png)

<h4>Langkah 12: Run</h4>

![Screenshot flutter](docs/praktikum_2_langkah_12.gif)

<h4>Langkah 13: Buka stream.dart</h4>

![Screenshot flutter](docs/praktikum_2_langkah_13.png)

- Method addError() diatas digunakan untuk menambahkan error kedalam aliran data dengan pesan 'error'.

<h4>Langkah 14: Buka main.dart</h4>

![Screenshot flutter](docs/praktikum_2_langkah_14.png)

- Pada langkah ke-14 dilakukan penanganan error saat stream.listen, yaitu jika terjadi error, maka value dari variabel last number akan diset menjadi -1.

<h4>Langkah 15: Edit method addRandomNumber()</h4>

![Screenshot flutter](docs/praktikum_2_langkah_15.png)

- Method yang dibuat di langkah ke-13 sebelumnya dipanggil dilangakah ini, yaitu metdhod addError() dengan menggunakan objek numberStream.

![Screenshot flutter](docs/praktikum_2_langkah_15.gif)

