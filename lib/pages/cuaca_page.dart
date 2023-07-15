// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:app_tanaman_ui/components/text_perkiraan_cuaca.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cuaca_page extends StatefulWidget {
  const cuaca_page({super.key});

  @override
  State<cuaca_page> createState() => _cuaca_pageState();
}

class _cuaca_pageState extends State<cuaca_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 25.0, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //back button
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
                          color: Color.fromARGB(255, 175, 243, 135),
                        ),
                        color: Color.fromARGB(255, 223, 255, 224)),
                    child: SizedBox(
                      height: 175,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "27\u00B0",
                              style: GoogleFonts.inter(
                                  fontSize: 50,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Sebagian Besar Berawan",
                              style: GoogleFonts.inter(
                                  fontSize: 25,
                                  color: Color.fromARGB(155, 126, 126, 126),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Banda Aceh",
                              style: GoogleFonts.inter(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    )),
          
                SizedBox(
                  height: 40,
                ),
          
                Row(
                  children: [
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'CUACA ',
                              style: GoogleFonts.inter(
                                  fontSize: 27,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'akan mempengaruhi tanaman kamu Lihat perkiraan cuaca kedepan.',
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 204, 204, 204),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
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
                          color: Color.fromARGB(255, 175, 243, 135),
                        ),
                        color: Color.fromARGB(255, 223, 255, 224)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kemarin",
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 190, 190, 190),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "25\u00B0 27\u00B0",
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 190, 190, 190),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            text_perkiraan_cuaca(
                              hari: "Selasa", 
                              kelembapan: 4, 
                              suhu1: 31, 
                              suhu2: 27
                            ),
                            SizedBox(height: 20,),
                            text_perkiraan_cuaca(
                              hari: "Rabu", 
                              kelembapan: 6, 
                              suhu1: 34, 
                              suhu2: 26
                            ),
                            SizedBox(height: 20,),
                            text_perkiraan_cuaca(
                              hari: "kamis", 
                              kelembapan: 2, 
                              suhu1: 34, 
                              suhu2: 26
                            ),
                            SizedBox(height: 20,),
                            text_perkiraan_cuaca(
                              hari: "Jumat", 
                              kelembapan: 9, 
                              suhu1: 31, 
                              suhu2: 25
                            ),SizedBox(height: 20,),
                            text_perkiraan_cuaca(
                              hari: "Sabtu", 
                              kelembapan: 7, 
                              suhu1: 33, 
                              suhu2: 26
                            ),
                            SizedBox(height: 20,),
                            text_perkiraan_cuaca(
                              hari: "Minggu", 
                              kelembapan: 4, 
                              suhu1: 34, 
                              suhu2: 27
                            ),
                            SizedBox(height: 20,),
                            text_perkiraan_cuaca(
                              hari: "Senin", 
                              kelembapan: 4, 
                              suhu1: 33, 
                              suhu2: 25
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
