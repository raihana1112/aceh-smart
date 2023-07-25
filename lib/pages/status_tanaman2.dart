// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/status_field.dart';

class home_status_tanaman2 extends StatefulWidget {
  const home_status_tanaman2({super.key});

  @override
  State<home_status_tanaman2> createState() => _home_status_tanaman2State();
}

class _home_status_tanaman2State extends State<home_status_tanaman2> {
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
                      Container(
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
                      Text(
                        "Tanaman Yang Bagus Untuk Ditanam",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      opacity: 0.8,
                      image: AssetImage("images/cabai.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "images/vegan.png",
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Cabai",
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Tanaman Sehat",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timelapse,
                                color: Colors.white,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "2 Bulan Menuju Panen",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 20.0),
                  child: SizedBox(
                    width: 115,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ));
                      },
                      child: Row(
                        children: [
                          Image.asset("images/vegan.png", color:Color.fromARGB(255, 96, 234, 100),width: 25,),
                          SizedBox(width: 8,),
                          Text(
                            "Panen",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Color.fromARGB(255, 96, 234, 100),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
