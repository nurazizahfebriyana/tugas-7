Nama    : Nur Azizah Febriyana
NPM     : 2206824363
Kelas   : PBP-B

**TUGAS-7**
link repo : https://github.com/nurazizahfebriyana/tugas-7.git 

**Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**
Jawab :

1. Stateless Widget:
   - Stateless widget tidak memiliki keadaan internal (state). Artinya, sekali widget tersebut dibuat, tampilannya tetap tidak berubah sepanjang siklus hidupnya.
   - Stateless widget cocok untuk konten yang bersifat statis, seperti teks atau gambar yang tidak berubah seiring waktu.
   - Stateless widget lebih efisien dalam hal kinerja karena tidak perlu memantau perubahan data atau memicu pembaruan tampilan.

2. Stateful Widget:
   - Stateful widget memiliki keadaan internal (state) yang dapat berubah selama siklus hidupnya. Ini memungkinkan widget untuk merespons perubahan data, interaksi pengguna, atau perubahan keadaan aplikasi.
   - Stateful widget cocok untuk mengelola tampilan yang harus diperbarui secara dinamis, seperti daftar yang dapat digulirkan atau formulir yang memerlukan interaksi pengguna.
   - Untuk mengubah tampilan atau memperbarui data dalam stateful widget, Anda dapat menggunakan metode `setState()` untuk memicu pembaruan tampilan yang sesuai.

*perbedaan utama adalah bahwa stateless widget adalah statis dan tidak dapat berubah, sedangkan stateful widget adalah dinamis dan dapat merespons perubahan data atau interaksi pengguna. Pemilihan jenis widget tergantung pada kebutuhan aplikasi dan jenis tampilan yang Anda inginkan.*

**Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**
Jawab :
- Text : Untuk menampilkan text dan menentukan style dari text yang ingin ditampilkan
- FloatingActionButton : Untuk membuat button yang dapat melakukan action sesuai dengan keinginan kita
- Row : Membuat element dalam baris/horizontal
- Column : Membuat element dalam kolom/vertikal
- Visibility : Membuat element dalam widget dapat disembunyikan/ditampilkan
- Center : Menaruh element ke tengah halaman
- Icon : Memberi icon ke sebuah element

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**
Jawab :
1. Membuat repositori baru pada github dan direktori pada lokal, dan tidak lupa melakukan konfigurasi
2. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
    - Membuka cd pada path direktori
    - Melakukan Getting Started with Flutter : flutter create inventory
                                               cd inventory
    - Membuat menu.dart di dalam folder lib
    - Memindahkan fungsi class MyHomePage ... {} dan class _MyHomePageState ... {} dari main.dart ke menu.dart
    - Menambahkan import 'package:inventory/menu.dart';
    - Mengubah beberapa tampilan seperti nama toko menjadi "kwangya store", judul homepage menjadi "inventory"
    - Membuat fungsi class ShopItem dan class ShopCard extends StatelessWidget 
3. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
        Melihat daftar item (Lihat Item)
        Menambah item (Tambah Item)
        Logout (Logout)
    - Menambahkan bagian ini di dalam MyHomePage extends StatelessWidget 
        final List<ShopItem> items = [
        ShopItem("Lihat Item", Icons.checklist),
        ShopItem("Tambah Item", Icons.add_shopping_cart),
        ShopItem("Logout", Icons.logout),
];
4. Memunculkan Snackbar dengan tulisan:
 "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
 "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
 "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
    - Pada class ShopCard extends StatelessWidget, menambahkan :
        onTap: () { // Area responsive terhadap sentuhan
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!"))); // pesannya
        },

