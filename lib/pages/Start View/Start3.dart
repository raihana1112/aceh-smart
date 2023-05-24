// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Auth View/login_page.dart';

class Start3 extends StatefulWidget {
  const Start3({super.key});

  @override
  State<Start3> createState() => _Start3State();
}

class _Start3State extends State<Start3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //image
          Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 100),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: Image.asset("images/start3.png", width: 250,)
                ),
              ),
            ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 25, right: 25),
              child: Row(
                children: [
                  Flexible(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text:
                              "Melihat ",
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "grafik ",
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              "stok ",
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "kebutuhan ",
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              "bahan pangan",
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => LoginPage())));
                },
                child: Text(
                  "Selanjutnya",
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Color.fromARGB(255, 66, 255, 72),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => LoginPage())));
                },
                child: Text(
                  "Lewati",
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(135, 158, 158, 158)),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(135, 158, 158, 158)),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
