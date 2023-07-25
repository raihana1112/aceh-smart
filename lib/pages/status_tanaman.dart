// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, camel_case_types

import 'package:app_tanaman_ui/components/informasi_cuaca.dart';
import 'package:app_tanaman_ui/components/status_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/image_button_navigator.dart';

class home_status_tanaman extends StatefulWidget {
  const home_status_tanaman({super.key});

  @override
  State<home_status_tanaman> createState() => _home_status_tanamanState();
}

class _home_status_tanamanState extends State<home_status_tanaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 224, 147),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //expand atas
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cabai.jpg"), fit: BoxFit.cover),
                color: Colors.grey,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 75.0, bottom: 35.0, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //logo person
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "images/profile.png",
                                width: 100,
                                height: 100,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "images/dry-clean.png",
                                  width: 145,
                                  height: 145,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //user >
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "User     >",
                            style: GoogleFonts.inter(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //petani
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "Petani",
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                color: Colors.black45,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Status Tanaman",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      status_field(
                          title: "Waktu Menanam",
                          titleChild: "02 April 2022",
                          icon: Icon(Icons.calendar_month)),
                      SizedBox(
                        height: 15,
                      ),
                      status_field(
                          title: "Perkiraan Waktu Panen",
                          titleChild: "02 Juli 2022",
                          icon: Icon(Icons.timelapse_outlined)),
                      SizedBox(
                        height: 15,
                      ),
                      status_field(
                          title: "Lokasi Penanaman",
                          titleChild: "Semampir, Kota Kediri, Indonesia",
                          icon: Icon(Icons.location_on)),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  informasi_cuaca(
                    curahHujan: "202",
                    suhu: "28 C",
                    kelembapan: "80",
                    status: "Terdapat Peringatan",
                    title: "Bulan 1",
                    colorHujan: Colors.red,
                    colorSuhu: Colors.green,
                    colorKelembapan: Colors.green,
                    colortext: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  informasi_cuaca(
                    curahHujan: "202",
                    suhu: "28 C",
                    kelembapan: "80",
                    status: "Sesuai",
                    title: "Bulan 2",
                    colorHujan: Colors.green,
                    colorSuhu: Colors.green,
                    colorKelembapan: Colors.green,
                    colortext: Colors.green,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  informasi_cuaca(
                    curahHujan: "202",
                    suhu: "28 C",
                    kelembapan: "80",
                    status: "Tidak Sesuai",
                    title: "Bulan 3",
                    colorHujan: Colors.red,
                    colorSuhu: Colors.red,
                    colorKelembapan: Colors.red,
                    colortext: Colors.red,
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
    );
  }
}
