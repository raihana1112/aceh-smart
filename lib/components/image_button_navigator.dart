// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class image_button_navigator extends StatelessWidget {
  final String gambar;
  final String title;
  const image_button_navigator({super.key, required this.gambar, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 112,
                  height: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Column(
                      children: [
                      Image.asset(
                        gambar,
                        width: 75,
                        height: 75,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        title,
                        style: GoogleFonts.inter(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                );
  }
}