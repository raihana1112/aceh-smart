// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_tanaman_ui/components/navigation_button.dart';
import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:app_tanaman_ui/pages/hasil_rekomendasi_penentuan_tanam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/text_fields_without_icon.dart';

class rekomendasi_kapan_tanam extends StatefulWidget {
  const rekomendasi_kapan_tanam({super.key});

  @override
  State<rekomendasi_kapan_tanam> createState() =>
      _rekomendasi_kapan_tanamState();
}

class _rekomendasi_kapan_tanamState extends State<rekomendasi_kapan_tanam> {
TextEditingController namaLahan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //backbutton
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 25.0, left: 15, right: 15),
                child: SafeArea(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      home_page(username: username)));
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
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rekomendasi Kapan Tanam",
                      style: GoogleFonts.inter(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Silahkan Masukkan Data Dibawah Ini",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 45),
                child: Column(
                  children: [
                    text_fields_without_icon(
                      hintText: "Nama Lahan",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Luas Lahan",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Komoditas",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Perkiraan Bulan Tanam",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Kota/Kabupaten",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Kecamatan",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Desa",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    navigation_button(
                      nextPage: hasil_rekomendasi_penentuan_tanam(),
                      title: "Minta Rekomendasi",
                      warnaText: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
