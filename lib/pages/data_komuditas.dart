// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/navigation_button.dart';
import '../components/text_fields_without_icon.dart';

class data_komuditas extends StatefulWidget {
  const data_komuditas({super.key});

  @override
  State<data_komuditas> createState() => _data_komuditasState();
}

class _data_komuditasState extends State<data_komuditas> {

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
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Data Komoditas",
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
              SizedBox(
                height: 0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 45),
                child: Column(
                  children: [
                    text_fields_without_icon(
                      hintText: "Nama lahan",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Luas lahan",
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
                      hintText: "Jumlah hasil panen (ton)",
                      color: Color.fromARGB(255, 235, 235, 235), controller: namaLahan,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    text_fields_without_icon(
                      hintText: "Bulan tanam",
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
                      height: 50,
                    ),
                    navigation_button(
                      nextPage: home_page(username: username),
                      title: "Simpan Data",
                      warnaText: Colors.black87,
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
