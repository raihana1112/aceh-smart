// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_tanaman_ui/pages/Start%20View/start2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start1 extends StatefulWidget {
  const Start1({super.key});

  @override
  State<Start1> createState() => _Start1State();
}

class _Start1State extends State<Start1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 16, 221, 88),
                  Color.fromARGB(255, 109, 255, 185),
                ],
              ),
            ),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top : 250),
            child: Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Start2())));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 35),
                    child: Text(
                      "NEXT",
                      style: GoogleFonts.inter(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              child: Image.asset("images/start1.png", width: 250,)
              ),
            ),
        ],
      ),
    );
  }
}
