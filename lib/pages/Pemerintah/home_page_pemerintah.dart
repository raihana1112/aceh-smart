// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/profile.dart';
import 'package:app_tanaman_ui/pages/cuaca_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const _url =
    'https://play.google.com/store/apps/details?id=com.google.android.apps.maps&pli=1';

/// Put your custom url here.

class home_page_pemerintah extends StatefulWidget {
  final String username;
  const home_page_pemerintah({super.key, required this.username});

  @override
  State<home_page_pemerintah> createState() => _home_page_pemerintahState();
}

class _home_page_pemerintahState extends State<home_page_pemerintah> {
  int currentIndex = 0;
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
                    children: [
                      //gambar profile
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "images/bang.png",
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
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
                          //selamat datang
                          Text(
                            "Selamat datang",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          //nama user
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                username,
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),

                              //pekerjaan
                              Text(
                                "Pemerintah",
                                style: GoogleFonts.inter(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

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
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 100, 238, 52),
                          ),
                          color: Color.fromARGB(255, 235, 252, 228)),
                      child: SizedBox(
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "images/maps.png",
                                width: 75,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lihat Lokasi Anda",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Banda Aceh",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () => _launchURL(),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 0, 173, 124),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "View",
                                      style: GoogleFonts.inter(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),

                  //container 2
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
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 100, 238, 52),
                          ),
                          color: Color.fromARGB(255, 235, 252, 228)),
                      child: SizedBox(
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "images/awan.png",
                                width: 75,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Selasa, 2 Mei 2023",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Banda Aceh, ",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Rain 27 C",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => cuaca_page()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 0, 173, 124),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "View",
                                      style: GoogleFonts.inter(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                              border: Border.all(
                                width: 3,
                                color: Color.fromARGB(255, 100, 238, 525),
                              ),
                              color: Color.fromARGB(255, 235, 252, 228)),
                          child: SizedBox(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 2.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Text(
                                    "Grafik Kebutuhan",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Image.asset(
                                  "images/diagramalur.png",
                                  width: 100,
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
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
                              border: Border.all(
                                width: 3,
                                color: Color.fromARGB(255, 100, 238, 52),
                              ),
                              color: Color.fromARGB(255, 235, 252, 228)),
                          child: SizedBox(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 2.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Text(
                                    "Grafik Kebutuhan",
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Image.asset(
                                  "images/diagrambatang.png",
                                  width: 100,
                                )
                              ],
                            ),
                          )),
                    ],
                  ),

                  SizedBox(
                    height: 75,
                  ),
                ],
              ),
            )),
            //bottom navigation
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 11,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //container 1
                        GestureDetector(
                          onTap: (() {}),
                          child: Container(
                              width: 65,
                              height: 50,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 1,
                                        color: Colors.black26,
                                        spreadRadius: 1,
                                        offset: Offset(0, 3))
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 235, 252, 228)),
                              child: Image.asset(
                                "images/home.png",
                              )),
                        ),

                        SizedBox(
                          width: 10,
                        ),
                        //container 3
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        profile_page_pemerintah()));
                          }),
                          child: Container(
                              width: 65,
                              height: 50,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 1,
                                        color: Colors.black26,
                                        spreadRadius: 1,
                                        offset: Offset(0, 3))
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 235, 252, 228)),
                              child: Image.asset(
                                "images/username.png",
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURL() async {
  try {
    await launchUrl(Uri.parse(_url));
    print(_url);
  } catch (e) {
    print(e.toString());
  }
}
