// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:convert';

import 'package:app_tanaman_ui/components/prediksiKapanTanam.dart';
import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/home_page_pemerintah.dart';
import 'package:app_tanaman_ui/pages/Penyuluh/home_page_penyuluh.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_kapan_tanam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../components/navigation_button.dart';
import 'Petani/home_page_petani.dart';

// ignore: must_be_immutable
class hasil_rekomendasi_penentuan_tanam extends StatefulWidget {
  final List hasil;
  String nama_lahan;
  hasil_rekomendasi_penentuan_tanam(
      {super.key, required this.hasil, required this.nama_lahan});

  @override
  State<hasil_rekomendasi_penentuan_tanam> createState() =>
      _hasil_rekomendasi_penentuan_tanamState();
}

class _hasil_rekomendasi_penentuan_tanamState
    extends State<hasil_rekomendasi_penentuan_tanam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //maps
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  image: DecorationImage(
                      image: AssetImage("images/map.png"), fit: BoxFit.fill)),
              child: SizedBox(
                height: 350,
                width: MediaQuery.of(context).size.width,
              ),
            ),

            //back button
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, bottom: 25.0, left: 15, right: 15),
              child: SafeArea(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    rekomendasi_kapan_tanam()));
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

            //content
            Padding(
              padding: const EdgeInsets.only(
                  top: 265, bottom: 25.0, left: 15, right: 15),
              child: Column(
                children: [
                  //container 1
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                color: Color.fromARGB(38, 0, 0, 0),
                                offset: Offset(0, 2),
                                spreadRadius: 1)
                          ],
                          color: Color.fromARGB(255, 223, 255, 224)),
                      child: SizedBox(
                        height: 115,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //text hijau
                              Row(
                                children: [
                                  Image.asset(
                                    "images/disc.png",
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Informasi Lahan",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 175, 243, 135),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                widget.nama_lahan,
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.hasil[0][1],
                                style: GoogleFonts.inter(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 196, 196, 196),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  //container 2
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 223, 255, 224)),
                      child: SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //text hijau
                              Row(
                                children: [
                                  Image.asset(
                                    "images/location.png",
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Lokasi",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 175, 243, 135),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "ACEH",
                                style: GoogleFonts.inter(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),

                  //prediksi tanam 1
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Prediksi Tanam",
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 62, 185, 138)),
                                  child: SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12.0, horizontal: 20),
                                      child: Center(
                                        child: Text(
                                          widget.hasil[0][0],
                                          style: GoogleFonts.inter(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Prediksi Panen",
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 62, 185, 138)),
                                  child: SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12.0, horizontal: 20),
                                      child: Center(
                                        child: Text(
                                          widget.hasil[0][4],
                                          style: GoogleFonts.inter(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                                  "Perkiraan jumlah hasil yang akan dipanen : ",
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),

                            //nilai perkiraan hasil panen
                            TextSpan(
                              // ignore: prefer_interpolation_to_compose_strings
                              text: widget.hasil[0][2].toString() +
                                  " /kg, " +
                                  widget.hasil[0][3].toString() +
                                  " ton",
                              //text: widget.hasil[0][2],
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Prediksi Kapan Tanam",
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                color: Color.fromARGB(255, 179, 179, 179),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        "Perhitungan Berdasarkan Bulan Tanam Terdekat",
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            color: Color.fromARGB(255, 179, 179, 179),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          prediksiKpnTanam(
                              kelembaban: widget.hasil[1][4],
                              curahHujan: widget.hasil[1][5],
                              penyinaranMatahari: widget.hasil[1][6],
                              suhuRata: widget.hasil[1][7],
                              HargaPanen:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[1][1].toString(),
                              TotalPendapatan:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[1][2].toString(),
                              PendapatanBersih:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[1][3].toString(),
                              Title: widget.hasil[1][0])
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          prediksiKpnTanam(
                              kelembaban: widget.hasil[2][4],
                              curahHujan: widget.hasil[2][5],
                              penyinaranMatahari: widget.hasil[2][6],
                              suhuRata: widget.hasil[2][7],
                              HargaPanen:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[2][1].toString(),
                              TotalPendapatan:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[2][2].toString(),
                              PendapatanBersih:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[2][3].toString(),
                              Title: widget.hasil[2][0])
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          prediksiKpnTanam(
                              kelembaban: widget.hasil[3][4],
                              curahHujan: widget.hasil[3][5],
                              penyinaranMatahari: widget.hasil[3][6],
                              suhuRata: widget.hasil[3][7],
                              HargaPanen:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[3][1].toString(),
                              TotalPendapatan:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[3][2].toString(),
                              PendapatanBersih:
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "Rp. " + widget.hasil[3][3].toString(),
                              Title: widget.hasil[3][0])
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Prediksi Kapan Tanam",
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 179, 179, 179),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "Perhitungan Berdasarkan Waktu Tanam Terbaik",
                            style: GoogleFonts.inter(
                                fontSize: 17,
                                color: Color.fromARGB(255, 179, 179, 179),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              prediksiKpnTanam(
                                  kelembaban: widget.hasil[4][4],
                                  curahHujan: widget.hasil[4][5],
                                  penyinaranMatahari: widget.hasil[4][6],
                                  suhuRata: widget.hasil[4][7],
                                  HargaPanen:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[4][1].toString(),
                                  TotalPendapatan:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[4][2].toString(),
                                  PendapatanBersih:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[4][3].toString(),
                                  Title: widget.hasil[4][0])
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              prediksiKpnTanam(
                                  kelembaban: widget.hasil[5][4],
                                  curahHujan: widget.hasil[5][5],
                                  penyinaranMatahari: widget.hasil[5][6],
                                  suhuRata: widget.hasil[5][7],
                                  HargaPanen:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[5][1].toString(),
                                  TotalPendapatan:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[5][2].toString(),
                                  PendapatanBersih:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[5][3].toString(),
                                  Title: widget.hasil[5][0])
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              prediksiKpnTanam(
                                  kelembaban: widget.hasil[6][4],
                                  curahHujan: widget.hasil[6][5],
                                  penyinaranMatahari: widget.hasil[6][6],
                                  suhuRata: widget.hasil[6][7],
                                  HargaPanen:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[6][1].toString(),
                                  TotalPendapatan:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[6][2].toString(),
                                  PendapatanBersih:
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "Rp. " + widget.hasil[6][3].toString(),
                                  Title: widget.hasil[6][0])
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),

                          //button
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 169, 240, 135),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                check();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Beranda",
                                  style: GoogleFonts.inter(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void check() {
    if (level == 'pemerintah') {
      pemerintah();
    } else if (level == 'penyuluh') {
      penyuluh();
    } else {
      petani();
    }
  }

  void petani() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => home_page(
                id_user: id_user,
                username: username,
                telp: telp,
                nama_lengkap: nama_lengkap,
                alamat: alamat,
                level: level)));
  }

  void pemerintah() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => home_page_pemerintah(
                id_user: id_user,
                username: username,
                telp: telp,
                nama_lengkap: nama_lengkap,
                nip: nip,
                instansi: instansi,
                level: level)));
  }

  void penyuluh() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => home_page_penyuluh(
                id_user: id_user,
                username: username,
                telp: telp,
                nama_lengkap: nama_lengkap,
                instansi: instansi,
                id_penyuluh: id_penyuluh,
                level: level)));
  }
}
