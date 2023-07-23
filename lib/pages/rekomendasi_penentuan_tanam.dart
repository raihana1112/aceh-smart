// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types
import 'dart:convert';

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:app_tanaman_ui/pages/hasil_rekomendasi_kapan_tanam.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class rekomendasi_penentuan_tanam extends StatefulWidget {
  const rekomendasi_penentuan_tanam({super.key});

  @override
  State<rekomendasi_penentuan_tanam> createState() =>
      _rekomendasi_penentuan_tanamState();
}

String lokasi = '';
int bulan = 0;
int lahan = 0;

class _rekomendasi_penentuan_tanamState
    extends State<rekomendasi_penentuan_tanam> {
  TextEditingController namaLahan = TextEditingController();
  TextEditingController luasLahan = TextEditingController();
  TextEditingController bulanTanam = TextEditingController();
  TextEditingController kota = TextEditingController();
  TextEditingController kecamatan = TextEditingController();
  TextEditingController desa = TextEditingController();

  Future<List> _check() async {
    try {
      final response = await http.post(
          Uri.parse("http://10.140.234.8/login_app/data_jns_tanaman.php"),
          body: {
            "lokasi": kota.text,
            "bulan": bulanTanam.text,
            "lahan": luasLahan.text
          });

      var hasil = json.decode(response.body);

      print(hasil);

      setState(() {
        hasil.forEach(hasil);

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    hasil_rekomendasi_kapan_tanam(hasil: hasil)));
      });

      //print(datatanaman);
      // if (hasil.length == 0) {
      //   setState(() {
      //     tampil();
      //   });
      // } else {
      //   setState(() {
      //     kota = hasil[0]['lokasi'];
      //     bulanTanam = hasil[0]['bulan'];
      //     // print(kota);

      //     // hasil();
      //   });
      // }
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rekomendasi Penentuan Tanam",
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

                    SizedBox(
                      height: 40,
                    ),
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

  void tampil() {
    Fluttertoast.showToast(
        msg: "DATA ANDA GAGAL DIOLAH",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  // void hasil() {
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => hasil_rekomendasi_kapan_tanam(
  //               lokasi: kota, bulan: bulanTanam)));
  // }
}
