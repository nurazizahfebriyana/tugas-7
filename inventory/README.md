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