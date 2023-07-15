// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ketentuan_layanan extends StatefulWidget {
  const ketentuan_layanan({super.key});

  @override
  State<ketentuan_layanan> createState() => _ketentuan_layananState();
}

class _ketentuan_layananState extends State<ketentuan_layanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 15.0, left: 15, top: 25, bottom: 25),
          child: ListView(children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 175, 243, 135),
                          ),
                          color: Color.fromARGB(255, 223, 255, 224)),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Color.fromARGB(255, 175, 243, 135),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  "Ketentuan Layanan",
                  style: GoogleFonts.inter(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '''

A. Penggunaan Aplikasi

1. Aplikasi Petani Aceh Smart ("Aplikasi") hanya boleh digunakan oleh petani yang berkepentingan di wilayah Aceh. 
2. Pengguna harus mendaftar dan membuat akun di Aplikasi sebelum dapat mengakses dan menggunakan fitur-fitur yang tersedia. 
3. Pengguna wajib memberikan informasi yang akurat, lengkap, dan terkini saat mendaftar dan selama menggunakan Aplikasi. 
4. Pengguna bertanggung jawab untuk menjaga kerahasiaan informasi login dan tidak membagikan akun mereka kepada pihak lain.

B. Fitur Aplikasi

1. Aplikasi menyediakan informasi terkait pertanian, termasuk prakiraan cuaca, teknik bercocok tanam, pemupukan, irigasi, dan tata cara penanganan hama dan penyakit tanaman. 
2. Aplikasi dapat memberikan rekomendasi dan saran berdasarkan data yang diberikan oleh pengguna, seperti jenis tanaman yang cocok, waktu penanaman, dan pemilihan varietas.
3. Pengguna dapat menggunakan Aplikasi untuk memonitoring dan mencatat kegiatan pertanian mereka, termasuk penanaman, pemupukan, penyiraman, dan panen. 
4. Aplikasi dapat memberikan akses ke pasar online untuk membeli dan menjual produk pertanian. 
5. Fitur-fitur tambahan dapat ditambahkan atau diubah seiring dengan perkembangan Aplikasi.

C. Tanggung Jawab Pengguna

1. Pengguna bertanggung jawab atas segala aktivitas yang dilakukan melalui akun mereka. 
2. Pengguna wajib menggunakan Aplikasi sesuai dengan peraturan yang berlaku dan tidak boleh menggunakan Aplikasi untuk tujuan yang melanggar hukum atau merugikan pihak lain. 
3. Pengguna harus memberikan data dan informasi yang akurat dan tidak boleh menyalahgunakan fitur Aplikasi. 
4. Pengguna tidak diperbolehkan melakukan tindakan yang dapat merusak atau mengganggu Aplikasi, termasuk melakukan hacking, mengirimkan virus, atau melakukan serangan terhadap infrastruktur Aplikasi. 
5. Pengguna diharapkan memberikan umpan balik dan saran yang konstruktif untuk pengembangan Aplikasi.

D. Ketersediaan dan Dukungan 

1. Pihak pengembang akan berupaya menjaga ketersediaan dan kinerja Aplikasi, namun tidak dapat menjamin bahwa Aplikasi akan berjalan tanpa gangguan atau kesalahan. 
2. Pengguna dapat menghubungi tim dukungan teknis jika mengalami masalah atau memerlukan bantuan terkait penggunaan Aplikasi.

E. Privasi dan Keamanan

1. Penggunaan Aplikasi tunduk pada Kebijakan Privasi yang terpisah, yang menjelaskan bagaimana data pengguna dikumpulkan, digunakan, dan dilindungi. 
2. Pihak pengembang akan menjaga kerahasiaan data pengguna sejauh yang diizinkan oleh hukum yang berlaku.

F. Perubahan Ketentuan

1. Pihak pengembang berhak untuk mengubah Ketentuan Layanan ini dari waktu ke waktu. 
2. Perubahan tersebut akan diinformasikan kepada pengguna melalui pemberitahuan di Aplikasi atau melalui kontak yang diberikan oleh pengguna.

''',
              style: GoogleFonts.inter(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ]),
        ),
      ),
    );
  }
}
