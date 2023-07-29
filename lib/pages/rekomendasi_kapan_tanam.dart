// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:convert';

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:app_tanaman_ui/pages/hasil_rekomendasi_penentuan_tanam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class rekomendasi_kapan_tanam extends StatefulWidget {
  const rekomendasi_kapan_tanam({super.key});

  @override
  State<rekomendasi_kapan_tanam> createState() =>
      _rekomendasi_kapan_tanamState();
}

String komoditas = '';
int bulan = 0;
int lahan = 0;

class _rekomendasi_kapan_tanamState extends State<rekomendasi_kapan_tanam> {
  TextEditingController namaLahan = TextEditingController();
  TextEditingController luasLahan = TextEditingController();
  TextEditingController komoditas = TextEditingController();
  TextEditingController bulanTanam = TextEditingController();
  TextEditingController kota = TextEditingController();
  TextEditingController kecamatan = TextEditingController();
  TextEditingController desa = TextEditingController();

  Future<List> _check() async {
    try {
      final response = await http.post(
          Uri.parse("http://192.168.137.48/login_app/data_waktu_tanam.php"),
          body: {
            "lokasi": kota.text,
            "jenis": komoditas.text,
            "lahan": luasLahan.text,
            "bulan": bulanTanam.text,
          });

      var hasil = json.decode(response.body);
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => hasil_rekomendasi_penentuan_tanam(
                    hasil: hasil,
                    lokasi: kota.text,
                    nama_lahan: namaLahan.text)));
      });
    } catch (e) {
      print(e);
    }
    return [];
  }

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
                                  builder: (context) => home_page(
                                        id_user: id_user, username: username, telp: telp, nama_lengkap:nama_lengkap, alamat:alamat
                                      )));
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
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/username.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Nama Lahan",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: namaLahan,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/alamat.png",
                                color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Luas Lahan",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: luasLahan,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //textfield
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/alamat.png",
                                color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Komoditas",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: komoditas,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //textfield
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/nip.png", color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Bulan Tanam",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: bulanTanam,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/telepon.png",
                                color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Kota",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: kota,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // text_fiel
                    // ds_without_icon(
                    //   hintText: "Nama Lahan",
                    //   color: Color.fromARGB(255, 235, 235, 235),
                    //   controller: namaLahan,
                    // ),
                    // SizedBox(
                    //   height: 28,
                    // ),
                    // text_fields_without_icon(
                    //   hintText: "Luas Lahan",
                    //   color: Color.fromARGB(255, 235, 235, 235),
                    //   controller: luasLahan,
                    // ),
                    // SizedBox(
                    //   height: 28,
                    // ),
                    // text_fields_without_icon(
                    //   hintText: "Komoditas",
                    //   color: Color.fromARGB(255, 235, 235, 235),
                    //   controller: komoditas,
                    // ),
                    // SizedBox(
                    //   height: 28,
                    // ),
                    // text_fields_without_icon(
                    //   hintText: "Perkiraan Bulan Tanam",
                    //   color: Color.fromARGB(255, 235, 235, 235),
                    //   controller: bulanTanam,
                    // ),
                    // SizedBox(
                    //   height: 28,
                    // ),
                    // text_fields_without_icon(
                    //   hintText: "Kota/Kabupaten",
                    //   color: Color.fromARGB(255, 235, 235, 235),
                    //   controller: kota,
                    // ),
                    // SizedBox(
                    //   height: 40,
                    // ),
                    // text_fields_without_icon(
                    //   hintText: "Kecamatan",
                    //   color: Color.fromARGB(255, 235, 235, 235),
                    //   controller: namaLahan,
                    // ),
                    // SizedBox(
                    //   height: 28,
                    // ),
                    // text_fields_without_icon(
                    //   hintText: "Desa",
                    //   color: Color.fromARGB(255, 235, 235, 235),
                    //   controller: namaLahan,
                    // ),
                    // SizedBox(
                    //   height: 40,
                    // ),
                    // navigation_button(
                    //   nextPage: hasil_rekomendasi_penentuan_tanam(),
                    //   title: "Minta Rekomendasi",
                    //   warnaText: Colors.white,
                    // )
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 169, 240, 135),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          _check();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Minta Rekomendasi",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
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
