// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Informasi%20Lainnya/kebijakan_privasi.dart';
import 'package:app_tanaman_ui/pages/Informasi%20Lainnya/ketentuan_layanan.dart';
import 'package:app_tanaman_ui/pages/Informasi%20Lainnya/tentang_perusahaan.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_kapan_tanam.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_penentuan_tanam.dart';
import 'package:app_tanaman_ui/pages/Petani/ubah_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cuaca_page.dart';

class profile_page extends StatefulWidget {
  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(
                  right: 15.0, left: 15, top: 25, bottom: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            //gambar profile
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "images/bang.png",
                                    ),
                                    fit: BoxFit.cover),
                                // borderRadius: BorderRadius.circular(15),
                                // border: Border.all(
                                //   width: 3,
                                //   color: Color.fromARGB(255, 175, 243, 135),
                                // ),
                              ),
                              child: SizedBox(
                                height: 60,
                                width: 60,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            //Text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Maulidil",
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),

                                //pekerjaan
                                Text(
                                  "0822 8098 6366",
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700),
                                ),
                                //pekerjaan
                                Text(
                                  "Petani",
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //edit profil
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ubah_profile()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 0, 173, 124),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Ubah",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //share
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.85,
                        child: Text(
                          "Yuk, share aplikasi aceh smart ke temanmu!",
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 0, 173, 124),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5),
                          child: Text(
                            "Bagikan",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  //batas
                  Container(
                    color: Colors.black,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 0.5,
                    ),
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  //informasi lainnya
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Informasi Lainnya",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => tentang_perusahaan()));
                        },
                        child: Container(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/tentang.png"),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Tentang Perusahaan",
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Image.asset("images/arrow.png"),
                            ],
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //batas
                      Container(
                        color: Colors.black,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 0.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("images/Tentang Aplikasi.png"),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Tentang Aplikasi",
                                  style: GoogleFonts.inter(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text(
                              "v 0.1",
                              style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      //batas
                      Container(
                        color: Colors.black,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 0.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ketentuan_layanan()));
                        },
                        child: Container(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/hp.png"),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Ketentuan Layanan",
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Image.asset("images/arrow.png"),
                            ],
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //batas
                      Container(
                        color: Colors.black,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 0.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => kebijakan_privasi()));
                        },
                        child: Container(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/shield.png"),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Kebijakan Privasi",
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Image.asset("images/arrow.png"),
                            ],
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //batas
                      Container(
                        color: Colors.black,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 0.5,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Row(
                    children: [
                      Text(
                        "Akun",
                        style: GoogleFonts.inter(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Row(
                                  children: [
                                    Image.asset("images/exit.png"),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Keluar",
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