5. Bonus :
    -menambahkan kode berikut :
    Color backgroundColor;

    if (item.name == "Lihat Produk") {
      backgroundColor = Colors.blue;
    } else if (item.name == "Tambah Produk") {
      backgroundColor = Colors.green;
    } else if (item.name == "Login") {
      backgroundColor = Colors.orange;
    } else {
      backgroundColor = Colors.indigo;
    }
    dan
    return Material(
      color: backgroundColor 


========================================================================================================================================================================================================================================================================
Nama    : Nur Azizah Febriyana
NPM     : 2206824363
Kelas   : PBP-B

**TUGAS-8**

**Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**
Jawab :
- Navigator.push (): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
- Navigator.pushReplacement() : Metode pushReplacement digunakan untuk menimpa/mengganti rute yang sekarang ke rute lain. Halaman baru ditampilkan dengan menggantikan halaman sebelumnya.

**Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**
Jawab :
*Container*
widget yang dapat mengandung widget lainnya dan memberikan kontrol terhadap properti seperti padding, margin, dan dekorasi. Digunakan untuk membungkus widget lain dan memberikan properti styling atau tata letak (layout) dasar.

*Row dan Column*
widget yang mengatur anak-anaknya dalam satu baris atau satu kolom secara horizontal atau vertikal, berguna ketika ingin menyusun widget secara berurutan dalam satu baris atau satu kolom, misalnya, susunan tombol, teks, atau widget lainnya.

*ListView dan GridView*
widget yang mengatur anak-anaknya dalam daftar gulir vertikal atau horizontal, atau dalam bentuk grid, digunakan untuk menampilkan daftar item atau tata letak berupa grid, seperti daftar kontak, gambar, atau item produk dalam aplikasi e-commerce.

*Stack*
widget yang mengatur anak-anaknya secara bertumpukan (lapisan), sehingga dapat menumpuk satu di atas yang lain, berguna ketika ingin menempatkan beberapa widget di atas satu sama lain, seperti menambahkan teks di atas gambar atau ikon.

*Expanded dan Flexible*
widget yang digunakan untuk mengendalikan bagaimana widget mengisi ruang di dalam parent widget, terutama dalam Row atau Column, berguna ketika ingin memberikan bobot atau fleksibilitas tertentu kepada widget dalam Row atau Column, misalnya, dalam situasi di mana satu widget harus mengambil lebih banyak ruang daripada yang lain.

*SizedBox*
widget SizedBox memungkinkan untuk menetapkan ukuran lebar dan tinggi tertentu pada widget anaknya, berguna ketika ingin menetapkan ukuran spesifik untuk widget, seperti menambahkan jarak (padding) atau mengontrol ukuran widget secara eksplisit.

*Card*
widget yang menyediakan tata letak dasar untuk menyusun informasi atau konten terkait dalam bentuk kartu, digunakan untuk menampilkan informasi terkait dalam bentuk kartu, seperti dalam daftar berita atau penggunaan dalam pola desain kartu.

*Wrap*
widget yang mengatur anak-anaknya dalam baris dan kolom, dan bila ruang tidak mencukupi, widget tersebut akan pindah ke baris atau kolom berikutnya, berguna ketika ingin menempatkan widget dalam bentuk kumpulan yang dapat berubah ukurannya sesuai kebutuhan, misalnya, dalam tata letak tag atau filter.

**Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**
Jawab :
1. **TextFormField untuk Nama Item:**
   - **Tujuan:** Mengumpulkan informasi nama item yang akan ditambahkan.
   - **Penggunaan:** Elemen input ini memungkinkan pengguna untuk memasukkan nama item dengan memberikan petunjuk (hint) dan label yang jelas.

2. **TextFormField untuk Harga:**
   - **Tujuan:** Mengumpulkan informasi harga dari item yang akan ditambahkan.
   - **Penggunaan:** Elemen input ini memungkinkan pengguna untuk memasukkan harga item dengan memberikan petunjuk dan label. Selain itu, dilakukan validasi untuk memastikan input berupa angka.

3. **TextFormField untuk Stok:**
   - **Tujuan:** Mengumpulkan informasi jumlah stok dari item yang akan ditambahkan.
   - **Penggunaan:** Elemen input ini memungkinkan pengguna untuk memasukkan jumlah stok item dengan memberikan petunjuk dan label. Validasi dilakukan untuk memastikan input berupa angka.

4. **TextFormField untuk Deskripsi:**
   - **Tujuan:** Mengumpulkan informasi deskripsi atau keterangan tambahan tentang item.
   - **Penggunaan:** Elemen input ini memungkinkan pengguna untuk memberikan deskripsi atau keterangan tambahan tentang item yang akan ditambahkan.

Seluruh elemen input tersebut menggunakan `TextFormField` karena:

-`TextFormField` dapat digunakan untuk menerima input teks dari pengguna, yang sesuai dengan informasi yang perlu dikumpulkan dalam formulir ini.

-`TextFormField` memungkinkan untuk melakukan validasi input, seperti memastikan bahwa input adalah angka untuk harga dan stok. Hal ini membantu memastikan bahwa data yang dimasukkan sesuai dengan format yang diinginkan.

- `TextFormField` memungkinkan penambahan petunjuk (hint) dan label, yang membantu memberikan panduan kepada pengguna tentang informasi apa yang diharapkan dalam setiap bidang.

- Penggunaan `setState` pada setiap perubahan nilai input memastikan bahwa tampilan form akan di-update sesuai dengan nilai terbaru yang dimasukkan oleh pengguna.

**Bagaimana penerapan clean architecture pada aplikasi Flutter?**
Jawab :
Clean Architecture adalah sebuah pendekatan desain perangkat lunak yang bertujuan untuk memisahkan logika bisnis dari detail implementasinya, sehingga membuat kode menjadi lebih modular, bersih, dan mudah diuji. Clean Architecture pada aplikasi Flutter melibatkan pembagian aplikasi menjadi lapisan-lapisan utama:

-Domain Layer: Berisi logika bisnis, entitas, dan use cases.
-Data Layer: Mengelola akses ke data, termasuk implementasi repositori.
-Presentation Layer: Menangani UI, menggunakan presenters dan view models.
-Infrastructure Layer: Berisi implementasi teknis khusus platform (Flutter).

Langkah-langkahnya meliputi definisi entitas, repositori, use cases, dan implementasi data sources. Presenters dan view models digunakan untuk mengelola UI. Dependency injection membantu menghubungkan lapisan. Prinsip clean code dan SOLID digunakan, serta melakukan uji di setiap lapisan

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)**
1. Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
 *Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat*
 -pada lib, membuat file bernama shooplist_form.dart
 - Membuat widget form tambah item untuk menambahkan input field seperti nama item, harga, stok, dan juga deskripsi itemnya.
 -Buat variabel baru bernama _formKey lalu tambahkan _formKey tersebut ke dalam atribut key milik widget Form. Atribut key akan berfungsi sebagai handler dari form state, validasi form, dan penyimpanan form.
 -Buat beberapa variabel untuk menyimpan input dari masing-masing field yang akan dibuat
 -Buat widget Column sebagai child dari SingleChildScrollView
 -Buat widget TextFormField yang dibungkus oleh Padding sebagai salah satu children dari widget Column serta menambahkan atribut crossAxisAlignment untuk mengatur alignment children dari Column

 *Memiliki sebuah tombol Save*
 -Buat tombol sebagai child selanjutnya dari Column setelah TextFormField sebelumnya.

 *Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:*
  -Setiap elemen input tidak boleh kosong.
   Membuat validator tidak null pada setiap child TextFormFieldnya
  -Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
   Membuat validator integer pada setiap child TextFormField harga dan stok.

 2. Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
 -Menambahkan navigator :
           if (item.name == "Tambah Produk") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShopFormPage()));
          }  

 3. Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
 -Menambahkan fungsi showDialog() pada bagian onPressed() dan munculkan widget AlertDialog pada fungsi tersebut.

 4. Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
 *Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item*
  - Buat folder baru di dalam lib bernama 'widgets' yang didalamnya terdapat file dart 'left_drawer.dart'.
    file left_drawer ini untuk memuat elemen-elemen untuk drawer left aplikasi.
 *Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.*
  -Menambahkan import 'package:inventory/screens/menu.dart';
  -Routing ke halaman HomePage
    ListTile(
      leading: const Icon(Icons.home_outlined),
      title: const Text('Halaman Utama'),
      // Bagian redirection ke MyHomePage
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ));
      },
    ),

 *Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru*
  -Menambahkan import 'package:inventory/screens/shoplist_form.dart';
  -Routing ke halaman mengisi form tambah item :
  ListTile(
    leading: const Icon(Icons.add_shopping_cart),
    title: const Text('Tambah Item'),
    // Bagian redirection ke ShopFormPage
    onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => ShopFormPage(),
            ));
    },
    ),


