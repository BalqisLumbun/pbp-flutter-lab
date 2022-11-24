 TUGAS 7 BALQIS ASY-SYIFA LUMBUN 2106751184
 Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
 
 Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 Button, Text
 
 Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 Menetapkan sebuah state bila terdapat kondisi yang terpenuhi.
 
 Jelaskan perbedaan antara const dengan final.
 
 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 1. Membuat app Flutter
 2. Set counter, String ganjil genap, set boolean isVisible
 3. Membuat increment dan decrement counter
 4. Membuat class color untuk mengganti warna text ketika counter bernilai ganjil atau genap
 5. Meletakkan Text genap ganjil dan decrement counter button di body scaffolding

 ##TUGAS 8 BALQIS ASY-SYIFA LUMBUN 2106751184##

 A. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

 - Navigator.push = memasukkan route baru ke dalam stack

 - Navigator.pushReplacement = mengganti route navigator yang sudah ada 

 B. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

 FloatingActionButton: Membuat Button untuk kondisi melakukan aksi selanjutnya

 Column: Merapikan Rata Kolom

 Text: Membuat Teks

 Center: Meratakan ke Tengah

 Card: Membuat Partisi per data yang dihasilkan

 C. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

 onPressed, onTap, OnDoubleTap, onRefresh, onSubmitted, onError

 D. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

  Navigator.push akan mengarahkan kita ke page yang dituju sementara Navigator.pop dilakukan untuk kembali. Rute page yang kita sudah lalui akan masuk ke sebuah stack
  dan pop dilakukan untuk menghapus rute kita.

 E. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

 -Membuat Class Budget (referensi dari Risa Lestari)
 - Membuat page form dan page untuk data budget
 - Membuat navbar di setiap pagenya dan saling impor page satu sama lain
 - Membuat form
 - Membuat fungsi menerima input
 - Tweaking page data budget 
 

 ##TUGAS 9 BALQIS ASY-SYIFA LUMBUN 2106751184##

 Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

J: Bisa, tetapi tidak disarankan. Strukturnya bisa jadi tidak sesuai dengan yang dibutuhkan. Misal data berupa Boolean tetapi dikenali sebagai string.


 Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

J:
- FutureBuilder : Menampilkan data yang diambil dari web.
- Drawer: Menampilkan menu


 Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

 - Future memanggil fungsi yang mengambil JSON dari internet lalu mereturn list. Ketika snapshot yang didapat memiliki data akan langsung ditampilkan hasil return futurenya, tetapi bila masih null akan diload indikator.

 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 (Kak ini di saya belum muncul tulisannya)
 - Membuat tombol hamburger dan navigatornya
 - Membuat model mywatchlist
 - Impor json dari url Django
 - Menambahkan detail dari imporan JSON
 - Mengaktifkan flutter pub add http

 
 
