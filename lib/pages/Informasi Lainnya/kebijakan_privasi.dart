// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class kebijakan_privasi extends StatefulWidget {
  const kebijakan_privasi({super.key});

  @override
  State<kebijakan_privasi> createState() => _kebijakan_privasiState();
}

class _kebijakan_privasiState extends State<kebijakan_privasi> {
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
                  "Kebijakan Privasi",
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

Tanggal Efektif: 1 Juni 2023

Kebijakan Privasi ini menjelaskan bagaimana data pribadi Anda dikumpulkan, digunakan, dan diungkapkan oleh Aplikasi Petani Aceh Smart. Kami sangat menghargai privasi Anda dan berkomitmen untuk melindungi informasi pribadi Anda. Dalam kebijakan ini, "kami" atau "Aplikasi Petani Aceh Smart" mengacu pada pengembang dan operator Aplikasi Petani Aceh Smart.

A. Pengumpulan Informasi Pribadi
Kami dapat mengumpulkan informasi pribadi yang Anda berikan kepada kami saat mengakses atau menggunakan Aplikasi Petani Aceh Smart. Informasi ini dapat mencakup, namun tidak terbatas pada:
1. Informasi identifikasi pribadi: Nama, alamat email, nomor telepon, alamat, dan informasi kontak lainnya yang relevan.
2. Informasi demografis: Usia, jenis kelamin, preferensi, dan minat pribadi lainnya.
3. Informasi transaksi: Informasi pembayaran dan data lain yang terkait dengan transaksi Anda menggunakan Aplikasi Petani Aceh Smart.

B. Penggunaan Informasi Pribadi
Kami menggunakan informasi pribadi Anda untuk:
1. Menyediakan dan mengelola Aplikasi Petani Aceh Smart.
2. Memproses dan mengelola transaksi yang Anda lakukan melalui Aplikasi Petani Aceh Smart.
3. Mengirimkan informasi yang relevan tentang layanan kami, pembaruan, dan penawaran khusus.
4. Menghubungi Anda untuk tujuan riset pasar, survei kepuasan pelanggan, atau permintaan umpan balik lainnya.
5. Menyediakan dukungan pelanggan dan menanggapi pertanyaan atau masalah yang Anda ajukan.
6. Melakukan analisis data dan penelitian untuk meningkatkan dan mengoptimalkan Aplikasi Petani Aceh Smart.

C. Pengungkapan Informasi Pribadi
Kami dapat mengungkapkan informasi pribadi Anda kepada pihak ketiga yang bekerja sama dengan kami dalam menyediakan layanan Aplikasi Petani Aceh Smart, seperti penyedia layanan pembayaran, mitra logistik, atau penyedia layanan teknologi informasi. Namun, kami akan memastikan bahwa pihak ketiga tersebut mematuhi standar keamanan dan kerahasiaan yang sama seperti yang kami terapkan.
Kami juga dapat mengungkapkan informasi pribadi Anda jika diwajibkan oleh hukum atau jika kami yakin bahwa pengungkapan tersebut diperlukan untuk melindungi hak, properti, atau keamanan kami atau pihak lain.

D. Keamanan Data
Kami mengambil langkah-langkah yang wajar untuk melindungi informasi pribadi Anda dari akses, penggunaan, atau pengungkapan yang tidak sah. Kami menggunakan praktik keamanan yang sesuai, termasuk enkripsi data, untuk melindungi informasi pribadi Anda.

E. Perubahan Kebijakan Privasi
Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu. Setiap perubahan yang signifikan akan diinformasikan kepada Anda melalui pemberitahuan di Aplikasi Petani Aceh Smart atau melalui kontak yang Anda berikan kepada kami. Kami menyarankan Anda untuk secara teratur memeriksa kebijakan privasi kami untuk tetap mendapatkan informasi terkini tentang praktik kami.

F. Hubungi Kami
Jika Anda memiliki pertanyaan atau komentar tentang Kebijakan Privasi ini atau pengelolaan informasi pribadi Anda, silakan hubungi kami melalui 
•	By Email : Raihana111201@gmail.com

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