========================================================================================================================================================================================================================================================================
Nama    : Nur Azizah Febriyana
NPM     : 2206824363
Kelas   : PBP-B

**TUGAS-9**
**Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**
Jawab :
-Mengambil data JSON tanpa membuat model dapat lebih cocok jika struktur data tidak terstruktur atau berubah secara dinamis.

-Jika perlu melakukan analisis data yang lebih kompleks, pembuatan model terstruktur mungkin lebih bermanfaat. Ini memungkinkan untuk memanfaatkan keuntungan dari pemodelan data yang lebih terstruktur.

-Jika struktur data JSON konsisten dan dapat diprediksi, membuat model dapat membantu memudahkan proses pengolahan dan analisis data.

-Mengambil data tanpa membuat model mungkin lebih cepat karena tidak ada langkah pembuatan model yang diperlukan. Pengembang dapat langsung menggunakan library atau framework yang mendukung operasi JSON untuk mengambil dan memanipulasi data.

Jadi, Jika proyek sederhana dan tidak memerlukan manipulasi atau analisis yang kompleks, maka tidak membuat model terlebih dahulu dapat mempercepat pengembangan. Namun, jika proyek kompleks dan memerlukan kontrol dan fleksibilitas yang lebih besar, maka membuat model terlebih dahulu dapat memberikan keuntungan yang lebih besar.

**Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
Jawab:
CookieRequest adalah sebuah kelas dalam aplikasi Flutter yang digunakan untuk mengirim permintaan HTTP yang menyertakan cookie. Cookie sendiri adalah sebuah mekanisme yang digunakan untuk menyimpan informasi pada sisi klien dan mengirimkannya kembali ke server pada setiap permintaan. Dengan menggunakan CookieRequest, kita dapat mengatur dan mengirim cookie bersama dengan permintaan HTTP.

Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter agar cookie yang dikirimkan oleh server dapat disimpan dan digunakan secara konsisten di seluruh aplikasi. Dengan membagikan instance CookieRequest, kita dapat mengakses dan mengelola cookie yang diterima dari server di berbagai komponen seperti halaman, widget, atau layanan.

**Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.**
Jawab:
-Data JSON dapat diperoleh dari berbagai sumber, termasuk API web atau penyimpanan lokal. Jika mengambil data dari API, dapat menggunakan metode HTTP seperti GET untuk mendapatkan respons yang berisi data JSON.

-Gunakan metode penguraian JSON untuk mengubah string JSON menjadi struktur data yang dapat diakses di Flutter. Flutter memiliki dukungan bawaan untuk menguraikan JSON menggunakan kelas dart:convert.

-Jika data JSON memiliki struktur yang tetap dan ingin menggunakan objek Dart yang sesuai, dapat membuat model objek dan menggunakan deserialisasi untuk mengubah JSON menjadi objek Dart.

-Gunakan widget Flutter untuk menampilkan data pada antarmuka pengguna (UI).

-Setelah mendapatkan data dari JSON, pengembang dapat menavigasi ke halaman baru untuk menampilkan data tersebut dengan menggunakan navigator.
**Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**
Jawab :
-Pengguna memasukkan data akun seperti nama pengguna dan kata sandi pada aplikasi Flutter.

-Data akun yang dimasukkan oleh pengguna dikirim dari aplikasi Flutter ke server Django menggunakan permintaan HTTP, seperti POST request.

-Django menerima data akun dari Flutter dan melakukan verifikasi. Django akan memeriksa apakah data akun yang diterima valid, seperti memeriksa apakah nama pengguna dan kata sandi cocok dengan data yang ada di sistem.

