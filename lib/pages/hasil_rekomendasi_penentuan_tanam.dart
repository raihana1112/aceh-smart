// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:app_tanaman_ui/components/prediksiKapanTanam.dart';
import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_kapan_tanam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/navigation_button.dart';
import 'Petani/home_page_petani.dart';

class hasil_rekomendasi_penentuan_tanam extends StatefulWidget {
  const hasil_rekomendasi_penentuan_tanam({super.key});

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
                                "Lahan Baroh",
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "02 April 2023",
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
                        height: 110,
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
                                        fontSize: 12,
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
                                "Pante Baro Kumbang, Kec. Peusangan siblah kruenng, Kab. Bireuen.",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ACEH",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
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
                                          "Januari",
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
                                          "Maret",
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
                              text: "2169.8/kg",
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
                        "Perhitungan Berdasarkan Bulan Terdekat",
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
                              HargaPanen: "Rp. 47.750/kg",
                              TotalPendapatan: "Rp. 127.614.375",
                              Title: "Januari")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          prediksiKpnTanam(
                              HargaPanen: "Rp. 47.750/kg",
                              TotalPendapatan: "Rp. 127.614.375",
                              Title: "Februari")
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          prediksiKpnTanam(
                              HargaPanen: "Rp. 47.750/kg",
                              TotalPendapatan: "Rp. 127.614.375",
                              Title: "Maret")
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
                                  HargaPanen: "Rp. 43.750/kg",
                                  TotalPendapatan: "Rp. 127.614.375",
                                  Title: "Januari")
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              prediksiKpnTanam(
                                  HargaPanen: "Rp. 37.750/kg",
                                  TotalPendapatan: "Rp. 127.614.375",
                                  Title: "Februari")
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              prediksiKpnTanam(
                                  HargaPanen: "Rp. 41.750/kg",
                                  TotalPendapatan: "Rp. 120.663.402",
                                  Title: "April")
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),

                          //button
                          navigation_button(
                              nextPage: home_page(username: username),
                              title: "Beranda",
                              warnaText: Colors.white)
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
}
