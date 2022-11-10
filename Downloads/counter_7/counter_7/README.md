 TUGAS 7 BALQIS ASY-SYIFA LUMBUN 2106751184

 A.Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
 
 Stateless Widget: widget yang tidak akan berubah dan dibentuk dengan konfigurasi yang diinisiasi pertama kali.
 Stateful Widget: Widget yang bisa berubah secara dinamis.


 B.Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

 FloatingActionButton, 
 Text untuk menampilkan tulisan,
 Column untuk merapikan widget menurut kolom,
 Container untuk menempatkan widget di dalam suatu wadah (di saya untuk memberi jarak)
 Row untuk merapikan widget menurut baris,
 Align untuk mengarahkan widget.
 Scaffold untuk menerapkan struktur letak visual.
 
 C.Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 Menetapkan sebuah state bila terdapat kondisi yang terpenuhi.
 Widget akan diberitahu bahwa sebuah objek nilainya berubah, sehingga aplikasi akan memuat ulang widget, dengan nilai yang sudah diupdate.
 variabel yang terdampak pada kasus ini adalah "counter" dan "gengan" yang berubah nilainya menjadi 0,1,2,3,4... atau Genap-Ganjil.
 
 D.Jelaskan perbedaan antara const dengan final.
 
 Const variabelnya tetap dan harus sudah diketahui ketika kompilasi sedang berjalan.

 Final variabelnya tetap tetapi bisa sudah atau belum diketahui saat waktu kompilasi.

 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 1. Membuat app Flutter
 2. Set counter, String ganjil genap, set boolean isVisible
 3. Membuat increment dan decrement counter
 4. Membuat class color untuk mengganti warna text ketika counter bernilai ganjil atau genap
 5. Meletakkan Text genap ganjil dan decrement counter button di body scaffolding
 
 