-Jika data akun valid, Django akan memulai proses autentikasi. Proses ini melibatkan langkah-langkah seperti memeriksa kecocokan nama pengguna dan kata sandi, memeriksa apakah akun pengguna telah diaktifkan, dan memeriksa apakah pengguna memiliki izin yang sesuai.

-Setelah proses autentikasi selesai, Django akan mengirimkan status autentikasi ke aplikasi Flutter. Status ini dapat berupa token autentikasi yang valid atau pesan kesalahan jika autentikasi gagal.

-Jika autentikasi berhasil, aplikasi Flutter akan menampilkan menu atau halaman yang sesuai dengan pengguna yang terautentikasi. Pengguna dapat melihat dan menggunakan fitur-fitur yang tersedia dalam menu tersebut

**Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.**
Jawab:
1. File product_detail_page

-MaterialApp: Ini adalah widget root yang digunakan untuk menginisialisasi aplikasi Flutter.
-Scaffold: Ini adalah widget yang menyediakan struktur dasar untuk halaman, termasuk AppBar, Drawer, dan body.
-AppBar: Ini adalah widget yang menampilkan bilah aplikasi di bagian atas halaman.
-LeftDrawer: Ini adalah widget kustom yang digunakan sebagai konten drawer di sisi kiri halaman.
-SingleChildScrollView: Ini adalah widget yang memungkinkan kontennya dapat di-scroll jika melebihi ukuran layar.
-Column: Ini adalah widget yang mengatur widget-child secara vertikal.
-Text: Ini adalah widget yang digunakan untuk menampilkan teks.
-SizedBox: Ini adalah widget yang digunakan untuk memberikan ruang kosong dengan ukuran tertentu.
-ElevatedButton: Ini adalah widget yang digunakan untuk membuat tombol dengan latar belakang yang ditinggikan.

2. File list_product

-MaterialApp: Widget root yang mengonfigurasi keseluruhan tema dan navigasi aplikasi.
-Scaffold: Menyediakan struktur tata letak dasar untuk aplikasi, termasuk bilah aplikasi, laci, dan badan.
-AppBar: Menampilkan judul dan tindakan lain di bilah aplikasi.
-LeftDrawer: Widget khusus yang mewakili laci kiri aplikasi.
-FutureBuilder: Widget yang dibuat secara asinkron berdasarkan cuplikan interaksi terbaru dengan Masa Depan.
-Tengah: Memusatkan widget turunannya secara horizontal dan vertikal.
-CircularProgressIndicator: Menampilkan indikator pemuatan melingkar.
-Kolom: Widget yang menampilkan turunannya dalam susunan vertikal.
-Teks: Menampilkan string teks dengan gaya tertentu.
-SizedBox: Kotak dengan ukuran tertentu, digunakan untuk membuat jarak antar widget.
-ListView.builder: Membuat daftar widget yang dapat digulir dengan malas berdasarkan fungsi yang diindeks.
-GestureDetector: Widget yang mendeteksi gerakan yang dilakukan oleh pengguna.
-Kontainer: Widget yang menggabungkan widget pengecatan, pemosisian, dan ukuran umum.
-ElevatedButton: Tombol timbul dengan desain material.
-Navigator: Widget yang mengelola sekumpulan widget anak dengan disiplin tumpukan.
-MaterialPageRoute: Rute yang menggantikan seluruh layar dengan transisi adaptif platform.
-ProductDetailPage: Widget khusus yang menampilkan detail produk.

3. File product

