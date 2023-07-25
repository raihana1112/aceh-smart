// ignore_for_file: unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class navigation_button extends StatelessWidget {
  final Widget nextPage;
  final String title;
  final Color warnaText;

  const navigation_button(
      {super.key,
      required this.nextPage,
      required this.title,
      required this.warnaText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 169, 240, 135),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => nextPage));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: GoogleFonts.inter(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
