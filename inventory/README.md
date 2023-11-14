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