-import 'dart:convert';: Mengimpor pustaka dart:convert yang digunakan untuk mengonversi data JSON menjadi objek Dart dan sebaliknya.
-List< Product > productFromJson(String str): Fungsi ini digunakan untuk mengonversi string JSON menjadi daftar objek Product. Fungsi ini menggunakan metode json.decode untuk mengurai string JSON dan kemudian menggunakan metode map untuk mengonversi setiap elemen dalam daftar menjadi objek Product.
-String productToJson(List< Product > data): Fungsi ini digunakan untuk mengonversi daftar objek Product menjadi string JSON. Fungsi ini menggunakan metode json.encode untuk mengonversi objek Dart menjadi string JSON.
-class Product: Kelas ini mewakili entitas produk. Ini memiliki properti model, pk, dan fields. Kelas ini juga memiliki metode fromJson dan toJson yang digunakan untuk mengonversi objek Dart menjadi JSON dan sebaliknya.
-class Fields: Kelas ini mewakili entitas bidang produk. Ini memiliki properti name, amount, description, dan user. Kelas ini juga memiliki metode fromJson dan toJson yang digunakan untuk mengonversi objek Dart menjadi JSON dan sebaliknya. Jadi, widget yang digunakan dalam kode tersebut adalah import 'dart:convert';, List< Product > productFromJson(String str), String productToJson(List< Product > data), class Product, dan class Fields.

4. File login

-MaterialApp: Widget ini adalah akar dari aplikasi Flutter dan menyiapkan keseluruhan tema dan navigasi untuk aplikasi.
-Scaffold: Widget ini menyediakan struktur tata letak dasar untuk aplikasi, termasuk bilah aplikasi dan isi.
-AppBar: Widget ini mewakili bilah aplikasi di bagian atas layar dan menampilkan judul.
-Container: Widget ini digunakan untuk membuat wadah yang dapat menampung widget lainnya. Ini digunakan di sini untuk memberikan padding dan penyelarasan untuk formulir login.
-Kolom: Widget ini digunakan untuk menyusun widget turunannya dalam kolom vertikal.
-TextField: Widget ini digunakan untuk membuat kolom input teks untuk nama pengguna dan kata sandi.
-SizedBox: Widget ini digunakan untuk membuat ruang kosong antar widget. Ini digunakan di sini untuk menambahkan spasi vertikal antara bidang teks dan tombol login.
-ElevatedButton: Widget ini digunakan untuk membuat tombol dengan tampilan terangkat. Ini digunakan di sini sebagai tombol login.
-Teks: Widget ini digunakan untuk menampilkan teks di layar.
-SnackBar: Widget ini digunakan untuk menampilkan pesan sementara di bagian bawah layar.
-AlertDialog: Widget ini digunakan untuk menampilkan kotak dialog dengan judul, konten, dan tindakan.
-TextButton: Widget ini digunakan untuk membuat tombol dengan label teks.
-Penyedia: Paket ini digunakan untuk pengelolaan status di Flutter. Ini memungkinkan widget untuk mengakses dan memperbarui status bersama.
-pbp_django_auth: Paket ini menyediakan fungsionalitas otentikasi untuk aplikasi Flutter menggunakan backend Django.
-CookieRequest: Kelas ini adalah bagian dari paket pbp_django_auth dan digunakan untuk membuat permintaan HTTP dengan otentikasi berbasis cookie.
-Navigator: Kelas ini digunakan untuk navigasi antar layar berbeda di aplikasi.
-PageRouteBuilder: Kelas ini digunakan untuk menentukan transisi halaman khusus saat bernavigasi antar layar.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**
Jawab :
-Membuat halaman login yang terintegrasi dengan project tugas django. Proses ini dilakukan dengan menambahkan dan mengedit beberapa bagian di dalam tugas django dan tugas flutter
-Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter. Hal ini dilakukan dengan melakukan routing autentikasi di dalam tugas django dan routing ke tugas django dari tugas flutter.
-Membuat model kustom sesuai dengan proyek aplikasi Django. Hal ini dilakukan dengan mengubah data json dari tugas django menggunakan quicktype dan menyimpan kode hasil dari quicktype sebagai model untuk tugas flutter.
-Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. Hal ini dilakukan dengan menghubungkan web tugas django dengan tugas flutter dan membuat halaman berdasarkan data json yang telah diambil dari quicktype sebelumnya.
-Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item. Hal ini dilakukan dengan membuat tombol detail dan mengarahkan pada halaman detail untuk tiap tiap itemnya. Proses ini dikerjakan dengan menambahkan file baru bernama product_detail_page.
-Melakukan git workflow (add, commit, push)