// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_tanaman_ui/pages/Start%20View/Start3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Auth View/login_page.dart';


class Start2 extends StatefulWidget {
  const Start2({super.key});

  @override
  State<Start2> createState() => _Start2State();
}

class _Start2State extends State<Start2> {
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
                child: Image.asset("images/start2.png", width: 250,)
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
                          text: "Informasi lengkap",
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              " Mengenai tanaman yang cocok untuk ditanam dan keputusan waktu tanam yang tepat",
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
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Start3())));
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
                        color: Colors.green),
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
